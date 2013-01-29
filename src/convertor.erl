%% Author: Maxim Minin
%% Created: 03.04.2012
%% Description: TODO: Add description to convertor
-module(convertor).

%%
%% Include files
%%

%%
%% Exported Functions
%%
-export([convertFixToRecord/2, convertRecordToFix/2, format/2, setMsgSeqNum/3]).

%%
%% API Functions
%%
convertFixToRecord(Message, FixVersion) ->
    Utils = getUtilsFun(FixVersion),
    Fields = lists:map(fun(X)-> case binary:split(X, <<"=">>) of
                                     [Tag, Value] -> 
                                        {Utils:getFieldName(Tag), Value};
                                     _Else -> {nil,nil}
                                end
                       end, binary:split(Message, <<1>>, [global])),
    {msgType, Type} = lists:keyfind(msgType,1,Fields),
    Recordname = Utils:getMessageName(Type),
    Record = Utils:getRecord(Recordname),
    Def = Utils:get_record_def(Recordname),
    {R, _} =convertFix2Record(Utils, Recordname, Record, Def, Fields),
    R.

convertRecordToFix(Record, FixVersion) ->
    Utils = getUtilsFun(FixVersion),
    RecordName = element(1, Record),
    Rec = Utils:get_record_def(RecordName),
    Bin = convert2Binary(Utils, tuple_to_list(Record), Rec),
    completeBinary(Utils, Bin).

format(Record, FixVersion) ->
    Utils = getUtilsFun(FixVersion),
    RecordName = element(1, Record),
    Rec = Utils:get_record_def(RecordName),
    S = convertToString(Utils, tuple_to_list(Record), Rec),
    lists:sublist(S, length(S)-1).

setMsgSeqNum(Record, Num, FixVersion)->
    Utils = getUtilsFun(FixVersion),
    Utils:setMsgSeqNum(Record, Num).

%%
%% Local Functions
%%
getUtilsFun(FixVersion) ->
    list_to_atom(lists:concat([util_convert_to_record_, FixVersion])).
    
convertToString(Utils, Record, Def) ->
lists:flatten([convert2String(Utils, N, V) || 
               {V, N}  <- lists:zip(Record, Def), 
                          V =/= N, V =/= undefined]).

convert2String(Utils, Name, Value) ->
     case Name of
         [[List]] ->
                T = lists:flatten(lists:map(fun(Rec) ->  convertToString(Utils, 
                                                     tuple_to_list(Rec), 
                                                     Utils:get_record_def(List)) end, Value)),
                case T of
                    [] ->
                        lists:concat([List, "=[],"]);
                    _Else ->
                        lists:concat([List, "=[",lists:sublist(T, length(T)-1),"],"])
                end;
         [Tuple] ->
                convertToString(Utils, tuple_to_list(Value), Utils:get_record_def(Tuple));
         Atom -> 
                case get_type(Value) of
                    float -> lists:concat([Atom, "=", io_lib:format("~.6f",[Value]), ","]);
                    integer -> lists:concat([Atom, "=", integer_to_list(Value), ","]);
                    binary -> lists:concat([Atom, "=",binary_to_list(Value), ","]);
                    atom -> lists:concat([Atom, "=",Value, ","])
                end
     end.                         
 
get_type(V) when is_atom(V) -> atom;
get_type(V) when is_float(V) -> float;
get_type(V) when is_tuple(V) -> tuple;
get_type(V) when is_list(V) -> list; 
get_type(V) when is_binary(V) -> binary;
get_type(V) when is_integer(V) -> integer;
get_type(V) -> io:format("ERROR:~p~n", [V]).

convert2Binary(Utils, Record, Def)->
    L=lists:flatten([convert2Binary_2(Utils, N, V) || 
                         {V, N}  <- lists:zip(Record, Def),
                                    N =/= bodyLength,
                                    N =/= beginString,
                                    N =/= checkSum,
                                    V =/= undefined,
                                    V =/= N]),
    erlang:list_to_bitstring(L).

convert2Binary_2(Utils, Def, Value)->
     case Def of
         [[List]] ->
                T = lists:flatten(lists:map(fun(Rec) ->  convert2Binary(Utils, 
                                                     tuple_to_list(Rec), 
                                                     Utils:get_record_def(List)) end, Value)),
                case T of
                    [<<>>] -> [];
                    _Else -> 
                        TagAsBin = atom_to_binary(List, utf8),
                        [TagId|_] = lists:reverse(binary:split(TagAsBin, <<"_">>, [global])),
                        [TagId, "=", integer_to_list(length(Value)), 1, T]
                end;
         [Tuple] -> convert2Binary(Utils, tuple_to_list(Value), Utils:get_record_def(Tuple));
         Atom -> 
                case get_type(Value) of
                    float -> [Utils:getTagId(Def), "=", io_lib:format("~.6f",[Value]), 1];
                    integer -> [Utils:getTagId(Def), "=", integer_to_list(Value), 1];
                    binary -> [Utils:getTagId(Def), "=", Value, 1];
                    atom -> [Utils:getTagId(Def), "=",Utils:reconvert(Def, Value), 1]
                end
     end.                         

completeBinary(Utils, B) ->
    BodyLengthTag = Utils:getTagId(bodyLength),
    BodyLength = integer_to_list(byte_size(B)),
    BeginStringTag = Utils:getTagId(beginString),
    Version  = lists:map(fun(X) -> case X == $_ of
                                       true -> $.;
                                       false -> X end end, 
                                   string:sub_string(atom_to_list(Utils), 24)),
    Bin = list_to_bitstring([BeginStringTag, <<"=">>, Version, 1, 
                             BodyLengthTag, <<"=">>, BodyLength, 1, B]),
    C = lists:sum(erlang:binary_to_list(Bin)) rem 256,
    Checksum =
    case C >= 100 of
        true -> integer_to_list(C);
        false ->
            case C >= 10 of
                true -> lists:concat(["0", C]);
                false -> lists:concat(["00", C])
            end
    end,
    list_to_bitstring([Bin, Utils:getTagId(checkSum), <<"=">>, Checksum, 1]).

convertFix2Record(Utils, Recordname, Record, [[[F]]|Def], Fields) ->
    R = convertRepeatingGroup(Utils, F, F, Fields, []),
    NewRecord = Utils:setFieldInRecord(Recordname, F, Record, R), 
    convertFix2Record(Utils, Recordname, NewRecord, Def, Fields);
convertFix2Record(Utils, Recordname, Record, [[F]|Def], Fields) ->
    {R, NewFields} = convertFix2Record(Utils, F, Utils:getRecord(F), Utils:get_record_def(F), Fields),
    NewRecord = Utils:setFieldInRecord(Recordname, F, Record, R), 
    convertFix2Record(Utils, Recordname, NewRecord, Def, NewFields);
convertFix2Record(Utils, Recordname, Record, [F|Def], Fields) when is_atom(F) ->
    {NewRecord, NewFields} = case lists:keyfind(F, 1, Fields) of
        {F, Value} ->
            {Utils:setFieldInRecord(Recordname, F, Record, Utils:convert(F, Value)),
             lists:keydelete(F,1,Fields)};
        false ->
            {Record, Fields}
    end,
    convertFix2Record(Utils, Recordname, NewRecord, Def,  NewFields);
convertFix2Record(Utils, Recordname, Record, [], Fields) ->
    {Record, Fields}.

convertRepeatingGroup(Utils, Recordname, Def, Fields, ToReturn)->
    case convertFix2Record(Utils, Recordname, Utils:getRecord(Def), Utils:get_record_def(Def), Fields) of
        {Record, Fields}  -> 
            case ToReturn of
                [] -> {R,_}=convertFix2Record(Utils, Recordname, Utils:getRecord(Def), Utils:get_record_def(Def), []),
                    [R];
                _Else -> lists:reverse(ToReturn)
            end;
        {Record, NewFields} -> convertRepeatingGroup(Utils, Recordname, Def, NewFields, [Record|ToReturn])
    end.
