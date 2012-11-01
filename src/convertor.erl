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
-export([convertFixToRecord/2, convertRecordtoFix/2, format/2, setMsgSeqNum/3]).

%%
%% API Functions
%%
convertFixToRecord(Message, FixVersion) ->
    Utils = erlang:list_to_atom(lists:concat([util_convert_to_record_, FixVersion])),
    Fields = lists:map(fun(X)-> binary:split(X, <<"=">>) end, binary:split(Message, <<1>>, [global])),
    {Recordname, FieldsList} = prepare(Utils, Fields, error, []),
    Record = Utils:getRecord(Recordname), 
    {RecordWithValues, _FieldsListsNew} = config(Utils, Recordname, Record, FieldsList),
    RecordWithValues.

convertRecordtoFix(Record, FixVersion) ->
    Utils = erlang:list_to_atom(lists:concat([util_convert_to_record_, FixVersion])),
    RecordName = erlang:element(1, Record),
    Rec = Utils:getRecord(RecordName),
    convertToBinary(Utils, erlang:tuple_to_list(Record), erlang:tuple_to_list(Rec), <<>>).

format(Record, FixVersion) ->
    Utils = erlang:list_to_atom(lists:concat([util_convert_to_record_, FixVersion])),
    RecordName = erlang:element(1, Record),
    Rec = Utils:getRecord(RecordName),
    convertToString(Utils, erlang:tuple_to_list(Record), erlang:tuple_to_list(Rec), []).

setMsgSeqNum(Record, Num, FixVersion)->
    Utils = erlang:list_to_atom(lists:concat([util_convert_to_record_, FixVersion])),
    Utils:setMsgSeqNum(Record, Num).
    

convertToString(Utils, [Name|Record], [Name|Rec], ToReturn) when erlang:is_atom(Name)->
    convertToString(Utils, Record, Rec, ToReturn);
convertToString(Utils, [undefined|Vals], [_N|Names], ToReturn) ->
    convertToString(Utils, Vals, Names, ToReturn);
convertToString(Utils, [Value|Record], [Fieldname|Rec], ToReturn) when erlang:is_atom(Fieldname) and erlang:is_float(Value)->
    String = lists:concat(["|", Fieldname, " = ", io_lib:format("~.6f",[Value])]),
    convertToString(Utils, Record, Rec, [String|ToReturn]);
convertToString(Utils, [Value|Record], [Fieldname|Rec], ToReturn) when erlang:is_atom(Fieldname) and erlang:is_integer(Value)->
    String = lists:concat(["|", Fieldname, " = ", erlang:integer_to_list(Value)]),
    convertToString(Utils, Record, Rec, [String|ToReturn]);
convertToString(Utils, [Value|Record], [Fieldname|Rec], ToReturn) when erlang:is_atom(Fieldname) and erlang:is_atom(Value) ->
    String = lists:concat(["|", Fieldname, " = ",  Value]),
    convertToString(Utils, Record, Rec, [String|ToReturn]);
convertToString(Utils, [Value|Record], [Fieldname|Rec], ToReturn) when erlang:is_atom(Fieldname) and erlang:is_binary(Value) ->
    String = lists:concat(["|", Fieldname, " = ",erlang:binary_to_list(Value)]),
    convertToString(Utils, Record, Rec, [String|ToReturn]);
convertToString(Utils, [Value|Record], [Field|Rec], ToReturn) when erlang:is_tuple(Field)->
    String = convertToString(Utils, erlang:tuple_to_list(Value), erlang:tuple_to_list(Field), ToReturn),
    convertToString(Utils, Record, Rec, [String|ToReturn]);
convertToString(Utils, [Value|Record], [Field|Rec], ToReturn) when erlang:is_list(Field)->
    [F] =  Field, 
    L = lists:map(fun(R) ->  convertToString(Utils, 
                                             erlang:tuple_to_list(R), 
                                             erlang:tuple_to_list(F), 
                                             []) end, 
                  Value),
   String = case L == []  of
        false ->
            [lists:concat(["|", erlang:element(1, F), " = ", erlang:integer_to_list(erlang:length(Value)), "|"])|L];
        true ->
            ""
    end,
    convertToString(Utils, Record, Rec, [String|ToReturn]);
convertToString(_Utils, [], _Rec, ToReturn) ->
    lists:reverse(ToReturn).

%%
%% Local Functions
%%
convertToBinary(Utils, [_auto|Record], [bodyLength|Rec], Bin) ->
    convertToBinary(Utils, Record, Rec, Bin);
convertToBinary(Utils, [_auto|Record], [beginString|Rec], Bin) ->
    convertToBinary(Utils, Record, Rec, Bin);
convertToBinary(Utils, [_auto|Record], [checkSum|Rec], B) ->
    BodyLengthTag = Utils:getTagId(bodyLength),
    BodyLength = erlang:list_to_binary(erlang:integer_to_list(erlang:length(erlang:binary_to_list(B)))),
    BeginStringTag = Utils:getTagId(beginString),
    Version  = lists:map(fun(X) -> case X == 95 of
                                       true -> 46;
                                       false -> X end end, 
                                   string:sub_string(erlang:atom_to_list(Utils), 24)),
    Bin = erlang:list_to_binary([BeginStringTag, <<"=">>, Version, 1, BodyLengthTag, <<"=">>, BodyLength, 1, B]),
    C = lists:sum(erlang:binary_to_list(Bin)) rem 256,
    case C >= 100 of
        true ->
            Checksum = erlang:integer_to_list(C);
        false ->
            case C >= 10 of
                true ->
                    Checksum = lists:concat(["0", C]);
                false ->
                    Checksum = lists:concat(["00", C])
            end
    end,
    convertToBinary(Utils, 
                    Record, 
                    Rec, 
                    erlang:list_to_binary([Bin, 
                                           Utils:getTagId(checkSum), 
                                           <<"=">>, 
                                            Checksum,
                                            1
                                            ]));
convertToBinary(Utils, [Name|Record], [Name|Rec], Bin) when erlang:is_atom(Name)->
    convertToBinary(Utils, Record, Rec, Bin);
convertToBinary(Utils, [undefined|Record], [Fieldname|Rec], Bin) when erlang:is_atom(Fieldname)->
    convertToBinary(Utils, Record, Rec, Bin);
convertToBinary(Utils, [Value|Record], [Fieldname|Rec], Bin) when erlang:is_atom(Fieldname) and erlang:is_float(Value)->
    Bin_1 = erlang:list_to_binary([Bin, Utils:getTagId(Fieldname), <<"=">>, erlang:list_to_binary(io_lib:format("~.6f",[Value])), 1]),
    convertToBinary(Utils, Record, Rec, Bin_1);
convertToBinary(Utils, [Value|Record], [Fieldname|Rec], Bin) when erlang:is_atom(Fieldname) and erlang:is_integer(Value)->
    Bin_1 = erlang:list_to_binary([Bin, Utils:getTagId(Fieldname), <<"=">>, erlang:list_to_binary(erlang:integer_to_list(Value)), 1]),
    convertToBinary(Utils, Record, Rec, Bin_1);
convertToBinary(Utils, [Value|Record], [Fieldname|Rec], Bin) when erlang:is_atom(Fieldname) ->
    Bin_1 = erlang:list_to_binary([Bin, Utils:getTagId(Fieldname), <<"=">>, Utils:reconvert(Fieldname, Value), 1]),
    convertToBinary(Utils, Record, Rec, Bin_1);
convertToBinary(Utils, [Value|Record], [Fieldname|Rec], Bin) when erlang:is_atom(Fieldname)->
    Bin_1 = erlang:list_to_binary([Bin, Utils:getTagId(Fieldname), <<"=">>, Value, 1]),
    convertToBinary(Utils, Record, Rec, Bin_1);
convertToBinary(Utils, [Value|Record], [Field|Rec], Bin) when erlang:is_tuple(Field)->
    Bin_1 = convertToBinary(Utils, erlang:tuple_to_list(Value), erlang:tuple_to_list(Field), Bin),
    convertToBinary(Utils, Record, Rec, Bin_1);
convertToBinary(Utils, [Value|Record], [Field|Rec], Bin) when erlang:is_list(Field)->
    [F] =  Field, 
    L = lists:map(fun(R) ->  convertToBinary(Utils, 
                                             erlang:tuple_to_list(R), 
                                             erlang:tuple_to_list(F), 
                                             <<>>) end, 
                  Value),
    case L == [<<>>]  of
        false ->
            [TagId|_] = lists:reverse(binary:split(erlang:atom_to_binary(erlang:element(1, F), utf8), <<"_">>, [global])),
            Bin_1 = erlang:list_to_binary([Bin, TagId, <<"=">>, erlang:integer_to_list(erlang:length(Value)), 1, L]);
        true ->
            Bin_1 = Bin
    end,
    convertToBinary(Utils, Record, Rec, Bin_1);
convertToBinary(_Utils, [], _Rec, Bin) ->
    Bin.

prepare(Mod, [[<<"35">>, Recordtype] |Fields], _, FieldsList) ->
    prepare(Mod, Fields, Mod:getMessageName(Recordtype), [{Mod:getFieldName(<<"35">>), Recordtype}|FieldsList]);
prepare(Mod, [[F, V] |Fields], Recordname, FieldsList) ->
    prepare(Mod, Fields, Recordname, [{Mod:getFieldName(F), V}|FieldsList]);
prepare(_Mod, [[<<>>]], Recordname, FieldsList) -> {Recordname, lists:reverse(FieldsList)};
prepare(_Mod, [], Recordname, FieldsList) -> {Recordname, lists:reverse(FieldsList)}. 

config (Utils, RecordName, Record, FieldsList) ->
    Rec = erlang:tuple_to_list(Record),
    {Fields, Components, RepeatingGroups} = sort(Rec, {[],[],[]}),
    {Record_1, FieldsList_1} = setFields(Utils, Record, RecordName, FieldsList, Fields),
    {Record_2, FieldsList_2} = configComponents(Utils, RecordName, Record_1, FieldsList_1, Components),
    configRepeatingGroups(Utils, RecordName, Record_2, FieldsList_2, RepeatingGroups, [], error).

configComponents(Utils, ParentRecordName, ParentRecord, FieldsList, [C|Comp]) ->
    RecordName = erlang:element(1, C),
    Record = Utils:getRecord(RecordName),
    {Record_1, FieldsList_1} = config(Utils, RecordName, Record, FieldsList),
    ParentRecord_1 = Utils:setFieldInRecord(ParentRecordName, RecordName, ParentRecord, Record_1),
    configComponents (Utils, ParentRecordName, ParentRecord_1, FieldsList_1, Comp);
configComponents(_Utils, _ParentRecordName, ParentRecord, FieldsList, []) ->
    {ParentRecord, FieldsList}.

configRepeatingGroups(_Utils, _ParentRecordName, ParentRecord, FieldsList, [], [], error) -> {ParentRecord, FieldsList};
configRepeatingGroups(Utils, ParentRecordName, ParentRecord, FieldsList, [], [], RecordName) ->
    {Record_1, FieldsList} = config(Utils, RecordName, Utils:getRecord(RecordName), FieldsList),
    ParentRecord_1 = Utils:setFieldInRecord(ParentRecordName, RecordName, ParentRecord, [Record_1]),
    {ParentRecord_1, FieldsList};
configRepeatingGroups(Utils, ParentRecordName, ParentRecord, FieldsList, [], RepeatingRecords, RecordName) ->
    ParentRecord_1 = Utils:setFieldInRecord(ParentRecordName, RecordName, ParentRecord, lists:reverse(RepeatingRecords)),
    {ParentRecord_1, FieldsList};
configRepeatingGroups(Utils, ParentRecordName, ParentRecord, FieldsList, RepeatingGroups, RepeatingRecords, _) ->
    [R|Rep] = RepeatingGroups,
    RecordName = erlang:element(1, R),
    Record = Utils:getRecord(RecordName),
    {Record_1, FieldsList_1} = config(Utils, RecordName, Record, FieldsList),
    case FieldsList_1 == FieldsList of
        true ->
            configRepeatingGroups (Utils, ParentRecordName, ParentRecord, FieldsList_1, Rep, RepeatingRecords, RecordName);
        false ->
            configRepeatingGroups (Utils, ParentRecordName, ParentRecord, FieldsList_1, RepeatingGroups, [Record_1|RepeatingRecords], RecordName)
    end.
    
setFields(Utils, Rec, RecName, List, [RecName|Fields]) -> setFields(Utils, Rec, RecName, List, Fields);
setFields(Utils, Rec, RecName, List, [F|Fields]) ->
    case lists:keyfind(F, 1, List) of
        false ->
            setFields(Utils, Utils:setFieldInRecord(RecName, F, Rec, undefined), RecName, List, Fields);
        {F, Value} ->
            setFields(Utils, Utils:setFieldInRecord(RecName, F, Rec, Utils:convert(F, Value)), RecName, lists:keydelete(F, 1, List), Fields)
    end;
setFields(_Utils, Rec, _RecName, List, [] )-> {Rec, List}.

sort([F|Rec], {Fields, Comp, Repeatings}) when erlang:is_atom(F) -> sort(Rec, {[F|Fields], Comp, Repeatings});
sort([F|Rec], {Fields, Comp, Repeatings}) when erlang:is_tuple(F) -> sort(Rec, {Fields, [F|Comp], Repeatings});
sort([F|Rec], {Fields, Comp, Repeatings}) when erlang:is_list(F) ->
    [R] = F,
    sort(Rec, {Fields, Comp, [R|Repeatings]});
sort([], ToReturn) -> ToReturn. 
