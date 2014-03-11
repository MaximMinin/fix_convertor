%% This module is automatically generated - do not edit it!!!
%%TODO: funktion to convert date and time types
-module(util_convert_to_record_FIX_4_0).

%%
%% Include files
%%
-include("FIX_4_0.hrl").
    
%%
%% Exported Functions
%%
-export([convert/2, reconvert/2, getMessageName/1, 
         getRecord/1, getFieldName/1, getTagId/1,
         setFieldInRecord/4, setMsgSeqNum/2,
         get_record_def/1]).
    
%%
%% API Functions
%%

setMsgSeqNum(Record, Num) ->
    Header = erlang:element(2, Record),
    NewHeader = Header#standardHeader{msgSeqNum = Num},
    erlang:setelement(2, Record, NewHeader).

convert(account, Bin) -> 
   binary_to_list(Bin);
convert(advId, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(advRefID, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(advSide, <<"B">>) -> 
    buy;
convert(advSide, <<"S">>) -> 
    sell;
convert(advSide, <<"T">>) -> 
    trade;
convert(advSide, <<"X">>) -> 
    cross;
convert(advTransType, <<"C">>) -> 
    cancel;
convert(advTransType, <<"N">>) -> 
    new;
convert(advTransType, <<"R">>) -> 
    replace;
convert(avgPx, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(beginSeqNo, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(beginString, Bin) -> 
   binary_to_list(Bin);
convert(bodyLength, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(checkSum, Bin) -> 
   binary_to_list(Bin);
convert(clOrdID, Bin) -> 
   binary_to_list(Bin);
convert(commission, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(commType, <<"1">>) -> 
    perUnit;
convert(commType, <<"2">>) -> 
    percent;
convert(commType, <<"3">>) -> 
    absolute;
convert(cumQty, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(currency, Bin) -> 
   binary_to_list(Bin);
convert(endSeqNo, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(execID, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(execInst, <<"0">>) -> 
    stayOnOfferSide;
convert(execInst, <<"1">>) -> 
    notHeld;
convert(execInst, <<"2">>) -> 
    work;
convert(execInst, <<"3">>) -> 
    goAlong;
convert(execInst, <<"4">>) -> 
    overTheDay;
convert(execInst, <<"5">>) -> 
    held;
convert(execInst, <<"6">>) -> 
    participateDoNotInitiate;
convert(execInst, <<"7">>) -> 
    strictScale;
convert(execInst, <<"8">>) -> 
    tryToScale;
convert(execInst, <<"9">>) -> 
    stayOnBidSide;
convert(execInst, <<"A">>) -> 
    noCross;
convert(execInst, <<"B">>) -> 
    oKToCross;
convert(execInst, <<"C">>) -> 
    callFirst;
convert(execInst, <<"D">>) -> 
    percentOfVolume;
convert(execInst, <<"E">>) -> 
    doNotIncrease;
convert(execInst, <<"F">>) -> 
    doNotReduce;
convert(execInst, <<"G">>) -> 
    allOrNone;
convert(execInst, <<"I">>) -> 
    institutionsOnly;
convert(execInst, <<"L">>) -> 
    lastPeg;
convert(execInst, <<"M">>) -> 
    midPricePeg;
convert(execInst, <<"N">>) -> 
    nonNegotiable;
convert(execInst, <<"O">>) -> 
    openingPeg;
convert(execInst, <<"P">>) -> 
    marketPeg;
convert(execInst, <<"R">>) -> 
    primaryPeg;
convert(execInst, <<"S">>) -> 
    suspend;
convert(execRefID, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(execTransType, <<"0">>) -> 
    new;
convert(execTransType, <<"1">>) -> 
    cancel;
convert(execTransType, <<"2">>) -> 
    correct;
convert(execTransType, <<"3">>) -> 
    status;
convert(handlInst, <<"1">>) -> 
    automatedExecutionNoIntervention;
convert(handlInst, <<"2">>) -> 
    automatedExecutionInterventionOK;
convert(handlInst, <<"3">>) -> 
    manualOrder;
convert(iDSource, <<"1">>) -> 
    cUSIP;
convert(iDSource, <<"2">>) -> 
    sEDOL;
convert(iDSource, <<"3">>) -> 
    qUIK;
convert(iDSource, <<"4">>) -> 
    iSINNumber;
convert(iDSource, <<"5">>) -> 
    rICCode;
convert(iOIid, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(iOIOthSvc, <<"A">>) -> 
    autex;
convert(iOIOthSvc, <<"B">>) -> 
    bridge;
convert(iOIQltyInd, <<"H">>) -> 
    high;
convert(iOIQltyInd, <<"L">>) -> 
    low;
convert(iOIQltyInd, <<"M">>) -> 
    medium;
convert(iOIRefID, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(iOIShares, <<"L">>) -> 
    large;
convert(iOIShares, <<"M">>) -> 
    medium;
convert(iOIShares, <<"S">>) -> 
    small;
convert(iOITransType, <<"C">>) -> 
    cancel;
convert(iOITransType, <<"N">>) -> 
    new;
convert(iOITransType, <<"R">>) -> 
    replace;
convert(lastCapacity, <<"1">>) -> 
    agent;
convert(lastCapacity, <<"2">>) -> 
    crossAsAgent;
convert(lastCapacity, <<"3">>) -> 
    crossAsPrincipal;
convert(lastCapacity, <<"4">>) -> 
    principal;
convert(lastMkt, Bin) -> 
   binary_to_list(Bin);
convert(lastPx, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(lastShares, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(linesOfText, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(msgSeqNum, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(msgType, <<"0">>) -> 
    heartbeat;
convert(msgType, <<"1">>) -> 
    testRequest;
convert(msgType, <<"2">>) -> 
    resendRequest;
convert(msgType, <<"3">>) -> 
    reject;
convert(msgType, <<"4">>) -> 
    sequenceReset;
convert(msgType, <<"5">>) -> 
    logout;
convert(msgType, <<"6">>) -> 
    iOI;
convert(msgType, <<"7">>) -> 
    advertisement;
convert(msgType, <<"8">>) -> 
    executionReport;
convert(msgType, <<"9">>) -> 
    orderCancelReject;
convert(msgType, <<"A">>) -> 
    logon;
convert(msgType, <<"B">>) -> 
    news;
convert(msgType, <<"C">>) -> 
    email;
convert(msgType, <<"D">>) -> 
    orderSingle;
convert(msgType, <<"E">>) -> 
    newOrderList;
convert(msgType, <<"F">>) -> 
    orderCancelRequest;
convert(msgType, <<"G">>) -> 
    orderCancelReplaceRequest;
convert(msgType, <<"H">>) -> 
    orderStatusRequest;
convert(msgType, <<"J">>) -> 
    allocationInstruction;
convert(msgType, <<"K">>) -> 
    listCancelRequest;
convert(msgType, <<"L">>) -> 
    listExecute;
convert(msgType, <<"M">>) -> 
    listStatusRequest;
convert(msgType, <<"N">>) -> 
    listStatus;
convert(msgType, <<"P">>) -> 
    allocationInstructionAck;
convert(msgType, <<"Q">>) -> 
    dontKnowTrade;
convert(msgType, <<"R">>) -> 
    quoteRequest;
convert(msgType, <<"S">>) -> 
    quote;
convert(newSeqNo, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(orderID, Bin) -> 
   binary_to_list(Bin);
convert(orderQty, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(ordStatus, <<"0">>) -> 
    new;
convert(ordStatus, <<"1">>) -> 
    partiallyFilled;
convert(ordStatus, <<"2">>) -> 
    filled;
convert(ordStatus, <<"3">>) -> 
    doneForDay;
convert(ordStatus, <<"4">>) -> 
    canceled;
convert(ordStatus, <<"5">>) -> 
    replaced;
convert(ordStatus, <<"6">>) -> 
    pendingCancel;
convert(ordStatus, <<"7">>) -> 
    stopped;
convert(ordStatus, <<"8">>) -> 
    rejected;
convert(ordStatus, <<"9">>) -> 
    suspended;
convert(ordStatus, <<"A">>) -> 
    pendingNew;
convert(ordStatus, <<"B">>) -> 
    calculated;
convert(ordStatus, <<"C">>) -> 
    expired;
convert(ordType, <<"1">>) -> 
    market;
convert(ordType, <<"2">>) -> 
    limit;
convert(ordType, <<"3">>) -> 
    stop;
convert(ordType, <<"4">>) -> 
    stopLimit;
convert(ordType, <<"5">>) -> 
    marketOnClose;
convert(ordType, <<"6">>) -> 
    withOrWithout;
convert(ordType, <<"7">>) -> 
    limitOrBetter;
convert(ordType, <<"8">>) -> 
    limitWithOrWithout;
convert(ordType, <<"9">>) -> 
    onBasis;
convert(ordType, <<"A">>) -> 
    onClose;
convert(ordType, <<"B">>) -> 
    limitOnClose;
convert(ordType, <<"C">>) -> 
    forexMarket;
convert(ordType, <<"D">>) -> 
    previouslyQuoted;
convert(ordType, <<"E">>) -> 
    previouslyIndicated;
convert(ordType, <<"P">>) -> 
    pegged;
convert(origClOrdID, Bin) -> 
   binary_to_list(Bin);
convert(origTime, Bin) -> 
   binary_to_list(Bin);
convert(possDupFlag, <<"N">>) -> 
    originalTransmission;
convert(possDupFlag, <<"Y">>) -> 
    possibleDuplicate;
convert(price, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(refSeqNum, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(relatdSym, Bin) -> 
   binary_to_list(Bin);
convert(rule80A, <<"A">>) -> 
    agencySingleOrder;
convert(rule80A, <<"C">>) -> 
    proprietaryNonAlgo;
convert(rule80A, <<"D">>) -> 
    programOrderMember;
convert(rule80A, <<"I">>) -> 
    individualInvestor;
convert(rule80A, <<"J">>) -> 
    proprietaryAlgo;
convert(rule80A, <<"K">>) -> 
    agencyAlgo;
convert(rule80A, <<"M">>) -> 
    programOrderOtherMember;
convert(rule80A, <<"N">>) -> 
    agentForOtherMember;
convert(rule80A, <<"U">>) -> 
    agencyIndexArb;
convert(rule80A, <<"W">>) -> 
    allOtherOrdersAsAgentForOtherMember;
convert(rule80A, <<"Y">>) -> 
    agencyNonAlgo;
convert(securityID, Bin) -> 
   binary_to_list(Bin);
convert(senderCompID, Bin) -> 
   binary_to_list(Bin);
convert(senderSubID, Bin) -> 
   binary_to_list(Bin);
convert(sendingTime, Bin) -> 
   binary_to_list(Bin);
convert(shares, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(side, <<"1">>) -> 
    buy;
convert(side, <<"2">>) -> 
    sell;
convert(side, <<"3">>) -> 
    buyMinus;
convert(side, <<"4">>) -> 
    sellPlus;
convert(side, <<"5">>) -> 
    sellShort;
convert(side, <<"6">>) -> 
    sellShortExempt;
convert(symbol, Bin) -> 
   binary_to_list(Bin);
convert(targetCompID, Bin) -> 
   binary_to_list(Bin);
convert(targetSubID, Bin) -> 
   binary_to_list(Bin);
convert(text, Bin) -> 
   binary_to_list(Bin);
convert(timeInForce, <<"0">>) -> 
    day;
convert(timeInForce, <<"1">>) -> 
    goodTillCancel;
convert(timeInForce, <<"2">>) -> 
    atTheOpening;
convert(timeInForce, <<"3">>) -> 
    immediateOrCancel;
convert(timeInForce, <<"4">>) -> 
    fillOrKill;
convert(timeInForce, <<"5">>) -> 
    goodTillCrossing;
convert(timeInForce, <<"6">>) -> 
    goodTillDate;
convert(transactTime, Bin) -> 
   binary_to_list(Bin);
convert(urgency, <<"0">>) -> 
    normal;
convert(urgency, <<"1">>) -> 
    flash;
convert(urgency, <<"2">>) -> 
    background;
convert(validUntilTime, Bin) -> 
   binary_to_list(Bin);
convert(settlmntTyp, <<"0">>) -> 
    regular;
convert(settlmntTyp, <<"1">>) -> 
    cash;
convert(settlmntTyp, <<"2">>) -> 
    nextDay;
convert(settlmntTyp, <<"3">>) -> 
    tPlus2;
convert(settlmntTyp, <<"4">>) -> 
    tPlus3;
convert(settlmntTyp, <<"5">>) -> 
    tPlus4;
convert(settlmntTyp, <<"6">>) -> 
    future;
convert(settlmntTyp, <<"7">>) -> 
    whenAndIfIssued;
convert(settlmntTyp, <<"8">>) -> 
    sellersOption;
convert(settlmntTyp, <<"9">>) -> 
    tPlus5;
convert(futSettDate, Bin) -> 
   binary_to_list(Bin);
convert(symbolSfx, Bin) -> 
   binary_to_list(Bin);
convert(listID, Bin) -> 
   binary_to_list(Bin);
convert(listSeqNo, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(listNoOrds, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(listExecInst, Bin) -> 
   binary_to_list(Bin);
convert(allocID, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(allocTransType, <<"0">>) -> 
    new;
convert(allocTransType, <<"1">>) -> 
    replace;
convert(allocTransType, <<"2">>) -> 
    cancel;
convert(refAllocID, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(noOrders, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(avgPrxPrecision, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(tradeDate, Bin) -> 
   binary_to_list(Bin);
convert(execBroker, Bin) -> 
   binary_to_list(Bin);
convert(openClose, Bin) -> 
   binary_to_list(Bin);
convert(noAllocs, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(allocAccount, Bin) -> 
   binary_to_list(Bin);
convert(allocShares, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(processCode, <<"0">>) -> 
    regular;
convert(processCode, <<"1">>) -> 
    softDollar;
convert(processCode, <<"2">>) -> 
    stepIn;
convert(processCode, <<"3">>) -> 
    stepOut;
convert(processCode, <<"4">>) -> 
    softDollarStepIn;
convert(processCode, <<"5">>) -> 
    softDollarStepOut;
convert(processCode, <<"6">>) -> 
    planSponsor;
convert(noRpts, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(rptSeq, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(cxlQty, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(noDlvyInst, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(dlvyInst, Bin) -> 
   binary_to_list(Bin);
convert(allocStatus, <<"0">>) -> 
    accepted;
convert(allocStatus, <<"1">>) -> 
    blockLevelReject;
convert(allocStatus, <<"2">>) -> 
    accountLevelReject;
convert(allocStatus, <<"3">>) -> 
    received;
convert(allocRejCode, <<"0">>) -> 
    unknownAccount;
convert(allocRejCode, <<"1">>) -> 
    incorrectQuantity;
convert(allocRejCode, <<"2">>) -> 
    incorrectAveragegPrice;
convert(allocRejCode, <<"3">>) -> 
    unknownExecutingBrokerMnemonic;
convert(allocRejCode, <<"4">>) -> 
    commissionDifference;
convert(allocRejCode, <<"5">>) -> 
    unknownOrderID;
convert(allocRejCode, <<"6">>) -> 
    unknownListID;
convert(allocRejCode, <<"7">>) -> 
    otherSeeText;
convert(signature, Bin) -> 
   binary_to_list(Bin);
convert(secureDataLen, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(secureData, Bin) -> 
   binary_to_list(Bin);
convert(brokerOfCredit, Bin) -> 
   binary_to_list(Bin);
convert(signatureLength, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(emailType, <<"0">>) -> 
    new;
convert(emailType, <<"1">>) -> 
    reply;
convert(emailType, <<"2">>) -> 
    adminReply;
convert(rawDataLength, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(rawData, Bin) -> 
   binary_to_list(Bin);
convert(possResend, Bin) -> 
   binary_to_list(Bin);
convert(encryptMethod, <<"0">>) -> 
    none;
convert(encryptMethod, <<"1">>) -> 
    pKCS;
convert(encryptMethod, <<"2">>) -> 
    dES;
convert(encryptMethod, <<"3">>) -> 
    pKCSDES;
convert(encryptMethod, <<"4">>) -> 
    pGPDES;
convert(encryptMethod, <<"5">>) -> 
    pGPDESMD5;
convert(encryptMethod, <<"6">>) -> 
    pEM;
convert(stopPx, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(exDestination, <<"0">>) -> 
    none;
convert(exDestination, <<"4">>) -> 
    pOSIT;
convert(cxlRejReason, <<"0">>) -> 
    tooLateToCancel;
convert(cxlRejReason, <<"1">>) -> 
    unknownOrder;
convert(ordRejReason, <<"0">>) -> 
    brokerCredit;
convert(ordRejReason, <<"1">>) -> 
    unknownSymbol;
convert(ordRejReason, <<"2">>) -> 
    exchangeClosed;
convert(ordRejReason, <<"3">>) -> 
    orderExceedsLimit;
convert(ordRejReason, <<"4">>) -> 
    tooLateToEnter;
convert(iOIQualifier, <<"A">>) -> 
    allOrNone;
convert(iOIQualifier, <<"C">>) -> 
    atTheClose;
convert(iOIQualifier, <<"I">>) -> 
    inTouchWith;
convert(iOIQualifier, <<"L">>) -> 
    limit;
convert(iOIQualifier, <<"M">>) -> 
    moreBehind;
convert(iOIQualifier, <<"O">>) -> 
    atTheOpen;
convert(iOIQualifier, <<"P">>) -> 
    takingAPosition;
convert(iOIQualifier, <<"Q">>) -> 
    atTheMarket;
convert(iOIQualifier, <<"S">>) -> 
    portfolioShown;
convert(iOIQualifier, <<"T">>) -> 
    throughTheDay;
convert(iOIQualifier, <<"V">>) -> 
    versus;
convert(iOIQualifier, <<"W">>) -> 
    indication;
convert(iOIQualifier, <<"X">>) -> 
    crossingOpportunity;
convert(waveNo, Bin) -> 
   binary_to_list(Bin);
convert(issuer, Bin) -> 
   binary_to_list(Bin);
convert(securityDesc, Bin) -> 
   binary_to_list(Bin);
convert(heartBtInt, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(clientID, Bin) -> 
   binary_to_list(Bin);
convert(minQty, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(maxFloor, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(testReqID, Bin) -> 
   binary_to_list(Bin);
convert(reportToExch, <<"N">>) -> 
    senderReports;
convert(reportToExch, <<"Y">>) -> 
    receiverReports;
convert(locateReqd, <<"N">>) -> 
    no;
convert(locateReqd, <<"Y">>) -> 
    yes;
convert(onBehalfOfCompID, Bin) -> 
   binary_to_list(Bin);
convert(onBehalfOfSubID, Bin) -> 
   binary_to_list(Bin);
convert(quoteID, Bin) -> 
   binary_to_list(Bin);
convert(netMoney, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(settlCurrAmt, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(settlCurrency, Bin) -> 
   binary_to_list(Bin);
convert(forexReq, <<"N">>) -> 
    doNotExecuteForexAfterSecurityTrade;
convert(forexReq, <<"Y">>) -> 
    executeForexAfterSecurityTrade;
convert(origSendingTime, Bin) -> 
   binary_to_list(Bin);
convert(gapFillFlag, <<"N">>) -> 
    sequenceReset;
convert(gapFillFlag, <<"Y">>) -> 
    gapFillMessage;
convert(noExecs, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(cxlType, <<"F">>) -> 
    fullRemainingQuantity;
convert(cxlType, <<"P">>) -> 
    partialCancel;
convert(expireTime, Bin) -> 
   binary_to_list(Bin);
convert(dKReason, <<"A">>) -> 
    unknownSymbol;
convert(dKReason, <<"B">>) -> 
    wrongSide;
convert(dKReason, <<"C">>) -> 
    quantityExceedsOrder;
convert(dKReason, <<"D">>) -> 
    noMatchingOrder;
convert(dKReason, <<"E">>) -> 
    priceExceedsLimit;
convert(dKReason, <<"Z">>) -> 
    other;
convert(deliverToCompID, Bin) -> 
   binary_to_list(Bin);
convert(deliverToSubID, Bin) -> 
   binary_to_list(Bin);
convert(iOINaturalFlag, <<"N">>) -> 
    notNatural;
convert(iOINaturalFlag, <<"Y">>) -> 
    natural;
convert(quoteReqID, Bin) -> 
   binary_to_list(Bin);
convert(bidPx, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(offerPx, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(bidSize, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(offerSize, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(noMiscFees, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(miscFeeAmt, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(miscFeeCurr, Bin) -> 
   binary_to_list(Bin);
convert(miscFeeType, <<"1">>) -> 
    regulatory;
convert(miscFeeType, <<"2">>) -> 
    tax;
convert(miscFeeType, <<"3">>) -> 
    localCommission;
convert(miscFeeType, <<"4">>) -> 
    exchangeFees;
convert(miscFeeType, <<"5">>) -> 
    stamp;
convert(miscFeeType, <<"6">>) -> 
    levy;
convert(miscFeeType, <<"7">>) -> 
    other;
convert(prevClosePx, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(_Name, Bin) ->
    Bin.
get_record_def(standardHeader) -> 
    [standardHeader, beginString, bodyLength, msgType, senderCompID, targetCompID, onBehalfOfCompID, deliverToCompID, secureDataLen, secureData, msgSeqNum, senderSubID, targetSubID, onBehalfOfSubID, deliverToSubID, possDupFlag, possResend, sendingTime, origSendingTime];
get_record_def(standardTrailer) -> 
    [standardTrailer, signatureLength, signature, checkSum];
get_record_def(heartbeat) -> 
    [heartbeat, [standardHeader], testReqID, [standardTrailer]];
get_record_def(testRequest) -> 
    [testRequest, [standardHeader], testReqID, [standardTrailer]];
get_record_def(resendRequest) -> 
    [resendRequest, [standardHeader], beginSeqNo, endSeqNo, [standardTrailer]];
get_record_def(reject) -> 
    [reject, [standardHeader], refSeqNum, text, [standardTrailer]];
get_record_def(sequenceReset) -> 
    [sequenceReset, [standardHeader], gapFillFlag, newSeqNo, [standardTrailer]];
get_record_def(logout) -> 
    [logout, [standardHeader], text, [standardTrailer]];
get_record_def(iOI) -> 
    [iOI, [standardHeader], iOIid, iOITransType, iOIRefID, symbol, symbolSfx, securityID, iDSource, issuer, securityDesc, side, iOIShares, price, currency, validUntilTime, iOIQltyInd, iOIOthSvc, iOINaturalFlag, iOIQualifier, text, [standardTrailer]];
get_record_def(advertisement) -> 
    [advertisement, [standardHeader], advId, advTransType, advRefID, symbol, symbolSfx, securityID, iDSource, issuer, securityDesc, advSide, shares, price, currency, transactTime, text, [standardTrailer]];
get_record_def(rgr_executionReport_136) -> 
    [rgr_executionReport_136, miscFeeAmt, miscFeeCurr, miscFeeType];
get_record_def(executionReport) -> 
    [executionReport, [standardHeader], orderID, clOrdID, clientID, execBroker, listID, execID, execTransType, execRefID, ordStatus, ordRejReason, account, settlmntTyp, futSettDate, symbol, symbolSfx, securityID, iDSource, issuer, securityDesc, side, orderQty, ordType, price, stopPx, currency, timeInForce, expireTime, execInst, rule80A, lastShares, lastPx, lastMkt, lastCapacity, cumQty, avgPx, tradeDate, transactTime, reportToExch, commission, commType, [[rgr_executionReport_136]], netMoney, settlCurrAmt, settlCurrency, text, [standardTrailer]];
get_record_def(orderCancelReject) -> 
    [orderCancelReject, [standardHeader], orderID, clOrdID, clientID, execBroker, listID, cxlRejReason, text, [standardTrailer]];
get_record_def(logon) -> 
    [logon, [standardHeader], encryptMethod, heartBtInt, rawDataLength, rawData, [standardTrailer]];
get_record_def(news) -> 
    [news, [standardHeader], origTime, urgency, relatdSym, linesOfText, text, rawDataLength, rawData, [standardTrailer]];
get_record_def(email) -> 
    [email, [standardHeader], emailType, origTime, relatdSym, orderID, clOrdID, linesOfText, text, rawDataLength, rawData, [standardTrailer]];
get_record_def(orderSingle) -> 
    [orderSingle, [standardHeader], clOrdID, clientID, execBroker, account, settlmntTyp, futSettDate, handlInst, execInst, minQty, maxFloor, exDestination, processCode, symbol, symbolSfx, securityID, iDSource, issuer, securityDesc, prevClosePx, side, locateReqd, orderQty, ordType, price, stopPx, currency, iOIid, quoteID, timeInForce, expireTime, commission, commType, rule80A, forexReq, settlCurrency, text, [standardTrailer]];
get_record_def(newOrderList) -> 
    [newOrderList, [standardHeader], listID, waveNo, listSeqNo, listNoOrds, listExecInst, clOrdID, clientID, execBroker, account, settlmntTyp, futSettDate, handlInst, execInst, minQty, maxFloor, exDestination, processCode, symbol, symbolSfx, securityID, iDSource, issuer, securityDesc, prevClosePx, side, locateReqd, orderQty, ordType, price, stopPx, currency, timeInForce, expireTime, commission, commType, rule80A, forexReq, settlCurrency, text, [standardTrailer]];
get_record_def(orderCancelRequest) -> 
    [orderCancelRequest, [standardHeader], origClOrdID, orderID, clOrdID, listID, cxlType, clientID, execBroker, symbol, symbolSfx, securityID, iDSource, issuer, securityDesc, side, orderQty, text, [standardTrailer]];
get_record_def(orderCancelReplaceRequest) -> 
    [orderCancelReplaceRequest, [standardHeader], orderID, clientID, execBroker, origClOrdID, clOrdID, listID, account, settlmntTyp, futSettDate, handlInst, execInst, minQty, maxFloor, exDestination, symbol, symbolSfx, securityID, iDSource, issuer, securityDesc, side, orderQty, ordType, price, stopPx, currency, timeInForce, expireTime, commission, commType, rule80A, forexReq, settlCurrency, text, [standardTrailer]];
get_record_def(orderStatusRequest) -> 
    [orderStatusRequest, [standardHeader], orderID, clOrdID, clientID, execBroker, symbol, symbolSfx, issuer, securityDesc, side, [standardTrailer]];
get_record_def(rgr_allocationInstruction_73) -> 
    [rgr_allocationInstruction_73, clOrdID, orderID, listID, waveNo];
get_record_def(rgr_allocationInstruction_124) -> 
    [rgr_allocationInstruction_124, execID, lastShares, lastPx, lastMkt];
get_record_def(rgr_allocationInstruction_136) -> 
    [rgr_allocationInstruction_136, miscFeeAmt, miscFeeCurr, miscFeeType];
get_record_def(rgr_allocationInstruction_78) -> 
    [rgr_allocationInstruction_78, allocAccount, allocShares, processCode, execBroker, clientID, commission, commType, noDlvyInst, brokerOfCredit, dlvyInst];
get_record_def(allocationInstruction) -> 
    [allocationInstruction, [standardHeader], allocID, allocTransType, refAllocID, [[rgr_allocationInstruction_73]], [[rgr_allocationInstruction_124]], side, symbol, symbolSfx, securityID, iDSource, issuer, securityDesc, shares, avgPx, currency, avgPrxPrecision, tradeDate, transactTime, settlmntTyp, futSettDate, netMoney, [[rgr_allocationInstruction_136]], settlCurrAmt, settlCurrency, openClose, text, [[rgr_allocationInstruction_78]], [standardTrailer]];
get_record_def(listCancelRequest) -> 
    [listCancelRequest, [standardHeader], listID, waveNo, text, [standardTrailer]];
get_record_def(listExecute) -> 
    [listExecute, [standardHeader], listID, waveNo, text, [standardTrailer]];
get_record_def(listStatusRequest) -> 
    [listStatusRequest, [standardHeader], listID, waveNo, text, [standardTrailer]];
get_record_def(rgr_listStatus_73) -> 
    [rgr_listStatus_73, clOrdID, cumQty, cxlQty, avgPx];
get_record_def(listStatus) -> 
    [listStatus, [standardHeader], listID, waveNo, noRpts, rptSeq, [[rgr_listStatus_73]], [standardTrailer]];
get_record_def(allocationInstructionAck) -> 
    [allocationInstructionAck, [standardHeader], clientID, execBroker, allocID, tradeDate, transactTime, allocStatus, allocRejCode, text, [standardTrailer]];
get_record_def(dontKnowTrade) -> 
    [dontKnowTrade, [standardHeader], orderID, execID, dKReason, symbol, side, orderQty, lastShares, lastPx, text, [standardTrailer]];
get_record_def(quoteRequest) -> 
    [quoteRequest, [standardHeader], quoteReqID, symbol, symbolSfx, securityID, iDSource, issuer, securityDesc, prevClosePx, side, orderQty, [standardTrailer]];
get_record_def(quote) -> 
    [quote, [standardHeader], quoteReqID, quoteID, symbol, symbolSfx, securityID, iDSource, issuer, securityDesc, bidPx, offerPx, bidSize, offerSize, validUntilTime, [standardTrailer]];
get_record_def(_Else) -> 
    error.

getRecord(standardHeader)->
    #standardHeader{};
getRecord(standardTrailer)->
    #standardTrailer{};
getRecord(heartbeat)->
    #heartbeat{};
getRecord(testRequest)->
    #testRequest{};
getRecord(resendRequest)->
    #resendRequest{};
getRecord(reject)->
    #reject{};
getRecord(sequenceReset)->
    #sequenceReset{};
getRecord(logout)->
    #logout{};
getRecord(iOI)->
    #iOI{};
getRecord(advertisement)->
    #advertisement{};
getRecord(rgr_executionReport_136)->
    #rgr_executionReport_136{};
getRecord(executionReport)->
    #executionReport{};
getRecord(orderCancelReject)->
    #orderCancelReject{};
getRecord(logon)->
    #logon{};
getRecord(news)->
    #news{};
getRecord(email)->
    #email{};
getRecord(orderSingle)->
    #orderSingle{};
getRecord(newOrderList)->
    #newOrderList{};
getRecord(orderCancelRequest)->
    #orderCancelRequest{};
getRecord(orderCancelReplaceRequest)->
    #orderCancelReplaceRequest{};
getRecord(orderStatusRequest)->
    #orderStatusRequest{};
getRecord(rgr_allocationInstruction_73)->
    #rgr_allocationInstruction_73{};
getRecord(rgr_allocationInstruction_124)->
    #rgr_allocationInstruction_124{};
getRecord(rgr_allocationInstruction_136)->
    #rgr_allocationInstruction_136{};
getRecord(rgr_allocationInstruction_78)->
    #rgr_allocationInstruction_78{};
getRecord(allocationInstruction)->
    #allocationInstruction{};
getRecord(listCancelRequest)->
    #listCancelRequest{};
getRecord(listExecute)->
    #listExecute{};
getRecord(listStatusRequest)->
    #listStatusRequest{};
getRecord(rgr_listStatus_73)->
    #rgr_listStatus_73{};
getRecord(listStatus)->
    #listStatus{};
getRecord(allocationInstructionAck)->
    #allocationInstructionAck{};
getRecord(dontKnowTrade)->
    #dontKnowTrade{};
getRecord(quoteRequest)->
    #quoteRequest{};
getRecord(quote)->
    #quote{}.
setFieldInRecord(standardHeader, beginString, Record, Value)->
   erlang:setelement(#standardHeader.beginString, Record, Value);
setFieldInRecord(standardHeader, bodyLength, Record, Value)->
   erlang:setelement(#standardHeader.bodyLength, Record, Value);
setFieldInRecord(standardHeader, msgType, Record, Value)->
   erlang:setelement(#standardHeader.msgType, Record, Value);
setFieldInRecord(standardHeader, senderCompID, Record, Value)->
   erlang:setelement(#standardHeader.senderCompID, Record, Value);
setFieldInRecord(standardHeader, targetCompID, Record, Value)->
   erlang:setelement(#standardHeader.targetCompID, Record, Value);
setFieldInRecord(standardHeader, onBehalfOfCompID, Record, Value)->
   erlang:setelement(#standardHeader.onBehalfOfCompID, Record, Value);
setFieldInRecord(standardHeader, deliverToCompID, Record, Value)->
   erlang:setelement(#standardHeader.deliverToCompID, Record, Value);
setFieldInRecord(standardHeader, secureDataLen, Record, Value)->
   erlang:setelement(#standardHeader.secureDataLen, Record, Value);
setFieldInRecord(standardHeader, secureData, Record, Value)->
   erlang:setelement(#standardHeader.secureData, Record, Value);
setFieldInRecord(standardHeader, msgSeqNum, Record, Value)->
   erlang:setelement(#standardHeader.msgSeqNum, Record, Value);
setFieldInRecord(standardHeader, senderSubID, Record, Value)->
   erlang:setelement(#standardHeader.senderSubID, Record, Value);
setFieldInRecord(standardHeader, targetSubID, Record, Value)->
   erlang:setelement(#standardHeader.targetSubID, Record, Value);
setFieldInRecord(standardHeader, onBehalfOfSubID, Record, Value)->
   erlang:setelement(#standardHeader.onBehalfOfSubID, Record, Value);
setFieldInRecord(standardHeader, deliverToSubID, Record, Value)->
   erlang:setelement(#standardHeader.deliverToSubID, Record, Value);
setFieldInRecord(standardHeader, possDupFlag, Record, Value)->
   erlang:setelement(#standardHeader.possDupFlag, Record, Value);
setFieldInRecord(standardHeader, possResend, Record, Value)->
   erlang:setelement(#standardHeader.possResend, Record, Value);
setFieldInRecord(standardHeader, sendingTime, Record, Value)->
   erlang:setelement(#standardHeader.sendingTime, Record, Value);
setFieldInRecord(standardHeader, origSendingTime, Record, Value)->
   erlang:setelement(#standardHeader.origSendingTime, Record, Value);
setFieldInRecord(standardTrailer, signatureLength, Record, Value)->
   erlang:setelement(#standardTrailer.signatureLength, Record, Value);
setFieldInRecord(standardTrailer, signature, Record, Value)->
   erlang:setelement(#standardTrailer.signature, Record, Value);
setFieldInRecord(standardTrailer, checkSum, Record, Value)->
   erlang:setelement(#standardTrailer.checkSum, Record, Value);
setFieldInRecord(heartbeat, standardHeader, Record, Value)->
    erlang:setelement(#heartbeat.standardHeader, Record, Value);
setFieldInRecord(heartbeat, testReqID, Record, Value)->
    erlang:setelement(#heartbeat.testReqID, Record, Value);
setFieldInRecord(heartbeat, standardTrailer, Record, Value)->
    erlang:setelement(#heartbeat.standardTrailer, Record, Value);
setFieldInRecord(testRequest, standardHeader, Record, Value)->
    erlang:setelement(#testRequest.standardHeader, Record, Value);
setFieldInRecord(testRequest, testReqID, Record, Value)->
    erlang:setelement(#testRequest.testReqID, Record, Value);
setFieldInRecord(testRequest, standardTrailer, Record, Value)->
    erlang:setelement(#testRequest.standardTrailer, Record, Value);
setFieldInRecord(resendRequest, standardHeader, Record, Value)->
    erlang:setelement(#resendRequest.standardHeader, Record, Value);
setFieldInRecord(resendRequest, beginSeqNo, Record, Value)->
    erlang:setelement(#resendRequest.beginSeqNo, Record, Value);
setFieldInRecord(resendRequest, endSeqNo, Record, Value)->
    erlang:setelement(#resendRequest.endSeqNo, Record, Value);
setFieldInRecord(resendRequest, standardTrailer, Record, Value)->
    erlang:setelement(#resendRequest.standardTrailer, Record, Value);
setFieldInRecord(reject, standardHeader, Record, Value)->
    erlang:setelement(#reject.standardHeader, Record, Value);
setFieldInRecord(reject, refSeqNum, Record, Value)->
    erlang:setelement(#reject.refSeqNum, Record, Value);
setFieldInRecord(reject, text, Record, Value)->
    erlang:setelement(#reject.text, Record, Value);
setFieldInRecord(reject, standardTrailer, Record, Value)->
    erlang:setelement(#reject.standardTrailer, Record, Value);
setFieldInRecord(sequenceReset, standardHeader, Record, Value)->
    erlang:setelement(#sequenceReset.standardHeader, Record, Value);
setFieldInRecord(sequenceReset, gapFillFlag, Record, Value)->
    erlang:setelement(#sequenceReset.gapFillFlag, Record, Value);
setFieldInRecord(sequenceReset, newSeqNo, Record, Value)->
    erlang:setelement(#sequenceReset.newSeqNo, Record, Value);
setFieldInRecord(sequenceReset, standardTrailer, Record, Value)->
    erlang:setelement(#sequenceReset.standardTrailer, Record, Value);
setFieldInRecord(logout, standardHeader, Record, Value)->
    erlang:setelement(#logout.standardHeader, Record, Value);
setFieldInRecord(logout, text, Record, Value)->
    erlang:setelement(#logout.text, Record, Value);
setFieldInRecord(logout, standardTrailer, Record, Value)->
    erlang:setelement(#logout.standardTrailer, Record, Value);
setFieldInRecord(iOI, standardHeader, Record, Value)->
    erlang:setelement(#iOI.standardHeader, Record, Value);
setFieldInRecord(iOI, iOIid, Record, Value)->
    erlang:setelement(#iOI.iOIid, Record, Value);
setFieldInRecord(iOI, iOITransType, Record, Value)->
    erlang:setelement(#iOI.iOITransType, Record, Value);
setFieldInRecord(iOI, iOIRefID, Record, Value)->
    erlang:setelement(#iOI.iOIRefID, Record, Value);
setFieldInRecord(iOI, symbol, Record, Value)->
    erlang:setelement(#iOI.symbol, Record, Value);
setFieldInRecord(iOI, symbolSfx, Record, Value)->
    erlang:setelement(#iOI.symbolSfx, Record, Value);
setFieldInRecord(iOI, securityID, Record, Value)->
    erlang:setelement(#iOI.securityID, Record, Value);
setFieldInRecord(iOI, iDSource, Record, Value)->
    erlang:setelement(#iOI.iDSource, Record, Value);
setFieldInRecord(iOI, issuer, Record, Value)->
    erlang:setelement(#iOI.issuer, Record, Value);
setFieldInRecord(iOI, securityDesc, Record, Value)->
    erlang:setelement(#iOI.securityDesc, Record, Value);
setFieldInRecord(iOI, side, Record, Value)->
    erlang:setelement(#iOI.side, Record, Value);
setFieldInRecord(iOI, iOIShares, Record, Value)->
    erlang:setelement(#iOI.iOIShares, Record, Value);
setFieldInRecord(iOI, price, Record, Value)->
    erlang:setelement(#iOI.price, Record, Value);
setFieldInRecord(iOI, currency, Record, Value)->
    erlang:setelement(#iOI.currency, Record, Value);
setFieldInRecord(iOI, validUntilTime, Record, Value)->
    erlang:setelement(#iOI.validUntilTime, Record, Value);
setFieldInRecord(iOI, iOIQltyInd, Record, Value)->
    erlang:setelement(#iOI.iOIQltyInd, Record, Value);
setFieldInRecord(iOI, iOIOthSvc, Record, Value)->
    erlang:setelement(#iOI.iOIOthSvc, Record, Value);
setFieldInRecord(iOI, iOINaturalFlag, Record, Value)->
    erlang:setelement(#iOI.iOINaturalFlag, Record, Value);
setFieldInRecord(iOI, iOIQualifier, Record, Value)->
    erlang:setelement(#iOI.iOIQualifier, Record, Value);
setFieldInRecord(iOI, text, Record, Value)->
    erlang:setelement(#iOI.text, Record, Value);
setFieldInRecord(iOI, standardTrailer, Record, Value)->
    erlang:setelement(#iOI.standardTrailer, Record, Value);
setFieldInRecord(advertisement, standardHeader, Record, Value)->
    erlang:setelement(#advertisement.standardHeader, Record, Value);
setFieldInRecord(advertisement, advId, Record, Value)->
    erlang:setelement(#advertisement.advId, Record, Value);
setFieldInRecord(advertisement, advTransType, Record, Value)->
    erlang:setelement(#advertisement.advTransType, Record, Value);
setFieldInRecord(advertisement, advRefID, Record, Value)->
    erlang:setelement(#advertisement.advRefID, Record, Value);
setFieldInRecord(advertisement, symbol, Record, Value)->
    erlang:setelement(#advertisement.symbol, Record, Value);
setFieldInRecord(advertisement, symbolSfx, Record, Value)->
    erlang:setelement(#advertisement.symbolSfx, Record, Value);
setFieldInRecord(advertisement, securityID, Record, Value)->
    erlang:setelement(#advertisement.securityID, Record, Value);
setFieldInRecord(advertisement, iDSource, Record, Value)->
    erlang:setelement(#advertisement.iDSource, Record, Value);
setFieldInRecord(advertisement, issuer, Record, Value)->
    erlang:setelement(#advertisement.issuer, Record, Value);
setFieldInRecord(advertisement, securityDesc, Record, Value)->
    erlang:setelement(#advertisement.securityDesc, Record, Value);
setFieldInRecord(advertisement, advSide, Record, Value)->
    erlang:setelement(#advertisement.advSide, Record, Value);
setFieldInRecord(advertisement, shares, Record, Value)->
    erlang:setelement(#advertisement.shares, Record, Value);
setFieldInRecord(advertisement, price, Record, Value)->
    erlang:setelement(#advertisement.price, Record, Value);
setFieldInRecord(advertisement, currency, Record, Value)->
    erlang:setelement(#advertisement.currency, Record, Value);
setFieldInRecord(advertisement, transactTime, Record, Value)->
    erlang:setelement(#advertisement.transactTime, Record, Value);
setFieldInRecord(advertisement, text, Record, Value)->
    erlang:setelement(#advertisement.text, Record, Value);
setFieldInRecord(advertisement, standardTrailer, Record, Value)->
    erlang:setelement(#advertisement.standardTrailer, Record, Value);
setFieldInRecord(executionReport, standardHeader, Record, Value)->
    erlang:setelement(#executionReport.standardHeader, Record, Value);
setFieldInRecord(executionReport, orderID, Record, Value)->
    erlang:setelement(#executionReport.orderID, Record, Value);
setFieldInRecord(executionReport, clOrdID, Record, Value)->
    erlang:setelement(#executionReport.clOrdID, Record, Value);
setFieldInRecord(executionReport, clientID, Record, Value)->
    erlang:setelement(#executionReport.clientID, Record, Value);
setFieldInRecord(executionReport, execBroker, Record, Value)->
    erlang:setelement(#executionReport.execBroker, Record, Value);
setFieldInRecord(executionReport, listID, Record, Value)->
    erlang:setelement(#executionReport.listID, Record, Value);
setFieldInRecord(executionReport, execID, Record, Value)->
    erlang:setelement(#executionReport.execID, Record, Value);
setFieldInRecord(executionReport, execTransType, Record, Value)->
    erlang:setelement(#executionReport.execTransType, Record, Value);
setFieldInRecord(executionReport, execRefID, Record, Value)->
    erlang:setelement(#executionReport.execRefID, Record, Value);
setFieldInRecord(executionReport, ordStatus, Record, Value)->
    erlang:setelement(#executionReport.ordStatus, Record, Value);
setFieldInRecord(executionReport, ordRejReason, Record, Value)->
    erlang:setelement(#executionReport.ordRejReason, Record, Value);
setFieldInRecord(executionReport, account, Record, Value)->
    erlang:setelement(#executionReport.account, Record, Value);
setFieldInRecord(executionReport, settlmntTyp, Record, Value)->
    erlang:setelement(#executionReport.settlmntTyp, Record, Value);
setFieldInRecord(executionReport, futSettDate, Record, Value)->
    erlang:setelement(#executionReport.futSettDate, Record, Value);
setFieldInRecord(executionReport, symbol, Record, Value)->
    erlang:setelement(#executionReport.symbol, Record, Value);
setFieldInRecord(executionReport, symbolSfx, Record, Value)->
    erlang:setelement(#executionReport.symbolSfx, Record, Value);
setFieldInRecord(executionReport, securityID, Record, Value)->
    erlang:setelement(#executionReport.securityID, Record, Value);
setFieldInRecord(executionReport, iDSource, Record, Value)->
    erlang:setelement(#executionReport.iDSource, Record, Value);
setFieldInRecord(executionReport, issuer, Record, Value)->
    erlang:setelement(#executionReport.issuer, Record, Value);
setFieldInRecord(executionReport, securityDesc, Record, Value)->
    erlang:setelement(#executionReport.securityDesc, Record, Value);
setFieldInRecord(executionReport, side, Record, Value)->
    erlang:setelement(#executionReport.side, Record, Value);
setFieldInRecord(executionReport, orderQty, Record, Value)->
    erlang:setelement(#executionReport.orderQty, Record, Value);
setFieldInRecord(executionReport, ordType, Record, Value)->
    erlang:setelement(#executionReport.ordType, Record, Value);
setFieldInRecord(executionReport, price, Record, Value)->
    erlang:setelement(#executionReport.price, Record, Value);
setFieldInRecord(executionReport, stopPx, Record, Value)->
    erlang:setelement(#executionReport.stopPx, Record, Value);
setFieldInRecord(executionReport, currency, Record, Value)->
    erlang:setelement(#executionReport.currency, Record, Value);
setFieldInRecord(executionReport, timeInForce, Record, Value)->
    erlang:setelement(#executionReport.timeInForce, Record, Value);
setFieldInRecord(executionReport, expireTime, Record, Value)->
    erlang:setelement(#executionReport.expireTime, Record, Value);
setFieldInRecord(executionReport, execInst, Record, Value)->
    erlang:setelement(#executionReport.execInst, Record, Value);
setFieldInRecord(executionReport, rule80A, Record, Value)->
    erlang:setelement(#executionReport.rule80A, Record, Value);
setFieldInRecord(executionReport, lastShares, Record, Value)->
    erlang:setelement(#executionReport.lastShares, Record, Value);
setFieldInRecord(executionReport, lastPx, Record, Value)->
    erlang:setelement(#executionReport.lastPx, Record, Value);
setFieldInRecord(executionReport, lastMkt, Record, Value)->
    erlang:setelement(#executionReport.lastMkt, Record, Value);
setFieldInRecord(executionReport, lastCapacity, Record, Value)->
    erlang:setelement(#executionReport.lastCapacity, Record, Value);
setFieldInRecord(executionReport, cumQty, Record, Value)->
    erlang:setelement(#executionReport.cumQty, Record, Value);
setFieldInRecord(executionReport, avgPx, Record, Value)->
    erlang:setelement(#executionReport.avgPx, Record, Value);
setFieldInRecord(executionReport, tradeDate, Record, Value)->
    erlang:setelement(#executionReport.tradeDate, Record, Value);
setFieldInRecord(executionReport, transactTime, Record, Value)->
    erlang:setelement(#executionReport.transactTime, Record, Value);
setFieldInRecord(executionReport, reportToExch, Record, Value)->
    erlang:setelement(#executionReport.reportToExch, Record, Value);
setFieldInRecord(executionReport, commission, Record, Value)->
    erlang:setelement(#executionReport.commission, Record, Value);
setFieldInRecord(executionReport, commType, Record, Value)->
    erlang:setelement(#executionReport.commType, Record, Value);
setFieldInRecord(executionReport, rgr_executionReport_136, Record, Value)->
   erlang:setelement(#executionReport.rgr_executionReport_136, Record, Value);
setFieldInRecord(rgr_executionReport_136, miscFeeAmt, Record, Value)->
   erlang:setelement(#rgr_executionReport_136.miscFeeAmt, Record, Value);
setFieldInRecord(rgr_executionReport_136, miscFeeCurr, Record, Value)->
   erlang:setelement(#rgr_executionReport_136.miscFeeCurr, Record, Value);
setFieldInRecord(rgr_executionReport_136, miscFeeType, Record, Value)->
   erlang:setelement(#rgr_executionReport_136.miscFeeType, Record, Value);
setFieldInRecord(executionReport, netMoney, Record, Value)->
    erlang:setelement(#executionReport.netMoney, Record, Value);
setFieldInRecord(executionReport, settlCurrAmt, Record, Value)->
    erlang:setelement(#executionReport.settlCurrAmt, Record, Value);
setFieldInRecord(executionReport, settlCurrency, Record, Value)->
    erlang:setelement(#executionReport.settlCurrency, Record, Value);
setFieldInRecord(executionReport, text, Record, Value)->
    erlang:setelement(#executionReport.text, Record, Value);
setFieldInRecord(executionReport, standardTrailer, Record, Value)->
    erlang:setelement(#executionReport.standardTrailer, Record, Value);
setFieldInRecord(orderCancelReject, standardHeader, Record, Value)->
    erlang:setelement(#orderCancelReject.standardHeader, Record, Value);
setFieldInRecord(orderCancelReject, orderID, Record, Value)->
    erlang:setelement(#orderCancelReject.orderID, Record, Value);
setFieldInRecord(orderCancelReject, clOrdID, Record, Value)->
    erlang:setelement(#orderCancelReject.clOrdID, Record, Value);
setFieldInRecord(orderCancelReject, clientID, Record, Value)->
    erlang:setelement(#orderCancelReject.clientID, Record, Value);
setFieldInRecord(orderCancelReject, execBroker, Record, Value)->
    erlang:setelement(#orderCancelReject.execBroker, Record, Value);
setFieldInRecord(orderCancelReject, listID, Record, Value)->
    erlang:setelement(#orderCancelReject.listID, Record, Value);
setFieldInRecord(orderCancelReject, cxlRejReason, Record, Value)->
    erlang:setelement(#orderCancelReject.cxlRejReason, Record, Value);
setFieldInRecord(orderCancelReject, text, Record, Value)->
    erlang:setelement(#orderCancelReject.text, Record, Value);
setFieldInRecord(orderCancelReject, standardTrailer, Record, Value)->
    erlang:setelement(#orderCancelReject.standardTrailer, Record, Value);
setFieldInRecord(logon, standardHeader, Record, Value)->
    erlang:setelement(#logon.standardHeader, Record, Value);
setFieldInRecord(logon, encryptMethod, Record, Value)->
    erlang:setelement(#logon.encryptMethod, Record, Value);
setFieldInRecord(logon, heartBtInt, Record, Value)->
    erlang:setelement(#logon.heartBtInt, Record, Value);
setFieldInRecord(logon, rawDataLength, Record, Value)->
    erlang:setelement(#logon.rawDataLength, Record, Value);
setFieldInRecord(logon, rawData, Record, Value)->
    erlang:setelement(#logon.rawData, Record, Value);
setFieldInRecord(logon, standardTrailer, Record, Value)->
    erlang:setelement(#logon.standardTrailer, Record, Value);
setFieldInRecord(news, standardHeader, Record, Value)->
    erlang:setelement(#news.standardHeader, Record, Value);
setFieldInRecord(news, origTime, Record, Value)->
    erlang:setelement(#news.origTime, Record, Value);
setFieldInRecord(news, urgency, Record, Value)->
    erlang:setelement(#news.urgency, Record, Value);
setFieldInRecord(news, relatdSym, Record, Value)->
    erlang:setelement(#news.relatdSym, Record, Value);
setFieldInRecord(news, linesOfText, Record, Value)->
    erlang:setelement(#news.linesOfText, Record, Value);
setFieldInRecord(news, text, Record, Value)->
    erlang:setelement(#news.text, Record, Value);
setFieldInRecord(news, rawDataLength, Record, Value)->
    erlang:setelement(#news.rawDataLength, Record, Value);
setFieldInRecord(news, rawData, Record, Value)->
    erlang:setelement(#news.rawData, Record, Value);
setFieldInRecord(news, standardTrailer, Record, Value)->
    erlang:setelement(#news.standardTrailer, Record, Value);
setFieldInRecord(email, standardHeader, Record, Value)->
    erlang:setelement(#email.standardHeader, Record, Value);
setFieldInRecord(email, emailType, Record, Value)->
    erlang:setelement(#email.emailType, Record, Value);
setFieldInRecord(email, origTime, Record, Value)->
    erlang:setelement(#email.origTime, Record, Value);
setFieldInRecord(email, relatdSym, Record, Value)->
    erlang:setelement(#email.relatdSym, Record, Value);
setFieldInRecord(email, orderID, Record, Value)->
    erlang:setelement(#email.orderID, Record, Value);
setFieldInRecord(email, clOrdID, Record, Value)->
    erlang:setelement(#email.clOrdID, Record, Value);
setFieldInRecord(email, linesOfText, Record, Value)->
    erlang:setelement(#email.linesOfText, Record, Value);
setFieldInRecord(email, text, Record, Value)->
    erlang:setelement(#email.text, Record, Value);
setFieldInRecord(email, rawDataLength, Record, Value)->
    erlang:setelement(#email.rawDataLength, Record, Value);
setFieldInRecord(email, rawData, Record, Value)->
    erlang:setelement(#email.rawData, Record, Value);
setFieldInRecord(email, standardTrailer, Record, Value)->
    erlang:setelement(#email.standardTrailer, Record, Value);
setFieldInRecord(orderSingle, standardHeader, Record, Value)->
    erlang:setelement(#orderSingle.standardHeader, Record, Value);
setFieldInRecord(orderSingle, clOrdID, Record, Value)->
    erlang:setelement(#orderSingle.clOrdID, Record, Value);
setFieldInRecord(orderSingle, clientID, Record, Value)->
    erlang:setelement(#orderSingle.clientID, Record, Value);
setFieldInRecord(orderSingle, execBroker, Record, Value)->
    erlang:setelement(#orderSingle.execBroker, Record, Value);
setFieldInRecord(orderSingle, account, Record, Value)->
    erlang:setelement(#orderSingle.account, Record, Value);
setFieldInRecord(orderSingle, settlmntTyp, Record, Value)->
    erlang:setelement(#orderSingle.settlmntTyp, Record, Value);
setFieldInRecord(orderSingle, futSettDate, Record, Value)->
    erlang:setelement(#orderSingle.futSettDate, Record, Value);
setFieldInRecord(orderSingle, handlInst, Record, Value)->
    erlang:setelement(#orderSingle.handlInst, Record, Value);
setFieldInRecord(orderSingle, execInst, Record, Value)->
    erlang:setelement(#orderSingle.execInst, Record, Value);
setFieldInRecord(orderSingle, minQty, Record, Value)->
    erlang:setelement(#orderSingle.minQty, Record, Value);
setFieldInRecord(orderSingle, maxFloor, Record, Value)->
    erlang:setelement(#orderSingle.maxFloor, Record, Value);
setFieldInRecord(orderSingle, exDestination, Record, Value)->
    erlang:setelement(#orderSingle.exDestination, Record, Value);
setFieldInRecord(orderSingle, processCode, Record, Value)->
    erlang:setelement(#orderSingle.processCode, Record, Value);
setFieldInRecord(orderSingle, symbol, Record, Value)->
    erlang:setelement(#orderSingle.symbol, Record, Value);
setFieldInRecord(orderSingle, symbolSfx, Record, Value)->
    erlang:setelement(#orderSingle.symbolSfx, Record, Value);
setFieldInRecord(orderSingle, securityID, Record, Value)->
    erlang:setelement(#orderSingle.securityID, Record, Value);
setFieldInRecord(orderSingle, iDSource, Record, Value)->
    erlang:setelement(#orderSingle.iDSource, Record, Value);
setFieldInRecord(orderSingle, issuer, Record, Value)->
    erlang:setelement(#orderSingle.issuer, Record, Value);
setFieldInRecord(orderSingle, securityDesc, Record, Value)->
    erlang:setelement(#orderSingle.securityDesc, Record, Value);
setFieldInRecord(orderSingle, prevClosePx, Record, Value)->
    erlang:setelement(#orderSingle.prevClosePx, Record, Value);
setFieldInRecord(orderSingle, side, Record, Value)->
    erlang:setelement(#orderSingle.side, Record, Value);
setFieldInRecord(orderSingle, locateReqd, Record, Value)->
    erlang:setelement(#orderSingle.locateReqd, Record, Value);
setFieldInRecord(orderSingle, orderQty, Record, Value)->
    erlang:setelement(#orderSingle.orderQty, Record, Value);
setFieldInRecord(orderSingle, ordType, Record, Value)->
    erlang:setelement(#orderSingle.ordType, Record, Value);
setFieldInRecord(orderSingle, price, Record, Value)->
    erlang:setelement(#orderSingle.price, Record, Value);
setFieldInRecord(orderSingle, stopPx, Record, Value)->
    erlang:setelement(#orderSingle.stopPx, Record, Value);
setFieldInRecord(orderSingle, currency, Record, Value)->
    erlang:setelement(#orderSingle.currency, Record, Value);
setFieldInRecord(orderSingle, iOIid, Record, Value)->
    erlang:setelement(#orderSingle.iOIid, Record, Value);
setFieldInRecord(orderSingle, quoteID, Record, Value)->
    erlang:setelement(#orderSingle.quoteID, Record, Value);
setFieldInRecord(orderSingle, timeInForce, Record, Value)->
    erlang:setelement(#orderSingle.timeInForce, Record, Value);
setFieldInRecord(orderSingle, expireTime, Record, Value)->
    erlang:setelement(#orderSingle.expireTime, Record, Value);
setFieldInRecord(orderSingle, commission, Record, Value)->
    erlang:setelement(#orderSingle.commission, Record, Value);
setFieldInRecord(orderSingle, commType, Record, Value)->
    erlang:setelement(#orderSingle.commType, Record, Value);
setFieldInRecord(orderSingle, rule80A, Record, Value)->
    erlang:setelement(#orderSingle.rule80A, Record, Value);
setFieldInRecord(orderSingle, forexReq, Record, Value)->
    erlang:setelement(#orderSingle.forexReq, Record, Value);
setFieldInRecord(orderSingle, settlCurrency, Record, Value)->
    erlang:setelement(#orderSingle.settlCurrency, Record, Value);
setFieldInRecord(orderSingle, text, Record, Value)->
    erlang:setelement(#orderSingle.text, Record, Value);
setFieldInRecord(orderSingle, standardTrailer, Record, Value)->
    erlang:setelement(#orderSingle.standardTrailer, Record, Value);
setFieldInRecord(newOrderList, standardHeader, Record, Value)->
    erlang:setelement(#newOrderList.standardHeader, Record, Value);
setFieldInRecord(newOrderList, listID, Record, Value)->
    erlang:setelement(#newOrderList.listID, Record, Value);
setFieldInRecord(newOrderList, waveNo, Record, Value)->
    erlang:setelement(#newOrderList.waveNo, Record, Value);
setFieldInRecord(newOrderList, listSeqNo, Record, Value)->
    erlang:setelement(#newOrderList.listSeqNo, Record, Value);
setFieldInRecord(newOrderList, listNoOrds, Record, Value)->
    erlang:setelement(#newOrderList.listNoOrds, Record, Value);
setFieldInRecord(newOrderList, listExecInst, Record, Value)->
    erlang:setelement(#newOrderList.listExecInst, Record, Value);
setFieldInRecord(newOrderList, clOrdID, Record, Value)->
    erlang:setelement(#newOrderList.clOrdID, Record, Value);
setFieldInRecord(newOrderList, clientID, Record, Value)->
    erlang:setelement(#newOrderList.clientID, Record, Value);
setFieldInRecord(newOrderList, execBroker, Record, Value)->
    erlang:setelement(#newOrderList.execBroker, Record, Value);
setFieldInRecord(newOrderList, account, Record, Value)->
    erlang:setelement(#newOrderList.account, Record, Value);
setFieldInRecord(newOrderList, settlmntTyp, Record, Value)->
    erlang:setelement(#newOrderList.settlmntTyp, Record, Value);
setFieldInRecord(newOrderList, futSettDate, Record, Value)->
    erlang:setelement(#newOrderList.futSettDate, Record, Value);
setFieldInRecord(newOrderList, handlInst, Record, Value)->
    erlang:setelement(#newOrderList.handlInst, Record, Value);
setFieldInRecord(newOrderList, execInst, Record, Value)->
    erlang:setelement(#newOrderList.execInst, Record, Value);
setFieldInRecord(newOrderList, minQty, Record, Value)->
    erlang:setelement(#newOrderList.minQty, Record, Value);
setFieldInRecord(newOrderList, maxFloor, Record, Value)->
    erlang:setelement(#newOrderList.maxFloor, Record, Value);
setFieldInRecord(newOrderList, exDestination, Record, Value)->
    erlang:setelement(#newOrderList.exDestination, Record, Value);
setFieldInRecord(newOrderList, processCode, Record, Value)->
    erlang:setelement(#newOrderList.processCode, Record, Value);
setFieldInRecord(newOrderList, symbol, Record, Value)->
    erlang:setelement(#newOrderList.symbol, Record, Value);
setFieldInRecord(newOrderList, symbolSfx, Record, Value)->
    erlang:setelement(#newOrderList.symbolSfx, Record, Value);
setFieldInRecord(newOrderList, securityID, Record, Value)->
    erlang:setelement(#newOrderList.securityID, Record, Value);
setFieldInRecord(newOrderList, iDSource, Record, Value)->
    erlang:setelement(#newOrderList.iDSource, Record, Value);
setFieldInRecord(newOrderList, issuer, Record, Value)->
    erlang:setelement(#newOrderList.issuer, Record, Value);
setFieldInRecord(newOrderList, securityDesc, Record, Value)->
    erlang:setelement(#newOrderList.securityDesc, Record, Value);
setFieldInRecord(newOrderList, prevClosePx, Record, Value)->
    erlang:setelement(#newOrderList.prevClosePx, Record, Value);
setFieldInRecord(newOrderList, side, Record, Value)->
    erlang:setelement(#newOrderList.side, Record, Value);
setFieldInRecord(newOrderList, locateReqd, Record, Value)->
    erlang:setelement(#newOrderList.locateReqd, Record, Value);
setFieldInRecord(newOrderList, orderQty, Record, Value)->
    erlang:setelement(#newOrderList.orderQty, Record, Value);
setFieldInRecord(newOrderList, ordType, Record, Value)->
    erlang:setelement(#newOrderList.ordType, Record, Value);
setFieldInRecord(newOrderList, price, Record, Value)->
    erlang:setelement(#newOrderList.price, Record, Value);
setFieldInRecord(newOrderList, stopPx, Record, Value)->
    erlang:setelement(#newOrderList.stopPx, Record, Value);
setFieldInRecord(newOrderList, currency, Record, Value)->
    erlang:setelement(#newOrderList.currency, Record, Value);
setFieldInRecord(newOrderList, timeInForce, Record, Value)->
    erlang:setelement(#newOrderList.timeInForce, Record, Value);
setFieldInRecord(newOrderList, expireTime, Record, Value)->
    erlang:setelement(#newOrderList.expireTime, Record, Value);
setFieldInRecord(newOrderList, commission, Record, Value)->
    erlang:setelement(#newOrderList.commission, Record, Value);
setFieldInRecord(newOrderList, commType, Record, Value)->
    erlang:setelement(#newOrderList.commType, Record, Value);
setFieldInRecord(newOrderList, rule80A, Record, Value)->
    erlang:setelement(#newOrderList.rule80A, Record, Value);
setFieldInRecord(newOrderList, forexReq, Record, Value)->
    erlang:setelement(#newOrderList.forexReq, Record, Value);
setFieldInRecord(newOrderList, settlCurrency, Record, Value)->
    erlang:setelement(#newOrderList.settlCurrency, Record, Value);
setFieldInRecord(newOrderList, text, Record, Value)->
    erlang:setelement(#newOrderList.text, Record, Value);
setFieldInRecord(newOrderList, standardTrailer, Record, Value)->
    erlang:setelement(#newOrderList.standardTrailer, Record, Value);
setFieldInRecord(orderCancelRequest, standardHeader, Record, Value)->
    erlang:setelement(#orderCancelRequest.standardHeader, Record, Value);
setFieldInRecord(orderCancelRequest, origClOrdID, Record, Value)->
    erlang:setelement(#orderCancelRequest.origClOrdID, Record, Value);
setFieldInRecord(orderCancelRequest, orderID, Record, Value)->
    erlang:setelement(#orderCancelRequest.orderID, Record, Value);
setFieldInRecord(orderCancelRequest, clOrdID, Record, Value)->
    erlang:setelement(#orderCancelRequest.clOrdID, Record, Value);
setFieldInRecord(orderCancelRequest, listID, Record, Value)->
    erlang:setelement(#orderCancelRequest.listID, Record, Value);
setFieldInRecord(orderCancelRequest, cxlType, Record, Value)->
    erlang:setelement(#orderCancelRequest.cxlType, Record, Value);
setFieldInRecord(orderCancelRequest, clientID, Record, Value)->
    erlang:setelement(#orderCancelRequest.clientID, Record, Value);
setFieldInRecord(orderCancelRequest, execBroker, Record, Value)->
    erlang:setelement(#orderCancelRequest.execBroker, Record, Value);
setFieldInRecord(orderCancelRequest, symbol, Record, Value)->
    erlang:setelement(#orderCancelRequest.symbol, Record, Value);
setFieldInRecord(orderCancelRequest, symbolSfx, Record, Value)->
    erlang:setelement(#orderCancelRequest.symbolSfx, Record, Value);
setFieldInRecord(orderCancelRequest, securityID, Record, Value)->
    erlang:setelement(#orderCancelRequest.securityID, Record, Value);
setFieldInRecord(orderCancelRequest, iDSource, Record, Value)->
    erlang:setelement(#orderCancelRequest.iDSource, Record, Value);
setFieldInRecord(orderCancelRequest, issuer, Record, Value)->
    erlang:setelement(#orderCancelRequest.issuer, Record, Value);
setFieldInRecord(orderCancelRequest, securityDesc, Record, Value)->
    erlang:setelement(#orderCancelRequest.securityDesc, Record, Value);
setFieldInRecord(orderCancelRequest, side, Record, Value)->
    erlang:setelement(#orderCancelRequest.side, Record, Value);
setFieldInRecord(orderCancelRequest, orderQty, Record, Value)->
    erlang:setelement(#orderCancelRequest.orderQty, Record, Value);
setFieldInRecord(orderCancelRequest, text, Record, Value)->
    erlang:setelement(#orderCancelRequest.text, Record, Value);
setFieldInRecord(orderCancelRequest, standardTrailer, Record, Value)->
    erlang:setelement(#orderCancelRequest.standardTrailer, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, standardHeader, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.standardHeader, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, orderID, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.orderID, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, clientID, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.clientID, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, execBroker, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.execBroker, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, origClOrdID, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.origClOrdID, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, clOrdID, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.clOrdID, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, listID, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.listID, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, account, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.account, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, settlmntTyp, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.settlmntTyp, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, futSettDate, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.futSettDate, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, handlInst, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.handlInst, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, execInst, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.execInst, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, minQty, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.minQty, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, maxFloor, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.maxFloor, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, exDestination, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.exDestination, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, symbol, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.symbol, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, symbolSfx, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.symbolSfx, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, securityID, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.securityID, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, iDSource, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.iDSource, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, issuer, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.issuer, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, securityDesc, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.securityDesc, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, side, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.side, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, orderQty, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.orderQty, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, ordType, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.ordType, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, price, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.price, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, stopPx, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.stopPx, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, currency, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.currency, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, timeInForce, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.timeInForce, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, expireTime, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.expireTime, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, commission, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.commission, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, commType, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.commType, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, rule80A, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.rule80A, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, forexReq, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.forexReq, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, settlCurrency, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.settlCurrency, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, text, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.text, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, standardTrailer, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.standardTrailer, Record, Value);
setFieldInRecord(orderStatusRequest, standardHeader, Record, Value)->
    erlang:setelement(#orderStatusRequest.standardHeader, Record, Value);
setFieldInRecord(orderStatusRequest, orderID, Record, Value)->
    erlang:setelement(#orderStatusRequest.orderID, Record, Value);
setFieldInRecord(orderStatusRequest, clOrdID, Record, Value)->
    erlang:setelement(#orderStatusRequest.clOrdID, Record, Value);
setFieldInRecord(orderStatusRequest, clientID, Record, Value)->
    erlang:setelement(#orderStatusRequest.clientID, Record, Value);
setFieldInRecord(orderStatusRequest, execBroker, Record, Value)->
    erlang:setelement(#orderStatusRequest.execBroker, Record, Value);
setFieldInRecord(orderStatusRequest, symbol, Record, Value)->
    erlang:setelement(#orderStatusRequest.symbol, Record, Value);
setFieldInRecord(orderStatusRequest, symbolSfx, Record, Value)->
    erlang:setelement(#orderStatusRequest.symbolSfx, Record, Value);
setFieldInRecord(orderStatusRequest, issuer, Record, Value)->
    erlang:setelement(#orderStatusRequest.issuer, Record, Value);
setFieldInRecord(orderStatusRequest, securityDesc, Record, Value)->
    erlang:setelement(#orderStatusRequest.securityDesc, Record, Value);
setFieldInRecord(orderStatusRequest, side, Record, Value)->
    erlang:setelement(#orderStatusRequest.side, Record, Value);
setFieldInRecord(orderStatusRequest, standardTrailer, Record, Value)->
    erlang:setelement(#orderStatusRequest.standardTrailer, Record, Value);
setFieldInRecord(allocationInstruction, standardHeader, Record, Value)->
    erlang:setelement(#allocationInstruction.standardHeader, Record, Value);
setFieldInRecord(allocationInstruction, allocID, Record, Value)->
    erlang:setelement(#allocationInstruction.allocID, Record, Value);
setFieldInRecord(allocationInstruction, allocTransType, Record, Value)->
    erlang:setelement(#allocationInstruction.allocTransType, Record, Value);
setFieldInRecord(allocationInstruction, refAllocID, Record, Value)->
    erlang:setelement(#allocationInstruction.refAllocID, Record, Value);
setFieldInRecord(allocationInstruction, rgr_allocationInstruction_73, Record, Value)->
   erlang:setelement(#allocationInstruction.rgr_allocationInstruction_73, Record, Value);
setFieldInRecord(rgr_allocationInstruction_73, clOrdID, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_73.clOrdID, Record, Value);
setFieldInRecord(rgr_allocationInstruction_73, orderID, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_73.orderID, Record, Value);
setFieldInRecord(rgr_allocationInstruction_73, listID, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_73.listID, Record, Value);
setFieldInRecord(rgr_allocationInstruction_73, waveNo, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_73.waveNo, Record, Value);
setFieldInRecord(allocationInstruction, rgr_allocationInstruction_124, Record, Value)->
   erlang:setelement(#allocationInstruction.rgr_allocationInstruction_124, Record, Value);
setFieldInRecord(rgr_allocationInstruction_124, execID, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_124.execID, Record, Value);
setFieldInRecord(rgr_allocationInstruction_124, lastShares, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_124.lastShares, Record, Value);
setFieldInRecord(rgr_allocationInstruction_124, lastPx, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_124.lastPx, Record, Value);
setFieldInRecord(rgr_allocationInstruction_124, lastMkt, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_124.lastMkt, Record, Value);
setFieldInRecord(allocationInstruction, side, Record, Value)->
    erlang:setelement(#allocationInstruction.side, Record, Value);
setFieldInRecord(allocationInstruction, symbol, Record, Value)->
    erlang:setelement(#allocationInstruction.symbol, Record, Value);
setFieldInRecord(allocationInstruction, symbolSfx, Record, Value)->
    erlang:setelement(#allocationInstruction.symbolSfx, Record, Value);
setFieldInRecord(allocationInstruction, securityID, Record, Value)->
    erlang:setelement(#allocationInstruction.securityID, Record, Value);
setFieldInRecord(allocationInstruction, iDSource, Record, Value)->
    erlang:setelement(#allocationInstruction.iDSource, Record, Value);
setFieldInRecord(allocationInstruction, issuer, Record, Value)->
    erlang:setelement(#allocationInstruction.issuer, Record, Value);
setFieldInRecord(allocationInstruction, securityDesc, Record, Value)->
    erlang:setelement(#allocationInstruction.securityDesc, Record, Value);
setFieldInRecord(allocationInstruction, shares, Record, Value)->
    erlang:setelement(#allocationInstruction.shares, Record, Value);
setFieldInRecord(allocationInstruction, avgPx, Record, Value)->
    erlang:setelement(#allocationInstruction.avgPx, Record, Value);
setFieldInRecord(allocationInstruction, currency, Record, Value)->
    erlang:setelement(#allocationInstruction.currency, Record, Value);
setFieldInRecord(allocationInstruction, avgPrxPrecision, Record, Value)->
    erlang:setelement(#allocationInstruction.avgPrxPrecision, Record, Value);
setFieldInRecord(allocationInstruction, tradeDate, Record, Value)->
    erlang:setelement(#allocationInstruction.tradeDate, Record, Value);
setFieldInRecord(allocationInstruction, transactTime, Record, Value)->
    erlang:setelement(#allocationInstruction.transactTime, Record, Value);
setFieldInRecord(allocationInstruction, settlmntTyp, Record, Value)->
    erlang:setelement(#allocationInstruction.settlmntTyp, Record, Value);
setFieldInRecord(allocationInstruction, futSettDate, Record, Value)->
    erlang:setelement(#allocationInstruction.futSettDate, Record, Value);
setFieldInRecord(allocationInstruction, netMoney, Record, Value)->
    erlang:setelement(#allocationInstruction.netMoney, Record, Value);
setFieldInRecord(allocationInstruction, rgr_allocationInstruction_136, Record, Value)->
   erlang:setelement(#allocationInstruction.rgr_allocationInstruction_136, Record, Value);
setFieldInRecord(rgr_allocationInstruction_136, miscFeeAmt, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_136.miscFeeAmt, Record, Value);
setFieldInRecord(rgr_allocationInstruction_136, miscFeeCurr, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_136.miscFeeCurr, Record, Value);
setFieldInRecord(rgr_allocationInstruction_136, miscFeeType, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_136.miscFeeType, Record, Value);
setFieldInRecord(allocationInstruction, settlCurrAmt, Record, Value)->
    erlang:setelement(#allocationInstruction.settlCurrAmt, Record, Value);
setFieldInRecord(allocationInstruction, settlCurrency, Record, Value)->
    erlang:setelement(#allocationInstruction.settlCurrency, Record, Value);
setFieldInRecord(allocationInstruction, openClose, Record, Value)->
    erlang:setelement(#allocationInstruction.openClose, Record, Value);
setFieldInRecord(allocationInstruction, text, Record, Value)->
    erlang:setelement(#allocationInstruction.text, Record, Value);
setFieldInRecord(allocationInstruction, rgr_allocationInstruction_78, Record, Value)->
   erlang:setelement(#allocationInstruction.rgr_allocationInstruction_78, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, allocAccount, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.allocAccount, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, allocShares, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.allocShares, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, processCode, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.processCode, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, execBroker, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.execBroker, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, clientID, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.clientID, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, commission, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.commission, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, commType, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.commType, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, noDlvyInst, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.noDlvyInst, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, brokerOfCredit, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.brokerOfCredit, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, dlvyInst, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.dlvyInst, Record, Value);
setFieldInRecord(allocationInstruction, standardTrailer, Record, Value)->
    erlang:setelement(#allocationInstruction.standardTrailer, Record, Value);
setFieldInRecord(listCancelRequest, standardHeader, Record, Value)->
    erlang:setelement(#listCancelRequest.standardHeader, Record, Value);
setFieldInRecord(listCancelRequest, listID, Record, Value)->
    erlang:setelement(#listCancelRequest.listID, Record, Value);
setFieldInRecord(listCancelRequest, waveNo, Record, Value)->
    erlang:setelement(#listCancelRequest.waveNo, Record, Value);
setFieldInRecord(listCancelRequest, text, Record, Value)->
    erlang:setelement(#listCancelRequest.text, Record, Value);
setFieldInRecord(listCancelRequest, standardTrailer, Record, Value)->
    erlang:setelement(#listCancelRequest.standardTrailer, Record, Value);
setFieldInRecord(listExecute, standardHeader, Record, Value)->
    erlang:setelement(#listExecute.standardHeader, Record, Value);
setFieldInRecord(listExecute, listID, Record, Value)->
    erlang:setelement(#listExecute.listID, Record, Value);
setFieldInRecord(listExecute, waveNo, Record, Value)->
    erlang:setelement(#listExecute.waveNo, Record, Value);
setFieldInRecord(listExecute, text, Record, Value)->
    erlang:setelement(#listExecute.text, Record, Value);
setFieldInRecord(listExecute, standardTrailer, Record, Value)->
    erlang:setelement(#listExecute.standardTrailer, Record, Value);
setFieldInRecord(listStatusRequest, standardHeader, Record, Value)->
    erlang:setelement(#listStatusRequest.standardHeader, Record, Value);
setFieldInRecord(listStatusRequest, listID, Record, Value)->
    erlang:setelement(#listStatusRequest.listID, Record, Value);
setFieldInRecord(listStatusRequest, waveNo, Record, Value)->
    erlang:setelement(#listStatusRequest.waveNo, Record, Value);
setFieldInRecord(listStatusRequest, text, Record, Value)->
    erlang:setelement(#listStatusRequest.text, Record, Value);
setFieldInRecord(listStatusRequest, standardTrailer, Record, Value)->
    erlang:setelement(#listStatusRequest.standardTrailer, Record, Value);
setFieldInRecord(listStatus, standardHeader, Record, Value)->
    erlang:setelement(#listStatus.standardHeader, Record, Value);
setFieldInRecord(listStatus, listID, Record, Value)->
    erlang:setelement(#listStatus.listID, Record, Value);
setFieldInRecord(listStatus, waveNo, Record, Value)->
    erlang:setelement(#listStatus.waveNo, Record, Value);
setFieldInRecord(listStatus, noRpts, Record, Value)->
    erlang:setelement(#listStatus.noRpts, Record, Value);
setFieldInRecord(listStatus, rptSeq, Record, Value)->
    erlang:setelement(#listStatus.rptSeq, Record, Value);
setFieldInRecord(listStatus, rgr_listStatus_73, Record, Value)->
   erlang:setelement(#listStatus.rgr_listStatus_73, Record, Value);
setFieldInRecord(rgr_listStatus_73, clOrdID, Record, Value)->
   erlang:setelement(#rgr_listStatus_73.clOrdID, Record, Value);
setFieldInRecord(rgr_listStatus_73, cumQty, Record, Value)->
   erlang:setelement(#rgr_listStatus_73.cumQty, Record, Value);
setFieldInRecord(rgr_listStatus_73, cxlQty, Record, Value)->
   erlang:setelement(#rgr_listStatus_73.cxlQty, Record, Value);
setFieldInRecord(rgr_listStatus_73, avgPx, Record, Value)->
   erlang:setelement(#rgr_listStatus_73.avgPx, Record, Value);
setFieldInRecord(listStatus, standardTrailer, Record, Value)->
    erlang:setelement(#listStatus.standardTrailer, Record, Value);
setFieldInRecord(allocationInstructionAck, standardHeader, Record, Value)->
    erlang:setelement(#allocationInstructionAck.standardHeader, Record, Value);
setFieldInRecord(allocationInstructionAck, clientID, Record, Value)->
    erlang:setelement(#allocationInstructionAck.clientID, Record, Value);
setFieldInRecord(allocationInstructionAck, execBroker, Record, Value)->
    erlang:setelement(#allocationInstructionAck.execBroker, Record, Value);
setFieldInRecord(allocationInstructionAck, allocID, Record, Value)->
    erlang:setelement(#allocationInstructionAck.allocID, Record, Value);
setFieldInRecord(allocationInstructionAck, tradeDate, Record, Value)->
    erlang:setelement(#allocationInstructionAck.tradeDate, Record, Value);
setFieldInRecord(allocationInstructionAck, transactTime, Record, Value)->
    erlang:setelement(#allocationInstructionAck.transactTime, Record, Value);
setFieldInRecord(allocationInstructionAck, allocStatus, Record, Value)->
    erlang:setelement(#allocationInstructionAck.allocStatus, Record, Value);
setFieldInRecord(allocationInstructionAck, allocRejCode, Record, Value)->
    erlang:setelement(#allocationInstructionAck.allocRejCode, Record, Value);
setFieldInRecord(allocationInstructionAck, text, Record, Value)->
    erlang:setelement(#allocationInstructionAck.text, Record, Value);
setFieldInRecord(allocationInstructionAck, standardTrailer, Record, Value)->
    erlang:setelement(#allocationInstructionAck.standardTrailer, Record, Value);
setFieldInRecord(dontKnowTrade, standardHeader, Record, Value)->
    erlang:setelement(#dontKnowTrade.standardHeader, Record, Value);
setFieldInRecord(dontKnowTrade, orderID, Record, Value)->
    erlang:setelement(#dontKnowTrade.orderID, Record, Value);
setFieldInRecord(dontKnowTrade, execID, Record, Value)->
    erlang:setelement(#dontKnowTrade.execID, Record, Value);
setFieldInRecord(dontKnowTrade, dKReason, Record, Value)->
    erlang:setelement(#dontKnowTrade.dKReason, Record, Value);
setFieldInRecord(dontKnowTrade, symbol, Record, Value)->
    erlang:setelement(#dontKnowTrade.symbol, Record, Value);
setFieldInRecord(dontKnowTrade, side, Record, Value)->
    erlang:setelement(#dontKnowTrade.side, Record, Value);
setFieldInRecord(dontKnowTrade, orderQty, Record, Value)->
    erlang:setelement(#dontKnowTrade.orderQty, Record, Value);
setFieldInRecord(dontKnowTrade, lastShares, Record, Value)->
    erlang:setelement(#dontKnowTrade.lastShares, Record, Value);
setFieldInRecord(dontKnowTrade, lastPx, Record, Value)->
    erlang:setelement(#dontKnowTrade.lastPx, Record, Value);
setFieldInRecord(dontKnowTrade, text, Record, Value)->
    erlang:setelement(#dontKnowTrade.text, Record, Value);
setFieldInRecord(dontKnowTrade, standardTrailer, Record, Value)->
    erlang:setelement(#dontKnowTrade.standardTrailer, Record, Value);
setFieldInRecord(quoteRequest, standardHeader, Record, Value)->
    erlang:setelement(#quoteRequest.standardHeader, Record, Value);
setFieldInRecord(quoteRequest, quoteReqID, Record, Value)->
    erlang:setelement(#quoteRequest.quoteReqID, Record, Value);
setFieldInRecord(quoteRequest, symbol, Record, Value)->
    erlang:setelement(#quoteRequest.symbol, Record, Value);
setFieldInRecord(quoteRequest, symbolSfx, Record, Value)->
    erlang:setelement(#quoteRequest.symbolSfx, Record, Value);
setFieldInRecord(quoteRequest, securityID, Record, Value)->
    erlang:setelement(#quoteRequest.securityID, Record, Value);
setFieldInRecord(quoteRequest, iDSource, Record, Value)->
    erlang:setelement(#quoteRequest.iDSource, Record, Value);
setFieldInRecord(quoteRequest, issuer, Record, Value)->
    erlang:setelement(#quoteRequest.issuer, Record, Value);
setFieldInRecord(quoteRequest, securityDesc, Record, Value)->
    erlang:setelement(#quoteRequest.securityDesc, Record, Value);
setFieldInRecord(quoteRequest, prevClosePx, Record, Value)->
    erlang:setelement(#quoteRequest.prevClosePx, Record, Value);
setFieldInRecord(quoteRequest, side, Record, Value)->
    erlang:setelement(#quoteRequest.side, Record, Value);
setFieldInRecord(quoteRequest, orderQty, Record, Value)->
    erlang:setelement(#quoteRequest.orderQty, Record, Value);
setFieldInRecord(quoteRequest, standardTrailer, Record, Value)->
    erlang:setelement(#quoteRequest.standardTrailer, Record, Value);
setFieldInRecord(quote, standardHeader, Record, Value)->
    erlang:setelement(#quote.standardHeader, Record, Value);
setFieldInRecord(quote, quoteReqID, Record, Value)->
    erlang:setelement(#quote.quoteReqID, Record, Value);
setFieldInRecord(quote, quoteID, Record, Value)->
    erlang:setelement(#quote.quoteID, Record, Value);
setFieldInRecord(quote, symbol, Record, Value)->
    erlang:setelement(#quote.symbol, Record, Value);
setFieldInRecord(quote, symbolSfx, Record, Value)->
    erlang:setelement(#quote.symbolSfx, Record, Value);
setFieldInRecord(quote, securityID, Record, Value)->
    erlang:setelement(#quote.securityID, Record, Value);
setFieldInRecord(quote, iDSource, Record, Value)->
    erlang:setelement(#quote.iDSource, Record, Value);
setFieldInRecord(quote, issuer, Record, Value)->
    erlang:setelement(#quote.issuer, Record, Value);
setFieldInRecord(quote, securityDesc, Record, Value)->
    erlang:setelement(#quote.securityDesc, Record, Value);
setFieldInRecord(quote, bidPx, Record, Value)->
    erlang:setelement(#quote.bidPx, Record, Value);
setFieldInRecord(quote, offerPx, Record, Value)->
    erlang:setelement(#quote.offerPx, Record, Value);
setFieldInRecord(quote, bidSize, Record, Value)->
    erlang:setelement(#quote.bidSize, Record, Value);
setFieldInRecord(quote, offerSize, Record, Value)->
    erlang:setelement(#quote.offerSize, Record, Value);
setFieldInRecord(quote, validUntilTime, Record, Value)->
    erlang:setelement(#quote.validUntilTime, Record, Value);
setFieldInRecord(quote, standardTrailer, Record, Value)->
    erlang:setelement(#quote.standardTrailer, Record, Value);
setFieldInRecord(_RecordName, _FieldName, _Record, _Value) ->
    error.
getMessageName(<<"0">>) -> 
    heartbeat;
getMessageName(<<"1">>) -> 
    testRequest;
getMessageName(<<"2">>) -> 
    resendRequest;
getMessageName(<<"3">>) -> 
    reject;
getMessageName(<<"4">>) -> 
    sequenceReset;
getMessageName(<<"5">>) -> 
    logout;
getMessageName(<<"6">>) -> 
    iOI;
getMessageName(<<"7">>) -> 
    advertisement;
getMessageName(<<"8">>) -> 
    executionReport;
getMessageName(<<"9">>) -> 
    orderCancelReject;
getMessageName(<<"A">>) -> 
    logon;
getMessageName(<<"B">>) -> 
    news;
getMessageName(<<"C">>) -> 
    email;
getMessageName(<<"D">>) -> 
    orderSingle;
getMessageName(<<"E">>) -> 
    newOrderList;
getMessageName(<<"F">>) -> 
    orderCancelRequest;
getMessageName(<<"G">>) -> 
    orderCancelReplaceRequest;
getMessageName(<<"H">>) -> 
    orderStatusRequest;
getMessageName(<<"J">>) -> 
    allocationInstruction;
getMessageName(<<"K">>) -> 
    listCancelRequest;
getMessageName(<<"L">>) -> 
    listExecute;
getMessageName(<<"M">>) -> 
    listStatusRequest;
getMessageName(<<"N">>) -> 
    listStatus;
getMessageName(<<"P">>) -> 
    allocationInstructionAck;
getMessageName(<<"Q">>) -> 
    dontKnowTrade;
getMessageName(<<"R">>) -> 
    quoteRequest;
getMessageName(<<"S">>) -> 
    quote;
getMessageName(_Id) ->
    error.
getFieldName(<<"1">>) ->
    account;
getFieldName(<<"2">>) ->
    advId;
getFieldName(<<"3">>) ->
    advRefID;
getFieldName(<<"4">>) ->
    advSide;
getFieldName(<<"5">>) ->
    advTransType;
getFieldName(<<"6">>) ->
    avgPx;
getFieldName(<<"7">>) ->
    beginSeqNo;
getFieldName(<<"8">>) ->
    beginString;
getFieldName(<<"9">>) ->
    bodyLength;
getFieldName(<<"10">>) ->
    checkSum;
getFieldName(<<"11">>) ->
    clOrdID;
getFieldName(<<"12">>) ->
    commission;
getFieldName(<<"13">>) ->
    commType;
getFieldName(<<"14">>) ->
    cumQty;
getFieldName(<<"15">>) ->
    currency;
getFieldName(<<"16">>) ->
    endSeqNo;
getFieldName(<<"17">>) ->
    execID;
getFieldName(<<"18">>) ->
    execInst;
getFieldName(<<"19">>) ->
    execRefID;
getFieldName(<<"20">>) ->
    execTransType;
getFieldName(<<"21">>) ->
    handlInst;
getFieldName(<<"22">>) ->
    iDSource;
getFieldName(<<"23">>) ->
    iOIid;
getFieldName(<<"24">>) ->
    iOIOthSvc;
getFieldName(<<"25">>) ->
    iOIQltyInd;
getFieldName(<<"26">>) ->
    iOIRefID;
getFieldName(<<"27">>) ->
    iOIShares;
getFieldName(<<"28">>) ->
    iOITransType;
getFieldName(<<"29">>) ->
    lastCapacity;
getFieldName(<<"30">>) ->
    lastMkt;
getFieldName(<<"31">>) ->
    lastPx;
getFieldName(<<"32">>) ->
    lastShares;
getFieldName(<<"33">>) ->
    linesOfText;
getFieldName(<<"34">>) ->
    msgSeqNum;
getFieldName(<<"35">>) ->
    msgType;
getFieldName(<<"36">>) ->
    newSeqNo;
getFieldName(<<"37">>) ->
    orderID;
getFieldName(<<"38">>) ->
    orderQty;
getFieldName(<<"39">>) ->
    ordStatus;
getFieldName(<<"40">>) ->
    ordType;
getFieldName(<<"41">>) ->
    origClOrdID;
getFieldName(<<"42">>) ->
    origTime;
getFieldName(<<"43">>) ->
    possDupFlag;
getFieldName(<<"44">>) ->
    price;
getFieldName(<<"45">>) ->
    refSeqNum;
getFieldName(<<"46">>) ->
    relatdSym;
getFieldName(<<"47">>) ->
    rule80A;
getFieldName(<<"48">>) ->
    securityID;
getFieldName(<<"49">>) ->
    senderCompID;
getFieldName(<<"50">>) ->
    senderSubID;
getFieldName(<<"52">>) ->
    sendingTime;
getFieldName(<<"53">>) ->
    shares;
getFieldName(<<"54">>) ->
    side;
getFieldName(<<"55">>) ->
    symbol;
getFieldName(<<"56">>) ->
    targetCompID;
getFieldName(<<"57">>) ->
    targetSubID;
getFieldName(<<"58">>) ->
    text;
getFieldName(<<"59">>) ->
    timeInForce;
getFieldName(<<"60">>) ->
    transactTime;
getFieldName(<<"61">>) ->
    urgency;
getFieldName(<<"62">>) ->
    validUntilTime;
getFieldName(<<"63">>) ->
    settlmntTyp;
getFieldName(<<"64">>) ->
    futSettDate;
getFieldName(<<"65">>) ->
    symbolSfx;
getFieldName(<<"66">>) ->
    listID;
getFieldName(<<"67">>) ->
    listSeqNo;
getFieldName(<<"68">>) ->
    listNoOrds;
getFieldName(<<"69">>) ->
    listExecInst;
getFieldName(<<"70">>) ->
    allocID;
getFieldName(<<"71">>) ->
    allocTransType;
getFieldName(<<"72">>) ->
    refAllocID;
getFieldName(<<"73">>) ->
    noOrders;
getFieldName(<<"74">>) ->
    avgPrxPrecision;
getFieldName(<<"75">>) ->
    tradeDate;
getFieldName(<<"76">>) ->
    execBroker;
getFieldName(<<"77">>) ->
    openClose;
getFieldName(<<"78">>) ->
    noAllocs;
getFieldName(<<"79">>) ->
    allocAccount;
getFieldName(<<"80">>) ->
    allocShares;
getFieldName(<<"81">>) ->
    processCode;
getFieldName(<<"82">>) ->
    noRpts;
getFieldName(<<"83">>) ->
    rptSeq;
getFieldName(<<"84">>) ->
    cxlQty;
getFieldName(<<"85">>) ->
    noDlvyInst;
getFieldName(<<"86">>) ->
    dlvyInst;
getFieldName(<<"87">>) ->
    allocStatus;
getFieldName(<<"88">>) ->
    allocRejCode;
getFieldName(<<"89">>) ->
    signature;
getFieldName(<<"90">>) ->
    secureDataLen;
getFieldName(<<"91">>) ->
    secureData;
getFieldName(<<"92">>) ->
    brokerOfCredit;
getFieldName(<<"93">>) ->
    signatureLength;
getFieldName(<<"94">>) ->
    emailType;
getFieldName(<<"95">>) ->
    rawDataLength;
getFieldName(<<"96">>) ->
    rawData;
getFieldName(<<"97">>) ->
    possResend;
getFieldName(<<"98">>) ->
    encryptMethod;
getFieldName(<<"99">>) ->
    stopPx;
getFieldName(<<"100">>) ->
    exDestination;
getFieldName(<<"102">>) ->
    cxlRejReason;
getFieldName(<<"103">>) ->
    ordRejReason;
getFieldName(<<"104">>) ->
    iOIQualifier;
getFieldName(<<"105">>) ->
    waveNo;
getFieldName(<<"106">>) ->
    issuer;
getFieldName(<<"107">>) ->
    securityDesc;
getFieldName(<<"108">>) ->
    heartBtInt;
getFieldName(<<"109">>) ->
    clientID;
getFieldName(<<"110">>) ->
    minQty;
getFieldName(<<"111">>) ->
    maxFloor;
getFieldName(<<"112">>) ->
    testReqID;
getFieldName(<<"113">>) ->
    reportToExch;
getFieldName(<<"114">>) ->
    locateReqd;
getFieldName(<<"115">>) ->
    onBehalfOfCompID;
getFieldName(<<"116">>) ->
    onBehalfOfSubID;
getFieldName(<<"117">>) ->
    quoteID;
getFieldName(<<"118">>) ->
    netMoney;
getFieldName(<<"119">>) ->
    settlCurrAmt;
getFieldName(<<"120">>) ->
    settlCurrency;
getFieldName(<<"121">>) ->
    forexReq;
getFieldName(<<"122">>) ->
    origSendingTime;
getFieldName(<<"123">>) ->
    gapFillFlag;
getFieldName(<<"124">>) ->
    noExecs;
getFieldName(<<"125">>) ->
    cxlType;
getFieldName(<<"126">>) ->
    expireTime;
getFieldName(<<"127">>) ->
    dKReason;
getFieldName(<<"128">>) ->
    deliverToCompID;
getFieldName(<<"129">>) ->
    deliverToSubID;
getFieldName(<<"130">>) ->
    iOINaturalFlag;
getFieldName(<<"131">>) ->
    quoteReqID;
getFieldName(<<"132">>) ->
    bidPx;
getFieldName(<<"133">>) ->
    offerPx;
getFieldName(<<"134">>) ->
    bidSize;
getFieldName(<<"135">>) ->
    offerSize;
getFieldName(<<"136">>) ->
    noMiscFees;
getFieldName(<<"137">>) ->
    miscFeeAmt;
getFieldName(<<"138">>) ->
    miscFeeCurr;
getFieldName(<<"139">>) ->
    miscFeeType;
getFieldName(<<"140">>) ->
    prevClosePx;
getFieldName(_Id) ->
    error.
getTagId(account) ->
    <<"1">>;
getTagId(advId) ->
    <<"2">>;
getTagId(advRefID) ->
    <<"3">>;
getTagId(advSide) ->
    <<"4">>;
getTagId(advTransType) ->
    <<"5">>;
getTagId(avgPx) ->
    <<"6">>;
getTagId(beginSeqNo) ->
    <<"7">>;
getTagId(beginString) ->
    <<"8">>;
getTagId(bodyLength) ->
    <<"9">>;
getTagId(checkSum) ->
    <<"10">>;
getTagId(clOrdID) ->
    <<"11">>;
getTagId(commission) ->
    <<"12">>;
getTagId(commType) ->
    <<"13">>;
getTagId(cumQty) ->
    <<"14">>;
getTagId(currency) ->
    <<"15">>;
getTagId(endSeqNo) ->
    <<"16">>;
getTagId(execID) ->
    <<"17">>;
getTagId(execInst) ->
    <<"18">>;
getTagId(execRefID) ->
    <<"19">>;
getTagId(execTransType) ->
    <<"20">>;
getTagId(handlInst) ->
    <<"21">>;
getTagId(iDSource) ->
    <<"22">>;
getTagId(iOIid) ->
    <<"23">>;
getTagId(iOIOthSvc) ->
    <<"24">>;
getTagId(iOIQltyInd) ->
    <<"25">>;
getTagId(iOIRefID) ->
    <<"26">>;
getTagId(iOIShares) ->
    <<"27">>;
getTagId(iOITransType) ->
    <<"28">>;
getTagId(lastCapacity) ->
    <<"29">>;
getTagId(lastMkt) ->
    <<"30">>;
getTagId(lastPx) ->
    <<"31">>;
getTagId(lastShares) ->
    <<"32">>;
getTagId(linesOfText) ->
    <<"33">>;
getTagId(msgSeqNum) ->
    <<"34">>;
getTagId(msgType) ->
    <<"35">>;
getTagId(newSeqNo) ->
    <<"36">>;
getTagId(orderID) ->
    <<"37">>;
getTagId(orderQty) ->
    <<"38">>;
getTagId(ordStatus) ->
    <<"39">>;
getTagId(ordType) ->
    <<"40">>;
getTagId(origClOrdID) ->
    <<"41">>;
getTagId(origTime) ->
    <<"42">>;
getTagId(possDupFlag) ->
    <<"43">>;
getTagId(price) ->
    <<"44">>;
getTagId(refSeqNum) ->
    <<"45">>;
getTagId(relatdSym) ->
    <<"46">>;
getTagId(rule80A) ->
    <<"47">>;
getTagId(securityID) ->
    <<"48">>;
getTagId(senderCompID) ->
    <<"49">>;
getTagId(senderSubID) ->
    <<"50">>;
getTagId(sendingTime) ->
    <<"52">>;
getTagId(shares) ->
    <<"53">>;
getTagId(side) ->
    <<"54">>;
getTagId(symbol) ->
    <<"55">>;
getTagId(targetCompID) ->
    <<"56">>;
getTagId(targetSubID) ->
    <<"57">>;
getTagId(text) ->
    <<"58">>;
getTagId(timeInForce) ->
    <<"59">>;
getTagId(transactTime) ->
    <<"60">>;
getTagId(urgency) ->
    <<"61">>;
getTagId(validUntilTime) ->
    <<"62">>;
getTagId(settlmntTyp) ->
    <<"63">>;
getTagId(futSettDate) ->
    <<"64">>;
getTagId(symbolSfx) ->
    <<"65">>;
getTagId(listID) ->
    <<"66">>;
getTagId(listSeqNo) ->
    <<"67">>;
getTagId(listNoOrds) ->
    <<"68">>;
getTagId(listExecInst) ->
    <<"69">>;
getTagId(allocID) ->
    <<"70">>;
getTagId(allocTransType) ->
    <<"71">>;
getTagId(refAllocID) ->
    <<"72">>;
getTagId(noOrders) ->
    <<"73">>;
getTagId(avgPrxPrecision) ->
    <<"74">>;
getTagId(tradeDate) ->
    <<"75">>;
getTagId(execBroker) ->
    <<"76">>;
getTagId(openClose) ->
    <<"77">>;
getTagId(noAllocs) ->
    <<"78">>;
getTagId(allocAccount) ->
    <<"79">>;
getTagId(allocShares) ->
    <<"80">>;
getTagId(processCode) ->
    <<"81">>;
getTagId(noRpts) ->
    <<"82">>;
getTagId(rptSeq) ->
    <<"83">>;
getTagId(cxlQty) ->
    <<"84">>;
getTagId(noDlvyInst) ->
    <<"85">>;
getTagId(dlvyInst) ->
    <<"86">>;
getTagId(allocStatus) ->
    <<"87">>;
getTagId(allocRejCode) ->
    <<"88">>;
getTagId(signature) ->
    <<"89">>;
getTagId(secureDataLen) ->
    <<"90">>;
getTagId(secureData) ->
    <<"91">>;
getTagId(brokerOfCredit) ->
    <<"92">>;
getTagId(signatureLength) ->
    <<"93">>;
getTagId(emailType) ->
    <<"94">>;
getTagId(rawDataLength) ->
    <<"95">>;
getTagId(rawData) ->
    <<"96">>;
getTagId(possResend) ->
    <<"97">>;
getTagId(encryptMethod) ->
    <<"98">>;
getTagId(stopPx) ->
    <<"99">>;
getTagId(exDestination) ->
    <<"100">>;
getTagId(cxlRejReason) ->
    <<"102">>;
getTagId(ordRejReason) ->
    <<"103">>;
getTagId(iOIQualifier) ->
    <<"104">>;
getTagId(waveNo) ->
    <<"105">>;
getTagId(issuer) ->
    <<"106">>;
getTagId(securityDesc) ->
    <<"107">>;
getTagId(heartBtInt) ->
    <<"108">>;
getTagId(clientID) ->
    <<"109">>;
getTagId(minQty) ->
    <<"110">>;
getTagId(maxFloor) ->
    <<"111">>;
getTagId(testReqID) ->
    <<"112">>;
getTagId(reportToExch) ->
    <<"113">>;
getTagId(locateReqd) ->
    <<"114">>;
getTagId(onBehalfOfCompID) ->
    <<"115">>;
getTagId(onBehalfOfSubID) ->
    <<"116">>;
getTagId(quoteID) ->
    <<"117">>;
getTagId(netMoney) ->
    <<"118">>;
getTagId(settlCurrAmt) ->
    <<"119">>;
getTagId(settlCurrency) ->
    <<"120">>;
getTagId(forexReq) ->
    <<"121">>;
getTagId(origSendingTime) ->
    <<"122">>;
getTagId(gapFillFlag) ->
    <<"123">>;
getTagId(noExecs) ->
    <<"124">>;
getTagId(cxlType) ->
    <<"125">>;
getTagId(expireTime) ->
    <<"126">>;
getTagId(dKReason) ->
    <<"127">>;
getTagId(deliverToCompID) ->
    <<"128">>;
getTagId(deliverToSubID) ->
    <<"129">>;
getTagId(iOINaturalFlag) ->
    <<"130">>;
getTagId(quoteReqID) ->
    <<"131">>;
getTagId(bidPx) ->
    <<"132">>;
getTagId(offerPx) ->
    <<"133">>;
getTagId(bidSize) ->
    <<"134">>;
getTagId(offerSize) ->
    <<"135">>;
getTagId(noMiscFees) ->
    <<"136">>;
getTagId(miscFeeAmt) ->
    <<"137">>;
getTagId(miscFeeCurr) ->
    <<"138">>;
getTagId(miscFeeType) ->
    <<"139">>;
getTagId(prevClosePx) ->
    <<"140">>;
getTagId(_Name) ->
    error.
reconvert(advId, Int) -> 
    erlang:integer_to_list(Int);
reconvert(advRefID, Int) -> 
    erlang:integer_to_list(Int);
reconvert(advSide, buy) -> 
    <<"B">>;
reconvert(advSide, sell) -> 
    <<"S">>;
reconvert(advSide, trade) -> 
    <<"T">>;
reconvert(advSide, cross) -> 
    <<"X">>;
reconvert(advTransType, cancel) -> 
    <<"C">>;
reconvert(advTransType, new) -> 
    <<"N">>;
reconvert(advTransType, replace) -> 
    <<"R">>;
reconvert(beginSeqNo, Int) -> 
    erlang:integer_to_list(Int);
reconvert(bodyLength, Int) -> 
    erlang:integer_to_list(Int);
reconvert(commType, perUnit) -> 
    <<"1">>;
reconvert(commType, percent) -> 
    <<"2">>;
reconvert(commType, absolute) -> 
    <<"3">>;
reconvert(cumQty, Int) -> 
    erlang:integer_to_list(Int);
reconvert(endSeqNo, Int) -> 
    erlang:integer_to_list(Int);
reconvert(execID, Int) -> 
    erlang:integer_to_list(Int);
reconvert(execInst, stayOnOfferSide) -> 
    <<"0">>;
reconvert(execInst, notHeld) -> 
    <<"1">>;
reconvert(execInst, work) -> 
    <<"2">>;
reconvert(execInst, goAlong) -> 
    <<"3">>;
reconvert(execInst, overTheDay) -> 
    <<"4">>;
reconvert(execInst, held) -> 
    <<"5">>;
reconvert(execInst, participateDoNotInitiate) -> 
    <<"6">>;
reconvert(execInst, strictScale) -> 
    <<"7">>;
reconvert(execInst, tryToScale) -> 
    <<"8">>;
reconvert(execInst, stayOnBidSide) -> 
    <<"9">>;
reconvert(execInst, noCross) -> 
    <<"A">>;
reconvert(execInst, oKToCross) -> 
    <<"B">>;
reconvert(execInst, callFirst) -> 
    <<"C">>;
reconvert(execInst, percentOfVolume) -> 
    <<"D">>;
reconvert(execInst, doNotIncrease) -> 
    <<"E">>;
reconvert(execInst, doNotReduce) -> 
    <<"F">>;
reconvert(execInst, allOrNone) -> 
    <<"G">>;
reconvert(execInst, institutionsOnly) -> 
    <<"I">>;
reconvert(execInst, lastPeg) -> 
    <<"L">>;
reconvert(execInst, midPricePeg) -> 
    <<"M">>;
reconvert(execInst, nonNegotiable) -> 
    <<"N">>;
reconvert(execInst, openingPeg) -> 
    <<"O">>;
reconvert(execInst, marketPeg) -> 
    <<"P">>;
reconvert(execInst, primaryPeg) -> 
    <<"R">>;
reconvert(execInst, suspend) -> 
    <<"S">>;
reconvert(execRefID, Int) -> 
    erlang:integer_to_list(Int);
reconvert(execTransType, new) -> 
    <<"0">>;
reconvert(execTransType, cancel) -> 
    <<"1">>;
reconvert(execTransType, correct) -> 
    <<"2">>;
reconvert(execTransType, status) -> 
    <<"3">>;
reconvert(handlInst, automatedExecutionNoIntervention) -> 
    <<"1">>;
reconvert(handlInst, automatedExecutionInterventionOK) -> 
    <<"2">>;
reconvert(handlInst, manualOrder) -> 
    <<"3">>;
reconvert(iDSource, cUSIP) -> 
    <<"1">>;
reconvert(iDSource, sEDOL) -> 
    <<"2">>;
reconvert(iDSource, qUIK) -> 
    <<"3">>;
reconvert(iDSource, iSINNumber) -> 
    <<"4">>;
reconvert(iDSource, rICCode) -> 
    <<"5">>;
reconvert(iOIid, Int) -> 
    erlang:integer_to_list(Int);
reconvert(iOIOthSvc, autex) -> 
    <<"A">>;
reconvert(iOIOthSvc, bridge) -> 
    <<"B">>;
reconvert(iOIQltyInd, high) -> 
    <<"H">>;
reconvert(iOIQltyInd, low) -> 
    <<"L">>;
reconvert(iOIQltyInd, medium) -> 
    <<"M">>;
reconvert(iOIRefID, Int) -> 
    erlang:integer_to_list(Int);
reconvert(iOIShares, large) -> 
    <<"L">>;
reconvert(iOIShares, medium) -> 
    <<"M">>;
reconvert(iOIShares, small) -> 
    <<"S">>;
reconvert(iOITransType, cancel) -> 
    <<"C">>;
reconvert(iOITransType, new) -> 
    <<"N">>;
reconvert(iOITransType, replace) -> 
    <<"R">>;
reconvert(lastCapacity, agent) -> 
    <<"1">>;
reconvert(lastCapacity, crossAsAgent) -> 
    <<"2">>;
reconvert(lastCapacity, crossAsPrincipal) -> 
    <<"3">>;
reconvert(lastCapacity, principal) -> 
    <<"4">>;
reconvert(lastShares, Int) -> 
    erlang:integer_to_list(Int);
reconvert(linesOfText, Int) -> 
    erlang:integer_to_list(Int);
reconvert(msgSeqNum, Int) -> 
    erlang:integer_to_list(Int);
reconvert(msgType, heartbeat) -> 
    <<"0">>;
reconvert(msgType, testRequest) -> 
    <<"1">>;
reconvert(msgType, resendRequest) -> 
    <<"2">>;
reconvert(msgType, reject) -> 
    <<"3">>;
reconvert(msgType, sequenceReset) -> 
    <<"4">>;
reconvert(msgType, logout) -> 
    <<"5">>;
reconvert(msgType, iOI) -> 
    <<"6">>;
reconvert(msgType, advertisement) -> 
    <<"7">>;
reconvert(msgType, executionReport) -> 
    <<"8">>;
reconvert(msgType, orderCancelReject) -> 
    <<"9">>;
reconvert(msgType, logon) -> 
    <<"A">>;
reconvert(msgType, news) -> 
    <<"B">>;
reconvert(msgType, email) -> 
    <<"C">>;
reconvert(msgType, orderSingle) -> 
    <<"D">>;
reconvert(msgType, newOrderList) -> 
    <<"E">>;
reconvert(msgType, orderCancelRequest) -> 
    <<"F">>;
reconvert(msgType, orderCancelReplaceRequest) -> 
    <<"G">>;
reconvert(msgType, orderStatusRequest) -> 
    <<"H">>;
reconvert(msgType, allocationInstruction) -> 
    <<"J">>;
reconvert(msgType, listCancelRequest) -> 
    <<"K">>;
reconvert(msgType, listExecute) -> 
    <<"L">>;
reconvert(msgType, listStatusRequest) -> 
    <<"M">>;
reconvert(msgType, listStatus) -> 
    <<"N">>;
reconvert(msgType, allocationInstructionAck) -> 
    <<"P">>;
reconvert(msgType, dontKnowTrade) -> 
    <<"Q">>;
reconvert(msgType, quoteRequest) -> 
    <<"R">>;
reconvert(msgType, quote) -> 
    <<"S">>;
reconvert(newSeqNo, Int) -> 
    erlang:integer_to_list(Int);
reconvert(orderQty, Int) -> 
    erlang:integer_to_list(Int);
reconvert(ordStatus, new) -> 
    <<"0">>;
reconvert(ordStatus, partiallyFilled) -> 
    <<"1">>;
reconvert(ordStatus, filled) -> 
    <<"2">>;
reconvert(ordStatus, doneForDay) -> 
    <<"3">>;
reconvert(ordStatus, canceled) -> 
    <<"4">>;
reconvert(ordStatus, replaced) -> 
    <<"5">>;
reconvert(ordStatus, pendingCancel) -> 
    <<"6">>;
reconvert(ordStatus, stopped) -> 
    <<"7">>;
reconvert(ordStatus, rejected) -> 
    <<"8">>;
reconvert(ordStatus, suspended) -> 
    <<"9">>;
reconvert(ordStatus, pendingNew) -> 
    <<"A">>;
reconvert(ordStatus, calculated) -> 
    <<"B">>;
reconvert(ordStatus, expired) -> 
    <<"C">>;
reconvert(ordType, market) -> 
    <<"1">>;
reconvert(ordType, limit) -> 
    <<"2">>;
reconvert(ordType, stop) -> 
    <<"3">>;
reconvert(ordType, stopLimit) -> 
    <<"4">>;
reconvert(ordType, marketOnClose) -> 
    <<"5">>;
reconvert(ordType, withOrWithout) -> 
    <<"6">>;
reconvert(ordType, limitOrBetter) -> 
    <<"7">>;
reconvert(ordType, limitWithOrWithout) -> 
    <<"8">>;
reconvert(ordType, onBasis) -> 
    <<"9">>;
reconvert(ordType, onClose) -> 
    <<"A">>;
reconvert(ordType, limitOnClose) -> 
    <<"B">>;
reconvert(ordType, forexMarket) -> 
    <<"C">>;
reconvert(ordType, previouslyQuoted) -> 
    <<"D">>;
reconvert(ordType, previouslyIndicated) -> 
    <<"E">>;
reconvert(ordType, pegged) -> 
    <<"P">>;
reconvert(possDupFlag, originalTransmission) -> 
    <<"N">>;
reconvert(possDupFlag, possibleDuplicate) -> 
    <<"Y">>;
reconvert(refSeqNum, Int) -> 
    erlang:integer_to_list(Int);
reconvert(rule80A, agencySingleOrder) -> 
    <<"A">>;
reconvert(rule80A, proprietaryNonAlgo) -> 
    <<"C">>;
reconvert(rule80A, programOrderMember) -> 
    <<"D">>;
reconvert(rule80A, individualInvestor) -> 
    <<"I">>;
reconvert(rule80A, proprietaryAlgo) -> 
    <<"J">>;
reconvert(rule80A, agencyAlgo) -> 
    <<"K">>;
reconvert(rule80A, programOrderOtherMember) -> 
    <<"M">>;
reconvert(rule80A, agentForOtherMember) -> 
    <<"N">>;
reconvert(rule80A, agencyIndexArb) -> 
    <<"U">>;
reconvert(rule80A, allOtherOrdersAsAgentForOtherMember) -> 
    <<"W">>;
reconvert(rule80A, agencyNonAlgo) -> 
    <<"Y">>;
reconvert(shares, Int) -> 
    erlang:integer_to_list(Int);
reconvert(side, buy) -> 
    <<"1">>;
reconvert(side, sell) -> 
    <<"2">>;
reconvert(side, buyMinus) -> 
    <<"3">>;
reconvert(side, sellPlus) -> 
    <<"4">>;
reconvert(side, sellShort) -> 
    <<"5">>;
reconvert(side, sellShortExempt) -> 
    <<"6">>;
reconvert(timeInForce, day) -> 
    <<"0">>;
reconvert(timeInForce, goodTillCancel) -> 
    <<"1">>;
reconvert(timeInForce, atTheOpening) -> 
    <<"2">>;
reconvert(timeInForce, immediateOrCancel) -> 
    <<"3">>;
reconvert(timeInForce, fillOrKill) -> 
    <<"4">>;
reconvert(timeInForce, goodTillCrossing) -> 
    <<"5">>;
reconvert(timeInForce, goodTillDate) -> 
    <<"6">>;
reconvert(urgency, normal) -> 
    <<"0">>;
reconvert(urgency, flash) -> 
    <<"1">>;
reconvert(urgency, background) -> 
    <<"2">>;
reconvert(settlmntTyp, regular) -> 
    <<"0">>;
reconvert(settlmntTyp, cash) -> 
    <<"1">>;
reconvert(settlmntTyp, nextDay) -> 
    <<"2">>;
reconvert(settlmntTyp, tPlus2) -> 
    <<"3">>;
reconvert(settlmntTyp, tPlus3) -> 
    <<"4">>;
reconvert(settlmntTyp, tPlus4) -> 
    <<"5">>;
reconvert(settlmntTyp, future) -> 
    <<"6">>;
reconvert(settlmntTyp, whenAndIfIssued) -> 
    <<"7">>;
reconvert(settlmntTyp, sellersOption) -> 
    <<"8">>;
reconvert(settlmntTyp, tPlus5) -> 
    <<"9">>;
reconvert(listSeqNo, Int) -> 
    erlang:integer_to_list(Int);
reconvert(listNoOrds, Int) -> 
    erlang:integer_to_list(Int);
reconvert(allocID, Int) -> 
    erlang:integer_to_list(Int);
reconvert(allocTransType, new) -> 
    <<"0">>;
reconvert(allocTransType, replace) -> 
    <<"1">>;
reconvert(allocTransType, cancel) -> 
    <<"2">>;
reconvert(refAllocID, Int) -> 
    erlang:integer_to_list(Int);
reconvert(noOrders, Int) -> 
    erlang:integer_to_list(Int);
reconvert(avgPrxPrecision, Int) -> 
    erlang:integer_to_list(Int);
reconvert(noAllocs, Int) -> 
    erlang:integer_to_list(Int);
reconvert(allocShares, Int) -> 
    erlang:integer_to_list(Int);
reconvert(processCode, regular) -> 
    <<"0">>;
reconvert(processCode, softDollar) -> 
    <<"1">>;
reconvert(processCode, stepIn) -> 
    <<"2">>;
reconvert(processCode, stepOut) -> 
    <<"3">>;
reconvert(processCode, softDollarStepIn) -> 
    <<"4">>;
reconvert(processCode, softDollarStepOut) -> 
    <<"5">>;
reconvert(processCode, planSponsor) -> 
    <<"6">>;
reconvert(noRpts, Int) -> 
    erlang:integer_to_list(Int);
reconvert(rptSeq, Int) -> 
    erlang:integer_to_list(Int);
reconvert(cxlQty, Int) -> 
    erlang:integer_to_list(Int);
reconvert(noDlvyInst, Int) -> 
    erlang:integer_to_list(Int);
reconvert(allocStatus, accepted) -> 
    <<"0">>;
reconvert(allocStatus, blockLevelReject) -> 
    <<"1">>;
reconvert(allocStatus, accountLevelReject) -> 
    <<"2">>;
reconvert(allocStatus, received) -> 
    <<"3">>;
reconvert(allocRejCode, unknownAccount) -> 
    <<"0">>;
reconvert(allocRejCode, incorrectQuantity) -> 
    <<"1">>;
reconvert(allocRejCode, incorrectAveragegPrice) -> 
    <<"2">>;
reconvert(allocRejCode, unknownExecutingBrokerMnemonic) -> 
    <<"3">>;
reconvert(allocRejCode, commissionDifference) -> 
    <<"4">>;
reconvert(allocRejCode, unknownOrderID) -> 
    <<"5">>;
reconvert(allocRejCode, unknownListID) -> 
    <<"6">>;
reconvert(allocRejCode, otherSeeText) -> 
    <<"7">>;
reconvert(secureDataLen, Int) -> 
    erlang:integer_to_list(Int);
reconvert(signatureLength, Int) -> 
    erlang:integer_to_list(Int);
reconvert(emailType, new) -> 
    <<"0">>;
reconvert(emailType, reply) -> 
    <<"1">>;
reconvert(emailType, adminReply) -> 
    <<"2">>;
reconvert(rawDataLength, Int) -> 
    erlang:integer_to_list(Int);
reconvert(encryptMethod, none) -> 
    <<"0">>;
reconvert(encryptMethod, pKCS) -> 
    <<"1">>;
reconvert(encryptMethod, dES) -> 
    <<"2">>;
reconvert(encryptMethod, pKCSDES) -> 
    <<"3">>;
reconvert(encryptMethod, pGPDES) -> 
    <<"4">>;
reconvert(encryptMethod, pGPDESMD5) -> 
    <<"5">>;
reconvert(encryptMethod, pEM) -> 
    <<"6">>;
reconvert(exDestination, none) -> 
    <<"0">>;
reconvert(exDestination, pOSIT) -> 
    <<"4">>;
reconvert(cxlRejReason, tooLateToCancel) -> 
    <<"0">>;
reconvert(cxlRejReason, unknownOrder) -> 
    <<"1">>;
reconvert(ordRejReason, brokerCredit) -> 
    <<"0">>;
reconvert(ordRejReason, unknownSymbol) -> 
    <<"1">>;
reconvert(ordRejReason, exchangeClosed) -> 
    <<"2">>;
reconvert(ordRejReason, orderExceedsLimit) -> 
    <<"3">>;
reconvert(ordRejReason, tooLateToEnter) -> 
    <<"4">>;
reconvert(iOIQualifier, allOrNone) -> 
    <<"A">>;
reconvert(iOIQualifier, atTheClose) -> 
    <<"C">>;
reconvert(iOIQualifier, inTouchWith) -> 
    <<"I">>;
reconvert(iOIQualifier, limit) -> 
    <<"L">>;
reconvert(iOIQualifier, moreBehind) -> 
    <<"M">>;
reconvert(iOIQualifier, atTheOpen) -> 
    <<"O">>;
reconvert(iOIQualifier, takingAPosition) -> 
    <<"P">>;
reconvert(iOIQualifier, atTheMarket) -> 
    <<"Q">>;
reconvert(iOIQualifier, portfolioShown) -> 
    <<"S">>;
reconvert(iOIQualifier, throughTheDay) -> 
    <<"T">>;
reconvert(iOIQualifier, versus) -> 
    <<"V">>;
reconvert(iOIQualifier, indication) -> 
    <<"W">>;
reconvert(iOIQualifier, crossingOpportunity) -> 
    <<"X">>;
reconvert(heartBtInt, Int) -> 
    erlang:integer_to_list(Int);
reconvert(minQty, Int) -> 
    erlang:integer_to_list(Int);
reconvert(maxFloor, Int) -> 
    erlang:integer_to_list(Int);
reconvert(reportToExch, senderReports) -> 
    <<"N">>;
reconvert(reportToExch, receiverReports) -> 
    <<"Y">>;
reconvert(locateReqd, no) -> 
    <<"N">>;
reconvert(locateReqd, yes) -> 
    <<"Y">>;
reconvert(forexReq, doNotExecuteForexAfterSecurityTrade) -> 
    <<"N">>;
reconvert(forexReq, executeForexAfterSecurityTrade) -> 
    <<"Y">>;
reconvert(gapFillFlag, sequenceReset) -> 
    <<"N">>;
reconvert(gapFillFlag, gapFillMessage) -> 
    <<"Y">>;
reconvert(noExecs, Int) -> 
    erlang:integer_to_list(Int);
reconvert(cxlType, fullRemainingQuantity) -> 
    <<"F">>;
reconvert(cxlType, partialCancel) -> 
    <<"P">>;
reconvert(dKReason, unknownSymbol) -> 
    <<"A">>;
reconvert(dKReason, wrongSide) -> 
    <<"B">>;
reconvert(dKReason, quantityExceedsOrder) -> 
    <<"C">>;
reconvert(dKReason, noMatchingOrder) -> 
    <<"D">>;
reconvert(dKReason, priceExceedsLimit) -> 
    <<"E">>;
reconvert(dKReason, other) -> 
    <<"Z">>;
reconvert(iOINaturalFlag, notNatural) -> 
    <<"N">>;
reconvert(iOINaturalFlag, natural) -> 
    <<"Y">>;
reconvert(bidSize, Int) -> 
    erlang:integer_to_list(Int);
reconvert(offerSize, Int) -> 
    erlang:integer_to_list(Int);
reconvert(noMiscFees, Int) -> 
    erlang:integer_to_list(Int);
reconvert(miscFeeType, regulatory) -> 
    <<"1">>;
reconvert(miscFeeType, tax) -> 
    <<"2">>;
reconvert(miscFeeType, localCommission) -> 
    <<"3">>;
reconvert(miscFeeType, exchangeFees) -> 
    <<"4">>;
reconvert(miscFeeType, stamp) -> 
    <<"5">>;
reconvert(miscFeeType, levy) -> 
    <<"6">>;
reconvert(miscFeeType, other) -> 
    <<"7">>;
reconvert(_Name, Bin) ->
    Bin.
