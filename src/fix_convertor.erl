%% Author: Maxim Minin
%% Created: 03.04.2012
%% Description: TODO: Add description to convertor
-module(fix_convertor).

%%
%% Include files
%%
-include("fix_convertor.hrl").
%%
%% Exported Functions
%%
-export([fix2record/2,
         record2fix/2,
         record2fix/3,
         format/2,
         set_msg_seqnum/3,
         get_util_module/1,
         get_version4module/1]).

%%
%% API Functions
%%
-spec fix2record(binary(), fix_version ()) -> {FixRecord :: tuple(),
                                               UnkownFields :: list()} 
                                               | not_valid.
fix2record(Message, FixVersion) ->
    Utils = get_util_module(FixVersion),
    Fields = lists:map(fun(X)-> case binary:split(X, <<"=">>) of
                                     [Tag, Value] -> 
                                        {Utils:getFieldName(Tag), Value};
                                     _Else -> {nil,nil}
                                end
                       end, binary:split(Message, <<1>>, [global])),
    case lists:keyfind(msgType,1,Fields) of
        {msgType, Type} ->
            case Utils:getMessageName(Type) of
                error ->
                    convertFix2Record(Utils, custom_message,
                                      #custom_message{},
                                      [standardHeader, standardTrailer],
                                      Fields);
                Recordname ->
                    Record = Utils:getRecord(Recordname),
                    Def = Utils:get_record_def(Recordname),
                    convertFix2Record(Utils, Recordname, Record, Def, Fields)
            end;
        false -> not_valid
    end.

-spec record2fix(tuple(), fix_version ()) -> binary() | not_valid.
record2fix(#custom_message{standardHeader = Header, standardTrailer = Trailer},
           FixVersion) ->
    Utils = get_util_module(FixVersion),
    HeaderDef = Utils:get_record_def(standardHeader),
    HeaderBin = convert2Binary(Utils, tuple_to_list(Header), HeaderDef),
    TrailerDef = Utils:get_record_def(standardTrailer),
    TrailerBin = convert2Binary(Utils, tuple_to_list(Trailer), TrailerDef),
    completeBinary(Utils, list_to_binary([HeaderBin, TrailerBin]));

record2fix(Record, FixVersion) ->
    Utils = get_util_module(FixVersion),
    RecordName = element(1, Record),
    case Utils:get_record_def(RecordName) of
        error ->
            not_valid;
        RecDef ->
            Bin = convert2Binary(Utils, tuple_to_list(Record), RecDef),
            completeBinary(Utils, Bin)
    end.

-spec record2fix(FixRecord :: tuple(), 
                  ExtraBin :: binary(),
                  fix_version ()) -> binary() | not_valid.

record2fix(#custom_message{standardHeader = Header, standardTrailer = Trailer},
           ExtraBin, FixVersion) ->
    Utils = get_util_module(FixVersion),
    HeaderDef = Utils:get_record_def(standardHeader),
    HeaderBin = convert2Binary(Utils, tuple_to_list(Header), HeaderDef),
    TrailerDef = Utils:get_record_def(standardTrailer),
    TrailerBin = convert2Binary(Utils, tuple_to_list(Trailer), TrailerDef),
    Bin = case erlang:is_list(ExtraBin) of
              true ->
                  [convert_value(Utils, Def, Value) || {Def, Value} <- ExtraBin];
              false ->
                  ExtraBin
          end,
    completeBinary(Utils, list_to_binary([HeaderBin, Bin, TrailerBin]));

record2fix(Record, ExtraBin, FixVersion) ->
    Utils = get_util_module(FixVersion),
    RecordName = element(1, Record),
    case Utils:get_record_def(RecordName) of
        error ->
            not_valid;
        RecDef ->
            Bin = convert2Binary(Utils, tuple_to_list(Record), RecDef),
            Bin2 = case erlang:is_list(ExtraBin) of
                       true ->
                           [convert_value(Utils, Def, Value) || 
                              {Def, Value} <- ExtraBin];
                       false ->
                           ExtraBin
                   end,
            completeBinary(Utils, list_to_binary([Bin, Bin2]))
    end.

-spec format(tuple(), 
                   fix_version ()) -> string() | not_valid.
format(#custom_message{standardHeader = Header, standardTrailer = Trailer},
       FixVersion) ->
    Utils = get_util_module(FixVersion),
    HeaderDef = Utils:get_record_def(standardHeader),
    TrailerDef = Utils:get_record_def(standardTrailer),
    HS = convertToString(Utils, tuple_to_list(Header), HeaderDef),
    TS = convertToString(Utils, tuple_to_list(Trailer), TrailerDef),
    TL = erlang:max(0, length(TS)-1),
    HS ++ lists:sublist(TS, TL);

format(Record, FixVersion) ->
    Utils = get_util_module(FixVersion),
    RecordName = element(1, Record),
    case Utils:get_record_def(RecordName) of
        error ->
            not_valid;
        Rec ->
            S = convertToString(Utils, tuple_to_list(Record), Rec),
            L = erlang:max(0, length(S)-1),
            lists:sublist(S, L)
    end.

-spec set_msg_seqnum(tuple(), 
                   pos_integer(), 
                   fix_version ()) -> tuple() | not_valid.
set_msg_seqnum(Record, Num, FixVersion)->
    Utils = get_util_module(FixVersion),
    try
        Utils:setMsgSeqNum(Record, Num)
    catch _:_ ->
              not_valid
    end.

-spec get_util_module(fix_version ()) -> atom().
get_util_module('FIX 4.0') ->
    util_convert_to_record_FIX_4_0;
get_util_module('FIX 4.1') ->
    util_convert_to_record_FIX_4_1;
get_util_module('FIX 4.2') ->
    util_convert_to_record_FIX_4_2;
get_util_module('FIX 4.3') ->
    util_convert_to_record_FIX_4_3;
get_util_module('FIX 4.4') ->
    util_convert_to_record_FIX_4_4;
get_util_module('FIX 5.0') ->
    util_convert_to_record_FIX_5_0;
get_util_module('FIX 5.0 SP 1') ->
    util_convert_to_record_FIX_5_0SP1;
get_util_module('FIX 5.0 SP 2') ->
    util_convert_to_record_FIX_5_0SP2.
 

-spec get_version4module(fix_util_module()) -> string().
get_version4module(util_convert_to_record_FIX_4_0) ->
    "FIX.4.0";
get_version4module(util_convert_to_record_FIX_4_1) ->
    "FIX.4.1";
get_version4module(util_convert_to_record_FIX_4_2) ->
    "FIX.4.2";
get_version4module(util_convert_to_record_FIX_4_3) ->
    "FIX.4.3";
get_version4module(util_convert_to_record_FIX_4_4) ->
    "FIX.4.4";
get_version4module(util_convert_to_record_FIX_5_0) ->
    "FIXT.1.1";
get_version4module(util_convert_to_record_FIX_5_0SP1) ->
    "FIXT.1.1";
get_version4module(util_convert_to_record_FIX_5_0SP2) ->
    "FIXT.1.1";


get_version4module('FIX 4.1') ->
    util_convert_to_record_FIX_4_1;
get_version4module('FIX 4.2') ->
    util_convert_to_record_FIX_4_2;
get_version4module('FIX 4.3') ->
    util_convert_to_record_FIX_4_3;
get_version4module('FIX 4.4') ->
    util_convert_to_record_FIX_4_4;
get_version4module('FIX 5.0') ->
    util_convert_to_record_FIX_5_0;
get_version4module('FIX 5.0 SP 1') ->
    util_convert_to_record_FIX_5_0SP1;
get_version4module('FIX 5.0 SP 2') ->
    util_convert_to_record_FIX_5_0SP2.
%%
%% Local Functions
%%
convertToString(Utils, Record, Def) ->
lists:flatten([convert2String(Utils, N, V) || 
               {V, N}  <- lists:zip(Record, Def), 
                          V =/= N, V =/= undefined]).

convert2String(Utils, Name, Value) ->
     case Name of
         [[List]] ->
                T = lists:flatten(lists:map(fun(Rec) ->  convertToString(Utils, 
                                                     tuple_to_list(Rec), 
                                                     Utils:get_record_def(List))
                                            end, Value)),
                L = erlang:max(0, length(T)-1),
                lists:concat([List, "=[",lists:sublist(T, L),"],"]);
         [Tuple] ->
                convertToString(Utils, 
                                tuple_to_list(Value), 
                                Utils:get_record_def(Tuple));
         Atom -> 
                case get_type(Value) of
                    tuple -> lists:concat([Atom, "=",
                                           io_lib:format("~p", [Value])]);
                    float -> lists:concat([Atom, "=",
                                           io_lib:format("~.6f",[Value]), ","]);
                    integer -> lists:concat([Atom, "=",
                                             integer_to_list(Value), ","]);
                    atom -> lists:concat([Atom, "=",Value, ","]);
                    list -> lists:concat([Atom, "=",Value, ","]);
                    binary -> lists:concat([Atom, "=",binary_to_list(Value), ","])
                end
     end.                         
 
get_type(V) when is_binary(V) -> binary;
get_type(V) when is_tuple(V) -> tuple;
get_type(V) when is_atom(V) -> atom;
get_type(V) when is_float(V) -> float;
get_type(V) when is_list(V) -> list; 
get_type(V) when is_integer(V) -> integer.

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
                                                     Utils:get_record_def(List))
                                            end,
                                            Value)),
                case T of
                    [<<>>] -> [];
                    _Else -> 
                        TagAsBin = atom_to_binary(List, utf8),
                        [TagId|_] = lists:reverse(binary:split(TagAsBin, 
                                                               <<"_">>, 
                                                               [global])),
                        [TagId, "=", integer_to_list(length(Value)), 1, T]
                end;
         [Tuple] -> convert2Binary(Utils, 
                                   tuple_to_list(Value), 
                                   Utils:get_record_def(Tuple));
         _Atom -> 
                case get_type(Value) of
                    list -> [Utils:getTagId(Def), "=",Value, 1];
                    binary -> [Utils:getTagId(Def), "=",Value, 1];
                    float -> [Utils:getTagId(Def), "=", 
                              io_lib:format("~.6f",[Value]), 1];
                    integer -> [Utils:getTagId(Def), "=", 
                                integer_to_list(Value), 1];
                    atom -> [Utils:getTagId(Def), "=",
                             Utils:reconvert(Def, Value), 1];
                    tuple -> [Utils:getTagId(Def), "=",
                             Utils:reconvert(Def, Value), 1]
                end
     end.

convert_value(_Utils, nil, nil) ->
    <<>>;
convert_value(Utils, Def, Value) ->
    TagId = case Utils:getTagId(Def) of
                error -> Def;
                Id -> Id
            end,
    case get_type(Value) of
        list -> [TagId, "=",Value, 1];
        binary -> [TagId, "=",Value, 1];
        float -> [TagId, "=",
                  io_lib:format("~.6f",[Value]), 1];
        integer -> [TagId, "=",
                    integer_to_list(Value), 1];
        atom -> [TagId, "=",
                 Utils:reconvert(Def, Value), 1];
        tuple -> [TagId, "=",
                 Utils:reconvert(Def, Value), 1]
    end.

completeBinary(Utils, B) ->
    BodyLengthTag = Utils:getTagId(bodyLength),
    BodyLength = integer_to_list(byte_size(B)),
    BeginStringTag = Utils:getTagId(beginString),
    Version  = get_version4module(Utils),
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
    list_to_bitstring([Bin, Utils:getTagId(checkSum), 
                       <<"=">>, Checksum, 1]).


convertFix2Record(Utils, custom_message, Record, [standardTrailer|Def], Fields) ->
    {R, NewFields} = convertFix2Record(Utils, standardTrailer,
                                       Utils:getRecord(standardTrailer),
                                       Utils:get_record_def(standardTrailer),
                                       Fields),
    NewRecord = Record#custom_message{standardTrailer = R},
    convertFix2Record(Utils, custom_message, NewRecord, Def, NewFields);

convertFix2Record(Utils, custom_message, Record, [standardHeader|Def], Fields) ->
    {R, NewFields} = convertFix2Record(Utils, standardHeader,
                                       Utils:getRecord(standardHeader),
                                       Utils:get_record_def(standardHeader),
                                       Fields),
    NewRecord = Record#custom_message{standardHeader = R},
    convertFix2Record(Utils, custom_message, NewRecord, Def, NewFields);

convertFix2Record(Utils, Recordname, Record, [[[F]]|Def], Fields) ->
    {R, NewFields} = convertRepeatingGroup(Utils, F, F, Fields, []),
    NewRecord = Utils:setFieldInRecord(Recordname, F, Record, R),
    convertFix2Record(Utils, Recordname, NewRecord, Def, NewFields);
convertFix2Record(Utils, Recordname, Record, [[F]|Def], Fields) ->
    {R, NewFields} = convertFix2Record(Utils, F,
                                       Utils:getRecord(F),
                                       Utils:get_record_def(F),
                                       Fields),
    NewRecord = Utils:setFieldInRecord(Recordname, F, Record, R), 
    convertFix2Record(Utils, Recordname, NewRecord, Def, NewFields);
convertFix2Record(Utils, Recordname, Record, [F|Def], Fields)
  when is_atom(F) ->
    {NewRecord, NewFields} = case lists:keyfind(F, 1, Fields) of
        {F, Value} ->
            {Utils:setFieldInRecord(Recordname, F, Record,
                                    Utils:convert(F, Value)),
             lists:keydelete(F,1,Fields)};
        false ->
            {Record, Fields}
    end,
    convertFix2Record(Utils, Recordname, NewRecord, Def,  NewFields);
convertFix2Record(_Utils, _Recordname, Record, [], Fields) ->
    {Record, Fields}.

convertRepeatingGroup(Utils, Recordname, Def, Fields, ToReturn)->
    case convertFix2Record(Utils, Recordname, Utils:getRecord(Def),
                           Utils:get_record_def(Def), Fields) of
        {_Record, Fields}  -> 
            case ToReturn of
                [] -> {R, _}=convertFix2Record(Utils, Recordname,
                                              Utils:getRecord(Def),
                                              Utils:get_record_def(Def), []),
                      {[R], Fields};
                _Else ->
                    {lists:reverse(ToReturn), Fields}
            end;
        {Record, NewFields} -> convertRepeatingGroup(Utils, Recordname,
                                                     Def, NewFields,
                                                     [Record|ToReturn])
    end.
