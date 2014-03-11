%% Author: Maxim Minin
%% Created: 15.02.2014
%% Description: TODO: Add description to convertor
-module(a_generator_transform).

-export([parse_transform/2]).

parse_transform(AST, _Options) ->
    erlang:put(records, []),
    erlang:put(generators, []),
    walk_ast([], AST).

walk_ast(Acc, []) -> 
    insert_new_forms(Acc);
walk_ast(Acc, [{attribute, _, record, {Name, Fields}}=H|T]) ->
    FieldNames = lists:map(fun({record_field, _, {atom, _, FieldName}}) ->
                FieldName;
            ({record_field, _, {atom, _, FieldName}, _Default}) ->
                FieldName
        end, Fields),
    stash_record({Name, FieldNames}),
    walk_ast([H|Acc], T);
walk_ast(Acc, [{attribute, _, type, Type} = H|T]) ->
    stash_generators(Type),
    walk_ast([H|Acc], T);
walk_ast(Acc, [H|T]) ->
    walk_ast([H|Acc], T).

%% ====================================================================
%% change AST 
%% ====================================================================
insert_new_forms(AST) ->
    L = lists:foldl(fun({attribute, Line, module, _}=E, Acc) ->
                [E, {attribute, Line, 
                     mm_records, erlang:get(records)}|Acc];
            (E, Acc) ->
                [E|Acc]
        end, [], AST),
    {H, [{eof, LineNumber}]} = lists:split(length(L)-1, L),
    {FunList, NewLineNumber} = generate_type_generators(erlang:get(generators),
                                                        LineNumber),
    {FunList2, NewLineNumber2} = generate_record_generators(erlang:get(records),
                                                        NewLineNumber),
    H ++ FunList ++ FunList2++[{eof, NewLineNumber2+1}]. 

%% ====================================================================
%% records collection 
%% ====================================================================
stash_record(Record) ->
    Records = case erlang:get(records) of
        undefined ->
            [];
        R ->
            R
    end,
    erlang:put(records, [Record|Records]).

%% ====================================================================
%% types collection 
%% ====================================================================
stash_generators(Type) ->
    T = case erlang:get(generators) of
        undefined ->
            [];
        R ->
            R
    end,
    erlang:put(generators, [Type|T]).

%% ====================================================================
%% type generators 
%% ====================================================================
generate_type_generators(Types, LineNumber) ->
    generate_type_generators(Types, LineNumber, []).

generate_type_generators([], LineNumber, Acc) ->
    {Acc, LineNumber};
generate_type_generators([Type|Types], LineNumber, Acc) ->
    case Type of
         {msgType,{type,_L_Num,union,Enums},[]} ->
            F = {function,LineNumber,msgType,1,
                 [{clause,LineNumber,[{var,LineNumber,'_Var'}],[],
                   [{var,LineNumber+1,'_Var'}]}]},
            Elements =  [enums_abstract(LineNumber+2, Enums) ],
            F2 = {function, LineNumber,
                 msgType,0,[{clause,LineNumber,[],[],
                          [{call, LineNumber +2, 
                            {atom,LineNumber+2,elements},
                            Elements}]
                         }]
                },
            generate_type_generators(Types, LineNumber+3, 
                                     [F2|[F|Acc]]); 
        {Name,{type,_L_Num,union,Enums},[]} ->
            Elements =  [enums_abstract(LineNumber+1, Enums) ],
            F = {function, LineNumber,
                 Name,0,[{clause,LineNumber,[],[],
                          [{call, LineNumber +1, 
                            {atom,LineNumber+1,elements},
                            Elements}]
                         }]
                },
            generate_type_generators(Types, LineNumber+2, 
                                     [F|Acc]);
        {int,{type,_L_Num,_,[]},[]} ->
            generate_type_generators(Types, LineNumber, Acc);
        {Name,{type,_L_Num,string,[]},[]} ->
            F = {function, LineNumber,
                 Name,0,[{clause,LineNumber,[],[], 
                          [{call, LineNumber +1, {atom,LineNumber+1,fix_string}, []}]
                         }]
                },
            generate_type_generators(Types, LineNumber+2, [F|Acc]);
         {Name,{type,_L_Num,float,[]},[]} ->
            F = {function, LineNumber,
                 Name,0,[{clause,LineNumber,[],[],
                          [{call, LineNumber +1, {atom,LineNumber+1,fix_float}, []}]
                         }]
                },
            generate_type_generators(Types, LineNumber+2, [F|Acc]);
         {Name,{type,_L_Num,uTCTimestamp,[]},[]} ->
            F = {function, LineNumber,
                 Name,0,[{clause,LineNumber,[],[],
                          [{call, LineNumber +1, {atom,LineNumber+1,uTCTimestamp}, []}]
                         }]
                },
            generate_type_generators(Types, LineNumber+2, [F|Acc]);
         {Name,{type,_L_Num,uTCTimeOnly,[]},[]} ->
            F = {function, LineNumber,
                 Name,0,[{clause,LineNumber,[],[],
                          [{call, LineNumber +1, {atom,LineNumber+1,uTCTimeOnly}, []}]
                         }]
                },
            generate_type_generators(Types, LineNumber+2, [F|Acc]);
         {Name,{type,_L_Num,uTCDateOnly,[]},[]} ->
            F = {function, LineNumber,
                 Name,0,[{clause,LineNumber,[],[],
                          [{call, LineNumber +1, {atom,LineNumber+1,uTCDateOnly}, []}]
                         }]
                },
            generate_type_generators(Types, LineNumber+2, [F|Acc]);
         {Name,{type,_L_Num,localMktDate,[]},[]} ->
            F = {function, LineNumber,
                 Name,0,[{clause,LineNumber,[],[],
                          [{call, LineNumber +1, {atom,LineNumber+1,localMktDate}, []}]
                         }]
                },
            generate_type_generators(Types, LineNumber+2, [F|Acc]);
        {Name,{type,_L_Num,Generator,[]},[]} ->
            F = {function, LineNumber,
                 Name,0,[{clause,LineNumber,[],[],
                          [{call, LineNumber +1, {atom,LineNumber+1,Generator}, []}]
                         }]
                },
            generate_type_generators(Types, LineNumber+2, [F|Acc]);
        _Else -> 
            generate_type_generators(Types, LineNumber, Acc)
    end.

enums_abstract(LineNumber, []) ->
    {nil, LineNumber};
enums_abstract(LineNumber, [{Atom,_,Value}|T]) ->
    {cons, LineNumber, {Atom, LineNumber, Value},
     enums_abstract(LineNumber, T)}.

%% ====================================================================
%% record generators 
%% ====================================================================
generate_record_generators(Records, Line) ->
    generate_record_generators(Records, Line, []).

generate_record_generators([], LineNumber, Acc) ->
    {Acc, LineNumber};
generate_record_generators([{standardHeader, Fields}|Records], LineNumber, Acc) ->
    {NewLine, RecordFields} = convert_fields(Fields, LineNumber+2, []),
    F = {function,LineNumber,standardHeader,1,
    [{clause,LineNumber,[{var,LineNumber, '_Var'}],[],
            [{record,LineNumber+1,standardHeader,
              RecordFields
             }
            ]}]}, 
    generate_record_generators(Records, NewLine+2, [F|Acc]);
generate_record_generators([{Name, Fields}|Records], LineNumber, Acc) ->
    {NewLine, RecordFields} = convert_fields(Fields, LineNumber+2, []),
    F = {function,LineNumber,Name,0,
    [{clause,LineNumber,[],[],
       [{match,LineNumber+1,
        {var,LineNumber+1,'_Var'},
        {atom,LineNumber+1,Name}},
            {record,LineNumber+1,Name,
              RecordFields
             }
            ]}]},
    generate_record_generators(Records, NewLine+2, [F|Acc]).

convert_fields([], L, Acc) ->
    {L, Acc};
convert_fields( [standardHeader|Fields], L, Acc )->
    R = {record_field,L,
        {atom,L,standardHeader},
            {call,L,{atom,L,standardHeader},[{var,L,'_Var'}]}},
    convert_fields(Fields, L+1, [R|Acc]);
convert_fields( [msgType|Fields], L, Acc )->
    R = {record_field,L,
        {atom,L,msgType},
            {call,L,{atom,L,msgType},[{var,L,'_Var'}]}},
    convert_fields(Fields, L+1, [R|Acc]);
convert_fields([Name|Fields], L, Acc )->
    NameAsString = erlang:atom_to_list(Name),
    R = case string:sub_string(NameAsString, 1,3) of
        "rgr" ->
            {record_field,L,
             {atom,L,Name},
             {cons, L, {call,L,{atom,L,Name},[]}, {nil, L}}};
        _Ese ->
            {record_field,L,
             {atom,L,Name},
             {call,L,{atom,L,Name},[]}}
    end,
    convert_fields(Fields, L+1, [R|Acc]).
