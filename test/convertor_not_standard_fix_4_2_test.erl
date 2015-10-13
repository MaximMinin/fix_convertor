%% Author: Maxim Minin
%% Created: 15.05.2015
%% Description: TODO: Add description to convertor_not_standard_fix_4_2_test
-module(convertor_not_standard_fix_4_2_test).

%%
%% Include files
%%
-include_lib("eunit/include/eunit.hrl").
-include("FIX_4_2.hrl").
%%
%% Exported Functions
%%

%%
%% API Functions
%%

simple_test()->
    A = <<"8=FIX.4.2",1,"9=126",1,"35=UTS",1,"49=ID",1,"56=ID2",1, "34=302",1,"97=Y",1,
          "52=20151009-09:01:37",1,"122=20151009-09:01:34",1,
          "100=EX",1,"553=ID3",1,"926=2",1,"927=Unsolicited Trader Logout",1,
          "10=140",1>>,
    {Rec, Fields} = fix_convertor:fix2record(A, 'FIX 4.2'),
    io:format("REC: ~p FIELDS: ~p~n", [Rec, Fields]),
    NewRec = fix_convertor:set_msg_seqnum(Rec, 13, 'FIX 4.2'),
    io:format("REC PR: ~p~n", [fix_convertor:format(NewRec, 'FIX 4.2')]),
    B = fix_convertor:record2fix(Rec, Fields, 'FIX 4.2'),
    io:format("BIN A: ~s~n", [A]),
    io:format("BIN B: ~s~n", [B]),
    ?assertEqual(A, B).
