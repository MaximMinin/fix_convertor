%% @author Maxim Minin 
%% @doc @todo Add description to fix_4_4_convertor_proper_test.
-module(fix_4_4_convertor_proper_test). 

%%       
%% Include files  
%%
-include_lib("proper/include/proper.hrl").   
-include("FIX_4_4.hrl").  

-compile([{no_auto_import, [date/0, time/0]}, 
          {parse_transform, a_generator_transform}, 
          export_all, debug_info]). 
 
-define(FIXVERSION, 'FIX 4.4').   
  
%% ====================================================================
%% API functions
%% ====================================================================

%% ====================================================================
%% proper:quickcheck(fix_4_1_convertor_proper_test:prop_convertor()).
%% ====================================================================
prop_convertor() ->
    ?FORALL({Record, Num}, {test_record(), nat()},
    begin
    Rec = fix_convertor:fix2record(
             fix_convertor:record2fix(Record,
                                          ?FIXVERSION),
             ?FIXVERSION),
    Record2 = fix_convertor:set_msg_seqnum(Record, Num, ?FIXVERSION),
    Rec2 = fix_convertor:set_msg_seqnum(Rec, Num, ?FIXVERSION),
    ?WHENFAIL(io:format("NEW     :~p|~nORIGINAL:~p|~n",
                        [Rec2, Record2]),
             is_eq(Rec2, Record2)) end).


%% ====================================================================
%% Internal functions
%% ====================================================================

is_eq(Rec1, Rec2) -> 
    L1 = erlang:tuple_to_list(Rec1),
    L2 = erlang:tuple_to_list(Rec2),
    H1 = lists:nth(2, L1),
    H2 = lists:nth(2, L2),
    T1 = lists:last(L1),
    T2 = lists:last(L2), 
    lists:sublist(L1, 3, length(L1)-3) ==
        lists:sublist(L2, 3, length(L2)-3) andalso
    erlang:hd(L1)  == erlang:hd(L2) 
    andalso 
    H1#standardHeader{origSendingTime= not_to_check,
                      beginString = not_to_check,
                      bodyLength = not_to_check} == 
        H2#standardHeader{origSendingTime= not_to_check,
                          beginString = not_to_check,
                          bodyLength = not_to_check}
    andalso
    T1#standardTrailer{signature=not_to_check,
                       checkSum = not_to_check} == 
        T2#standardTrailer{signature=not_to_check,
                           checkSum = not_to_check}.
 
  
test_record() -> 
    ?LET(M, msgType(), ?MODULE:M()).

fix_string() -> 
    list(choose(36, 127)).

fix_float() -> 
    ?LET(F, float(),     
         begin
             [Fr] = io_lib:format("~.6f",[F*10.0]),
             list_to_float(Fr)
         end).

uTCTimestamp() -> 
    erlang:universaltime().
