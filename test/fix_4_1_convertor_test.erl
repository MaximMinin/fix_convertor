%% Author: Maxim Minin
%% Created: 15.05.2012
%% Description: TODO: Add description to fix_4_1_convertor_test
-module(fix_4_1_convertor_test).

%%
%% Include files
%%
-include_lib("eunit/include/eunit.hrl").
-include("FIX_4_1.hrl").

%%
%% Exported Functions
%%

%%
%% API Functions
%%

simple_test()->
    A = <<"8=FIX.4.1",1,"9=112",1,"35=0",1,
          "49=BRKR",1,"56=INVMGR",1,"34=235",1,
          "52=19980604-07:58:28",1,"112=19980604-07:58:28",1,
          "10=021",1,"">>,
    B = <<"8=FIX.4.1",1,"9=154",1,"35=6",1,
          "49=BRKR",1,"56=INVMGR",1,"34=236",1,
          "52=19980604-07:58:48",1,"23=115685",1,
          "28=N",1,"55=SPMI.MI",1,"54=2",1,
          "27=200000",1,
          "44=10100.000000",1,"25=H",1,"10=159",1,"">>,
    C = <<"8=FIX.4.1",1,"9=61",1,"35=A",1,"49=INVMGR",1,"56=BRKR",1,
          "34=1",1,"52=20000426-12:05:06",1,"98=0",1,"108=30",1,"10=157",1,"">>,
    RecA = #heartbeat{standardHeader = #standardHeader{beginString = <<"FIX.4.1">>, 
                                                         bodyLength = 112, 
                                                         msgType = heartbeat,
                                                         senderCompID = <<"BRKR">>,
                                                         targetCompID = <<"INVMGR">>,
                                                         msgSeqNum = 235,
                                                         sendingTime = <<"19980604-07:58:28">>}, 
                      testReqID = <<"19980604-07:58:28">>, 
                      standardTrailer = #standardTrailer{checkSum = <<"021">>}},
    RecB = #iOI{ standardHeader = #standardHeader{beginString = <<"FIX.4.1">>,
                                                   bodyLength = 154,
                                                   msgType = iOI,
                                                   senderCompID = <<"BRKR">>,
                                                   targetCompID = <<"INVMGR">>,
                                                   msgSeqNum = 236,
                                                   sendingTime = <<"19980604-07:58:48">>
                                                   },
                iOIid = <<"115685">>,
                iOITransType = new,
                symbol = <<"SPMI.MI">>,
                side = sell,
                iOIShares = <<"200000">>,
                price = 10100.0,
                iOIQltyInd = high,
                standardTrailer = #standardTrailer{checkSum = <<"159">>}
                },
    RecC = #logon{standardHeader = #standardHeader{beginString = <<"FIX.4.1">>,
                                                     bodyLength = 61,
                                                     msgType = logon,
                                                     senderCompID = <<"INVMGR">>,
                                                     targetCompID = <<"BRKR">>,
                                                     msgSeqNum = 1,
                                                     sendingTime = <<"20000426-12:05:06">>},
                  encryptMethod = none,
                  heartBtInt = 30,
                  standardTrailer = #standardTrailer{checkSum = <<"157">>} 
                  },
    RecAA = convertor:convertFixToRecord(A, "FIX_4_1"),
    RecBB = convertor:convertFixToRecord(B, "FIX_4_1"),
    RecCC = convertor:convertFixToRecord(C, "FIX_4_1"),
    ?assertEqual(RecA, RecAA),
    ?assertEqual(RecB, RecBB),
    ?assertEqual(RecC, RecCC),
    BinA = convertor:convertRecordtoFix(RecA, "FIX_4_1"),
    BinB = convertor:convertRecordtoFix(RecBB, "FIX_4_1"),
    BinC = convertor:convertRecordtoFix(RecCC, "FIX_4_1"),
    io:format("~n~w~n~w", [A, BinA]),
    ?assertEqual(A, BinA),
    ?assertEqual(B, BinB),
    ?assertEqual(C, BinC).

