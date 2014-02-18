%% Author: Maxim Minin
%% Created: 15.05.2012
%% Description: TODO: Add description to fix_4_1_convertor_test
-module(convertor_fix_4_1_test).

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
    A = <<"8=FIX.4.1",1,"9=73",1,"35=0",1,
          "49=BRKR",1,"56=INVMGR",1,"34=235",1,
          "52=19980604-07:58:28",1,"112=19980604-07:58:28",1,
          "10=235",1,"">>,
    B = <<"8=FIX.4.1",1,"9=108",1,"35=6",1,
          "49=BRKR",1,"56=INVMGR",1,"34=236",1,
          "52=19980604-07:58:48",1,"23=115685",1,
          "28=N",1,"55=SPMI.MI",1,"54=2",1,
          "27=L",1,
          "44=10100.000000",1,"25=H",1,"10=228",1,"">>,
    C = <<"8=FIX.4.1",1,"9=61",1,"35=A",1,"49=INVMGR",1,"56=BRKR",1,
          "34=1",1,"52=20000426-12:05:06",1,"98=0",1,"108=30",1,"10=044",1,"">>,
    RecA = #heartbeat{standardHeader = #standardHeader{beginString = "FIX.4.1", 
                                                         bodyLength = 73, 
                                                         msgType = heartbeat,
                                                         senderCompID = "BRKR",
                                                         targetCompID = "INVMGR",
                                                         msgSeqNum = 235,
                                                         sendingTime = "19980604-07:58:28"}, 
                      testReqID = "19980604-07:58:28", 
                      standardTrailer = #standardTrailer{checkSum = "235"}},
    RecB = #iOI{ standardHeader = #standardHeader{beginString = "FIX.4.1",
                                                   bodyLength = 108,
                                                   msgType = iOI,
                                                   senderCompID = "BRKR",
                                                   targetCompID = "INVMGR",
                                                   msgSeqNum = 236,
                                                   sendingTime = "19980604-07:58:48"
                                                   },
                iOIid = "115685",
                iOITransType = new,
                symbol = "SPMI.MI",
                side = sell,
                iOIShares = large,
                price = 10100.0,
                iOIQltyInd = high,
                standardTrailer = #standardTrailer{checkSum = "228"}
                },
    RecC = #logon{standardHeader = #standardHeader{beginString = "FIX.4.1",
                                                     bodyLength = 61,
                                                     msgType = logon,
                                                     senderCompID = "INVMGR",
                                                     targetCompID = "BRKR",
                                                     msgSeqNum = 1,
                                                     sendingTime = "20000426-12:05:06"},
                  encryptMethod = none,
                  heartBtInt = 30,
                  standardTrailer = #standardTrailer{checkSum = "044"} 
                  },
    RecAA = convertor:convertFixToRecord(A, 'FIX 4.1'),
    RecBB = convertor:convertFixToRecord(B, 'FIX 4.1'),
    RecCC = convertor:convertFixToRecord(C, 'FIX 4.1'),
    ?assertEqual(RecA, RecAA),
    ?assertEqual(RecB, RecBB),
    ?assertEqual(RecC, RecCC),
    BinA = convertor:convertRecordToFix(RecA, 'FIX 4.1'),
    BinB = convertor:convertRecordToFix(RecBB, 'FIX 4.1'),
    BinC = convertor:convertRecordToFix(RecCC, 'FIX 4.1'),
    ?assertEqual(A, BinA),
    ?assertEqual(B, BinB),
    ?assertEqual(C, BinC),
    ?assertEqual(convertor:format(RecB, 'FIX 4.1'),
                 convertor:format(RecBB, 'FIX 4.1')),
    ?assertEqual(convertor:format(#email{}, 'FIX 4.1'),
                 "rgr_email_146=[],rgr_email_33=[]").
