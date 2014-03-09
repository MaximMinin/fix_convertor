%% Author: Maxim Minin
%% Created: 15.05.2012
%% Description: TODO: Add description to fix_4_1_convertor_test
-module(convertor_fix_4_2_test).

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
    RecA = #marketDataIncrementalRefresh{ standardHeader = #standardHeader{beginString = "FIX.4.2",
                                                                                bodyLength = 97,
                                                                                msgType = marketDataIncrementalRefresh,
                                                                                senderCompID = "SNDR",
                                                                                targetCompID = "TRGT",
                                                                                msgSeqNum = 2,
                                                                                sendingTime = {{2011,8,2},{10,0,0}}},
                                             rgr_marketDataIncrementalRefresh_268 = 
                                                 [#rgr_marketDataIncrementalRefresh_268{mDUpdateAction = change,
                                                                                                     mDEntryRefID = "0001",
                                                                                                    mDEntryPx = 10},
                                                  #rgr_marketDataIncrementalRefresh_268{mDUpdateAction = change,
                                                                                                    mDEntryRefID = "0002",
                                                                                                    mDEntryPx = 11}],
                                            standardTrailer = #standardTrailer{checkSum = "114"}},
    RecAA = fix_convertor:fix2record(A, 'FIX 4.2'),
    ?assertEqual(RecA, RecAA),
    BinA = fix_convertor:record2fix(RecA, 'FIX 4.2'),
    ?assertEqual(A, BinA),
    Nums = lists:seq(1, 5000),
    T1 = erlang:now(),
    lists:map(fun(_X) -> fix_convertor:fix2record(A, 'FIX 4.2') end, Nums),
    T2 = erlang:now(),
    lists:map(fun(_X) -> fix_convertor:format(RecA, 'FIX 4.2') end, Nums),
    T3 = erlang:now(),
    lists:map(fun(_X) -> fix_convertor:record2fix(RecA, 'FIX 4.2') end, Nums),
    T4 = erlang:now(),
    Dif = timer:now_diff(T2, T1),
    Dif2 = timer:now_diff(T3, T2),
    Dif3 = timer:now_diff(T4, T3),
    ?assert(Dif < 2000000),
    ?assert(Dif2 < 2000000),
    ?assert(Dif3 < 2000000).
