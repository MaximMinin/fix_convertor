%% Author: Maxim Minin
%% Created: 15.05.2012
%% Description: TODO: Add description to fix_4_1_convertor_test
-module(fix_4_2_convertor_test).

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
    A = <<"8=FIX.4.2",1,"9=97",1,"35=X",1,
            "49=SNDR",1,"56=TRGT",1,"34=2",1,"52=20110802-10:00:00",1,
            "268=2",1,
            "279=1",1,"280=0001",1,"270=10",1,
            "279=1",1,"280=0002",1,"270=11",1,
            "10=114",1,"">>,
    RecA = #marketDataIncrementalRefresh{ standardHeader = #standardHeader{beginString = <<"FIX.4.2">>,
                                                                                bodyLength = 97,
                                                                                msgType = marketDataIncrementalRefresh,
                                                                                senderCompID = <<"SNDR">>,
                                                                                targetCompID = <<"TRGT">>,
                                                                                msgSeqNum = 2,
                                                                                sendingTime = <<"20110802-10:00:00">>},
                                             repeatingReg_marketDataIncrementalRefresh_268 = 
                                                 [#repeatingReg_marketDataIncrementalRefresh_268{mDUpdateAction = change,
                                                                                                     mDEntryRefID = <<"0001">>,
                                                                                                    mDEntryPx = 10},
                                                  #repeatingReg_marketDataIncrementalRefresh_268{mDUpdateAction = change,
                                                                                                    mDEntryRefID = <<"0002">>,
                                                                                                    mDEntryPx = 11}],
                                            standardTrailer = #standardTrailer{checkSum = <<"114">>}},
    RecAA = convertor:convertFixToRecord(A, "FIX_4_2"),
    ?assertEqual(RecA, RecAA),
    BinA = convertor:convertRecordToFix(RecA, "FIX_4_2"),
    ?assertEqual(A, BinA),
    Nums = lists:seq(1, 5000),
    T1 = erlang:now(),
    lists:map(fun(_X) -> convertor:convertFixToRecord(A, "FIX_4_2") end, Nums),
    T2 = erlang:now(),
    Dif = timer:now_diff(T2, T1),
    ?assert(Dif < 1000000).

