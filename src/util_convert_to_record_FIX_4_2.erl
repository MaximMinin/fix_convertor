%% This module is automatically generated - do not edit it!!!
%%TODO: funktion to convert date and time types
-module(util_convert_to_record_FIX_4_2).

%%
%% Include files
%%
-include("FIX_4_2.hrl").
    
%%
%% Exported Functions
%%
-export([convert/2, reconvert/2, getMessageName/1, getRecord/1, getFieldName/1, getTagId/1, setFieldInRecord/4, setMsgSeqNum/2, get_record_def/1]).
    
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
   binary_to_list(Bin);
convert(advRefID, Bin) -> 
   binary_to_list(Bin);
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
   bin_to_num(Bin);
convert(beginSeqNo, Bin) -> 
   bin_to_num(Bin);
convert(beginString, Bin) -> 
   binary_to_list(Bin);
convert(bodyLength, Bin) -> 
   bin_to_num(Bin);
convert(checkSum, Bin) -> 
   binary_to_list(Bin);
convert(clOrdID, Bin) -> 
   binary_to_list(Bin);
convert(commission, Bin) -> 
   bin_to_num(Bin);
convert(commType, <<"1">>) -> 
    perUnit;
convert(commType, <<"2">>) -> 
    percent;
convert(commType, <<"3">>) -> 
    absolute;
convert(cumQty, Bin) -> 
   bin_to_num(Bin);
convert(currency, Bin) -> 
   binary_to_list(Bin);
convert(endSeqNo, Bin) -> 
   bin_to_num(Bin);
convert(execID, Bin) -> 
   binary_to_list(Bin);
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
convert(execInst, <<"T">>) -> 
    fixedPegToLocalBestBidOrOfferAtTimeOfOrder;
convert(execInst, <<"U">>) -> 
    customerDisplayInstruction;
convert(execInst, <<"V">>) -> 
    netting;
convert(execInst, <<"W">>) -> 
    pegToVWAP;
convert(execRefID, Bin) -> 
   binary_to_list(Bin);
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
convert(iDSource, <<"6">>) -> 
    iSOCurrencyCode;
convert(iDSource, <<"7">>) -> 
    iSOCountryCode;
convert(iDSource, <<"8">>) -> 
    exchangeSymbol;
convert(iDSource, <<"9">>) -> 
    consolidatedTapeAssociation;
convert(iOIid, Bin) -> 
   binary_to_list(Bin);
convert(iOIOthSvc, Bin) -> 
   binary_to_list(Bin);
convert(iOIQltyInd, <<"H">>) -> 
    high;
convert(iOIQltyInd, <<"L">>) -> 
    low;
convert(iOIQltyInd, <<"M">>) -> 
    medium;
convert(iOIRefID, Bin) -> 
   binary_to_list(Bin);
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
   bin_to_num(Bin);
convert(lastShares, Bin) -> 
   bin_to_num(Bin);
convert(linesOfText, Bin) -> 
   bin_to_num(Bin);
convert(msgSeqNum, Bin) -> 
   bin_to_num(Bin);
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
convert(msgType, <<"T">>) -> 
    settlementInstructions;
convert(msgType, <<"V">>) -> 
    marketDataRequest;
convert(msgType, <<"W">>) -> 
    marketDataSnapshotFullRefresh;
convert(msgType, <<"X">>) -> 
    marketDataIncrementalRefresh;
convert(msgType, <<"Y">>) -> 
    marketDataRequestReject;
convert(msgType, <<"Z">>) -> 
    quoteCancel;
convert(msgType, <<"a">>) -> 
    quoteStatusRequest;
convert(msgType, <<"b">>) -> 
    quoteAcknowledgement;
convert(msgType, <<"c">>) -> 
    securityDefinitionRequest;
convert(msgType, <<"d">>) -> 
    securityDefinition;
convert(msgType, <<"e">>) -> 
    securityStatusRequest;
convert(msgType, <<"f">>) -> 
    securityStatus;
convert(msgType, <<"g">>) -> 
    tradingSessionStatusRequest;
convert(msgType, <<"h">>) -> 
    tradingSessionStatus;
convert(msgType, <<"i">>) -> 
    massQuote;
convert(msgType, <<"j">>) -> 
    businessMessageReject;
convert(msgType, <<"k">>) -> 
    bidRequest;
convert(msgType, <<"l">>) -> 
    bidResponse;
convert(msgType, <<"m">>) -> 
    listStrikePrice;
convert(newSeqNo, Bin) -> 
   bin_to_num(Bin);
convert(orderID, Bin) -> 
   binary_to_list(Bin);
convert(orderQty, Bin) -> 
   bin_to_num(Bin);
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
convert(ordStatus, <<"D">>) -> 
    acceptedForBidding;
convert(ordStatus, <<"E">>) -> 
    pendingReplace;
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
convert(ordType, <<"F">>) -> 
    forexLimit;
convert(ordType, <<"G">>) -> 
    forexSwap;
convert(ordType, <<"H">>) -> 
    forexPreviouslyQuoted;
convert(ordType, <<"I">>) -> 
    funari;
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
   bin_to_num(Bin);
convert(refSeqNum, Bin) -> 
   bin_to_num(Bin);
convert(relatdSym, Bin) -> 
   binary_to_list(Bin);
convert(rule80A, <<"A">>) -> 
    agencySingleOrder;
convert(rule80A, <<"B">>) -> 
    shortExemptTransactionAType;
convert(rule80A, <<"C">>) -> 
    proprietaryNonAlgo;
convert(rule80A, <<"D">>) -> 
    programOrderMember;
convert(rule80A, <<"E">>) -> 
    shortExemptTransactionForPrincipal;
convert(rule80A, <<"F">>) -> 
    shortExemptTransactionWType;
convert(rule80A, <<"H">>) -> 
    shortExemptTransactionIType;
convert(rule80A, <<"I">>) -> 
    individualInvestor;
convert(rule80A, <<"J">>) -> 
    proprietaryAlgo;
convert(rule80A, <<"K">>) -> 
    agencyAlgo;
convert(rule80A, <<"L">>) -> 
    shortExemptTransactionMemberAffliated;
convert(rule80A, <<"M">>) -> 
    programOrderOtherMember;
convert(rule80A, <<"N">>) -> 
    agentForOtherMember;
convert(rule80A, <<"O">>) -> 
    proprietaryTransactionAffiliated;
convert(rule80A, <<"P">>) -> 
    principal;
convert(rule80A, <<"R">>) -> 
    transactionNonMember;
convert(rule80A, <<"S">>) -> 
    specialistTrades;
convert(rule80A, <<"T">>) -> 
    transactionUnaffiliatedMember;
convert(rule80A, <<"U">>) -> 
    agencyIndexArb;
convert(rule80A, <<"W">>) -> 
    allOtherOrdersAsAgentForOtherMember;
convert(rule80A, <<"X">>) -> 
    shortExemptTransactionMemberNotAffliated;
convert(rule80A, <<"Y">>) -> 
    agencyNonAlgo;
convert(rule80A, <<"Z">>) -> 
    shortExemptTransactionNonMember;
convert(securityID, Bin) -> 
   binary_to_list(Bin);
convert(senderCompID, Bin) -> 
   binary_to_list(Bin);
convert(senderSubID, Bin) -> 
   binary_to_list(Bin);
convert(sendingDate, Bin) -> 
   binary_to_list(Bin);
convert(sendingTime, Bin) -> 
   binary_to_list(Bin);
convert(shares, Bin) -> 
   bin_to_num(Bin);
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
convert(side, <<"7">>) -> 
    undisclosed;
convert(side, <<"8">>) -> 
    cross;
convert(side, <<"9">>) -> 
    crossShort;
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
   bin_to_num(Bin);
convert(totNoOrders, Bin) -> 
   bin_to_num(Bin);
convert(listExecInst, Bin) -> 
   binary_to_list(Bin);
convert(allocID, Bin) -> 
   binary_to_list(Bin);
convert(allocTransType, <<"0">>) -> 
    new;
convert(allocTransType, <<"1">>) -> 
    replace;
convert(allocTransType, <<"2">>) -> 
    cancel;
convert(allocTransType, <<"3">>) -> 
    preliminary;
convert(allocTransType, <<"4">>) -> 
    calculated;
convert(allocTransType, <<"5">>) -> 
    calculatedWithoutPreliminary;
convert(refAllocID, Bin) -> 
   binary_to_list(Bin);
convert(noOrders, Bin) -> 
   bin_to_num(Bin);
convert(avgPrxPrecision, Bin) -> 
   bin_to_num(Bin);
convert(tradeDate, Bin) -> 
   binary_to_list(Bin);
convert(execBroker, Bin) -> 
   binary_to_list(Bin);
convert(openClose, <<"C">>) -> 
    close;
convert(openClose, <<"O">>) -> 
    open;
convert(noAllocs, Bin) -> 
   bin_to_num(Bin);
convert(allocAccount, Bin) -> 
   binary_to_list(Bin);
convert(allocShares, Bin) -> 
   bin_to_num(Bin);
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
   bin_to_num(Bin);
convert(rptSeq, Bin) -> 
   bin_to_num(Bin);
convert(cxlQty, Bin) -> 
   bin_to_num(Bin);
convert(noDlvyInst, Bin) -> 
   bin_to_num(Bin);
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
   bin_to_num(Bin);
convert(secureData, Bin) -> 
   binary_to_list(Bin);
convert(brokerOfCredit, Bin) -> 
   binary_to_list(Bin);
convert(signatureLength, Bin) -> 
   bin_to_num(Bin);
convert(emailType, <<"0">>) -> 
    new;
convert(emailType, <<"1">>) -> 
    reply;
convert(emailType, <<"2">>) -> 
    adminReply;
convert(rawDataLength, Bin) -> 
   bin_to_num(Bin);
convert(rawData, Bin) -> 
   binary_to_list(Bin);
convert(possResend, <<"N">>) -> 
    originalTransmission;
convert(possResend, <<"Y">>) -> 
    possibleResend;
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
   bin_to_num(Bin);
convert(exDestination, Bin) -> 
   binary_to_list(Bin);
convert(cxlRejReason, <<"0">>) -> 
    tooLateToCancel;
convert(cxlRejReason, <<"1">>) -> 
    unknownOrder;
convert(cxlRejReason, <<"2">>) -> 
    brokerCredit;
convert(cxlRejReason, <<"3">>) -> 
    orderAlreadyInPendingStatus;
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
convert(ordRejReason, <<"5">>) -> 
    unknownOrder;
convert(ordRejReason, <<"6">>) -> 
    duplicateOrder;
convert(ordRejReason, <<"7">>) -> 
    duplicateOfAVerballyCommunicatedOrder;
convert(ordRejReason, <<"8">>) -> 
    staleOrder;
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
convert(iOIQualifier, <<"R">>) -> 
    readyToTrade;
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
convert(iOIQualifier, <<"Y">>) -> 
    atTheMidpoint;
convert(iOIQualifier, <<"Z">>) -> 
    preOpen;
convert(waveNo, Bin) -> 
   binary_to_list(Bin);
convert(issuer, Bin) -> 
   binary_to_list(Bin);
convert(securityDesc, Bin) -> 
   binary_to_list(Bin);
convert(heartBtInt, Bin) -> 
   bin_to_num(Bin);
convert(clientID, Bin) -> 
   binary_to_list(Bin);
convert(minQty, Bin) -> 
   bin_to_num(Bin);
convert(maxFloor, Bin) -> 
   bin_to_num(Bin);
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
   bin_to_num(Bin);
convert(settlCurrAmt, Bin) -> 
   bin_to_num(Bin);
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
   bin_to_num(Bin);
convert(cxlType, Bin) -> 
   binary_to_list(Bin);
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
   bin_to_num(Bin);
convert(offerPx, Bin) -> 
   bin_to_num(Bin);
convert(bidSize, Bin) -> 
   bin_to_num(Bin);
convert(offerSize, Bin) -> 
   bin_to_num(Bin);
convert(noMiscFees, Bin) -> 
   bin_to_num(Bin);
convert(miscFeeAmt, Bin) -> 
   bin_to_num(Bin);
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
convert(miscFeeType, <<"8">>) -> 
    markup;
convert(miscFeeType, <<"9">>) -> 
    consumptionTax;
convert(prevClosePx, Bin) -> 
   bin_to_num(Bin);
convert(resetSeqNumFlag, <<"N">>) -> 
    no;
convert(resetSeqNumFlag, <<"Y">>) -> 
    yes;
convert(senderLocationID, Bin) -> 
   binary_to_list(Bin);
convert(targetLocationID, Bin) -> 
   binary_to_list(Bin);
convert(onBehalfOfLocationID, Bin) -> 
   binary_to_list(Bin);
convert(deliverToLocationID, Bin) -> 
   binary_to_list(Bin);
convert(noRelatedSym, Bin) -> 
   bin_to_num(Bin);
convert(subject, Bin) -> 
   binary_to_list(Bin);
convert(headline, Bin) -> 
   binary_to_list(Bin);
convert(uRLLink, Bin) -> 
   binary_to_list(Bin);
convert(execType, <<"0">>) -> 
    new;
convert(execType, <<"1">>) -> 
    partialFill;
convert(execType, <<"2">>) -> 
    fill;
convert(execType, <<"3">>) -> 
    doneForDay;
convert(execType, <<"4">>) -> 
    canceled;
convert(execType, <<"5">>) -> 
    replaced;
convert(execType, <<"6">>) -> 
    pendingCancel;
convert(execType, <<"7">>) -> 
    stopped;
convert(execType, <<"8">>) -> 
    rejected;
convert(execType, <<"9">>) -> 
    suspended;
convert(execType, <<"A">>) -> 
    pendingNew;
convert(execType, <<"B">>) -> 
    calculated;
convert(execType, <<"C">>) -> 
    expired;
convert(execType, <<"D">>) -> 
    restated;
convert(execType, <<"E">>) -> 
    pendingReplace;
convert(leavesQty, Bin) -> 
   bin_to_num(Bin);
convert(cashOrderQty, Bin) -> 
   bin_to_num(Bin);
convert(allocAvgPx, Bin) -> 
   bin_to_num(Bin);
convert(allocNetMoney, Bin) -> 
   bin_to_num(Bin);
convert(settlCurrFxRate, Bin) -> 
   bin_to_num(Bin);
convert(settlCurrFxRateCalc, Bin) -> 
   binary_to_list(Bin);
convert(numDaysInterest, Bin) -> 
   bin_to_num(Bin);
convert(accruedInterestRate, Bin) -> 
   bin_to_num(Bin);
convert(accruedInterestAmt, Bin) -> 
   bin_to_num(Bin);
convert(settlInstMode, <<"0">>) -> 
    default;
convert(settlInstMode, <<"1">>) -> 
    standingInstructionsProvided;
convert(settlInstMode, <<"2">>) -> 
    specificAllocationAccountOverriding;
convert(settlInstMode, <<"3">>) -> 
    specificAllocationAccountStanding;
convert(allocText, Bin) -> 
   binary_to_list(Bin);
convert(settlInstID, Bin) -> 
   binary_to_list(Bin);
convert(settlInstTransType, <<"C">>) -> 
    cancel;
convert(settlInstTransType, <<"N">>) -> 
    new;
convert(settlInstTransType, <<"R">>) -> 
    replace;
convert(emailThreadID, Bin) -> 
   binary_to_list(Bin);
convert(settlInstSource, <<"1">>) -> 
    brokerCredit;
convert(settlInstSource, <<"2">>) -> 
    institution;
convert(settlLocation, <<"CED">>) -> 
    cEDEL;
convert(settlLocation, <<"DTC">>) -> 
    depositoryTrustCompany;
convert(settlLocation, <<"EUR">>) -> 
    euroClear;
convert(settlLocation, <<"FED">>) -> 
    federalBookEntry;
convert(settlLocation, <<"ISO Country Code">>) -> 
    localMarketSettleLocation;
convert(settlLocation, <<"PNY">>) -> 
    physical;
convert(settlLocation, <<"PTC">>) -> 
    participantTrustCompany;
convert(securityType, <<"?">>) -> 
    wildcard;
convert(securityType, <<"BA">>) -> 
    bankersAcceptance;
convert(securityType, <<"CB">>) -> 
    convertibleBond;
convert(securityType, <<"CD">>) -> 
    certificateOfDeposit;
convert(securityType, <<"CMO">>) -> 
    collateralizedMortgageObligation;
convert(securityType, <<"CORP">>) -> 
    corporateBond;
convert(securityType, <<"CP">>) -> 
    commercialPaper;
convert(securityType, <<"CPP">>) -> 
    corporatePrivatePlacement;
convert(securityType, <<"CS">>) -> 
    commonStock;
convert(securityType, <<"FHA">>) -> 
    federalHousingAuthority;
convert(securityType, <<"FHL">>) -> 
    federalHomeLoan;
convert(securityType, <<"FN">>) -> 
    federalNationalMortgageAssociation;
convert(securityType, <<"FOR">>) -> 
    foreignExchangeContract;
convert(securityType, <<"FUT">>) -> 
    future;
convert(securityType, <<"GN">>) -> 
    governmentNationalMortgageAssociation;
convert(securityType, <<"GOVT">>) -> 
    treasuriesAgencyDebenture;
convert(securityType, <<"IET">>) -> 
    iOETTEMortgage;
convert(securityType, <<"MF">>) -> 
    mutualFund;
convert(securityType, <<"MIO">>) -> 
    mortgageInterestOnly;
convert(securityType, <<"MPO">>) -> 
    mortgagePrincipalOnly;
convert(securityType, <<"MPP">>) -> 
    mortgagePrivatePlacement;
convert(securityType, <<"MPT">>) -> 
    miscellaneousPassThrough;
convert(securityType, <<"MUNI">>) -> 
    municipalBond;
convert(securityType, <<"NONE">>) -> 
    noSecurityType;
convert(securityType, <<"OPT">>) -> 
    option;
convert(securityType, <<"PS">>) -> 
    preferredStock;
convert(securityType, <<"RP">>) -> 
    repurchaseAgreement;
convert(securityType, <<"RVRP">>) -> 
    reverseRepurchaseAgreement;
convert(securityType, <<"SL">>) -> 
    studentLoanMarketingAssociation;
convert(securityType, <<"TD">>) -> 
    timeDeposit;
convert(securityType, <<"USTB">>) -> 
    uSTreasuryBillOld;
convert(securityType, <<"WAR">>) -> 
    warrant;
convert(securityType, <<"ZOO">>) -> 
    catsTigersAndLions;
convert(effectiveTime, Bin) -> 
   binary_to_list(Bin);
convert(standInstDbType, <<"0">>) -> 
    other;
convert(standInstDbType, <<"1">>) -> 
    dTCSID;
convert(standInstDbType, <<"2">>) -> 
    thomsonALERT;
convert(standInstDbType, <<"3">>) -> 
    aGlobalCustodian;
convert(standInstDbName, Bin) -> 
   binary_to_list(Bin);
convert(standInstDbID, Bin) -> 
   binary_to_list(Bin);
convert(settlDeliveryType, Bin) -> 
   bin_to_num(Bin);
convert(settlDepositoryCode, Bin) -> 
   binary_to_list(Bin);
convert(settlBrkrCode, Bin) -> 
   binary_to_list(Bin);
convert(settlInstCode, Bin) -> 
   binary_to_list(Bin);
convert(securitySettlAgentName, Bin) -> 
   binary_to_list(Bin);
convert(securitySettlAgentCode, Bin) -> 
   binary_to_list(Bin);
convert(securitySettlAgentAcctNum, Bin) -> 
   binary_to_list(Bin);
convert(securitySettlAgentAcctName, Bin) -> 
   binary_to_list(Bin);
convert(securitySettlAgentContactName, Bin) -> 
   binary_to_list(Bin);
convert(securitySettlAgentContactPhone, Bin) -> 
   binary_to_list(Bin);
convert(cashSettlAgentName, Bin) -> 
   binary_to_list(Bin);
convert(cashSettlAgentCode, Bin) -> 
   binary_to_list(Bin);
convert(cashSettlAgentAcctNum, Bin) -> 
   binary_to_list(Bin);
convert(cashSettlAgentAcctName, Bin) -> 
   binary_to_list(Bin);
convert(cashSettlAgentContactName, Bin) -> 
   binary_to_list(Bin);
convert(cashSettlAgentContactPhone, Bin) -> 
   binary_to_list(Bin);
convert(bidSpotRate, Bin) -> 
   bin_to_num(Bin);
convert(bidForwardPoints, Bin) -> 
   bin_to_num(Bin);
convert(offerSpotRate, Bin) -> 
   bin_to_num(Bin);
convert(offerForwardPoints, Bin) -> 
   bin_to_num(Bin);
convert(orderQty2, Bin) -> 
   bin_to_num(Bin);
convert(futSettDate2, Bin) -> 
   binary_to_list(Bin);
convert(lastSpotRate, Bin) -> 
   bin_to_num(Bin);
convert(lastForwardPoints, Bin) -> 
   bin_to_num(Bin);
convert(allocLinkID, Bin) -> 
   binary_to_list(Bin);
convert(allocLinkType, <<"0">>) -> 
    fXNetting;
convert(allocLinkType, <<"1">>) -> 
    fXSwap;
convert(secondaryOrderID, Bin) -> 
   binary_to_list(Bin);
convert(noIOIQualifiers, Bin) -> 
   bin_to_num(Bin);
convert(maturityMonthYear, Bin) -> 
   binary_to_list(Bin);
convert(putOrCall, <<"0">>) -> 
    put;
convert(putOrCall, <<"1">>) -> 
    call;
convert(strikePrice, Bin) -> 
   bin_to_num(Bin);
convert(coveredOrUncovered, <<"0">>) -> 
    covered;
convert(coveredOrUncovered, <<"1">>) -> 
    uncovered;
convert(customerOrFirm, <<"0">>) -> 
    customer;
convert(customerOrFirm, <<"1">>) -> 
    firm;
convert(maturityDay, Bin) -> 
   bin_to_num(Bin);
convert(optAttribute, Bin) -> 
   binary_to_list(Bin);
convert(securityExchange, Bin) -> 
   binary_to_list(Bin);
convert(notifyBrokerOfCredit, <<"N">>) -> 
    detailsShouldNotBeCommunicated;
convert(notifyBrokerOfCredit, <<"Y">>) -> 
    detailsShouldBeCommunicated;
convert(allocHandlInst, <<"1">>) -> 
    match;
convert(allocHandlInst, <<"2">>) -> 
    forward;
convert(allocHandlInst, <<"3">>) -> 
    forwardAndMatch;
convert(maxShow, Bin) -> 
   bin_to_num(Bin);
convert(pegDifference, Bin) -> 
   bin_to_num(Bin);
convert(xmlDataLen, Bin) -> 
   bin_to_num(Bin);
convert(xmlData, Bin) -> 
   binary_to_list(Bin);
convert(settlInstRefID, Bin) -> 
   binary_to_list(Bin);
convert(noRoutingIDs, Bin) -> 
   bin_to_num(Bin);
convert(routingType, <<"1">>) -> 
    targetFirm;
convert(routingType, <<"2">>) -> 
    targetList;
convert(routingType, <<"3">>) -> 
    blockFirm;
convert(routingType, <<"4">>) -> 
    blockList;
convert(routingID, Bin) -> 
   binary_to_list(Bin);
convert(spreadToBenchmark, Bin) -> 
   bin_to_num(Bin);
convert(benchmark, <<"1">>) -> 
    cURVE;
convert(benchmark, <<"2">>) -> 
    fiveYR;
convert(benchmark, <<"3">>) -> 
    oLD5;
convert(benchmark, <<"4">>) -> 
    tenYR;
convert(benchmark, <<"5">>) -> 
    oLD10;
convert(benchmark, <<"6">>) -> 
    thirtyYR;
convert(benchmark, <<"7">>) -> 
    oLD30;
convert(benchmark, <<"8">>) -> 
    threeMOLIBOR;
convert(benchmark, <<"9">>) -> 
    sixMOLIBOR;
convert(couponRate, Bin) -> 
   bin_to_num(Bin);
convert(contractMultiplier, Bin) -> 
   bin_to_num(Bin);
convert(mDReqID, Bin) -> 
   binary_to_list(Bin);
convert(subscriptionRequestType, <<"0">>) -> 
    snapshot;
convert(subscriptionRequestType, <<"1">>) -> 
    snapshotAndUpdates;
convert(subscriptionRequestType, <<"2">>) -> 
    disablePreviousSnapshot;
convert(marketDepth, Bin) -> 
   bin_to_num(Bin);
convert(mDUpdateType, <<"0">>) -> 
    fullRefresh;
convert(mDUpdateType, <<"1">>) -> 
    incrementalRefresh;
convert(aggregatedBook, <<"N">>) -> 
    bookEntriesShouldNotBeAggregated;
convert(aggregatedBook, <<"Y">>) -> 
    bookEntriesToBeAggregated;
convert(noMDEntryTypes, Bin) -> 
   bin_to_num(Bin);
convert(noMDEntries, Bin) -> 
   bin_to_num(Bin);
convert(mDEntryType, <<"0">>) -> 
    bid;
convert(mDEntryType, <<"1">>) -> 
    offer;
convert(mDEntryType, <<"2">>) -> 
    trade;
convert(mDEntryType, <<"3">>) -> 
    indexValue;
convert(mDEntryType, <<"4">>) -> 
    openingPrice;
convert(mDEntryType, <<"5">>) -> 
    closingPrice;
convert(mDEntryType, <<"6">>) -> 
    settlementPrice;
convert(mDEntryType, <<"7">>) -> 
    tradingSessionHighPrice;
convert(mDEntryType, <<"8">>) -> 
    tradingSessionLowPrice;
convert(mDEntryType, <<"9">>) -> 
    tradingSessionVWAPPrice;
convert(mDEntryPx, Bin) -> 
   bin_to_num(Bin);
convert(mDEntrySize, Bin) -> 
   bin_to_num(Bin);
convert(mDEntryDate, Bin) -> 
   binary_to_list(Bin);
convert(mDEntryTime, Bin) -> 
   binary_to_list(Bin);
convert(tickDirection, <<"0">>) -> 
    plusTick;
convert(tickDirection, <<"1">>) -> 
    zeroPlusTick;
convert(tickDirection, <<"2">>) -> 
    minusTick;
convert(tickDirection, <<"3">>) -> 
    zeroMinusTick;
convert(mDMkt, Bin) -> 
   binary_to_list(Bin);
convert(quoteCondition, <<"A">>) -> 
    open;
convert(quoteCondition, <<"B">>) -> 
    closed;
convert(quoteCondition, <<"C">>) -> 
    exchangeBest;
convert(quoteCondition, <<"D">>) -> 
    consolidatedBest;
convert(quoteCondition, <<"E">>) -> 
    locked;
convert(quoteCondition, <<"F">>) -> 
    crossed;
convert(quoteCondition, <<"G">>) -> 
    depth;
convert(quoteCondition, <<"H">>) -> 
    fastTrading;
convert(quoteCondition, <<"I">>) -> 
    nonFirm;
convert(tradeCondition, <<"A">>) -> 
    cash;
convert(tradeCondition, <<"B">>) -> 
    averagePriceTrade;
convert(tradeCondition, <<"C">>) -> 
    cashTrade;
convert(tradeCondition, <<"D">>) -> 
    nextDay;
convert(tradeCondition, <<"E">>) -> 
    opening;
convert(tradeCondition, <<"F">>) -> 
    intradayTradeDetail;
convert(tradeCondition, <<"G">>) -> 
    rule127Trade;
convert(tradeCondition, <<"H">>) -> 
    rule155Trade;
convert(tradeCondition, <<"I">>) -> 
    soldLast;
convert(tradeCondition, <<"J">>) -> 
    nextDayTrade;
convert(tradeCondition, <<"K">>) -> 
    opened;
convert(tradeCondition, <<"L">>) -> 
    seller;
convert(tradeCondition, <<"M">>) -> 
    sold;
convert(tradeCondition, <<"N">>) -> 
    stoppedStock;
convert(mDEntryID, Bin) -> 
   binary_to_list(Bin);
convert(mDUpdateAction, <<"0">>) -> 
    new;
convert(mDUpdateAction, <<"1">>) -> 
    change;
convert(mDUpdateAction, <<"2">>) -> 
    delete;
convert(mDEntryRefID, Bin) -> 
   binary_to_list(Bin);
convert(mDReqRejReason, <<"0">>) -> 
    unknownSymbol;
convert(mDReqRejReason, <<"1">>) -> 
    duplicateMDReqID;
convert(mDReqRejReason, <<"2">>) -> 
    insufficientBandwidth;
convert(mDReqRejReason, <<"3">>) -> 
    insufficientPermissions;
convert(mDReqRejReason, <<"4">>) -> 
    unsupportedSubscriptionRequestType;
convert(mDReqRejReason, <<"5">>) -> 
    unsupportedMarketDepth;
convert(mDReqRejReason, <<"6">>) -> 
    unsupportedMDUpdateType;
convert(mDReqRejReason, <<"7">>) -> 
    unsupportedAggregatedBook;
convert(mDReqRejReason, <<"8">>) -> 
    unsupportedMDEntryType;
convert(mDEntryOriginator, Bin) -> 
   binary_to_list(Bin);
convert(locationID, Bin) -> 
   binary_to_list(Bin);
convert(deskID, Bin) -> 
   binary_to_list(Bin);
convert(deleteReason, <<"0">>) -> 
    cancellation;
convert(deleteReason, <<"1">>) -> 
    error;
convert(openCloseSettleFlag, <<"0">>) -> 
    dailyOpen;
convert(openCloseSettleFlag, <<"1">>) -> 
    sessionOpen;
convert(openCloseSettleFlag, <<"2">>) -> 
    deliverySettlementEntry;
convert(sellerDays, Bin) -> 
   bin_to_num(Bin);
convert(mDEntryBuyer, Bin) -> 
   binary_to_list(Bin);
convert(mDEntrySeller, Bin) -> 
   binary_to_list(Bin);
convert(mDEntryPositionNo, Bin) -> 
   bin_to_num(Bin);
convert(financialStatus, <<"1">>) -> 
    bankrupt;
convert(corporateAction, <<"A">>) -> 
    exDividend;
convert(corporateAction, <<"B">>) -> 
    exDistribution;
convert(corporateAction, <<"C">>) -> 
    exRights;
convert(corporateAction, <<"D">>) -> 
    new;
convert(corporateAction, <<"E">>) -> 
    exInterest;
convert(defBidSize, Bin) -> 
   bin_to_num(Bin);
convert(defOfferSize, Bin) -> 
   bin_to_num(Bin);
convert(noQuoteEntries, Bin) -> 
   bin_to_num(Bin);
convert(noQuoteSets, Bin) -> 
   bin_to_num(Bin);
convert(quoteAckStatus, <<"0">>) -> 
    accepted;
convert(quoteAckStatus, <<"1">>) -> 
    cancelForSymbol;
convert(quoteAckStatus, <<"2">>) -> 
    canceledForSecurityType;
convert(quoteAckStatus, <<"3">>) -> 
    canceledForUnderlying;
convert(quoteAckStatus, <<"4">>) -> 
    canceledAll;
convert(quoteAckStatus, <<"5">>) -> 
    rejected;
convert(quoteCancelType, <<"1">>) -> 
    cancelForOneOrMoreSecurities;
convert(quoteCancelType, <<"2">>) -> 
    cancelForSecurityType;
convert(quoteCancelType, <<"3">>) -> 
    cancelForUnderlyingSecurity;
convert(quoteCancelType, <<"4">>) -> 
    cancelAllQuotes;
convert(quoteEntryID, Bin) -> 
   binary_to_list(Bin);
convert(quoteRejectReason, <<"1">>) -> 
    unknownSymbol;
convert(quoteRejectReason, <<"2">>) -> 
    exchange;
convert(quoteRejectReason, <<"3">>) -> 
    quoteRequestExceedsLimit;
convert(quoteRejectReason, <<"4">>) -> 
    tooLateToEnter;
convert(quoteRejectReason, <<"5">>) -> 
    unknownQuote;
convert(quoteRejectReason, <<"6">>) -> 
    duplicateQuote;
convert(quoteRejectReason, <<"7">>) -> 
    invalidBid;
convert(quoteRejectReason, <<"8">>) -> 
    invalidPrice;
convert(quoteRejectReason, <<"9">>) -> 
    notAuthorizedToQuoteSecurity;
convert(quoteResponseLevel, <<"0">>) -> 
    noAcknowledgement;
convert(quoteResponseLevel, <<"1">>) -> 
    acknowledgeOnlyNegativeOrErroneousQuotes;
convert(quoteResponseLevel, <<"2">>) -> 
    acknowledgeEachQuoteMessage;
convert(quoteSetID, Bin) -> 
   binary_to_list(Bin);
convert(quoteRequestType, <<"1">>) -> 
    manual;
convert(quoteRequestType, <<"2">>) -> 
    automatic;
convert(totQuoteEntries, Bin) -> 
   bin_to_num(Bin);
convert(underlyingIDSource, Bin) -> 
   binary_to_list(Bin);
convert(underlyingIssuer, Bin) -> 
   binary_to_list(Bin);
convert(underlyingSecurityDesc, Bin) -> 
   binary_to_list(Bin);
convert(underlyingSecurityExchange, Bin) -> 
   binary_to_list(Bin);
convert(underlyingSecurityID, Bin) -> 
   binary_to_list(Bin);
convert(underlyingSecurityType, Bin) -> 
   binary_to_list(Bin);
convert(underlyingSymbol, Bin) -> 
   binary_to_list(Bin);
convert(underlyingSymbolSfx, Bin) -> 
   binary_to_list(Bin);
convert(underlyingMaturityMonthYear, Bin) -> 
   binary_to_list(Bin);
convert(underlyingMaturityDay, Bin) -> 
   bin_to_num(Bin);
convert(underlyingPutOrCall, Bin) -> 
   bin_to_num(Bin);
convert(underlyingStrikePrice, Bin) -> 
   bin_to_num(Bin);
convert(underlyingOptAttribute, Bin) -> 
   binary_to_list(Bin);
convert(underlyingCurrency, Bin) -> 
   binary_to_list(Bin);
convert(ratioQty, Bin) -> 
   bin_to_num(Bin);
convert(securityReqID, Bin) -> 
   binary_to_list(Bin);
convert(securityRequestType, <<"0">>) -> 
    requestSecurityIdentityAndSpecifications;
convert(securityRequestType, <<"1">>) -> 
    requestSecurityIdentityForSpecifications;
convert(securityRequestType, <<"2">>) -> 
    requestListSecurityTypes;
convert(securityRequestType, <<"3">>) -> 
    requestListSecurities;
convert(securityResponseID, Bin) -> 
   binary_to_list(Bin);
convert(securityResponseType, <<"1">>) -> 
    acceptAsIs;
convert(securityResponseType, <<"2">>) -> 
    acceptWithRevisions;
convert(securityResponseType, <<"3">>) -> 
    listOfSecurityTypesReturnedPerRequest;
convert(securityResponseType, <<"4">>) -> 
    listOfSecuritiesReturnedPerRequest;
convert(securityResponseType, <<"5">>) -> 
    rejectSecurityProposal;
convert(securityResponseType, <<"6">>) -> 
    cannotMatchSelectionCriteria;
convert(securityStatusReqID, Bin) -> 
   binary_to_list(Bin);
convert(unsolicitedIndicator, <<"N">>) -> 
    messageIsBeingSentAsAResultOfAPriorRequest;
convert(unsolicitedIndicator, <<"Y">>) -> 
    messageIsBeingSentUnsolicited;
convert(securityTradingStatus, <<"1">>) -> 
    openingDelay;
convert(securityTradingStatus, <<"10">>) -> 
    marketOnCloseImbalanceSell;
convert(securityTradingStatus, <<"12">>) -> 
    noMarketImbalance;
convert(securityTradingStatus, <<"13">>) -> 
    noMarketOnCloseImbalance;
convert(securityTradingStatus, <<"14">>) -> 
    iTSPreOpening;
convert(securityTradingStatus, <<"15">>) -> 
    newPriceIndication;
convert(securityTradingStatus, <<"16">>) -> 
    tradeDisseminationTime;
convert(securityTradingStatus, <<"17">>) -> 
    readyToTrade;
convert(securityTradingStatus, <<"18">>) -> 
    notAvailableForTrading;
convert(securityTradingStatus, <<"19">>) -> 
    notTradedOnThisMarket;
convert(securityTradingStatus, <<"2">>) -> 
    tradingHalt;
convert(securityTradingStatus, <<"20">>) -> 
    unknownOrInvalid;
convert(securityTradingStatus, <<"3">>) -> 
    resume;
convert(securityTradingStatus, <<"4">>) -> 
    noOpen;
convert(securityTradingStatus, <<"5">>) -> 
    priceIndication;
convert(securityTradingStatus, <<"6">>) -> 
    tradingRangeIndication;
convert(securityTradingStatus, <<"7">>) -> 
    marketImbalanceBuy;
convert(securityTradingStatus, <<"8">>) -> 
    marketImbalanceSell;
convert(securityTradingStatus, <<"9">>) -> 
    marketOnCloseImbalanceBuy;
convert(haltReason, <<"D">>) -> 
    newsDissemination;
convert(haltReason, <<"E">>) -> 
    orderInflux;
convert(haltReason, <<"I">>) -> 
    orderImbalance;
convert(haltReason, <<"M">>) -> 
    additionalInformation;
convert(haltReason, <<"P">>) -> 
    newsPending;
convert(haltReason, <<"X">>) -> 
    equipmentChangeover;
convert(inViewOfCommon, <<"N">>) -> 
    haltWasNotRelatedToAHaltOfTheCommonStock;
convert(inViewOfCommon, <<"Y">>) -> 
    haltWasDueToCommonStockBeingHalted;
convert(dueToRelated, <<"N">>) -> 
    notRelatedToSecurityHalt;
convert(dueToRelated, <<"Y">>) -> 
    relatedToSecurityHalt;
convert(buyVolume, Bin) -> 
   bin_to_num(Bin);
convert(sellVolume, Bin) -> 
   bin_to_num(Bin);
convert(highPx, Bin) -> 
   bin_to_num(Bin);
convert(lowPx, Bin) -> 
   bin_to_num(Bin);
convert(adjustment, <<"1">>) -> 
    cancel;
convert(adjustment, <<"2">>) -> 
    error;
convert(adjustment, <<"3">>) -> 
    correction;
convert(tradSesReqID, Bin) -> 
   binary_to_list(Bin);
convert(tradingSessionID, Bin) -> 
   binary_to_list(Bin);
convert(contraTrader, Bin) -> 
   binary_to_list(Bin);
convert(tradSesMethod, <<"1">>) -> 
    electronic;
convert(tradSesMethod, <<"2">>) -> 
    openOutcry;
convert(tradSesMethod, <<"3">>) -> 
    twoParty;
convert(tradSesMode, <<"1">>) -> 
    testing;
convert(tradSesMode, <<"2">>) -> 
    simulated;
convert(tradSesMode, <<"3">>) -> 
    production;
convert(tradSesStatus, <<"1">>) -> 
    halted;
convert(tradSesStatus, <<"2">>) -> 
    open;
convert(tradSesStatus, <<"3">>) -> 
    closed;
convert(tradSesStatus, <<"4">>) -> 
    preOpen;
convert(tradSesStatus, <<"5">>) -> 
    preClose;
convert(tradSesStartTime, Bin) -> 
   binary_to_list(Bin);
convert(tradSesOpenTime, Bin) -> 
   binary_to_list(Bin);
convert(tradSesPreCloseTime, Bin) -> 
   binary_to_list(Bin);
convert(tradSesCloseTime, Bin) -> 
   binary_to_list(Bin);
convert(tradSesEndTime, Bin) -> 
   binary_to_list(Bin);
convert(numberOfOrders, Bin) -> 
   bin_to_num(Bin);
convert(messageEncoding, <<"EUC-JP">>) -> 
    eUCJP;
convert(messageEncoding, <<"ISO-2022-JP">>) -> 
    iSO2022JP;
convert(messageEncoding, <<"Shift_JIS">>) -> 
    shiftJIS;
convert(messageEncoding, <<"UTF-8">>) -> 
    uTF8;
convert(encodedIssuerLen, Bin) -> 
   bin_to_num(Bin);
convert(encodedIssuer, Bin) -> 
   binary_to_list(Bin);
convert(encodedSecurityDescLen, Bin) -> 
   bin_to_num(Bin);
convert(encodedSecurityDesc, Bin) -> 
   binary_to_list(Bin);
convert(encodedListExecInstLen, Bin) -> 
   bin_to_num(Bin);
convert(encodedListExecInst, Bin) -> 
   binary_to_list(Bin);
convert(encodedTextLen, Bin) -> 
   bin_to_num(Bin);
convert(encodedText, Bin) -> 
   binary_to_list(Bin);
convert(encodedSubjectLen, Bin) -> 
   bin_to_num(Bin);
convert(encodedSubject, Bin) -> 
   binary_to_list(Bin);
convert(encodedHeadlineLen, Bin) -> 
   bin_to_num(Bin);
convert(encodedHeadline, Bin) -> 
   binary_to_list(Bin);
convert(encodedAllocTextLen, Bin) -> 
   bin_to_num(Bin);
convert(encodedAllocText, Bin) -> 
   binary_to_list(Bin);
convert(encodedUnderlyingIssuerLen, Bin) -> 
   bin_to_num(Bin);
convert(encodedUnderlyingIssuer, Bin) -> 
   binary_to_list(Bin);
convert(encodedUnderlyingSecurityDescLen, Bin) -> 
   bin_to_num(Bin);
convert(encodedUnderlyingSecurityDesc, Bin) -> 
   binary_to_list(Bin);
convert(allocPrice, Bin) -> 
   bin_to_num(Bin);
convert(quoteSetValidUntilTime, Bin) -> 
   binary_to_list(Bin);
convert(quoteEntryRejectReason, <<"1">>) -> 
    unknownSymbol;
convert(quoteEntryRejectReason, <<"2">>) -> 
    exchange;
convert(quoteEntryRejectReason, <<"3">>) -> 
    quoteExceedsLimit;
convert(quoteEntryRejectReason, <<"4">>) -> 
    tooLateToEnter;
convert(quoteEntryRejectReason, <<"5">>) -> 
    unknownQuote;
convert(quoteEntryRejectReason, <<"6">>) -> 
    duplicateQuote;
convert(quoteEntryRejectReason, <<"7">>) -> 
    invalidBidAskSpread;
convert(quoteEntryRejectReason, <<"8">>) -> 
    invalidPrice;
convert(quoteEntryRejectReason, <<"9">>) -> 
    notAuthorizedToQuoteSecurity;
convert(lastMsgSeqNumProcessed, Bin) -> 
   bin_to_num(Bin);
convert(onBehalfOfSendingTime, Bin) -> 
   binary_to_list(Bin);
convert(refTagID, Bin) -> 
   bin_to_num(Bin);
convert(refMsgType, Bin) -> 
   binary_to_list(Bin);
convert(sessionRejectReason, <<"0">>) -> 
    invalidTagNumber;
convert(sessionRejectReason, <<"1">>) -> 
    requiredTagMissing;
convert(sessionRejectReason, <<"10">>) -> 
    sendingTimeAccuracyProblem;
convert(sessionRejectReason, <<"11">>) -> 
    invalidMsgType;
convert(sessionRejectReason, <<"2">>) -> 
    tagNotDefinedForThisMessageType;
convert(sessionRejectReason, <<"3">>) -> 
    undefinedTag;
convert(sessionRejectReason, <<"4">>) -> 
    tagSpecifiedWithoutAValue;
convert(sessionRejectReason, <<"5">>) -> 
    valueIsIncorrect;
convert(sessionRejectReason, <<"6">>) -> 
    incorrectDataFormatForValue;
convert(sessionRejectReason, <<"7">>) -> 
    decryptionProblem;
convert(sessionRejectReason, <<"8">>) -> 
    signatureProblem;
convert(sessionRejectReason, <<"9">>) -> 
    compIDProblem;
convert(bidRequestTransType, <<"C">>) -> 
    cancel;
convert(bidRequestTransType, <<"N">>) -> 
    new;
convert(contraBroker, Bin) -> 
   binary_to_list(Bin);
convert(complianceID, Bin) -> 
   binary_to_list(Bin);
convert(solicitedFlag, <<"N">>) -> 
    wasNotSolicited;
convert(solicitedFlag, <<"Y">>) -> 
    wasSolicited;
convert(execRestatementReason, <<"0">>) -> 
    gTCorporateAction;
convert(execRestatementReason, <<"1">>) -> 
    gTRenewal;
convert(execRestatementReason, <<"2">>) -> 
    verbalChange;
convert(execRestatementReason, <<"3">>) -> 
    repricingOfOrder;
convert(execRestatementReason, <<"4">>) -> 
    brokerOption;
convert(execRestatementReason, <<"5">>) -> 
    partialDeclineOfOrderQty;
convert(businessRejectRefID, Bin) -> 
   binary_to_list(Bin);
convert(businessRejectReason, <<"0">>) -> 
    other;
convert(businessRejectReason, <<"1">>) -> 
    unknownID;
convert(businessRejectReason, <<"2">>) -> 
    unknownSecurity;
convert(businessRejectReason, <<"3">>) -> 
    unsupportedMessageType;
convert(businessRejectReason, <<"4">>) -> 
    applicationNotAvailable;
convert(businessRejectReason, <<"5">>) -> 
    conditionallyRequiredFieldMissing;
convert(grossTradeAmt, Bin) -> 
   bin_to_num(Bin);
convert(noContraBrokers, Bin) -> 
   bin_to_num(Bin);
convert(maxMessageSize, Bin) -> 
   bin_to_num(Bin);
convert(noMsgTypes, Bin) -> 
   bin_to_num(Bin);
convert(msgDirection, <<"R">>) -> 
    receivereceiveFix;
convert(msgDirection, <<"S">>) -> 
    send;
convert(noTradingSessions, Bin) -> 
   bin_to_num(Bin);
convert(totalVolumeTraded, Bin) -> 
   bin_to_num(Bin);
convert(discretionInst, <<"0">>) -> 
    relatedToDisplayedPrice;
convert(discretionInst, <<"1">>) -> 
    relatedToMarketPrice;
convert(discretionInst, <<"2">>) -> 
    relatedToPrimaryPrice;
convert(discretionInst, <<"3">>) -> 
    relatedToLocalPrimaryPrice;
convert(discretionInst, <<"4">>) -> 
    relatedToMidpointPrice;
convert(discretionInst, <<"5">>) -> 
    relatedToLastTradePrice;
convert(discretionOffset, Bin) -> 
   bin_to_num(Bin);
convert(bidID, Bin) -> 
   binary_to_list(Bin);
convert(clientBidID, Bin) -> 
   binary_to_list(Bin);
convert(listName, Bin) -> 
   binary_to_list(Bin);
convert(totalNumSecurities, Bin) -> 
   bin_to_num(Bin);
convert(bidType, Bin) -> 
   bin_to_num(Bin);
convert(numTickets, Bin) -> 
   bin_to_num(Bin);
convert(sideValue1, Bin) -> 
   bin_to_num(Bin);
convert(sideValue2, Bin) -> 
   bin_to_num(Bin);
convert(noBidDescriptors, Bin) -> 
   bin_to_num(Bin);
convert(bidDescriptorType, Bin) -> 
   bin_to_num(Bin);
convert(bidDescriptor, Bin) -> 
   binary_to_list(Bin);
convert(sideValueInd, Bin) -> 
   bin_to_num(Bin);
convert(liquidityPctLow, Bin) -> 
   bin_to_num(Bin);
convert(liquidityPctHigh, Bin) -> 
   bin_to_num(Bin);
convert(liquidityValue, Bin) -> 
   bin_to_num(Bin);
convert(eFPTrackingError, Bin) -> 
   bin_to_num(Bin);
convert(fairValue, Bin) -> 
   bin_to_num(Bin);
convert(outsideIndexPct, Bin) -> 
   bin_to_num(Bin);
convert(valueOfFutures, Bin) -> 
   bin_to_num(Bin);
convert(liquidityIndType, <<"1">>) -> 
    fiveDayMovingAverage;
convert(liquidityIndType, <<"2">>) -> 
    twentyDayMovingAverage;
convert(liquidityIndType, <<"3">>) -> 
    normalMarketSize;
convert(liquidityIndType, <<"4">>) -> 
    other;
convert(wtAverageLiquidity, Bin) -> 
   bin_to_num(Bin);
convert(exchangeForPhysical, <<"N">>) -> 
    false;
convert(exchangeForPhysical, <<"Y">>) -> 
    true;
convert(outMainCntryUIndex, Bin) -> 
   bin_to_num(Bin);
convert(crossPercent, Bin) -> 
   bin_to_num(Bin);
convert(progRptReqs, <<"1">>) -> 
    buySideRequests;
convert(progRptReqs, <<"2">>) -> 
    sellSideSends;
convert(progRptReqs, <<"3">>) -> 
    realTimeExecutionReports;
convert(progPeriodInterval, Bin) -> 
   bin_to_num(Bin);
convert(incTaxInd, <<"1">>) -> 
    net;
convert(incTaxInd, <<"2">>) -> 
    gross;
convert(numBidders, Bin) -> 
   bin_to_num(Bin);
convert(tradeType, <<"A">>) -> 
    agency;
convert(tradeType, <<"G">>) -> 
    vWAPGuarantee;
convert(tradeType, <<"J">>) -> 
    guaranteedClose;
convert(tradeType, <<"R">>) -> 
    riskTrade;
convert(basisPxType, <<"2">>) -> 
    closingPriceAtMorningSession;
convert(basisPxType, <<"3">>) -> 
    closingPrice;
convert(basisPxType, <<"4">>) -> 
    currentPrice;
convert(basisPxType, <<"5">>) -> 
    sQ;
convert(basisPxType, <<"6">>) -> 
    vWAPThroughADay;
convert(basisPxType, <<"7">>) -> 
    vWAPThroughAMorningSession;
convert(basisPxType, <<"8">>) -> 
    vWAPThroughAnAfternoonSession;
convert(basisPxType, <<"9">>) -> 
    vWAPThroughADayExcept;
convert(basisPxType, <<"A">>) -> 
    vWAPThroughAMorningSessionExcept;
convert(basisPxType, <<"B">>) -> 
    vWAPThroughAnAfternoonSessionExcept;
convert(basisPxType, <<"C">>) -> 
    strike;
convert(basisPxType, <<"D">>) -> 
    open;
convert(basisPxType, <<"Z">>) -> 
    others;
convert(noBidComponents, Bin) -> 
   bin_to_num(Bin);
convert(country, Bin) -> 
   binary_to_list(Bin);
convert(totNoStrikes, Bin) -> 
   bin_to_num(Bin);
convert(priceType, <<"1">>) -> 
    percentage;
convert(priceType, <<"2">>) -> 
    perUnit;
convert(priceType, <<"3">>) -> 
    fixedAmount;
convert(dayOrderQty, Bin) -> 
   bin_to_num(Bin);
convert(dayCumQty, Bin) -> 
   bin_to_num(Bin);
convert(dayAvgPx, Bin) -> 
   bin_to_num(Bin);
convert(gTBookingInst, <<"0">>) -> 
    bookOutAllTradesOnDayOfExecution;
convert(gTBookingInst, <<"1">>) -> 
    accumulateUntilFilledOrExpired;
convert(gTBookingInst, <<"2">>) -> 
    accumulateUntilVerballlyNotifiedOtherwise;
convert(noStrikes, Bin) -> 
   bin_to_num(Bin);
convert(listStatusType, Bin) -> 
   bin_to_num(Bin);
convert(netGrossInd, <<"1">>) -> 
    net;
convert(netGrossInd, <<"2">>) -> 
    gross;
convert(listOrderStatus, Bin) -> 
   bin_to_num(Bin);
convert(expireDate, Bin) -> 
   binary_to_list(Bin);
convert(listExecInstType, <<"1">>) -> 
    immediate;
convert(listExecInstType, <<"2">>) -> 
    waitForInstruction;
convert(cxlRejResponseTo, <<"1">>) -> 
    orderCancelRequest;
convert(cxlRejResponseTo, <<"2">>) -> 
    orderCancel;
convert(underlyingCouponRate, Bin) -> 
   bin_to_num(Bin);
convert(underlyingContractMultiplier, Bin) -> 
   bin_to_num(Bin);
convert(contraTradeQty, Bin) -> 
   bin_to_num(Bin);
convert(contraTradeTime, Bin) -> 
   binary_to_list(Bin);
convert(clearingFirm, Bin) -> 
   binary_to_list(Bin);
convert(clearingAccount, Bin) -> 
   binary_to_list(Bin);
convert(liquidityNumSecurities, Bin) -> 
   bin_to_num(Bin);
convert(multiLegReportingType, <<"1">>) -> 
    singleSecurity;
convert(multiLegReportingType, <<"2">>) -> 
    individualLegOfAMultiLegSecurity;
convert(multiLegReportingType, <<"3">>) -> 
    multiLegSecurity;
convert(strikeTime, Bin) -> 
   binary_to_list(Bin);
convert(listStatusText, Bin) -> 
   binary_to_list(Bin);
convert(encodedListStatusTextLen, Bin) -> 
   bin_to_num(Bin);
convert(encodedListStatusText, Bin) -> 
   binary_to_list(Bin);
convert(_Name, Bin) ->
    Bin.
get_record_def(standardHeader) -> 
    [standardHeader, beginString, bodyLength, msgType, senderCompID, targetCompID, onBehalfOfCompID, deliverToCompID, secureDataLen, secureData, msgSeqNum, senderSubID, senderLocationID, targetSubID, targetLocationID, onBehalfOfSubID, onBehalfOfLocationID, deliverToSubID, deliverToLocationID, possDupFlag, possResend, sendingTime, origSendingTime, xmlDataLen, xmlData, messageEncoding, lastMsgSeqNumProcessed, onBehalfOfSendingTime];
get_record_def(standardTrailer) -> 
    [standardTrailer, signatureLength, signature, checkSum];
get_record_def(heartbeat) -> 
    [heartbeat, [standardHeader], testReqID, [standardTrailer]];
get_record_def(testRequest) -> 
    [testRequest, [standardHeader], testReqID, [standardTrailer]];
get_record_def(resendRequest) -> 
    [resendRequest, [standardHeader], beginSeqNo, endSeqNo, [standardTrailer]];
get_record_def(reject) -> 
    [reject, [standardHeader], refSeqNum, refTagID, refMsgType, sessionRejectReason, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(sequenceReset) -> 
    [sequenceReset, [standardHeader], gapFillFlag, newSeqNo, [standardTrailer]];
get_record_def(logout) -> 
    [logout, [standardHeader], text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(rgr_iOI_199) -> 
    [rgr_iOI_199, iOIQualifier];
get_record_def(rgr_iOI_215) -> 
    [rgr_iOI_215, routingType, routingID];
get_record_def(iOI) -> 
    [iOI, [standardHeader], iOIid, iOITransType, iOIRefID, symbol, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc, side, iOIShares, price, currency, validUntilTime, iOIQltyInd, iOINaturalFlag, [[rgr_iOI_199]], text, encodedTextLen, encodedText, transactTime, uRLLink, [[rgr_iOI_215]], spreadToBenchmark, benchmark, [standardTrailer]];
get_record_def(advertisement) -> 
    [advertisement, [standardHeader], advId, advTransType, advRefID, symbol, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc, advSide, shares, price, currency, tradeDate, transactTime, text, encodedTextLen, encodedText, uRLLink, lastMkt, tradingSessionID, [standardTrailer]];
get_record_def(rgr_executionReport_382) -> 
    [rgr_executionReport_382, contraBroker, contraTrader, contraTradeQty, contraTradeTime];
get_record_def(executionReport) -> 
    [executionReport, [standardHeader], orderID, secondaryOrderID, clOrdID, origClOrdID, clientID, execBroker, [[rgr_executionReport_382]], listID, execID, execTransType, execRefID, execType, ordStatus, ordRejReason, execRestatementReason, account, settlmntTyp, futSettDate, symbol, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc, side, orderQty, cashOrderQty, ordType, price, stopPx, pegDifference, discretionInst, discretionOffset, currency, complianceID, solicitedFlag, timeInForce, effectiveTime, expireDate, expireTime, execInst, rule80A, lastShares, lastPx, lastSpotRate, lastForwardPoints, lastMkt, tradingSessionID, lastCapacity, leavesQty, cumQty, avgPx, dayOrderQty, dayCumQty, dayAvgPx, gTBookingInst, tradeDate, transactTime, reportToExch, commission, commType, grossTradeAmt, settlCurrAmt, settlCurrency, settlCurrFxRate, settlCurrFxRateCalc, handlInst, minQty, maxFloor, openClose, maxShow, text, encodedTextLen, encodedText, futSettDate2, orderQty2, clearingFirm, clearingAccount, multiLegReportingType, [standardTrailer]];
get_record_def(orderCancelReject) -> 
    [orderCancelReject, [standardHeader], orderID, secondaryOrderID, clOrdID, origClOrdID, ordStatus, clientID, execBroker, listID, account, transactTime, cxlRejResponseTo, cxlRejReason, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(rgr_logon_384) -> 
    [rgr_logon_384, refMsgType, msgDirection];
get_record_def(logon) -> 
    [logon, [standardHeader], encryptMethod, heartBtInt, rawDataLength, rawData, resetSeqNumFlag, maxMessageSize, [[rgr_logon_384]], [standardTrailer]];
get_record_def(rgr_news_215) -> 
    [rgr_news_215, routingType, routingID];
get_record_def(rgr_news_146) -> 
    [rgr_news_146, relatdSym, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc];
get_record_def(rgr_news_33) -> 
    [rgr_news_33, text, encodedTextLen, encodedText];
get_record_def(news) -> 
    [news, [standardHeader], origTime, urgency, headline, encodedHeadlineLen, encodedHeadline, [[rgr_news_215]], [[rgr_news_146]], [[rgr_news_33]], uRLLink, rawDataLength, rawData, [standardTrailer]];
get_record_def(rgr_email_215) -> 
    [rgr_email_215, routingType, routingID];
get_record_def(rgr_email_146) -> 
    [rgr_email_146, relatdSym, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc];
get_record_def(rgr_email_33) -> 
    [rgr_email_33, text, encodedTextLen, encodedText];
get_record_def(email) -> 
    [email, [standardHeader], emailThreadID, emailType, origTime, subject, encodedSubjectLen, encodedSubject, [[rgr_email_215]], [[rgr_email_146]], orderID, clOrdID, [[rgr_email_33]], rawDataLength, rawData, [standardTrailer]];
get_record_def(rgr_orderSingle_78) -> 
    [rgr_orderSingle_78, allocAccount, allocShares];
get_record_def(rgr_orderSingle_386) -> 
    [rgr_orderSingle_386, tradingSessionID];
get_record_def(orderSingle) -> 
    [orderSingle, [standardHeader], clOrdID, clientID, execBroker, account, [[rgr_orderSingle_78]], settlmntTyp, futSettDate, handlInst, execInst, minQty, maxFloor, exDestination, [[rgr_orderSingle_386]], processCode, symbol, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc, prevClosePx, side, locateReqd, transactTime, orderQty, cashOrderQty, ordType, price, stopPx, currency, complianceID, solicitedFlag, iOIid, quoteID, timeInForce, effectiveTime, expireDate, expireTime, gTBookingInst, commission, commType, rule80A, forexReq, settlCurrency, text, encodedTextLen, encodedText, futSettDate2, orderQty2, openClose, coveredOrUncovered, customerOrFirm, maxShow, pegDifference, discretionInst, discretionOffset, clearingFirm, clearingAccount, [standardTrailer]];
get_record_def(rgr_rgr_newOrderList_73_78) -> 
    [rgr_rgr_newOrderList_73_78, allocAccount, allocShares];
get_record_def(rgr_rgr_newOrderList_73_386) -> 
    [rgr_rgr_newOrderList_73_386, tradingSessionID];
get_record_def(rgr_newOrderList_73) -> 
    [rgr_newOrderList_73, clOrdID, listSeqNo, settlInstMode, clientID, execBroker, account, [[rgr_rgr_newOrderList_73_78]], settlmntTyp, futSettDate, handlInst, execInst, minQty, maxFloor, exDestination, [[rgr_rgr_newOrderList_73_386]], processCode, symbol, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc, prevClosePx, side, sideValueInd, locateReqd, transactTime, orderQty, cashOrderQty, ordType, price, stopPx, currency, complianceID, solicitedFlag, iOIid, quoteID, timeInForce, effectiveTime, expireDate, expireTime, gTBookingInst, commission, commType, rule80A, forexReq, settlCurrency, text, encodedTextLen, encodedText, futSettDate2, orderQty2, openClose, coveredOrUncovered, customerOrFirm, maxShow, pegDifference, discretionInst, discretionOffset, clearingFirm, clearingAccount];
get_record_def(newOrderList) -> 
    [newOrderList, [standardHeader], listID, bidID, clientBidID, progRptReqs, bidType, progPeriodInterval, listExecInstType, listExecInst, encodedListExecInstLen, encodedListExecInst, totNoOrders, [[rgr_newOrderList_73]], [standardTrailer]];
get_record_def(orderCancelRequest) -> 
    [orderCancelRequest, [standardHeader], origClOrdID, orderID, clOrdID, listID, account, clientID, execBroker, symbol, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc, side, transactTime, orderQty, cashOrderQty, complianceID, solicitedFlag, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(rgr_orderCancelReplaceRequest_78) -> 
    [rgr_orderCancelReplaceRequest_78, allocAccount, allocShares];
get_record_def(rgr_orderCancelReplaceRequest_386) -> 
    [rgr_orderCancelReplaceRequest_386, tradingSessionID];
get_record_def(orderCancelReplaceRequest) -> 
    [orderCancelReplaceRequest, [standardHeader], orderID, clientID, execBroker, origClOrdID, clOrdID, listID, account, [[rgr_orderCancelReplaceRequest_78]], settlmntTyp, futSettDate, handlInst, execInst, minQty, maxFloor, exDestination, [[rgr_orderCancelReplaceRequest_386]], symbol, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc, side, transactTime, orderQty, cashOrderQty, ordType, price, stopPx, pegDifference, discretionInst, discretionOffset, complianceID, solicitedFlag, currency, timeInForce, effectiveTime, expireDate, expireTime, gTBookingInst, commission, commType, rule80A, forexReq, settlCurrency, text, encodedTextLen, encodedText, futSettDate2, orderQty2, openClose, coveredOrUncovered, customerOrFirm, maxShow, locateReqd, clearingFirm, clearingAccount, [standardTrailer]];
get_record_def(orderStatusRequest) -> 
    [orderStatusRequest, [standardHeader], orderID, clOrdID, clientID, account, execBroker, symbol, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc, side, [standardTrailer]];
get_record_def(rgr_allocationInstruction_73) -> 
    [rgr_allocationInstruction_73, clOrdID, orderID, secondaryOrderID, listID, waveNo];
get_record_def(rgr_allocationInstruction_124) -> 
    [rgr_allocationInstruction_124, lastShares, execID, lastPx, lastCapacity];
get_record_def(rgr_rgr_allocationInstruction_78_136) -> 
    [rgr_rgr_allocationInstruction_78_136, miscFeeAmt, miscFeeCurr, miscFeeType];
get_record_def(rgr_allocationInstruction_78) -> 
    [rgr_allocationInstruction_78, allocAccount, allocPrice, allocShares, processCode, brokerOfCredit, notifyBrokerOfCredit, allocHandlInst, allocText, encodedAllocTextLen, encodedAllocText, execBroker, clientID, commission, commType, allocAvgPx, allocNetMoney, settlCurrAmt, settlCurrency, settlCurrFxRate, settlCurrFxRateCalc, accruedInterestAmt, settlInstMode, [[rgr_rgr_allocationInstruction_78_136]]];
get_record_def(allocationInstruction) -> 
    [allocationInstruction, [standardHeader], allocID, allocTransType, refAllocID, allocLinkID, allocLinkType, [[rgr_allocationInstruction_73]], [[rgr_allocationInstruction_124]], side, symbol, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc, shares, lastMkt, tradingSessionID, avgPx, currency, avgPrxPrecision, tradeDate, transactTime, settlmntTyp, futSettDate, grossTradeAmt, netMoney, openClose, text, encodedTextLen, encodedText, numDaysInterest, accruedInterestRate, [[rgr_allocationInstruction_78]], [standardTrailer]];
get_record_def(listCancelRequest) -> 
    [listCancelRequest, [standardHeader], listID, transactTime, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(listExecute) -> 
    [listExecute, [standardHeader], listID, clientBidID, bidID, transactTime, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(listStatusRequest) -> 
    [listStatusRequest, [standardHeader], listID, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(rgr_listStatus_73) -> 
    [rgr_listStatus_73, clOrdID, cumQty, ordStatus, leavesQty, cxlQty, avgPx, ordRejReason, text, encodedTextLen, encodedText];
get_record_def(listStatus) -> 
    [listStatus, [standardHeader], listID, listStatusType, noRpts, listOrderStatus, rptSeq, listStatusText, encodedListStatusTextLen, encodedListStatusText, transactTime, totNoOrders, [[rgr_listStatus_73]], [standardTrailer]];
get_record_def(allocationInstructionAck) -> 
    [allocationInstructionAck, [standardHeader], clientID, execBroker, allocID, tradeDate, transactTime, allocStatus, allocRejCode, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(dontKnowTrade) -> 
    [dontKnowTrade, [standardHeader], orderID, execID, dKReason, symbol, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc, side, orderQty, cashOrderQty, lastShares, lastPx, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(rgr_quoteRequest_146) -> 
    [rgr_quoteRequest_146, symbol, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc, prevClosePx, quoteRequestType, tradingSessionID, side, orderQty, futSettDate, ordType, futSettDate2, orderQty2, expireTime, transactTime, currency];
get_record_def(quoteRequest) -> 
    [quoteRequest, [standardHeader], quoteReqID, [[rgr_quoteRequest_146]], [standardTrailer]];
get_record_def(quote) -> 
    [quote, [standardHeader], quoteReqID, quoteID, quoteResponseLevel, tradingSessionID, symbol, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc, bidPx, offerPx, bidSize, offerSize, validUntilTime, bidSpotRate, offerSpotRate, bidForwardPoints, offerForwardPoints, transactTime, futSettDate, ordType, futSettDate2, orderQty2, currency, [standardTrailer]];
get_record_def(settlementInstructions) -> 
    [settlementInstructions, [standardHeader], settlInstID, settlInstTransType, settlInstRefID, settlInstMode, settlInstSource, allocAccount, settlLocation, tradeDate, allocID, lastMkt, tradingSessionID, side, securityType, effectiveTime, transactTime, clientID, execBroker, standInstDbType, standInstDbName, standInstDbID, settlDeliveryType, settlDepositoryCode, settlBrkrCode, settlInstCode, securitySettlAgentName, securitySettlAgentCode, securitySettlAgentAcctNum, securitySettlAgentAcctName, securitySettlAgentContactName, securitySettlAgentContactPhone, cashSettlAgentName, cashSettlAgentCode, cashSettlAgentAcctNum, cashSettlAgentAcctName, cashSettlAgentContactName, cashSettlAgentContactPhone, [standardTrailer]];
get_record_def(rgr_marketDataRequest_267) -> 
    [rgr_marketDataRequest_267, mDEntryType];
get_record_def(rgr_marketDataRequest_146) -> 
    [rgr_marketDataRequest_146, symbol, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc, tradingSessionID];
get_record_def(marketDataRequest) -> 
    [marketDataRequest, [standardHeader], mDReqID, subscriptionRequestType, marketDepth, mDUpdateType, aggregatedBook, [[rgr_marketDataRequest_267]], [[rgr_marketDataRequest_146]], [standardTrailer]];
get_record_def(rgr_marketDataSnapshotFullRefresh_268) -> 
    [rgr_marketDataSnapshotFullRefresh_268, mDEntryType, mDEntryPx, currency, mDEntrySize, mDEntryDate, mDEntryTime, tickDirection, mDMkt, tradingSessionID, quoteCondition, tradeCondition, mDEntryOriginator, locationID, deskID, openCloseSettleFlag, timeInForce, expireDate, expireTime, minQty, execInst, sellerDays, orderID, quoteEntryID, mDEntryBuyer, mDEntrySeller, numberOfOrders, mDEntryPositionNo, text, encodedTextLen, encodedText];
get_record_def(marketDataSnapshotFullRefresh) -> 
    [marketDataSnapshotFullRefresh, [standardHeader], mDReqID, symbol, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc, financialStatus, corporateAction, totalVolumeTraded, [[rgr_marketDataSnapshotFullRefresh_268]], [standardTrailer]];
get_record_def(rgr_marketDataIncrementalRefresh_268) -> 
    [rgr_marketDataIncrementalRefresh_268, mDUpdateAction, deleteReason, mDEntryType, mDEntryID, mDEntryRefID, symbol, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc, financialStatus, corporateAction, mDEntryPx, currency, mDEntrySize, mDEntryDate, mDEntryTime, tickDirection, mDMkt, tradingSessionID, quoteCondition, tradeCondition, mDEntryOriginator, locationID, deskID, openCloseSettleFlag, timeInForce, expireDate, expireTime, minQty, execInst, sellerDays, orderID, quoteEntryID, mDEntryBuyer, mDEntrySeller, numberOfOrders, mDEntryPositionNo, totalVolumeTraded, text, encodedTextLen, encodedText];
get_record_def(marketDataIncrementalRefresh) -> 
    [marketDataIncrementalRefresh, [standardHeader], mDReqID, [[rgr_marketDataIncrementalRefresh_268]], [standardTrailer]];
get_record_def(marketDataRequestReject) -> 
    [marketDataRequestReject, [standardHeader], mDReqID, mDReqRejReason, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(rgr_quoteCancel_295) -> 
    [rgr_quoteCancel_295, symbol, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc, underlyingSymbol];
get_record_def(quoteCancel) -> 
    [quoteCancel, [standardHeader], quoteReqID, quoteID, quoteCancelType, quoteResponseLevel, tradingSessionID, [[rgr_quoteCancel_295]], [standardTrailer]];
get_record_def(quoteStatusRequest) -> 
    [quoteStatusRequest, [standardHeader], quoteID, symbol, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc, side, tradingSessionID, [standardTrailer]];
get_record_def(rgr_rgr_quoteAcknowledgement_296_295) -> 
    [rgr_rgr_quoteAcknowledgement_296_295, quoteEntryID, symbol, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc, quoteEntryRejectReason];
get_record_def(rgr_quoteAcknowledgement_296) -> 
    [rgr_quoteAcknowledgement_296, quoteSetID, underlyingSymbol, underlyingSymbolSfx, underlyingSecurityID, underlyingIDSource, underlyingSecurityType, underlyingMaturityMonthYear, underlyingMaturityDay, underlyingPutOrCall, underlyingStrikePrice, underlyingOptAttribute, underlyingContractMultiplier, underlyingCouponRate, underlyingSecurityExchange, underlyingIssuer, encodedUnderlyingIssuerLen, encodedUnderlyingIssuer, underlyingSecurityDesc, encodedUnderlyingSecurityDescLen, encodedUnderlyingSecurityDesc, totQuoteEntries, [[rgr_rgr_quoteAcknowledgement_296_295]]];
get_record_def(quoteAcknowledgement) -> 
    [quoteAcknowledgement, [standardHeader], quoteReqID, quoteID, quoteAckStatus, quoteRejectReason, quoteResponseLevel, tradingSessionID, text, [[rgr_quoteAcknowledgement_296]], [standardTrailer]];
get_record_def(rgr_securityDefinitionRequest_146) -> 
    [rgr_securityDefinitionRequest_146, underlyingSymbol, underlyingSymbolSfx, underlyingSecurityID, underlyingIDSource, underlyingSecurityType, underlyingMaturityMonthYear, underlyingMaturityDay, underlyingPutOrCall, underlyingStrikePrice, underlyingOptAttribute, underlyingContractMultiplier, underlyingCouponRate, underlyingSecurityExchange, underlyingIssuer, encodedUnderlyingIssuerLen, encodedUnderlyingIssuer, underlyingSecurityDesc, encodedUnderlyingSecurityDescLen, encodedUnderlyingSecurityDesc, ratioQty, side, underlyingCurrency];
get_record_def(securityDefinitionRequest) -> 
    [securityDefinitionRequest, [standardHeader], securityReqID, securityRequestType, symbol, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc, currency, text, encodedTextLen, encodedText, tradingSessionID, [[rgr_securityDefinitionRequest_146]], [standardTrailer]];
get_record_def(rgr_securityDefinition_146) -> 
    [rgr_securityDefinition_146, underlyingSymbol, underlyingSymbolSfx, underlyingSecurityID, underlyingIDSource, underlyingSecurityType, underlyingMaturityMonthYear, underlyingMaturityDay, underlyingPutOrCall, underlyingStrikePrice, underlyingOptAttribute, underlyingContractMultiplier, underlyingCouponRate, underlyingSecurityExchange, underlyingIssuer, encodedUnderlyingIssuerLen, encodedUnderlyingIssuer, underlyingSecurityDesc, encodedUnderlyingSecurityDescLen, encodedUnderlyingSecurityDesc, ratioQty, side, underlyingCurrency];
get_record_def(securityDefinition) -> 
    [securityDefinition, [standardHeader], securityReqID, securityResponseID, securityResponseType, totalNumSecurities, symbol, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc, currency, tradingSessionID, text, encodedTextLen, encodedText, [[rgr_securityDefinition_146]], [standardTrailer]];
get_record_def(securityStatusRequest) -> 
    [securityStatusRequest, [standardHeader], securityStatusReqID, symbol, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc, currency, subscriptionRequestType, tradingSessionID, [standardTrailer]];
get_record_def(securityStatus) -> 
    [securityStatus, [standardHeader], securityStatusReqID, symbol, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc, currency, tradingSessionID, unsolicitedIndicator, securityTradingStatus, financialStatus, corporateAction, haltReason, inViewOfCommon, dueToRelated, buyVolume, sellVolume, highPx, lowPx, lastPx, transactTime, adjustment, [standardTrailer]];
get_record_def(tradingSessionStatusRequest) -> 
    [tradingSessionStatusRequest, [standardHeader], tradSesReqID, tradingSessionID, tradSesMethod, tradSesMode, subscriptionRequestType, [standardTrailer]];
get_record_def(tradingSessionStatus) -> 
    [tradingSessionStatus, [standardHeader], tradSesReqID, tradingSessionID, tradSesMethod, tradSesMode, unsolicitedIndicator, tradSesStatus, tradSesStartTime, tradSesOpenTime, tradSesPreCloseTime, tradSesCloseTime, tradSesEndTime, totalVolumeTraded, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(rgr_rgr_massQuote_296_295) -> 
    [rgr_rgr_massQuote_296_295, quoteEntryID, symbol, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc, bidPx, offerPx, bidSize, offerSize, validUntilTime, bidSpotRate, offerSpotRate, bidForwardPoints, offerForwardPoints, transactTime, tradingSessionID, futSettDate, ordType, futSettDate2, orderQty2, currency];
get_record_def(rgr_massQuote_296) -> 
    [rgr_massQuote_296, quoteSetID, underlyingSymbol, underlyingSymbolSfx, underlyingSecurityID, underlyingIDSource, underlyingSecurityType, underlyingMaturityMonthYear, underlyingMaturityDay, underlyingPutOrCall, underlyingStrikePrice, underlyingOptAttribute, underlyingContractMultiplier, underlyingCouponRate, underlyingSecurityExchange, underlyingIssuer, encodedUnderlyingIssuerLen, encodedUnderlyingIssuer, underlyingSecurityDesc, encodedUnderlyingSecurityDescLen, encodedUnderlyingSecurityDesc, quoteSetValidUntilTime, totQuoteEntries, [[rgr_rgr_massQuote_296_295]]];
get_record_def(massQuote) -> 
    [massQuote, [standardHeader], quoteReqID, quoteID, quoteResponseLevel, defBidSize, defOfferSize, [[rgr_massQuote_296]], [standardTrailer]];
get_record_def(businessMessageReject) -> 
    [businessMessageReject, [standardHeader], refSeqNum, refMsgType, businessRejectRefID, businessRejectReason, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(rgr_bidRequest_398) -> 
    [rgr_bidRequest_398, bidDescriptorType, bidDescriptor, sideValueInd, liquidityValue, liquidityNumSecurities, liquidityPctLow, liquidityPctHigh, eFPTrackingError, fairValue, outsideIndexPct, valueOfFutures];
get_record_def(rgr_bidRequest_420) -> 
    [rgr_bidRequest_420, listID, side, tradingSessionID, netGrossInd, settlmntTyp, futSettDate, account];
get_record_def(bidRequest) -> 
    [bidRequest, [standardHeader], bidID, clientBidID, bidRequestTransType, listName, totalNumSecurities, bidType, numTickets, currency, sideValue1, sideValue2, [[rgr_bidRequest_398]], [[rgr_bidRequest_420]], liquidityIndType, wtAverageLiquidity, exchangeForPhysical, outMainCntryUIndex, crossPercent, progRptReqs, progPeriodInterval, incTaxInd, forexReq, numBidders, tradeDate, tradeType, basisPxType, strikeTime, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(rgr_bidResponse_420) -> 
    [rgr_bidResponse_420, commission, commType, listID, country, side, price, priceType, fairValue, netGrossInd, settlmntTyp, futSettDate, tradingSessionID, text, encodedTextLen, encodedText];
get_record_def(bidResponse) -> 
    [bidResponse, [standardHeader], bidID, clientBidID, [[rgr_bidResponse_420]], [standardTrailer]];
get_record_def(rgr_listStrikePrice_428) -> 
    [rgr_listStrikePrice_428, symbol, symbolSfx, securityID, iDSource, securityType, maturityMonthYear, maturityDay, putOrCall, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc, prevClosePx, clOrdID, side, price, currency, text, encodedTextLen, encodedText];
get_record_def(listStrikePrice) -> 
    [listStrikePrice, [standardHeader], listID, totNoStrikes, [[rgr_listStrikePrice_428]], [standardTrailer]];
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
getRecord(rgr_iOI_199)->
    #rgr_iOI_199{};
getRecord(rgr_iOI_215)->
    #rgr_iOI_215{};
getRecord(iOI)->
    #iOI{};
getRecord(advertisement)->
    #advertisement{};
getRecord(rgr_executionReport_382)->
    #rgr_executionReport_382{};
getRecord(executionReport)->
    #executionReport{};
getRecord(orderCancelReject)->
    #orderCancelReject{};
getRecord(rgr_logon_384)->
    #rgr_logon_384{};
getRecord(logon)->
    #logon{};
getRecord(rgr_news_215)->
    #rgr_news_215{};
getRecord(rgr_news_146)->
    #rgr_news_146{};
getRecord(rgr_news_33)->
    #rgr_news_33{};
getRecord(news)->
    #news{};
getRecord(rgr_email_215)->
    #rgr_email_215{};
getRecord(rgr_email_146)->
    #rgr_email_146{};
getRecord(rgr_email_33)->
    #rgr_email_33{};
getRecord(email)->
    #email{};
getRecord(rgr_orderSingle_78)->
    #rgr_orderSingle_78{};
getRecord(rgr_orderSingle_386)->
    #rgr_orderSingle_386{};
getRecord(orderSingle)->
    #orderSingle{};
getRecord(rgr_newOrderList_73)->
    #rgr_newOrderList_73{};
getRecord(rgr_rgr_newOrderList_73_78)->
    #rgr_rgr_newOrderList_73_78{};
getRecord(rgr_rgr_newOrderList_73_386)->
    #rgr_rgr_newOrderList_73_386{};
getRecord(newOrderList)->
    #newOrderList{};
getRecord(orderCancelRequest)->
    #orderCancelRequest{};
getRecord(rgr_orderCancelReplaceRequest_78)->
    #rgr_orderCancelReplaceRequest_78{};
getRecord(rgr_orderCancelReplaceRequest_386)->
    #rgr_orderCancelReplaceRequest_386{};
getRecord(orderCancelReplaceRequest)->
    #orderCancelReplaceRequest{};
getRecord(orderStatusRequest)->
    #orderStatusRequest{};
getRecord(rgr_allocationInstruction_73)->
    #rgr_allocationInstruction_73{};
getRecord(rgr_allocationInstruction_124)->
    #rgr_allocationInstruction_124{};
getRecord(rgr_allocationInstruction_78)->
    #rgr_allocationInstruction_78{};
getRecord(rgr_rgr_allocationInstruction_78_136)->
    #rgr_rgr_allocationInstruction_78_136{};
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
getRecord(rgr_quoteRequest_146)->
    #rgr_quoteRequest_146{};
getRecord(quoteRequest)->
    #quoteRequest{};
getRecord(quote)->
    #quote{};
getRecord(settlementInstructions)->
    #settlementInstructions{};
getRecord(rgr_marketDataRequest_267)->
    #rgr_marketDataRequest_267{};
getRecord(rgr_marketDataRequest_146)->
    #rgr_marketDataRequest_146{};
getRecord(marketDataRequest)->
    #marketDataRequest{};
getRecord(rgr_marketDataSnapshotFullRefresh_268)->
    #rgr_marketDataSnapshotFullRefresh_268{};
getRecord(marketDataSnapshotFullRefresh)->
    #marketDataSnapshotFullRefresh{};
getRecord(rgr_marketDataIncrementalRefresh_268)->
    #rgr_marketDataIncrementalRefresh_268{};
getRecord(marketDataIncrementalRefresh)->
    #marketDataIncrementalRefresh{};
getRecord(marketDataRequestReject)->
    #marketDataRequestReject{};
getRecord(rgr_quoteCancel_295)->
    #rgr_quoteCancel_295{};
getRecord(quoteCancel)->
    #quoteCancel{};
getRecord(quoteStatusRequest)->
    #quoteStatusRequest{};
getRecord(rgr_quoteAcknowledgement_296)->
    #rgr_quoteAcknowledgement_296{};
getRecord(rgr_rgr_quoteAcknowledgement_296_295)->
    #rgr_rgr_quoteAcknowledgement_296_295{};
getRecord(quoteAcknowledgement)->
    #quoteAcknowledgement{};
getRecord(rgr_securityDefinitionRequest_146)->
    #rgr_securityDefinitionRequest_146{};
getRecord(securityDefinitionRequest)->
    #securityDefinitionRequest{};
getRecord(rgr_securityDefinition_146)->
    #rgr_securityDefinition_146{};
getRecord(securityDefinition)->
    #securityDefinition{};
getRecord(securityStatusRequest)->
    #securityStatusRequest{};
getRecord(securityStatus)->
    #securityStatus{};
getRecord(tradingSessionStatusRequest)->
    #tradingSessionStatusRequest{};
getRecord(tradingSessionStatus)->
    #tradingSessionStatus{};
getRecord(rgr_massQuote_296)->
    #rgr_massQuote_296{};
getRecord(rgr_rgr_massQuote_296_295)->
    #rgr_rgr_massQuote_296_295{};
getRecord(massQuote)->
    #massQuote{};
getRecord(businessMessageReject)->
    #businessMessageReject{};
getRecord(rgr_bidRequest_398)->
    #rgr_bidRequest_398{};
getRecord(rgr_bidRequest_420)->
    #rgr_bidRequest_420{};
getRecord(bidRequest)->
    #bidRequest{};
getRecord(rgr_bidResponse_420)->
    #rgr_bidResponse_420{};
getRecord(bidResponse)->
    #bidResponse{};
getRecord(rgr_listStrikePrice_428)->
    #rgr_listStrikePrice_428{};
getRecord(listStrikePrice)->
    #listStrikePrice{}.
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
setFieldInRecord(standardHeader, senderLocationID, Record, Value)->
   erlang:setelement(#standardHeader.senderLocationID, Record, Value);
setFieldInRecord(standardHeader, targetSubID, Record, Value)->
   erlang:setelement(#standardHeader.targetSubID, Record, Value);
setFieldInRecord(standardHeader, targetLocationID, Record, Value)->
   erlang:setelement(#standardHeader.targetLocationID, Record, Value);
setFieldInRecord(standardHeader, onBehalfOfSubID, Record, Value)->
   erlang:setelement(#standardHeader.onBehalfOfSubID, Record, Value);
setFieldInRecord(standardHeader, onBehalfOfLocationID, Record, Value)->
   erlang:setelement(#standardHeader.onBehalfOfLocationID, Record, Value);
setFieldInRecord(standardHeader, deliverToSubID, Record, Value)->
   erlang:setelement(#standardHeader.deliverToSubID, Record, Value);
setFieldInRecord(standardHeader, deliverToLocationID, Record, Value)->
   erlang:setelement(#standardHeader.deliverToLocationID, Record, Value);
setFieldInRecord(standardHeader, possDupFlag, Record, Value)->
   erlang:setelement(#standardHeader.possDupFlag, Record, Value);
setFieldInRecord(standardHeader, possResend, Record, Value)->
   erlang:setelement(#standardHeader.possResend, Record, Value);
setFieldInRecord(standardHeader, sendingTime, Record, Value)->
   erlang:setelement(#standardHeader.sendingTime, Record, Value);
setFieldInRecord(standardHeader, origSendingTime, Record, Value)->
   erlang:setelement(#standardHeader.origSendingTime, Record, Value);
setFieldInRecord(standardHeader, xmlDataLen, Record, Value)->
   erlang:setelement(#standardHeader.xmlDataLen, Record, Value);
setFieldInRecord(standardHeader, xmlData, Record, Value)->
   erlang:setelement(#standardHeader.xmlData, Record, Value);
setFieldInRecord(standardHeader, messageEncoding, Record, Value)->
   erlang:setelement(#standardHeader.messageEncoding, Record, Value);
setFieldInRecord(standardHeader, lastMsgSeqNumProcessed, Record, Value)->
   erlang:setelement(#standardHeader.lastMsgSeqNumProcessed, Record, Value);
setFieldInRecord(standardHeader, onBehalfOfSendingTime, Record, Value)->
   erlang:setelement(#standardHeader.onBehalfOfSendingTime, Record, Value);
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
setFieldInRecord(reject, refTagID, Record, Value)->
    erlang:setelement(#reject.refTagID, Record, Value);
setFieldInRecord(reject, refMsgType, Record, Value)->
    erlang:setelement(#reject.refMsgType, Record, Value);
setFieldInRecord(reject, sessionRejectReason, Record, Value)->
    erlang:setelement(#reject.sessionRejectReason, Record, Value);
setFieldInRecord(reject, text, Record, Value)->
    erlang:setelement(#reject.text, Record, Value);
setFieldInRecord(reject, encodedTextLen, Record, Value)->
    erlang:setelement(#reject.encodedTextLen, Record, Value);
setFieldInRecord(reject, encodedText, Record, Value)->
    erlang:setelement(#reject.encodedText, Record, Value);
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
setFieldInRecord(logout, encodedTextLen, Record, Value)->
    erlang:setelement(#logout.encodedTextLen, Record, Value);
setFieldInRecord(logout, encodedText, Record, Value)->
    erlang:setelement(#logout.encodedText, Record, Value);
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
setFieldInRecord(iOI, securityType, Record, Value)->
    erlang:setelement(#iOI.securityType, Record, Value);
setFieldInRecord(iOI, maturityMonthYear, Record, Value)->
    erlang:setelement(#iOI.maturityMonthYear, Record, Value);
setFieldInRecord(iOI, maturityDay, Record, Value)->
    erlang:setelement(#iOI.maturityDay, Record, Value);
setFieldInRecord(iOI, putOrCall, Record, Value)->
    erlang:setelement(#iOI.putOrCall, Record, Value);
setFieldInRecord(iOI, strikePrice, Record, Value)->
    erlang:setelement(#iOI.strikePrice, Record, Value);
setFieldInRecord(iOI, optAttribute, Record, Value)->
    erlang:setelement(#iOI.optAttribute, Record, Value);
setFieldInRecord(iOI, contractMultiplier, Record, Value)->
    erlang:setelement(#iOI.contractMultiplier, Record, Value);
setFieldInRecord(iOI, couponRate, Record, Value)->
    erlang:setelement(#iOI.couponRate, Record, Value);
setFieldInRecord(iOI, securityExchange, Record, Value)->
    erlang:setelement(#iOI.securityExchange, Record, Value);
setFieldInRecord(iOI, issuer, Record, Value)->
    erlang:setelement(#iOI.issuer, Record, Value);
setFieldInRecord(iOI, encodedIssuerLen, Record, Value)->
    erlang:setelement(#iOI.encodedIssuerLen, Record, Value);
setFieldInRecord(iOI, encodedIssuer, Record, Value)->
    erlang:setelement(#iOI.encodedIssuer, Record, Value);
setFieldInRecord(iOI, securityDesc, Record, Value)->
    erlang:setelement(#iOI.securityDesc, Record, Value);
setFieldInRecord(iOI, encodedSecurityDescLen, Record, Value)->
    erlang:setelement(#iOI.encodedSecurityDescLen, Record, Value);
setFieldInRecord(iOI, encodedSecurityDesc, Record, Value)->
    erlang:setelement(#iOI.encodedSecurityDesc, Record, Value);
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
setFieldInRecord(iOI, iOINaturalFlag, Record, Value)->
    erlang:setelement(#iOI.iOINaturalFlag, Record, Value);
setFieldInRecord(iOI, rgr_iOI_199, Record, Value)->
   erlang:setelement(#iOI.rgr_iOI_199, Record, Value);
setFieldInRecord(rgr_iOI_199, iOIQualifier, Record, Value)->
   erlang:setelement(#rgr_iOI_199.iOIQualifier, Record, Value);
setFieldInRecord(iOI, text, Record, Value)->
    erlang:setelement(#iOI.text, Record, Value);
setFieldInRecord(iOI, encodedTextLen, Record, Value)->
    erlang:setelement(#iOI.encodedTextLen, Record, Value);
setFieldInRecord(iOI, encodedText, Record, Value)->
    erlang:setelement(#iOI.encodedText, Record, Value);
setFieldInRecord(iOI, transactTime, Record, Value)->
    erlang:setelement(#iOI.transactTime, Record, Value);
setFieldInRecord(iOI, uRLLink, Record, Value)->
    erlang:setelement(#iOI.uRLLink, Record, Value);
setFieldInRecord(iOI, rgr_iOI_215, Record, Value)->
   erlang:setelement(#iOI.rgr_iOI_215, Record, Value);
setFieldInRecord(rgr_iOI_215, routingType, Record, Value)->
   erlang:setelement(#rgr_iOI_215.routingType, Record, Value);
setFieldInRecord(rgr_iOI_215, routingID, Record, Value)->
   erlang:setelement(#rgr_iOI_215.routingID, Record, Value);
setFieldInRecord(iOI, spreadToBenchmark, Record, Value)->
    erlang:setelement(#iOI.spreadToBenchmark, Record, Value);
setFieldInRecord(iOI, benchmark, Record, Value)->
    erlang:setelement(#iOI.benchmark, Record, Value);
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
setFieldInRecord(advertisement, securityType, Record, Value)->
    erlang:setelement(#advertisement.securityType, Record, Value);
setFieldInRecord(advertisement, maturityMonthYear, Record, Value)->
    erlang:setelement(#advertisement.maturityMonthYear, Record, Value);
setFieldInRecord(advertisement, maturityDay, Record, Value)->
    erlang:setelement(#advertisement.maturityDay, Record, Value);
setFieldInRecord(advertisement, putOrCall, Record, Value)->
    erlang:setelement(#advertisement.putOrCall, Record, Value);
setFieldInRecord(advertisement, strikePrice, Record, Value)->
    erlang:setelement(#advertisement.strikePrice, Record, Value);
setFieldInRecord(advertisement, optAttribute, Record, Value)->
    erlang:setelement(#advertisement.optAttribute, Record, Value);
setFieldInRecord(advertisement, contractMultiplier, Record, Value)->
    erlang:setelement(#advertisement.contractMultiplier, Record, Value);
setFieldInRecord(advertisement, couponRate, Record, Value)->
    erlang:setelement(#advertisement.couponRate, Record, Value);
setFieldInRecord(advertisement, securityExchange, Record, Value)->
    erlang:setelement(#advertisement.securityExchange, Record, Value);
setFieldInRecord(advertisement, issuer, Record, Value)->
    erlang:setelement(#advertisement.issuer, Record, Value);
setFieldInRecord(advertisement, encodedIssuerLen, Record, Value)->
    erlang:setelement(#advertisement.encodedIssuerLen, Record, Value);
setFieldInRecord(advertisement, encodedIssuer, Record, Value)->
    erlang:setelement(#advertisement.encodedIssuer, Record, Value);
setFieldInRecord(advertisement, securityDesc, Record, Value)->
    erlang:setelement(#advertisement.securityDesc, Record, Value);
setFieldInRecord(advertisement, encodedSecurityDescLen, Record, Value)->
    erlang:setelement(#advertisement.encodedSecurityDescLen, Record, Value);
setFieldInRecord(advertisement, encodedSecurityDesc, Record, Value)->
    erlang:setelement(#advertisement.encodedSecurityDesc, Record, Value);
setFieldInRecord(advertisement, advSide, Record, Value)->
    erlang:setelement(#advertisement.advSide, Record, Value);
setFieldInRecord(advertisement, shares, Record, Value)->
    erlang:setelement(#advertisement.shares, Record, Value);
setFieldInRecord(advertisement, price, Record, Value)->
    erlang:setelement(#advertisement.price, Record, Value);
setFieldInRecord(advertisement, currency, Record, Value)->
    erlang:setelement(#advertisement.currency, Record, Value);
setFieldInRecord(advertisement, tradeDate, Record, Value)->
    erlang:setelement(#advertisement.tradeDate, Record, Value);
setFieldInRecord(advertisement, transactTime, Record, Value)->
    erlang:setelement(#advertisement.transactTime, Record, Value);
setFieldInRecord(advertisement, text, Record, Value)->
    erlang:setelement(#advertisement.text, Record, Value);
setFieldInRecord(advertisement, encodedTextLen, Record, Value)->
    erlang:setelement(#advertisement.encodedTextLen, Record, Value);
setFieldInRecord(advertisement, encodedText, Record, Value)->
    erlang:setelement(#advertisement.encodedText, Record, Value);
setFieldInRecord(advertisement, uRLLink, Record, Value)->
    erlang:setelement(#advertisement.uRLLink, Record, Value);
setFieldInRecord(advertisement, lastMkt, Record, Value)->
    erlang:setelement(#advertisement.lastMkt, Record, Value);
setFieldInRecord(advertisement, tradingSessionID, Record, Value)->
    erlang:setelement(#advertisement.tradingSessionID, Record, Value);
setFieldInRecord(advertisement, standardTrailer, Record, Value)->
    erlang:setelement(#advertisement.standardTrailer, Record, Value);
setFieldInRecord(executionReport, standardHeader, Record, Value)->
    erlang:setelement(#executionReport.standardHeader, Record, Value);
setFieldInRecord(executionReport, orderID, Record, Value)->
    erlang:setelement(#executionReport.orderID, Record, Value);
setFieldInRecord(executionReport, secondaryOrderID, Record, Value)->
    erlang:setelement(#executionReport.secondaryOrderID, Record, Value);
setFieldInRecord(executionReport, clOrdID, Record, Value)->
    erlang:setelement(#executionReport.clOrdID, Record, Value);
setFieldInRecord(executionReport, origClOrdID, Record, Value)->
    erlang:setelement(#executionReport.origClOrdID, Record, Value);
setFieldInRecord(executionReport, clientID, Record, Value)->
    erlang:setelement(#executionReport.clientID, Record, Value);
setFieldInRecord(executionReport, execBroker, Record, Value)->
    erlang:setelement(#executionReport.execBroker, Record, Value);
setFieldInRecord(executionReport, rgr_executionReport_382, Record, Value)->
   erlang:setelement(#executionReport.rgr_executionReport_382, Record, Value);
setFieldInRecord(rgr_executionReport_382, contraBroker, Record, Value)->
   erlang:setelement(#rgr_executionReport_382.contraBroker, Record, Value);
setFieldInRecord(rgr_executionReport_382, contraTrader, Record, Value)->
   erlang:setelement(#rgr_executionReport_382.contraTrader, Record, Value);
setFieldInRecord(rgr_executionReport_382, contraTradeQty, Record, Value)->
   erlang:setelement(#rgr_executionReport_382.contraTradeQty, Record, Value);
setFieldInRecord(rgr_executionReport_382, contraTradeTime, Record, Value)->
   erlang:setelement(#rgr_executionReport_382.contraTradeTime, Record, Value);
setFieldInRecord(executionReport, listID, Record, Value)->
    erlang:setelement(#executionReport.listID, Record, Value);
setFieldInRecord(executionReport, execID, Record, Value)->
    erlang:setelement(#executionReport.execID, Record, Value);
setFieldInRecord(executionReport, execTransType, Record, Value)->
    erlang:setelement(#executionReport.execTransType, Record, Value);
setFieldInRecord(executionReport, execRefID, Record, Value)->
    erlang:setelement(#executionReport.execRefID, Record, Value);
setFieldInRecord(executionReport, execType, Record, Value)->
    erlang:setelement(#executionReport.execType, Record, Value);
setFieldInRecord(executionReport, ordStatus, Record, Value)->
    erlang:setelement(#executionReport.ordStatus, Record, Value);
setFieldInRecord(executionReport, ordRejReason, Record, Value)->
    erlang:setelement(#executionReport.ordRejReason, Record, Value);
setFieldInRecord(executionReport, execRestatementReason, Record, Value)->
    erlang:setelement(#executionReport.execRestatementReason, Record, Value);
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
setFieldInRecord(executionReport, securityType, Record, Value)->
    erlang:setelement(#executionReport.securityType, Record, Value);
setFieldInRecord(executionReport, maturityMonthYear, Record, Value)->
    erlang:setelement(#executionReport.maturityMonthYear, Record, Value);
setFieldInRecord(executionReport, maturityDay, Record, Value)->
    erlang:setelement(#executionReport.maturityDay, Record, Value);
setFieldInRecord(executionReport, putOrCall, Record, Value)->
    erlang:setelement(#executionReport.putOrCall, Record, Value);
setFieldInRecord(executionReport, strikePrice, Record, Value)->
    erlang:setelement(#executionReport.strikePrice, Record, Value);
setFieldInRecord(executionReport, optAttribute, Record, Value)->
    erlang:setelement(#executionReport.optAttribute, Record, Value);
setFieldInRecord(executionReport, contractMultiplier, Record, Value)->
    erlang:setelement(#executionReport.contractMultiplier, Record, Value);
setFieldInRecord(executionReport, couponRate, Record, Value)->
    erlang:setelement(#executionReport.couponRate, Record, Value);
setFieldInRecord(executionReport, securityExchange, Record, Value)->
    erlang:setelement(#executionReport.securityExchange, Record, Value);
setFieldInRecord(executionReport, issuer, Record, Value)->
    erlang:setelement(#executionReport.issuer, Record, Value);
setFieldInRecord(executionReport, encodedIssuerLen, Record, Value)->
    erlang:setelement(#executionReport.encodedIssuerLen, Record, Value);
setFieldInRecord(executionReport, encodedIssuer, Record, Value)->
    erlang:setelement(#executionReport.encodedIssuer, Record, Value);
setFieldInRecord(executionReport, securityDesc, Record, Value)->
    erlang:setelement(#executionReport.securityDesc, Record, Value);
setFieldInRecord(executionReport, encodedSecurityDescLen, Record, Value)->
    erlang:setelement(#executionReport.encodedSecurityDescLen, Record, Value);
setFieldInRecord(executionReport, encodedSecurityDesc, Record, Value)->
    erlang:setelement(#executionReport.encodedSecurityDesc, Record, Value);
setFieldInRecord(executionReport, side, Record, Value)->
    erlang:setelement(#executionReport.side, Record, Value);
setFieldInRecord(executionReport, orderQty, Record, Value)->
    erlang:setelement(#executionReport.orderQty, Record, Value);
setFieldInRecord(executionReport, cashOrderQty, Record, Value)->
    erlang:setelement(#executionReport.cashOrderQty, Record, Value);
setFieldInRecord(executionReport, ordType, Record, Value)->
    erlang:setelement(#executionReport.ordType, Record, Value);
setFieldInRecord(executionReport, price, Record, Value)->
    erlang:setelement(#executionReport.price, Record, Value);
setFieldInRecord(executionReport, stopPx, Record, Value)->
    erlang:setelement(#executionReport.stopPx, Record, Value);
setFieldInRecord(executionReport, pegDifference, Record, Value)->
    erlang:setelement(#executionReport.pegDifference, Record, Value);
setFieldInRecord(executionReport, discretionInst, Record, Value)->
    erlang:setelement(#executionReport.discretionInst, Record, Value);
setFieldInRecord(executionReport, discretionOffset, Record, Value)->
    erlang:setelement(#executionReport.discretionOffset, Record, Value);
setFieldInRecord(executionReport, currency, Record, Value)->
    erlang:setelement(#executionReport.currency, Record, Value);
setFieldInRecord(executionReport, complianceID, Record, Value)->
    erlang:setelement(#executionReport.complianceID, Record, Value);
setFieldInRecord(executionReport, solicitedFlag, Record, Value)->
    erlang:setelement(#executionReport.solicitedFlag, Record, Value);
setFieldInRecord(executionReport, timeInForce, Record, Value)->
    erlang:setelement(#executionReport.timeInForce, Record, Value);
setFieldInRecord(executionReport, effectiveTime, Record, Value)->
    erlang:setelement(#executionReport.effectiveTime, Record, Value);
setFieldInRecord(executionReport, expireDate, Record, Value)->
    erlang:setelement(#executionReport.expireDate, Record, Value);
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
setFieldInRecord(executionReport, lastSpotRate, Record, Value)->
    erlang:setelement(#executionReport.lastSpotRate, Record, Value);
setFieldInRecord(executionReport, lastForwardPoints, Record, Value)->
    erlang:setelement(#executionReport.lastForwardPoints, Record, Value);
setFieldInRecord(executionReport, lastMkt, Record, Value)->
    erlang:setelement(#executionReport.lastMkt, Record, Value);
setFieldInRecord(executionReport, tradingSessionID, Record, Value)->
    erlang:setelement(#executionReport.tradingSessionID, Record, Value);
setFieldInRecord(executionReport, lastCapacity, Record, Value)->
    erlang:setelement(#executionReport.lastCapacity, Record, Value);
setFieldInRecord(executionReport, leavesQty, Record, Value)->
    erlang:setelement(#executionReport.leavesQty, Record, Value);
setFieldInRecord(executionReport, cumQty, Record, Value)->
    erlang:setelement(#executionReport.cumQty, Record, Value);
setFieldInRecord(executionReport, avgPx, Record, Value)->
    erlang:setelement(#executionReport.avgPx, Record, Value);
setFieldInRecord(executionReport, dayOrderQty, Record, Value)->
    erlang:setelement(#executionReport.dayOrderQty, Record, Value);
setFieldInRecord(executionReport, dayCumQty, Record, Value)->
    erlang:setelement(#executionReport.dayCumQty, Record, Value);
setFieldInRecord(executionReport, dayAvgPx, Record, Value)->
    erlang:setelement(#executionReport.dayAvgPx, Record, Value);
setFieldInRecord(executionReport, gTBookingInst, Record, Value)->
    erlang:setelement(#executionReport.gTBookingInst, Record, Value);
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
setFieldInRecord(executionReport, grossTradeAmt, Record, Value)->
    erlang:setelement(#executionReport.grossTradeAmt, Record, Value);
setFieldInRecord(executionReport, settlCurrAmt, Record, Value)->
    erlang:setelement(#executionReport.settlCurrAmt, Record, Value);
setFieldInRecord(executionReport, settlCurrency, Record, Value)->
    erlang:setelement(#executionReport.settlCurrency, Record, Value);
setFieldInRecord(executionReport, settlCurrFxRate, Record, Value)->
    erlang:setelement(#executionReport.settlCurrFxRate, Record, Value);
setFieldInRecord(executionReport, settlCurrFxRateCalc, Record, Value)->
    erlang:setelement(#executionReport.settlCurrFxRateCalc, Record, Value);
setFieldInRecord(executionReport, handlInst, Record, Value)->
    erlang:setelement(#executionReport.handlInst, Record, Value);
setFieldInRecord(executionReport, minQty, Record, Value)->
    erlang:setelement(#executionReport.minQty, Record, Value);
setFieldInRecord(executionReport, maxFloor, Record, Value)->
    erlang:setelement(#executionReport.maxFloor, Record, Value);
setFieldInRecord(executionReport, openClose, Record, Value)->
    erlang:setelement(#executionReport.openClose, Record, Value);
setFieldInRecord(executionReport, maxShow, Record, Value)->
    erlang:setelement(#executionReport.maxShow, Record, Value);
setFieldInRecord(executionReport, text, Record, Value)->
    erlang:setelement(#executionReport.text, Record, Value);
setFieldInRecord(executionReport, encodedTextLen, Record, Value)->
    erlang:setelement(#executionReport.encodedTextLen, Record, Value);
setFieldInRecord(executionReport, encodedText, Record, Value)->
    erlang:setelement(#executionReport.encodedText, Record, Value);
setFieldInRecord(executionReport, futSettDate2, Record, Value)->
    erlang:setelement(#executionReport.futSettDate2, Record, Value);
setFieldInRecord(executionReport, orderQty2, Record, Value)->
    erlang:setelement(#executionReport.orderQty2, Record, Value);
setFieldInRecord(executionReport, clearingFirm, Record, Value)->
    erlang:setelement(#executionReport.clearingFirm, Record, Value);
setFieldInRecord(executionReport, clearingAccount, Record, Value)->
    erlang:setelement(#executionReport.clearingAccount, Record, Value);
setFieldInRecord(executionReport, multiLegReportingType, Record, Value)->
    erlang:setelement(#executionReport.multiLegReportingType, Record, Value);
setFieldInRecord(executionReport, standardTrailer, Record, Value)->
    erlang:setelement(#executionReport.standardTrailer, Record, Value);
setFieldInRecord(orderCancelReject, standardHeader, Record, Value)->
    erlang:setelement(#orderCancelReject.standardHeader, Record, Value);
setFieldInRecord(orderCancelReject, orderID, Record, Value)->
    erlang:setelement(#orderCancelReject.orderID, Record, Value);
setFieldInRecord(orderCancelReject, secondaryOrderID, Record, Value)->
    erlang:setelement(#orderCancelReject.secondaryOrderID, Record, Value);
setFieldInRecord(orderCancelReject, clOrdID, Record, Value)->
    erlang:setelement(#orderCancelReject.clOrdID, Record, Value);
setFieldInRecord(orderCancelReject, origClOrdID, Record, Value)->
    erlang:setelement(#orderCancelReject.origClOrdID, Record, Value);
setFieldInRecord(orderCancelReject, ordStatus, Record, Value)->
    erlang:setelement(#orderCancelReject.ordStatus, Record, Value);
setFieldInRecord(orderCancelReject, clientID, Record, Value)->
    erlang:setelement(#orderCancelReject.clientID, Record, Value);
setFieldInRecord(orderCancelReject, execBroker, Record, Value)->
    erlang:setelement(#orderCancelReject.execBroker, Record, Value);
setFieldInRecord(orderCancelReject, listID, Record, Value)->
    erlang:setelement(#orderCancelReject.listID, Record, Value);
setFieldInRecord(orderCancelReject, account, Record, Value)->
    erlang:setelement(#orderCancelReject.account, Record, Value);
setFieldInRecord(orderCancelReject, transactTime, Record, Value)->
    erlang:setelement(#orderCancelReject.transactTime, Record, Value);
setFieldInRecord(orderCancelReject, cxlRejResponseTo, Record, Value)->
    erlang:setelement(#orderCancelReject.cxlRejResponseTo, Record, Value);
setFieldInRecord(orderCancelReject, cxlRejReason, Record, Value)->
    erlang:setelement(#orderCancelReject.cxlRejReason, Record, Value);
setFieldInRecord(orderCancelReject, text, Record, Value)->
    erlang:setelement(#orderCancelReject.text, Record, Value);
setFieldInRecord(orderCancelReject, encodedTextLen, Record, Value)->
    erlang:setelement(#orderCancelReject.encodedTextLen, Record, Value);
setFieldInRecord(orderCancelReject, encodedText, Record, Value)->
    erlang:setelement(#orderCancelReject.encodedText, Record, Value);
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
setFieldInRecord(logon, resetSeqNumFlag, Record, Value)->
    erlang:setelement(#logon.resetSeqNumFlag, Record, Value);
setFieldInRecord(logon, maxMessageSize, Record, Value)->
    erlang:setelement(#logon.maxMessageSize, Record, Value);
setFieldInRecord(logon, rgr_logon_384, Record, Value)->
   erlang:setelement(#logon.rgr_logon_384, Record, Value);
setFieldInRecord(rgr_logon_384, refMsgType, Record, Value)->
   erlang:setelement(#rgr_logon_384.refMsgType, Record, Value);
setFieldInRecord(rgr_logon_384, msgDirection, Record, Value)->
   erlang:setelement(#rgr_logon_384.msgDirection, Record, Value);
setFieldInRecord(logon, standardTrailer, Record, Value)->
    erlang:setelement(#logon.standardTrailer, Record, Value);
setFieldInRecord(news, standardHeader, Record, Value)->
    erlang:setelement(#news.standardHeader, Record, Value);
setFieldInRecord(news, origTime, Record, Value)->
    erlang:setelement(#news.origTime, Record, Value);
setFieldInRecord(news, urgency, Record, Value)->
    erlang:setelement(#news.urgency, Record, Value);
setFieldInRecord(news, headline, Record, Value)->
    erlang:setelement(#news.headline, Record, Value);
setFieldInRecord(news, encodedHeadlineLen, Record, Value)->
    erlang:setelement(#news.encodedHeadlineLen, Record, Value);
setFieldInRecord(news, encodedHeadline, Record, Value)->
    erlang:setelement(#news.encodedHeadline, Record, Value);
setFieldInRecord(news, rgr_news_215, Record, Value)->
   erlang:setelement(#news.rgr_news_215, Record, Value);
setFieldInRecord(rgr_news_215, routingType, Record, Value)->
   erlang:setelement(#rgr_news_215.routingType, Record, Value);
setFieldInRecord(rgr_news_215, routingID, Record, Value)->
   erlang:setelement(#rgr_news_215.routingID, Record, Value);
setFieldInRecord(news, rgr_news_146, Record, Value)->
   erlang:setelement(#news.rgr_news_146, Record, Value);
setFieldInRecord(rgr_news_146, relatdSym, Record, Value)->
   erlang:setelement(#rgr_news_146.relatdSym, Record, Value);
setFieldInRecord(rgr_news_146, symbolSfx, Record, Value)->
   erlang:setelement(#rgr_news_146.symbolSfx, Record, Value);
setFieldInRecord(rgr_news_146, securityID, Record, Value)->
   erlang:setelement(#rgr_news_146.securityID, Record, Value);
setFieldInRecord(rgr_news_146, iDSource, Record, Value)->
   erlang:setelement(#rgr_news_146.iDSource, Record, Value);
setFieldInRecord(rgr_news_146, securityType, Record, Value)->
   erlang:setelement(#rgr_news_146.securityType, Record, Value);
setFieldInRecord(rgr_news_146, maturityMonthYear, Record, Value)->
   erlang:setelement(#rgr_news_146.maturityMonthYear, Record, Value);
setFieldInRecord(rgr_news_146, maturityDay, Record, Value)->
   erlang:setelement(#rgr_news_146.maturityDay, Record, Value);
setFieldInRecord(rgr_news_146, putOrCall, Record, Value)->
   erlang:setelement(#rgr_news_146.putOrCall, Record, Value);
setFieldInRecord(rgr_news_146, strikePrice, Record, Value)->
   erlang:setelement(#rgr_news_146.strikePrice, Record, Value);
setFieldInRecord(rgr_news_146, optAttribute, Record, Value)->
   erlang:setelement(#rgr_news_146.optAttribute, Record, Value);
setFieldInRecord(rgr_news_146, contractMultiplier, Record, Value)->
   erlang:setelement(#rgr_news_146.contractMultiplier, Record, Value);
setFieldInRecord(rgr_news_146, couponRate, Record, Value)->
   erlang:setelement(#rgr_news_146.couponRate, Record, Value);
setFieldInRecord(rgr_news_146, securityExchange, Record, Value)->
   erlang:setelement(#rgr_news_146.securityExchange, Record, Value);
setFieldInRecord(rgr_news_146, issuer, Record, Value)->
   erlang:setelement(#rgr_news_146.issuer, Record, Value);
setFieldInRecord(rgr_news_146, encodedIssuerLen, Record, Value)->
   erlang:setelement(#rgr_news_146.encodedIssuerLen, Record, Value);
setFieldInRecord(rgr_news_146, encodedIssuer, Record, Value)->
   erlang:setelement(#rgr_news_146.encodedIssuer, Record, Value);
setFieldInRecord(rgr_news_146, securityDesc, Record, Value)->
   erlang:setelement(#rgr_news_146.securityDesc, Record, Value);
setFieldInRecord(rgr_news_146, encodedSecurityDescLen, Record, Value)->
   erlang:setelement(#rgr_news_146.encodedSecurityDescLen, Record, Value);
setFieldInRecord(rgr_news_146, encodedSecurityDesc, Record, Value)->
   erlang:setelement(#rgr_news_146.encodedSecurityDesc, Record, Value);
setFieldInRecord(news, rgr_news_33, Record, Value)->
   erlang:setelement(#news.rgr_news_33, Record, Value);
setFieldInRecord(rgr_news_33, text, Record, Value)->
   erlang:setelement(#rgr_news_33.text, Record, Value);
setFieldInRecord(rgr_news_33, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_news_33.encodedTextLen, Record, Value);
setFieldInRecord(rgr_news_33, encodedText, Record, Value)->
   erlang:setelement(#rgr_news_33.encodedText, Record, Value);
setFieldInRecord(news, uRLLink, Record, Value)->
    erlang:setelement(#news.uRLLink, Record, Value);
setFieldInRecord(news, rawDataLength, Record, Value)->
    erlang:setelement(#news.rawDataLength, Record, Value);
setFieldInRecord(news, rawData, Record, Value)->
    erlang:setelement(#news.rawData, Record, Value);
setFieldInRecord(news, standardTrailer, Record, Value)->
    erlang:setelement(#news.standardTrailer, Record, Value);
setFieldInRecord(email, standardHeader, Record, Value)->
    erlang:setelement(#email.standardHeader, Record, Value);
setFieldInRecord(email, emailThreadID, Record, Value)->
    erlang:setelement(#email.emailThreadID, Record, Value);
setFieldInRecord(email, emailType, Record, Value)->
    erlang:setelement(#email.emailType, Record, Value);
setFieldInRecord(email, origTime, Record, Value)->
    erlang:setelement(#email.origTime, Record, Value);
setFieldInRecord(email, subject, Record, Value)->
    erlang:setelement(#email.subject, Record, Value);
setFieldInRecord(email, encodedSubjectLen, Record, Value)->
    erlang:setelement(#email.encodedSubjectLen, Record, Value);
setFieldInRecord(email, encodedSubject, Record, Value)->
    erlang:setelement(#email.encodedSubject, Record, Value);
setFieldInRecord(email, rgr_email_215, Record, Value)->
   erlang:setelement(#email.rgr_email_215, Record, Value);
setFieldInRecord(rgr_email_215, routingType, Record, Value)->
   erlang:setelement(#rgr_email_215.routingType, Record, Value);
setFieldInRecord(rgr_email_215, routingID, Record, Value)->
   erlang:setelement(#rgr_email_215.routingID, Record, Value);
setFieldInRecord(email, rgr_email_146, Record, Value)->
   erlang:setelement(#email.rgr_email_146, Record, Value);
setFieldInRecord(rgr_email_146, relatdSym, Record, Value)->
   erlang:setelement(#rgr_email_146.relatdSym, Record, Value);
setFieldInRecord(rgr_email_146, symbolSfx, Record, Value)->
   erlang:setelement(#rgr_email_146.symbolSfx, Record, Value);
setFieldInRecord(rgr_email_146, securityID, Record, Value)->
   erlang:setelement(#rgr_email_146.securityID, Record, Value);
setFieldInRecord(rgr_email_146, iDSource, Record, Value)->
   erlang:setelement(#rgr_email_146.iDSource, Record, Value);
setFieldInRecord(rgr_email_146, securityType, Record, Value)->
   erlang:setelement(#rgr_email_146.securityType, Record, Value);
setFieldInRecord(rgr_email_146, maturityMonthYear, Record, Value)->
   erlang:setelement(#rgr_email_146.maturityMonthYear, Record, Value);
setFieldInRecord(rgr_email_146, maturityDay, Record, Value)->
   erlang:setelement(#rgr_email_146.maturityDay, Record, Value);
setFieldInRecord(rgr_email_146, putOrCall, Record, Value)->
   erlang:setelement(#rgr_email_146.putOrCall, Record, Value);
setFieldInRecord(rgr_email_146, strikePrice, Record, Value)->
   erlang:setelement(#rgr_email_146.strikePrice, Record, Value);
setFieldInRecord(rgr_email_146, optAttribute, Record, Value)->
   erlang:setelement(#rgr_email_146.optAttribute, Record, Value);
setFieldInRecord(rgr_email_146, contractMultiplier, Record, Value)->
   erlang:setelement(#rgr_email_146.contractMultiplier, Record, Value);
setFieldInRecord(rgr_email_146, couponRate, Record, Value)->
   erlang:setelement(#rgr_email_146.couponRate, Record, Value);
setFieldInRecord(rgr_email_146, securityExchange, Record, Value)->
   erlang:setelement(#rgr_email_146.securityExchange, Record, Value);
setFieldInRecord(rgr_email_146, issuer, Record, Value)->
   erlang:setelement(#rgr_email_146.issuer, Record, Value);
setFieldInRecord(rgr_email_146, encodedIssuerLen, Record, Value)->
   erlang:setelement(#rgr_email_146.encodedIssuerLen, Record, Value);
setFieldInRecord(rgr_email_146, encodedIssuer, Record, Value)->
   erlang:setelement(#rgr_email_146.encodedIssuer, Record, Value);
setFieldInRecord(rgr_email_146, securityDesc, Record, Value)->
   erlang:setelement(#rgr_email_146.securityDesc, Record, Value);
setFieldInRecord(rgr_email_146, encodedSecurityDescLen, Record, Value)->
   erlang:setelement(#rgr_email_146.encodedSecurityDescLen, Record, Value);
setFieldInRecord(rgr_email_146, encodedSecurityDesc, Record, Value)->
   erlang:setelement(#rgr_email_146.encodedSecurityDesc, Record, Value);
setFieldInRecord(email, orderID, Record, Value)->
    erlang:setelement(#email.orderID, Record, Value);
setFieldInRecord(email, clOrdID, Record, Value)->
    erlang:setelement(#email.clOrdID, Record, Value);
setFieldInRecord(email, rgr_email_33, Record, Value)->
   erlang:setelement(#email.rgr_email_33, Record, Value);
setFieldInRecord(rgr_email_33, text, Record, Value)->
   erlang:setelement(#rgr_email_33.text, Record, Value);
setFieldInRecord(rgr_email_33, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_email_33.encodedTextLen, Record, Value);
setFieldInRecord(rgr_email_33, encodedText, Record, Value)->
   erlang:setelement(#rgr_email_33.encodedText, Record, Value);
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
setFieldInRecord(orderSingle, rgr_orderSingle_78, Record, Value)->
   erlang:setelement(#orderSingle.rgr_orderSingle_78, Record, Value);
setFieldInRecord(rgr_orderSingle_78, allocAccount, Record, Value)->
   erlang:setelement(#rgr_orderSingle_78.allocAccount, Record, Value);
setFieldInRecord(rgr_orderSingle_78, allocShares, Record, Value)->
   erlang:setelement(#rgr_orderSingle_78.allocShares, Record, Value);
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
setFieldInRecord(orderSingle, rgr_orderSingle_386, Record, Value)->
   erlang:setelement(#orderSingle.rgr_orderSingle_386, Record, Value);
setFieldInRecord(rgr_orderSingle_386, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_orderSingle_386.tradingSessionID, Record, Value);
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
setFieldInRecord(orderSingle, securityType, Record, Value)->
    erlang:setelement(#orderSingle.securityType, Record, Value);
setFieldInRecord(orderSingle, maturityMonthYear, Record, Value)->
    erlang:setelement(#orderSingle.maturityMonthYear, Record, Value);
setFieldInRecord(orderSingle, maturityDay, Record, Value)->
    erlang:setelement(#orderSingle.maturityDay, Record, Value);
setFieldInRecord(orderSingle, putOrCall, Record, Value)->
    erlang:setelement(#orderSingle.putOrCall, Record, Value);
setFieldInRecord(orderSingle, strikePrice, Record, Value)->
    erlang:setelement(#orderSingle.strikePrice, Record, Value);
setFieldInRecord(orderSingle, optAttribute, Record, Value)->
    erlang:setelement(#orderSingle.optAttribute, Record, Value);
setFieldInRecord(orderSingle, contractMultiplier, Record, Value)->
    erlang:setelement(#orderSingle.contractMultiplier, Record, Value);
setFieldInRecord(orderSingle, couponRate, Record, Value)->
    erlang:setelement(#orderSingle.couponRate, Record, Value);
setFieldInRecord(orderSingle, securityExchange, Record, Value)->
    erlang:setelement(#orderSingle.securityExchange, Record, Value);
setFieldInRecord(orderSingle, issuer, Record, Value)->
    erlang:setelement(#orderSingle.issuer, Record, Value);
setFieldInRecord(orderSingle, encodedIssuerLen, Record, Value)->
    erlang:setelement(#orderSingle.encodedIssuerLen, Record, Value);
setFieldInRecord(orderSingle, encodedIssuer, Record, Value)->
    erlang:setelement(#orderSingle.encodedIssuer, Record, Value);
setFieldInRecord(orderSingle, securityDesc, Record, Value)->
    erlang:setelement(#orderSingle.securityDesc, Record, Value);
setFieldInRecord(orderSingle, encodedSecurityDescLen, Record, Value)->
    erlang:setelement(#orderSingle.encodedSecurityDescLen, Record, Value);
setFieldInRecord(orderSingle, encodedSecurityDesc, Record, Value)->
    erlang:setelement(#orderSingle.encodedSecurityDesc, Record, Value);
setFieldInRecord(orderSingle, prevClosePx, Record, Value)->
    erlang:setelement(#orderSingle.prevClosePx, Record, Value);
setFieldInRecord(orderSingle, side, Record, Value)->
    erlang:setelement(#orderSingle.side, Record, Value);
setFieldInRecord(orderSingle, locateReqd, Record, Value)->
    erlang:setelement(#orderSingle.locateReqd, Record, Value);
setFieldInRecord(orderSingle, transactTime, Record, Value)->
    erlang:setelement(#orderSingle.transactTime, Record, Value);
setFieldInRecord(orderSingle, orderQty, Record, Value)->
    erlang:setelement(#orderSingle.orderQty, Record, Value);
setFieldInRecord(orderSingle, cashOrderQty, Record, Value)->
    erlang:setelement(#orderSingle.cashOrderQty, Record, Value);
setFieldInRecord(orderSingle, ordType, Record, Value)->
    erlang:setelement(#orderSingle.ordType, Record, Value);
setFieldInRecord(orderSingle, price, Record, Value)->
    erlang:setelement(#orderSingle.price, Record, Value);
setFieldInRecord(orderSingle, stopPx, Record, Value)->
    erlang:setelement(#orderSingle.stopPx, Record, Value);
setFieldInRecord(orderSingle, currency, Record, Value)->
    erlang:setelement(#orderSingle.currency, Record, Value);
setFieldInRecord(orderSingle, complianceID, Record, Value)->
    erlang:setelement(#orderSingle.complianceID, Record, Value);
setFieldInRecord(orderSingle, solicitedFlag, Record, Value)->
    erlang:setelement(#orderSingle.solicitedFlag, Record, Value);
setFieldInRecord(orderSingle, iOIid, Record, Value)->
    erlang:setelement(#orderSingle.iOIid, Record, Value);
setFieldInRecord(orderSingle, quoteID, Record, Value)->
    erlang:setelement(#orderSingle.quoteID, Record, Value);
setFieldInRecord(orderSingle, timeInForce, Record, Value)->
    erlang:setelement(#orderSingle.timeInForce, Record, Value);
setFieldInRecord(orderSingle, effectiveTime, Record, Value)->
    erlang:setelement(#orderSingle.effectiveTime, Record, Value);
setFieldInRecord(orderSingle, expireDate, Record, Value)->
    erlang:setelement(#orderSingle.expireDate, Record, Value);
setFieldInRecord(orderSingle, expireTime, Record, Value)->
    erlang:setelement(#orderSingle.expireTime, Record, Value);
setFieldInRecord(orderSingle, gTBookingInst, Record, Value)->
    erlang:setelement(#orderSingle.gTBookingInst, Record, Value);
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
setFieldInRecord(orderSingle, encodedTextLen, Record, Value)->
    erlang:setelement(#orderSingle.encodedTextLen, Record, Value);
setFieldInRecord(orderSingle, encodedText, Record, Value)->
    erlang:setelement(#orderSingle.encodedText, Record, Value);
setFieldInRecord(orderSingle, futSettDate2, Record, Value)->
    erlang:setelement(#orderSingle.futSettDate2, Record, Value);
setFieldInRecord(orderSingle, orderQty2, Record, Value)->
    erlang:setelement(#orderSingle.orderQty2, Record, Value);
setFieldInRecord(orderSingle, openClose, Record, Value)->
    erlang:setelement(#orderSingle.openClose, Record, Value);
setFieldInRecord(orderSingle, coveredOrUncovered, Record, Value)->
    erlang:setelement(#orderSingle.coveredOrUncovered, Record, Value);
setFieldInRecord(orderSingle, customerOrFirm, Record, Value)->
    erlang:setelement(#orderSingle.customerOrFirm, Record, Value);
setFieldInRecord(orderSingle, maxShow, Record, Value)->
    erlang:setelement(#orderSingle.maxShow, Record, Value);
setFieldInRecord(orderSingle, pegDifference, Record, Value)->
    erlang:setelement(#orderSingle.pegDifference, Record, Value);
setFieldInRecord(orderSingle, discretionInst, Record, Value)->
    erlang:setelement(#orderSingle.discretionInst, Record, Value);
setFieldInRecord(orderSingle, discretionOffset, Record, Value)->
    erlang:setelement(#orderSingle.discretionOffset, Record, Value);
setFieldInRecord(orderSingle, clearingFirm, Record, Value)->
    erlang:setelement(#orderSingle.clearingFirm, Record, Value);
setFieldInRecord(orderSingle, clearingAccount, Record, Value)->
    erlang:setelement(#orderSingle.clearingAccount, Record, Value);
setFieldInRecord(orderSingle, standardTrailer, Record, Value)->
    erlang:setelement(#orderSingle.standardTrailer, Record, Value);
setFieldInRecord(newOrderList, standardHeader, Record, Value)->
    erlang:setelement(#newOrderList.standardHeader, Record, Value);
setFieldInRecord(newOrderList, listID, Record, Value)->
    erlang:setelement(#newOrderList.listID, Record, Value);
setFieldInRecord(newOrderList, bidID, Record, Value)->
    erlang:setelement(#newOrderList.bidID, Record, Value);
setFieldInRecord(newOrderList, clientBidID, Record, Value)->
    erlang:setelement(#newOrderList.clientBidID, Record, Value);
setFieldInRecord(newOrderList, progRptReqs, Record, Value)->
    erlang:setelement(#newOrderList.progRptReqs, Record, Value);
setFieldInRecord(newOrderList, bidType, Record, Value)->
    erlang:setelement(#newOrderList.bidType, Record, Value);
setFieldInRecord(newOrderList, progPeriodInterval, Record, Value)->
    erlang:setelement(#newOrderList.progPeriodInterval, Record, Value);
setFieldInRecord(newOrderList, listExecInstType, Record, Value)->
    erlang:setelement(#newOrderList.listExecInstType, Record, Value);
setFieldInRecord(newOrderList, listExecInst, Record, Value)->
    erlang:setelement(#newOrderList.listExecInst, Record, Value);
setFieldInRecord(newOrderList, encodedListExecInstLen, Record, Value)->
    erlang:setelement(#newOrderList.encodedListExecInstLen, Record, Value);
setFieldInRecord(newOrderList, encodedListExecInst, Record, Value)->
    erlang:setelement(#newOrderList.encodedListExecInst, Record, Value);
setFieldInRecord(newOrderList, totNoOrders, Record, Value)->
    erlang:setelement(#newOrderList.totNoOrders, Record, Value);
setFieldInRecord(newOrderList, rgr_newOrderList_73, Record, Value)->
   erlang:setelement(#newOrderList.rgr_newOrderList_73, Record, Value);
setFieldInRecord(rgr_newOrderList_73, clOrdID, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.clOrdID, Record, Value);
setFieldInRecord(rgr_newOrderList_73, listSeqNo, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.listSeqNo, Record, Value);
setFieldInRecord(rgr_newOrderList_73, settlInstMode, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.settlInstMode, Record, Value);
setFieldInRecord(rgr_newOrderList_73, clientID, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.clientID, Record, Value);
setFieldInRecord(rgr_newOrderList_73, execBroker, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.execBroker, Record, Value);
setFieldInRecord(rgr_newOrderList_73, account, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.account, Record, Value);
setFieldInRecord(rgr_newOrderList_73, rgr_rgr_newOrderList_73_78, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.rgr_rgr_newOrderList_73_78, Record, Value);
setFieldInRecord(rgr_newOrderList_73, rgr_rgr_newOrderList_73_78, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.rgr_rgr_newOrderList_73_78, Record, Value);
setFieldInRecord(rgr_rgr_newOrderList_73_78, allocAccount, Record, Value)->
   erlang:setelement(#rgr_rgr_newOrderList_73_78.allocAccount, Record, Value);
setFieldInRecord(rgr_rgr_newOrderList_73_78, allocShares, Record, Value)->
   erlang:setelement(#rgr_rgr_newOrderList_73_78.allocShares, Record, Value);
setFieldInRecord(rgr_newOrderList_73, settlmntTyp, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.settlmntTyp, Record, Value);
setFieldInRecord(rgr_newOrderList_73, futSettDate, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.futSettDate, Record, Value);
setFieldInRecord(rgr_newOrderList_73, handlInst, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.handlInst, Record, Value);
setFieldInRecord(rgr_newOrderList_73, execInst, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.execInst, Record, Value);
setFieldInRecord(rgr_newOrderList_73, minQty, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.minQty, Record, Value);
setFieldInRecord(rgr_newOrderList_73, maxFloor, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.maxFloor, Record, Value);
setFieldInRecord(rgr_newOrderList_73, exDestination, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.exDestination, Record, Value);
setFieldInRecord(rgr_newOrderList_73, rgr_rgr_newOrderList_73_386, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.rgr_rgr_newOrderList_73_386, Record, Value);
setFieldInRecord(rgr_newOrderList_73, rgr_rgr_newOrderList_73_386, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.rgr_rgr_newOrderList_73_386, Record, Value);
setFieldInRecord(rgr_rgr_newOrderList_73_386, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_rgr_newOrderList_73_386.tradingSessionID, Record, Value);
setFieldInRecord(rgr_newOrderList_73, processCode, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.processCode, Record, Value);
setFieldInRecord(rgr_newOrderList_73, symbol, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.symbol, Record, Value);
setFieldInRecord(rgr_newOrderList_73, symbolSfx, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.symbolSfx, Record, Value);
setFieldInRecord(rgr_newOrderList_73, securityID, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.securityID, Record, Value);
setFieldInRecord(rgr_newOrderList_73, iDSource, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.iDSource, Record, Value);
setFieldInRecord(rgr_newOrderList_73, securityType, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.securityType, Record, Value);
setFieldInRecord(rgr_newOrderList_73, maturityMonthYear, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.maturityMonthYear, Record, Value);
setFieldInRecord(rgr_newOrderList_73, maturityDay, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.maturityDay, Record, Value);
setFieldInRecord(rgr_newOrderList_73, putOrCall, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.putOrCall, Record, Value);
setFieldInRecord(rgr_newOrderList_73, strikePrice, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.strikePrice, Record, Value);
setFieldInRecord(rgr_newOrderList_73, optAttribute, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.optAttribute, Record, Value);
setFieldInRecord(rgr_newOrderList_73, contractMultiplier, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.contractMultiplier, Record, Value);
setFieldInRecord(rgr_newOrderList_73, couponRate, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.couponRate, Record, Value);
setFieldInRecord(rgr_newOrderList_73, securityExchange, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.securityExchange, Record, Value);
setFieldInRecord(rgr_newOrderList_73, issuer, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.issuer, Record, Value);
setFieldInRecord(rgr_newOrderList_73, encodedIssuerLen, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.encodedIssuerLen, Record, Value);
setFieldInRecord(rgr_newOrderList_73, encodedIssuer, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.encodedIssuer, Record, Value);
setFieldInRecord(rgr_newOrderList_73, securityDesc, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.securityDesc, Record, Value);
setFieldInRecord(rgr_newOrderList_73, encodedSecurityDescLen, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.encodedSecurityDescLen, Record, Value);
setFieldInRecord(rgr_newOrderList_73, encodedSecurityDesc, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.encodedSecurityDesc, Record, Value);
setFieldInRecord(rgr_newOrderList_73, prevClosePx, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.prevClosePx, Record, Value);
setFieldInRecord(rgr_newOrderList_73, side, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.side, Record, Value);
setFieldInRecord(rgr_newOrderList_73, sideValueInd, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.sideValueInd, Record, Value);
setFieldInRecord(rgr_newOrderList_73, locateReqd, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.locateReqd, Record, Value);
setFieldInRecord(rgr_newOrderList_73, transactTime, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.transactTime, Record, Value);
setFieldInRecord(rgr_newOrderList_73, orderQty, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.orderQty, Record, Value);
setFieldInRecord(rgr_newOrderList_73, cashOrderQty, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.cashOrderQty, Record, Value);
setFieldInRecord(rgr_newOrderList_73, ordType, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.ordType, Record, Value);
setFieldInRecord(rgr_newOrderList_73, price, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.price, Record, Value);
setFieldInRecord(rgr_newOrderList_73, stopPx, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.stopPx, Record, Value);
setFieldInRecord(rgr_newOrderList_73, currency, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.currency, Record, Value);
setFieldInRecord(rgr_newOrderList_73, complianceID, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.complianceID, Record, Value);
setFieldInRecord(rgr_newOrderList_73, solicitedFlag, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.solicitedFlag, Record, Value);
setFieldInRecord(rgr_newOrderList_73, iOIid, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.iOIid, Record, Value);
setFieldInRecord(rgr_newOrderList_73, quoteID, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.quoteID, Record, Value);
setFieldInRecord(rgr_newOrderList_73, timeInForce, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.timeInForce, Record, Value);
setFieldInRecord(rgr_newOrderList_73, effectiveTime, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.effectiveTime, Record, Value);
setFieldInRecord(rgr_newOrderList_73, expireDate, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.expireDate, Record, Value);
setFieldInRecord(rgr_newOrderList_73, expireTime, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.expireTime, Record, Value);
setFieldInRecord(rgr_newOrderList_73, gTBookingInst, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.gTBookingInst, Record, Value);
setFieldInRecord(rgr_newOrderList_73, commission, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.commission, Record, Value);
setFieldInRecord(rgr_newOrderList_73, commType, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.commType, Record, Value);
setFieldInRecord(rgr_newOrderList_73, rule80A, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.rule80A, Record, Value);
setFieldInRecord(rgr_newOrderList_73, forexReq, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.forexReq, Record, Value);
setFieldInRecord(rgr_newOrderList_73, settlCurrency, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.settlCurrency, Record, Value);
setFieldInRecord(rgr_newOrderList_73, text, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.text, Record, Value);
setFieldInRecord(rgr_newOrderList_73, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.encodedTextLen, Record, Value);
setFieldInRecord(rgr_newOrderList_73, encodedText, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.encodedText, Record, Value);
setFieldInRecord(rgr_newOrderList_73, futSettDate2, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.futSettDate2, Record, Value);
setFieldInRecord(rgr_newOrderList_73, orderQty2, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.orderQty2, Record, Value);
setFieldInRecord(rgr_newOrderList_73, openClose, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.openClose, Record, Value);
setFieldInRecord(rgr_newOrderList_73, coveredOrUncovered, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.coveredOrUncovered, Record, Value);
setFieldInRecord(rgr_newOrderList_73, customerOrFirm, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.customerOrFirm, Record, Value);
setFieldInRecord(rgr_newOrderList_73, maxShow, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.maxShow, Record, Value);
setFieldInRecord(rgr_newOrderList_73, pegDifference, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.pegDifference, Record, Value);
setFieldInRecord(rgr_newOrderList_73, discretionInst, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.discretionInst, Record, Value);
setFieldInRecord(rgr_newOrderList_73, discretionOffset, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.discretionOffset, Record, Value);
setFieldInRecord(rgr_newOrderList_73, clearingFirm, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.clearingFirm, Record, Value);
setFieldInRecord(rgr_newOrderList_73, clearingAccount, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.clearingAccount, Record, Value);
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
setFieldInRecord(orderCancelRequest, account, Record, Value)->
    erlang:setelement(#orderCancelRequest.account, Record, Value);
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
setFieldInRecord(orderCancelRequest, securityType, Record, Value)->
    erlang:setelement(#orderCancelRequest.securityType, Record, Value);
setFieldInRecord(orderCancelRequest, maturityMonthYear, Record, Value)->
    erlang:setelement(#orderCancelRequest.maturityMonthYear, Record, Value);
setFieldInRecord(orderCancelRequest, maturityDay, Record, Value)->
    erlang:setelement(#orderCancelRequest.maturityDay, Record, Value);
setFieldInRecord(orderCancelRequest, putOrCall, Record, Value)->
    erlang:setelement(#orderCancelRequest.putOrCall, Record, Value);
setFieldInRecord(orderCancelRequest, strikePrice, Record, Value)->
    erlang:setelement(#orderCancelRequest.strikePrice, Record, Value);
setFieldInRecord(orderCancelRequest, optAttribute, Record, Value)->
    erlang:setelement(#orderCancelRequest.optAttribute, Record, Value);
setFieldInRecord(orderCancelRequest, contractMultiplier, Record, Value)->
    erlang:setelement(#orderCancelRequest.contractMultiplier, Record, Value);
setFieldInRecord(orderCancelRequest, couponRate, Record, Value)->
    erlang:setelement(#orderCancelRequest.couponRate, Record, Value);
setFieldInRecord(orderCancelRequest, securityExchange, Record, Value)->
    erlang:setelement(#orderCancelRequest.securityExchange, Record, Value);
setFieldInRecord(orderCancelRequest, issuer, Record, Value)->
    erlang:setelement(#orderCancelRequest.issuer, Record, Value);
setFieldInRecord(orderCancelRequest, encodedIssuerLen, Record, Value)->
    erlang:setelement(#orderCancelRequest.encodedIssuerLen, Record, Value);
setFieldInRecord(orderCancelRequest, encodedIssuer, Record, Value)->
    erlang:setelement(#orderCancelRequest.encodedIssuer, Record, Value);
setFieldInRecord(orderCancelRequest, securityDesc, Record, Value)->
    erlang:setelement(#orderCancelRequest.securityDesc, Record, Value);
setFieldInRecord(orderCancelRequest, encodedSecurityDescLen, Record, Value)->
    erlang:setelement(#orderCancelRequest.encodedSecurityDescLen, Record, Value);
setFieldInRecord(orderCancelRequest, encodedSecurityDesc, Record, Value)->
    erlang:setelement(#orderCancelRequest.encodedSecurityDesc, Record, Value);
setFieldInRecord(orderCancelRequest, side, Record, Value)->
    erlang:setelement(#orderCancelRequest.side, Record, Value);
setFieldInRecord(orderCancelRequest, transactTime, Record, Value)->
    erlang:setelement(#orderCancelRequest.transactTime, Record, Value);
setFieldInRecord(orderCancelRequest, orderQty, Record, Value)->
    erlang:setelement(#orderCancelRequest.orderQty, Record, Value);
setFieldInRecord(orderCancelRequest, cashOrderQty, Record, Value)->
    erlang:setelement(#orderCancelRequest.cashOrderQty, Record, Value);
setFieldInRecord(orderCancelRequest, complianceID, Record, Value)->
    erlang:setelement(#orderCancelRequest.complianceID, Record, Value);
setFieldInRecord(orderCancelRequest, solicitedFlag, Record, Value)->
    erlang:setelement(#orderCancelRequest.solicitedFlag, Record, Value);
setFieldInRecord(orderCancelRequest, text, Record, Value)->
    erlang:setelement(#orderCancelRequest.text, Record, Value);
setFieldInRecord(orderCancelRequest, encodedTextLen, Record, Value)->
    erlang:setelement(#orderCancelRequest.encodedTextLen, Record, Value);
setFieldInRecord(orderCancelRequest, encodedText, Record, Value)->
    erlang:setelement(#orderCancelRequest.encodedText, Record, Value);
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
setFieldInRecord(orderCancelReplaceRequest, rgr_orderCancelReplaceRequest_78, Record, Value)->
   erlang:setelement(#orderCancelReplaceRequest.rgr_orderCancelReplaceRequest_78, Record, Value);
setFieldInRecord(rgr_orderCancelReplaceRequest_78, allocAccount, Record, Value)->
   erlang:setelement(#rgr_orderCancelReplaceRequest_78.allocAccount, Record, Value);
setFieldInRecord(rgr_orderCancelReplaceRequest_78, allocShares, Record, Value)->
   erlang:setelement(#rgr_orderCancelReplaceRequest_78.allocShares, Record, Value);
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
setFieldInRecord(orderCancelReplaceRequest, rgr_orderCancelReplaceRequest_386, Record, Value)->
   erlang:setelement(#orderCancelReplaceRequest.rgr_orderCancelReplaceRequest_386, Record, Value);
setFieldInRecord(rgr_orderCancelReplaceRequest_386, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_orderCancelReplaceRequest_386.tradingSessionID, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, symbol, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.symbol, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, symbolSfx, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.symbolSfx, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, securityID, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.securityID, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, iDSource, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.iDSource, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, securityType, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.securityType, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, maturityMonthYear, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.maturityMonthYear, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, maturityDay, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.maturityDay, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, putOrCall, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.putOrCall, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, strikePrice, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.strikePrice, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, optAttribute, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.optAttribute, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, contractMultiplier, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.contractMultiplier, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, couponRate, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.couponRate, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, securityExchange, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.securityExchange, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, issuer, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.issuer, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, encodedIssuerLen, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.encodedIssuerLen, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, encodedIssuer, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.encodedIssuer, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, securityDesc, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.securityDesc, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, encodedSecurityDescLen, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.encodedSecurityDescLen, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, encodedSecurityDesc, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.encodedSecurityDesc, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, side, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.side, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, transactTime, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.transactTime, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, orderQty, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.orderQty, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, cashOrderQty, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.cashOrderQty, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, ordType, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.ordType, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, price, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.price, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, stopPx, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.stopPx, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, pegDifference, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.pegDifference, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, discretionInst, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.discretionInst, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, discretionOffset, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.discretionOffset, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, complianceID, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.complianceID, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, solicitedFlag, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.solicitedFlag, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, currency, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.currency, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, timeInForce, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.timeInForce, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, effectiveTime, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.effectiveTime, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, expireDate, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.expireDate, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, expireTime, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.expireTime, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, gTBookingInst, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.gTBookingInst, Record, Value);
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
setFieldInRecord(orderCancelReplaceRequest, encodedTextLen, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.encodedTextLen, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, encodedText, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.encodedText, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, futSettDate2, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.futSettDate2, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, orderQty2, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.orderQty2, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, openClose, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.openClose, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, coveredOrUncovered, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.coveredOrUncovered, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, customerOrFirm, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.customerOrFirm, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, maxShow, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.maxShow, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, locateReqd, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.locateReqd, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, clearingFirm, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.clearingFirm, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, clearingAccount, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.clearingAccount, Record, Value);
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
setFieldInRecord(orderStatusRequest, account, Record, Value)->
    erlang:setelement(#orderStatusRequest.account, Record, Value);
setFieldInRecord(orderStatusRequest, execBroker, Record, Value)->
    erlang:setelement(#orderStatusRequest.execBroker, Record, Value);
setFieldInRecord(orderStatusRequest, symbol, Record, Value)->
    erlang:setelement(#orderStatusRequest.symbol, Record, Value);
setFieldInRecord(orderStatusRequest, symbolSfx, Record, Value)->
    erlang:setelement(#orderStatusRequest.symbolSfx, Record, Value);
setFieldInRecord(orderStatusRequest, securityID, Record, Value)->
    erlang:setelement(#orderStatusRequest.securityID, Record, Value);
setFieldInRecord(orderStatusRequest, iDSource, Record, Value)->
    erlang:setelement(#orderStatusRequest.iDSource, Record, Value);
setFieldInRecord(orderStatusRequest, securityType, Record, Value)->
    erlang:setelement(#orderStatusRequest.securityType, Record, Value);
setFieldInRecord(orderStatusRequest, maturityMonthYear, Record, Value)->
    erlang:setelement(#orderStatusRequest.maturityMonthYear, Record, Value);
setFieldInRecord(orderStatusRequest, maturityDay, Record, Value)->
    erlang:setelement(#orderStatusRequest.maturityDay, Record, Value);
setFieldInRecord(orderStatusRequest, putOrCall, Record, Value)->
    erlang:setelement(#orderStatusRequest.putOrCall, Record, Value);
setFieldInRecord(orderStatusRequest, strikePrice, Record, Value)->
    erlang:setelement(#orderStatusRequest.strikePrice, Record, Value);
setFieldInRecord(orderStatusRequest, optAttribute, Record, Value)->
    erlang:setelement(#orderStatusRequest.optAttribute, Record, Value);
setFieldInRecord(orderStatusRequest, contractMultiplier, Record, Value)->
    erlang:setelement(#orderStatusRequest.contractMultiplier, Record, Value);
setFieldInRecord(orderStatusRequest, couponRate, Record, Value)->
    erlang:setelement(#orderStatusRequest.couponRate, Record, Value);
setFieldInRecord(orderStatusRequest, securityExchange, Record, Value)->
    erlang:setelement(#orderStatusRequest.securityExchange, Record, Value);
setFieldInRecord(orderStatusRequest, issuer, Record, Value)->
    erlang:setelement(#orderStatusRequest.issuer, Record, Value);
setFieldInRecord(orderStatusRequest, encodedIssuerLen, Record, Value)->
    erlang:setelement(#orderStatusRequest.encodedIssuerLen, Record, Value);
setFieldInRecord(orderStatusRequest, encodedIssuer, Record, Value)->
    erlang:setelement(#orderStatusRequest.encodedIssuer, Record, Value);
setFieldInRecord(orderStatusRequest, securityDesc, Record, Value)->
    erlang:setelement(#orderStatusRequest.securityDesc, Record, Value);
setFieldInRecord(orderStatusRequest, encodedSecurityDescLen, Record, Value)->
    erlang:setelement(#orderStatusRequest.encodedSecurityDescLen, Record, Value);
setFieldInRecord(orderStatusRequest, encodedSecurityDesc, Record, Value)->
    erlang:setelement(#orderStatusRequest.encodedSecurityDesc, Record, Value);
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
setFieldInRecord(allocationInstruction, allocLinkID, Record, Value)->
    erlang:setelement(#allocationInstruction.allocLinkID, Record, Value);
setFieldInRecord(allocationInstruction, allocLinkType, Record, Value)->
    erlang:setelement(#allocationInstruction.allocLinkType, Record, Value);
setFieldInRecord(allocationInstruction, rgr_allocationInstruction_73, Record, Value)->
   erlang:setelement(#allocationInstruction.rgr_allocationInstruction_73, Record, Value);
setFieldInRecord(rgr_allocationInstruction_73, clOrdID, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_73.clOrdID, Record, Value);
setFieldInRecord(rgr_allocationInstruction_73, orderID, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_73.orderID, Record, Value);
setFieldInRecord(rgr_allocationInstruction_73, secondaryOrderID, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_73.secondaryOrderID, Record, Value);
setFieldInRecord(rgr_allocationInstruction_73, listID, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_73.listID, Record, Value);
setFieldInRecord(rgr_allocationInstruction_73, waveNo, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_73.waveNo, Record, Value);
setFieldInRecord(allocationInstruction, rgr_allocationInstruction_124, Record, Value)->
   erlang:setelement(#allocationInstruction.rgr_allocationInstruction_124, Record, Value);
setFieldInRecord(rgr_allocationInstruction_124, lastShares, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_124.lastShares, Record, Value);
setFieldInRecord(rgr_allocationInstruction_124, execID, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_124.execID, Record, Value);
setFieldInRecord(rgr_allocationInstruction_124, lastPx, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_124.lastPx, Record, Value);
setFieldInRecord(rgr_allocationInstruction_124, lastCapacity, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_124.lastCapacity, Record, Value);
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
setFieldInRecord(allocationInstruction, securityType, Record, Value)->
    erlang:setelement(#allocationInstruction.securityType, Record, Value);
setFieldInRecord(allocationInstruction, maturityMonthYear, Record, Value)->
    erlang:setelement(#allocationInstruction.maturityMonthYear, Record, Value);
setFieldInRecord(allocationInstruction, maturityDay, Record, Value)->
    erlang:setelement(#allocationInstruction.maturityDay, Record, Value);
setFieldInRecord(allocationInstruction, putOrCall, Record, Value)->
    erlang:setelement(#allocationInstruction.putOrCall, Record, Value);
setFieldInRecord(allocationInstruction, strikePrice, Record, Value)->
    erlang:setelement(#allocationInstruction.strikePrice, Record, Value);
setFieldInRecord(allocationInstruction, optAttribute, Record, Value)->
    erlang:setelement(#allocationInstruction.optAttribute, Record, Value);
setFieldInRecord(allocationInstruction, contractMultiplier, Record, Value)->
    erlang:setelement(#allocationInstruction.contractMultiplier, Record, Value);
setFieldInRecord(allocationInstruction, couponRate, Record, Value)->
    erlang:setelement(#allocationInstruction.couponRate, Record, Value);
setFieldInRecord(allocationInstruction, securityExchange, Record, Value)->
    erlang:setelement(#allocationInstruction.securityExchange, Record, Value);
setFieldInRecord(allocationInstruction, issuer, Record, Value)->
    erlang:setelement(#allocationInstruction.issuer, Record, Value);
setFieldInRecord(allocationInstruction, encodedIssuerLen, Record, Value)->
    erlang:setelement(#allocationInstruction.encodedIssuerLen, Record, Value);
setFieldInRecord(allocationInstruction, encodedIssuer, Record, Value)->
    erlang:setelement(#allocationInstruction.encodedIssuer, Record, Value);
setFieldInRecord(allocationInstruction, securityDesc, Record, Value)->
    erlang:setelement(#allocationInstruction.securityDesc, Record, Value);
setFieldInRecord(allocationInstruction, encodedSecurityDescLen, Record, Value)->
    erlang:setelement(#allocationInstruction.encodedSecurityDescLen, Record, Value);
setFieldInRecord(allocationInstruction, encodedSecurityDesc, Record, Value)->
    erlang:setelement(#allocationInstruction.encodedSecurityDesc, Record, Value);
setFieldInRecord(allocationInstruction, shares, Record, Value)->
    erlang:setelement(#allocationInstruction.shares, Record, Value);
setFieldInRecord(allocationInstruction, lastMkt, Record, Value)->
    erlang:setelement(#allocationInstruction.lastMkt, Record, Value);
setFieldInRecord(allocationInstruction, tradingSessionID, Record, Value)->
    erlang:setelement(#allocationInstruction.tradingSessionID, Record, Value);
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
setFieldInRecord(allocationInstruction, grossTradeAmt, Record, Value)->
    erlang:setelement(#allocationInstruction.grossTradeAmt, Record, Value);
setFieldInRecord(allocationInstruction, netMoney, Record, Value)->
    erlang:setelement(#allocationInstruction.netMoney, Record, Value);
setFieldInRecord(allocationInstruction, openClose, Record, Value)->
    erlang:setelement(#allocationInstruction.openClose, Record, Value);
setFieldInRecord(allocationInstruction, text, Record, Value)->
    erlang:setelement(#allocationInstruction.text, Record, Value);
setFieldInRecord(allocationInstruction, encodedTextLen, Record, Value)->
    erlang:setelement(#allocationInstruction.encodedTextLen, Record, Value);
setFieldInRecord(allocationInstruction, encodedText, Record, Value)->
    erlang:setelement(#allocationInstruction.encodedText, Record, Value);
setFieldInRecord(allocationInstruction, numDaysInterest, Record, Value)->
    erlang:setelement(#allocationInstruction.numDaysInterest, Record, Value);
setFieldInRecord(allocationInstruction, accruedInterestRate, Record, Value)->
    erlang:setelement(#allocationInstruction.accruedInterestRate, Record, Value);
setFieldInRecord(allocationInstruction, rgr_allocationInstruction_78, Record, Value)->
   erlang:setelement(#allocationInstruction.rgr_allocationInstruction_78, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, allocAccount, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.allocAccount, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, allocPrice, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.allocPrice, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, allocShares, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.allocShares, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, processCode, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.processCode, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, brokerOfCredit, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.brokerOfCredit, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, notifyBrokerOfCredit, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.notifyBrokerOfCredit, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, allocHandlInst, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.allocHandlInst, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, allocText, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.allocText, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, encodedAllocTextLen, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.encodedAllocTextLen, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, encodedAllocText, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.encodedAllocText, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, execBroker, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.execBroker, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, clientID, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.clientID, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, commission, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.commission, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, commType, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.commType, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, allocAvgPx, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.allocAvgPx, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, allocNetMoney, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.allocNetMoney, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, settlCurrAmt, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.settlCurrAmt, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, settlCurrency, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.settlCurrency, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, settlCurrFxRate, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.settlCurrFxRate, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, settlCurrFxRateCalc, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.settlCurrFxRateCalc, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, accruedInterestAmt, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.accruedInterestAmt, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, settlInstMode, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.settlInstMode, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, rgr_rgr_allocationInstruction_78_136, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.rgr_rgr_allocationInstruction_78_136, Record, Value);
setFieldInRecord(rgr_allocationInstruction_78, rgr_rgr_allocationInstruction_78_136, Record, Value)->
   erlang:setelement(#rgr_allocationInstruction_78.rgr_rgr_allocationInstruction_78_136, Record, Value);
setFieldInRecord(rgr_rgr_allocationInstruction_78_136, miscFeeAmt, Record, Value)->
   erlang:setelement(#rgr_rgr_allocationInstruction_78_136.miscFeeAmt, Record, Value);
setFieldInRecord(rgr_rgr_allocationInstruction_78_136, miscFeeCurr, Record, Value)->
   erlang:setelement(#rgr_rgr_allocationInstruction_78_136.miscFeeCurr, Record, Value);
setFieldInRecord(rgr_rgr_allocationInstruction_78_136, miscFeeType, Record, Value)->
   erlang:setelement(#rgr_rgr_allocationInstruction_78_136.miscFeeType, Record, Value);
setFieldInRecord(allocationInstruction, standardTrailer, Record, Value)->
    erlang:setelement(#allocationInstruction.standardTrailer, Record, Value);
setFieldInRecord(listCancelRequest, standardHeader, Record, Value)->
    erlang:setelement(#listCancelRequest.standardHeader, Record, Value);
setFieldInRecord(listCancelRequest, listID, Record, Value)->
    erlang:setelement(#listCancelRequest.listID, Record, Value);
setFieldInRecord(listCancelRequest, transactTime, Record, Value)->
    erlang:setelement(#listCancelRequest.transactTime, Record, Value);
setFieldInRecord(listCancelRequest, text, Record, Value)->
    erlang:setelement(#listCancelRequest.text, Record, Value);
setFieldInRecord(listCancelRequest, encodedTextLen, Record, Value)->
    erlang:setelement(#listCancelRequest.encodedTextLen, Record, Value);
setFieldInRecord(listCancelRequest, encodedText, Record, Value)->
    erlang:setelement(#listCancelRequest.encodedText, Record, Value);
setFieldInRecord(listCancelRequest, standardTrailer, Record, Value)->
    erlang:setelement(#listCancelRequest.standardTrailer, Record, Value);
setFieldInRecord(listExecute, standardHeader, Record, Value)->
    erlang:setelement(#listExecute.standardHeader, Record, Value);
setFieldInRecord(listExecute, listID, Record, Value)->
    erlang:setelement(#listExecute.listID, Record, Value);
setFieldInRecord(listExecute, clientBidID, Record, Value)->
    erlang:setelement(#listExecute.clientBidID, Record, Value);
setFieldInRecord(listExecute, bidID, Record, Value)->
    erlang:setelement(#listExecute.bidID, Record, Value);
setFieldInRecord(listExecute, transactTime, Record, Value)->
    erlang:setelement(#listExecute.transactTime, Record, Value);
setFieldInRecord(listExecute, text, Record, Value)->
    erlang:setelement(#listExecute.text, Record, Value);
setFieldInRecord(listExecute, encodedTextLen, Record, Value)->
    erlang:setelement(#listExecute.encodedTextLen, Record, Value);
setFieldInRecord(listExecute, encodedText, Record, Value)->
    erlang:setelement(#listExecute.encodedText, Record, Value);
setFieldInRecord(listExecute, standardTrailer, Record, Value)->
    erlang:setelement(#listExecute.standardTrailer, Record, Value);
setFieldInRecord(listStatusRequest, standardHeader, Record, Value)->
    erlang:setelement(#listStatusRequest.standardHeader, Record, Value);
setFieldInRecord(listStatusRequest, listID, Record, Value)->
    erlang:setelement(#listStatusRequest.listID, Record, Value);
setFieldInRecord(listStatusRequest, text, Record, Value)->
    erlang:setelement(#listStatusRequest.text, Record, Value);
setFieldInRecord(listStatusRequest, encodedTextLen, Record, Value)->
    erlang:setelement(#listStatusRequest.encodedTextLen, Record, Value);
setFieldInRecord(listStatusRequest, encodedText, Record, Value)->
    erlang:setelement(#listStatusRequest.encodedText, Record, Value);
setFieldInRecord(listStatusRequest, standardTrailer, Record, Value)->
    erlang:setelement(#listStatusRequest.standardTrailer, Record, Value);
setFieldInRecord(listStatus, standardHeader, Record, Value)->
    erlang:setelement(#listStatus.standardHeader, Record, Value);
setFieldInRecord(listStatus, listID, Record, Value)->
    erlang:setelement(#listStatus.listID, Record, Value);
setFieldInRecord(listStatus, listStatusType, Record, Value)->
    erlang:setelement(#listStatus.listStatusType, Record, Value);
setFieldInRecord(listStatus, noRpts, Record, Value)->
    erlang:setelement(#listStatus.noRpts, Record, Value);
setFieldInRecord(listStatus, listOrderStatus, Record, Value)->
    erlang:setelement(#listStatus.listOrderStatus, Record, Value);
setFieldInRecord(listStatus, rptSeq, Record, Value)->
    erlang:setelement(#listStatus.rptSeq, Record, Value);
setFieldInRecord(listStatus, listStatusText, Record, Value)->
    erlang:setelement(#listStatus.listStatusText, Record, Value);
setFieldInRecord(listStatus, encodedListStatusTextLen, Record, Value)->
    erlang:setelement(#listStatus.encodedListStatusTextLen, Record, Value);
setFieldInRecord(listStatus, encodedListStatusText, Record, Value)->
    erlang:setelement(#listStatus.encodedListStatusText, Record, Value);
setFieldInRecord(listStatus, transactTime, Record, Value)->
    erlang:setelement(#listStatus.transactTime, Record, Value);
setFieldInRecord(listStatus, totNoOrders, Record, Value)->
    erlang:setelement(#listStatus.totNoOrders, Record, Value);
setFieldInRecord(listStatus, rgr_listStatus_73, Record, Value)->
   erlang:setelement(#listStatus.rgr_listStatus_73, Record, Value);
setFieldInRecord(rgr_listStatus_73, clOrdID, Record, Value)->
   erlang:setelement(#rgr_listStatus_73.clOrdID, Record, Value);
setFieldInRecord(rgr_listStatus_73, cumQty, Record, Value)->
   erlang:setelement(#rgr_listStatus_73.cumQty, Record, Value);
setFieldInRecord(rgr_listStatus_73, ordStatus, Record, Value)->
   erlang:setelement(#rgr_listStatus_73.ordStatus, Record, Value);
setFieldInRecord(rgr_listStatus_73, leavesQty, Record, Value)->
   erlang:setelement(#rgr_listStatus_73.leavesQty, Record, Value);
setFieldInRecord(rgr_listStatus_73, cxlQty, Record, Value)->
   erlang:setelement(#rgr_listStatus_73.cxlQty, Record, Value);
setFieldInRecord(rgr_listStatus_73, avgPx, Record, Value)->
   erlang:setelement(#rgr_listStatus_73.avgPx, Record, Value);
setFieldInRecord(rgr_listStatus_73, ordRejReason, Record, Value)->
   erlang:setelement(#rgr_listStatus_73.ordRejReason, Record, Value);
setFieldInRecord(rgr_listStatus_73, text, Record, Value)->
   erlang:setelement(#rgr_listStatus_73.text, Record, Value);
setFieldInRecord(rgr_listStatus_73, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_listStatus_73.encodedTextLen, Record, Value);
setFieldInRecord(rgr_listStatus_73, encodedText, Record, Value)->
   erlang:setelement(#rgr_listStatus_73.encodedText, Record, Value);
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
setFieldInRecord(allocationInstructionAck, encodedTextLen, Record, Value)->
    erlang:setelement(#allocationInstructionAck.encodedTextLen, Record, Value);
setFieldInRecord(allocationInstructionAck, encodedText, Record, Value)->
    erlang:setelement(#allocationInstructionAck.encodedText, Record, Value);
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
setFieldInRecord(dontKnowTrade, symbolSfx, Record, Value)->
    erlang:setelement(#dontKnowTrade.symbolSfx, Record, Value);
setFieldInRecord(dontKnowTrade, securityID, Record, Value)->
    erlang:setelement(#dontKnowTrade.securityID, Record, Value);
setFieldInRecord(dontKnowTrade, iDSource, Record, Value)->
    erlang:setelement(#dontKnowTrade.iDSource, Record, Value);
setFieldInRecord(dontKnowTrade, securityType, Record, Value)->
    erlang:setelement(#dontKnowTrade.securityType, Record, Value);
setFieldInRecord(dontKnowTrade, maturityMonthYear, Record, Value)->
    erlang:setelement(#dontKnowTrade.maturityMonthYear, Record, Value);
setFieldInRecord(dontKnowTrade, maturityDay, Record, Value)->
    erlang:setelement(#dontKnowTrade.maturityDay, Record, Value);
setFieldInRecord(dontKnowTrade, putOrCall, Record, Value)->
    erlang:setelement(#dontKnowTrade.putOrCall, Record, Value);
setFieldInRecord(dontKnowTrade, strikePrice, Record, Value)->
    erlang:setelement(#dontKnowTrade.strikePrice, Record, Value);
setFieldInRecord(dontKnowTrade, optAttribute, Record, Value)->
    erlang:setelement(#dontKnowTrade.optAttribute, Record, Value);
setFieldInRecord(dontKnowTrade, contractMultiplier, Record, Value)->
    erlang:setelement(#dontKnowTrade.contractMultiplier, Record, Value);
setFieldInRecord(dontKnowTrade, couponRate, Record, Value)->
    erlang:setelement(#dontKnowTrade.couponRate, Record, Value);
setFieldInRecord(dontKnowTrade, securityExchange, Record, Value)->
    erlang:setelement(#dontKnowTrade.securityExchange, Record, Value);
setFieldInRecord(dontKnowTrade, issuer, Record, Value)->
    erlang:setelement(#dontKnowTrade.issuer, Record, Value);
setFieldInRecord(dontKnowTrade, encodedIssuerLen, Record, Value)->
    erlang:setelement(#dontKnowTrade.encodedIssuerLen, Record, Value);
setFieldInRecord(dontKnowTrade, encodedIssuer, Record, Value)->
    erlang:setelement(#dontKnowTrade.encodedIssuer, Record, Value);
setFieldInRecord(dontKnowTrade, securityDesc, Record, Value)->
    erlang:setelement(#dontKnowTrade.securityDesc, Record, Value);
setFieldInRecord(dontKnowTrade, encodedSecurityDescLen, Record, Value)->
    erlang:setelement(#dontKnowTrade.encodedSecurityDescLen, Record, Value);
setFieldInRecord(dontKnowTrade, encodedSecurityDesc, Record, Value)->
    erlang:setelement(#dontKnowTrade.encodedSecurityDesc, Record, Value);
setFieldInRecord(dontKnowTrade, side, Record, Value)->
    erlang:setelement(#dontKnowTrade.side, Record, Value);
setFieldInRecord(dontKnowTrade, orderQty, Record, Value)->
    erlang:setelement(#dontKnowTrade.orderQty, Record, Value);
setFieldInRecord(dontKnowTrade, cashOrderQty, Record, Value)->
    erlang:setelement(#dontKnowTrade.cashOrderQty, Record, Value);
setFieldInRecord(dontKnowTrade, lastShares, Record, Value)->
    erlang:setelement(#dontKnowTrade.lastShares, Record, Value);
setFieldInRecord(dontKnowTrade, lastPx, Record, Value)->
    erlang:setelement(#dontKnowTrade.lastPx, Record, Value);
setFieldInRecord(dontKnowTrade, text, Record, Value)->
    erlang:setelement(#dontKnowTrade.text, Record, Value);
setFieldInRecord(dontKnowTrade, encodedTextLen, Record, Value)->
    erlang:setelement(#dontKnowTrade.encodedTextLen, Record, Value);
setFieldInRecord(dontKnowTrade, encodedText, Record, Value)->
    erlang:setelement(#dontKnowTrade.encodedText, Record, Value);
setFieldInRecord(dontKnowTrade, standardTrailer, Record, Value)->
    erlang:setelement(#dontKnowTrade.standardTrailer, Record, Value);
setFieldInRecord(quoteRequest, standardHeader, Record, Value)->
    erlang:setelement(#quoteRequest.standardHeader, Record, Value);
setFieldInRecord(quoteRequest, quoteReqID, Record, Value)->
    erlang:setelement(#quoteRequest.quoteReqID, Record, Value);
setFieldInRecord(quoteRequest, rgr_quoteRequest_146, Record, Value)->
   erlang:setelement(#quoteRequest.rgr_quoteRequest_146, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, symbol, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.symbol, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, symbolSfx, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.symbolSfx, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, securityID, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.securityID, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, iDSource, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.iDSource, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, securityType, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.securityType, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, maturityMonthYear, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.maturityMonthYear, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, maturityDay, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.maturityDay, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, putOrCall, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.putOrCall, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, strikePrice, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.strikePrice, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, optAttribute, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.optAttribute, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, contractMultiplier, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.contractMultiplier, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, couponRate, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.couponRate, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, securityExchange, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.securityExchange, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, issuer, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.issuer, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, encodedIssuerLen, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.encodedIssuerLen, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, encodedIssuer, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.encodedIssuer, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, securityDesc, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.securityDesc, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, encodedSecurityDescLen, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.encodedSecurityDescLen, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, encodedSecurityDesc, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.encodedSecurityDesc, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, prevClosePx, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.prevClosePx, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, quoteRequestType, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.quoteRequestType, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.tradingSessionID, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, side, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.side, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, orderQty, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.orderQty, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, futSettDate, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.futSettDate, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, ordType, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.ordType, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, futSettDate2, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.futSettDate2, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, orderQty2, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.orderQty2, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, expireTime, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.expireTime, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, transactTime, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.transactTime, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, currency, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.currency, Record, Value);
setFieldInRecord(quoteRequest, standardTrailer, Record, Value)->
    erlang:setelement(#quoteRequest.standardTrailer, Record, Value);
setFieldInRecord(quote, standardHeader, Record, Value)->
    erlang:setelement(#quote.standardHeader, Record, Value);
setFieldInRecord(quote, quoteReqID, Record, Value)->
    erlang:setelement(#quote.quoteReqID, Record, Value);
setFieldInRecord(quote, quoteID, Record, Value)->
    erlang:setelement(#quote.quoteID, Record, Value);
setFieldInRecord(quote, quoteResponseLevel, Record, Value)->
    erlang:setelement(#quote.quoteResponseLevel, Record, Value);
setFieldInRecord(quote, tradingSessionID, Record, Value)->
    erlang:setelement(#quote.tradingSessionID, Record, Value);
setFieldInRecord(quote, symbol, Record, Value)->
    erlang:setelement(#quote.symbol, Record, Value);
setFieldInRecord(quote, symbolSfx, Record, Value)->
    erlang:setelement(#quote.symbolSfx, Record, Value);
setFieldInRecord(quote, securityID, Record, Value)->
    erlang:setelement(#quote.securityID, Record, Value);
setFieldInRecord(quote, iDSource, Record, Value)->
    erlang:setelement(#quote.iDSource, Record, Value);
setFieldInRecord(quote, securityType, Record, Value)->
    erlang:setelement(#quote.securityType, Record, Value);
setFieldInRecord(quote, maturityMonthYear, Record, Value)->
    erlang:setelement(#quote.maturityMonthYear, Record, Value);
setFieldInRecord(quote, maturityDay, Record, Value)->
    erlang:setelement(#quote.maturityDay, Record, Value);
setFieldInRecord(quote, putOrCall, Record, Value)->
    erlang:setelement(#quote.putOrCall, Record, Value);
setFieldInRecord(quote, strikePrice, Record, Value)->
    erlang:setelement(#quote.strikePrice, Record, Value);
setFieldInRecord(quote, optAttribute, Record, Value)->
    erlang:setelement(#quote.optAttribute, Record, Value);
setFieldInRecord(quote, contractMultiplier, Record, Value)->
    erlang:setelement(#quote.contractMultiplier, Record, Value);
setFieldInRecord(quote, couponRate, Record, Value)->
    erlang:setelement(#quote.couponRate, Record, Value);
setFieldInRecord(quote, securityExchange, Record, Value)->
    erlang:setelement(#quote.securityExchange, Record, Value);
setFieldInRecord(quote, issuer, Record, Value)->
    erlang:setelement(#quote.issuer, Record, Value);
setFieldInRecord(quote, encodedIssuerLen, Record, Value)->
    erlang:setelement(#quote.encodedIssuerLen, Record, Value);
setFieldInRecord(quote, encodedIssuer, Record, Value)->
    erlang:setelement(#quote.encodedIssuer, Record, Value);
setFieldInRecord(quote, securityDesc, Record, Value)->
    erlang:setelement(#quote.securityDesc, Record, Value);
setFieldInRecord(quote, encodedSecurityDescLen, Record, Value)->
    erlang:setelement(#quote.encodedSecurityDescLen, Record, Value);
setFieldInRecord(quote, encodedSecurityDesc, Record, Value)->
    erlang:setelement(#quote.encodedSecurityDesc, Record, Value);
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
setFieldInRecord(quote, bidSpotRate, Record, Value)->
    erlang:setelement(#quote.bidSpotRate, Record, Value);
setFieldInRecord(quote, offerSpotRate, Record, Value)->
    erlang:setelement(#quote.offerSpotRate, Record, Value);
setFieldInRecord(quote, bidForwardPoints, Record, Value)->
    erlang:setelement(#quote.bidForwardPoints, Record, Value);
setFieldInRecord(quote, offerForwardPoints, Record, Value)->
    erlang:setelement(#quote.offerForwardPoints, Record, Value);
setFieldInRecord(quote, transactTime, Record, Value)->
    erlang:setelement(#quote.transactTime, Record, Value);
setFieldInRecord(quote, futSettDate, Record, Value)->
    erlang:setelement(#quote.futSettDate, Record, Value);
setFieldInRecord(quote, ordType, Record, Value)->
    erlang:setelement(#quote.ordType, Record, Value);
setFieldInRecord(quote, futSettDate2, Record, Value)->
    erlang:setelement(#quote.futSettDate2, Record, Value);
setFieldInRecord(quote, orderQty2, Record, Value)->
    erlang:setelement(#quote.orderQty2, Record, Value);
setFieldInRecord(quote, currency, Record, Value)->
    erlang:setelement(#quote.currency, Record, Value);
setFieldInRecord(quote, standardTrailer, Record, Value)->
    erlang:setelement(#quote.standardTrailer, Record, Value);
setFieldInRecord(settlementInstructions, standardHeader, Record, Value)->
    erlang:setelement(#settlementInstructions.standardHeader, Record, Value);
setFieldInRecord(settlementInstructions, settlInstID, Record, Value)->
    erlang:setelement(#settlementInstructions.settlInstID, Record, Value);
setFieldInRecord(settlementInstructions, settlInstTransType, Record, Value)->
    erlang:setelement(#settlementInstructions.settlInstTransType, Record, Value);
setFieldInRecord(settlementInstructions, settlInstRefID, Record, Value)->
    erlang:setelement(#settlementInstructions.settlInstRefID, Record, Value);
setFieldInRecord(settlementInstructions, settlInstMode, Record, Value)->
    erlang:setelement(#settlementInstructions.settlInstMode, Record, Value);
setFieldInRecord(settlementInstructions, settlInstSource, Record, Value)->
    erlang:setelement(#settlementInstructions.settlInstSource, Record, Value);
setFieldInRecord(settlementInstructions, allocAccount, Record, Value)->
    erlang:setelement(#settlementInstructions.allocAccount, Record, Value);
setFieldInRecord(settlementInstructions, settlLocation, Record, Value)->
    erlang:setelement(#settlementInstructions.settlLocation, Record, Value);
setFieldInRecord(settlementInstructions, tradeDate, Record, Value)->
    erlang:setelement(#settlementInstructions.tradeDate, Record, Value);
setFieldInRecord(settlementInstructions, allocID, Record, Value)->
    erlang:setelement(#settlementInstructions.allocID, Record, Value);
setFieldInRecord(settlementInstructions, lastMkt, Record, Value)->
    erlang:setelement(#settlementInstructions.lastMkt, Record, Value);
setFieldInRecord(settlementInstructions, tradingSessionID, Record, Value)->
    erlang:setelement(#settlementInstructions.tradingSessionID, Record, Value);
setFieldInRecord(settlementInstructions, side, Record, Value)->
    erlang:setelement(#settlementInstructions.side, Record, Value);
setFieldInRecord(settlementInstructions, securityType, Record, Value)->
    erlang:setelement(#settlementInstructions.securityType, Record, Value);
setFieldInRecord(settlementInstructions, effectiveTime, Record, Value)->
    erlang:setelement(#settlementInstructions.effectiveTime, Record, Value);
setFieldInRecord(settlementInstructions, transactTime, Record, Value)->
    erlang:setelement(#settlementInstructions.transactTime, Record, Value);
setFieldInRecord(settlementInstructions, clientID, Record, Value)->
    erlang:setelement(#settlementInstructions.clientID, Record, Value);
setFieldInRecord(settlementInstructions, execBroker, Record, Value)->
    erlang:setelement(#settlementInstructions.execBroker, Record, Value);
setFieldInRecord(settlementInstructions, standInstDbType, Record, Value)->
    erlang:setelement(#settlementInstructions.standInstDbType, Record, Value);
setFieldInRecord(settlementInstructions, standInstDbName, Record, Value)->
    erlang:setelement(#settlementInstructions.standInstDbName, Record, Value);
setFieldInRecord(settlementInstructions, standInstDbID, Record, Value)->
    erlang:setelement(#settlementInstructions.standInstDbID, Record, Value);
setFieldInRecord(settlementInstructions, settlDeliveryType, Record, Value)->
    erlang:setelement(#settlementInstructions.settlDeliveryType, Record, Value);
setFieldInRecord(settlementInstructions, settlDepositoryCode, Record, Value)->
    erlang:setelement(#settlementInstructions.settlDepositoryCode, Record, Value);
setFieldInRecord(settlementInstructions, settlBrkrCode, Record, Value)->
    erlang:setelement(#settlementInstructions.settlBrkrCode, Record, Value);
setFieldInRecord(settlementInstructions, settlInstCode, Record, Value)->
    erlang:setelement(#settlementInstructions.settlInstCode, Record, Value);
setFieldInRecord(settlementInstructions, securitySettlAgentName, Record, Value)->
    erlang:setelement(#settlementInstructions.securitySettlAgentName, Record, Value);
setFieldInRecord(settlementInstructions, securitySettlAgentCode, Record, Value)->
    erlang:setelement(#settlementInstructions.securitySettlAgentCode, Record, Value);
setFieldInRecord(settlementInstructions, securitySettlAgentAcctNum, Record, Value)->
    erlang:setelement(#settlementInstructions.securitySettlAgentAcctNum, Record, Value);
setFieldInRecord(settlementInstructions, securitySettlAgentAcctName, Record, Value)->
    erlang:setelement(#settlementInstructions.securitySettlAgentAcctName, Record, Value);
setFieldInRecord(settlementInstructions, securitySettlAgentContactName, Record, Value)->
    erlang:setelement(#settlementInstructions.securitySettlAgentContactName, Record, Value);
setFieldInRecord(settlementInstructions, securitySettlAgentContactPhone, Record, Value)->
    erlang:setelement(#settlementInstructions.securitySettlAgentContactPhone, Record, Value);
setFieldInRecord(settlementInstructions, cashSettlAgentName, Record, Value)->
    erlang:setelement(#settlementInstructions.cashSettlAgentName, Record, Value);
setFieldInRecord(settlementInstructions, cashSettlAgentCode, Record, Value)->
    erlang:setelement(#settlementInstructions.cashSettlAgentCode, Record, Value);
setFieldInRecord(settlementInstructions, cashSettlAgentAcctNum, Record, Value)->
    erlang:setelement(#settlementInstructions.cashSettlAgentAcctNum, Record, Value);
setFieldInRecord(settlementInstructions, cashSettlAgentAcctName, Record, Value)->
    erlang:setelement(#settlementInstructions.cashSettlAgentAcctName, Record, Value);
setFieldInRecord(settlementInstructions, cashSettlAgentContactName, Record, Value)->
    erlang:setelement(#settlementInstructions.cashSettlAgentContactName, Record, Value);
setFieldInRecord(settlementInstructions, cashSettlAgentContactPhone, Record, Value)->
    erlang:setelement(#settlementInstructions.cashSettlAgentContactPhone, Record, Value);
setFieldInRecord(settlementInstructions, standardTrailer, Record, Value)->
    erlang:setelement(#settlementInstructions.standardTrailer, Record, Value);
setFieldInRecord(marketDataRequest, standardHeader, Record, Value)->
    erlang:setelement(#marketDataRequest.standardHeader, Record, Value);
setFieldInRecord(marketDataRequest, mDReqID, Record, Value)->
    erlang:setelement(#marketDataRequest.mDReqID, Record, Value);
setFieldInRecord(marketDataRequest, subscriptionRequestType, Record, Value)->
    erlang:setelement(#marketDataRequest.subscriptionRequestType, Record, Value);
setFieldInRecord(marketDataRequest, marketDepth, Record, Value)->
    erlang:setelement(#marketDataRequest.marketDepth, Record, Value);
setFieldInRecord(marketDataRequest, mDUpdateType, Record, Value)->
    erlang:setelement(#marketDataRequest.mDUpdateType, Record, Value);
setFieldInRecord(marketDataRequest, aggregatedBook, Record, Value)->
    erlang:setelement(#marketDataRequest.aggregatedBook, Record, Value);
setFieldInRecord(marketDataRequest, rgr_marketDataRequest_267, Record, Value)->
   erlang:setelement(#marketDataRequest.rgr_marketDataRequest_267, Record, Value);
setFieldInRecord(rgr_marketDataRequest_267, mDEntryType, Record, Value)->
   erlang:setelement(#rgr_marketDataRequest_267.mDEntryType, Record, Value);
setFieldInRecord(marketDataRequest, rgr_marketDataRequest_146, Record, Value)->
   erlang:setelement(#marketDataRequest.rgr_marketDataRequest_146, Record, Value);
setFieldInRecord(rgr_marketDataRequest_146, symbol, Record, Value)->
   erlang:setelement(#rgr_marketDataRequest_146.symbol, Record, Value);
setFieldInRecord(rgr_marketDataRequest_146, symbolSfx, Record, Value)->
   erlang:setelement(#rgr_marketDataRequest_146.symbolSfx, Record, Value);
setFieldInRecord(rgr_marketDataRequest_146, securityID, Record, Value)->
   erlang:setelement(#rgr_marketDataRequest_146.securityID, Record, Value);
setFieldInRecord(rgr_marketDataRequest_146, iDSource, Record, Value)->
   erlang:setelement(#rgr_marketDataRequest_146.iDSource, Record, Value);
setFieldInRecord(rgr_marketDataRequest_146, securityType, Record, Value)->
   erlang:setelement(#rgr_marketDataRequest_146.securityType, Record, Value);
setFieldInRecord(rgr_marketDataRequest_146, maturityMonthYear, Record, Value)->
   erlang:setelement(#rgr_marketDataRequest_146.maturityMonthYear, Record, Value);
setFieldInRecord(rgr_marketDataRequest_146, maturityDay, Record, Value)->
   erlang:setelement(#rgr_marketDataRequest_146.maturityDay, Record, Value);
setFieldInRecord(rgr_marketDataRequest_146, putOrCall, Record, Value)->
   erlang:setelement(#rgr_marketDataRequest_146.putOrCall, Record, Value);
setFieldInRecord(rgr_marketDataRequest_146, strikePrice, Record, Value)->
   erlang:setelement(#rgr_marketDataRequest_146.strikePrice, Record, Value);
setFieldInRecord(rgr_marketDataRequest_146, optAttribute, Record, Value)->
   erlang:setelement(#rgr_marketDataRequest_146.optAttribute, Record, Value);
setFieldInRecord(rgr_marketDataRequest_146, contractMultiplier, Record, Value)->
   erlang:setelement(#rgr_marketDataRequest_146.contractMultiplier, Record, Value);
setFieldInRecord(rgr_marketDataRequest_146, couponRate, Record, Value)->
   erlang:setelement(#rgr_marketDataRequest_146.couponRate, Record, Value);
setFieldInRecord(rgr_marketDataRequest_146, securityExchange, Record, Value)->
   erlang:setelement(#rgr_marketDataRequest_146.securityExchange, Record, Value);
setFieldInRecord(rgr_marketDataRequest_146, issuer, Record, Value)->
   erlang:setelement(#rgr_marketDataRequest_146.issuer, Record, Value);
setFieldInRecord(rgr_marketDataRequest_146, encodedIssuerLen, Record, Value)->
   erlang:setelement(#rgr_marketDataRequest_146.encodedIssuerLen, Record, Value);
setFieldInRecord(rgr_marketDataRequest_146, encodedIssuer, Record, Value)->
   erlang:setelement(#rgr_marketDataRequest_146.encodedIssuer, Record, Value);
setFieldInRecord(rgr_marketDataRequest_146, securityDesc, Record, Value)->
   erlang:setelement(#rgr_marketDataRequest_146.securityDesc, Record, Value);
setFieldInRecord(rgr_marketDataRequest_146, encodedSecurityDescLen, Record, Value)->
   erlang:setelement(#rgr_marketDataRequest_146.encodedSecurityDescLen, Record, Value);
setFieldInRecord(rgr_marketDataRequest_146, encodedSecurityDesc, Record, Value)->
   erlang:setelement(#rgr_marketDataRequest_146.encodedSecurityDesc, Record, Value);
setFieldInRecord(rgr_marketDataRequest_146, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_marketDataRequest_146.tradingSessionID, Record, Value);
setFieldInRecord(marketDataRequest, standardTrailer, Record, Value)->
    erlang:setelement(#marketDataRequest.standardTrailer, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, standardHeader, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.standardHeader, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, mDReqID, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.mDReqID, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, symbol, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.symbol, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, symbolSfx, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.symbolSfx, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, securityID, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.securityID, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, iDSource, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.iDSource, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, securityType, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.securityType, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, maturityMonthYear, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.maturityMonthYear, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, maturityDay, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.maturityDay, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, putOrCall, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.putOrCall, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, strikePrice, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.strikePrice, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, optAttribute, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.optAttribute, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, contractMultiplier, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.contractMultiplier, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, couponRate, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.couponRate, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, securityExchange, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.securityExchange, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, issuer, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.issuer, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, encodedIssuerLen, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.encodedIssuerLen, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, encodedIssuer, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.encodedIssuer, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, securityDesc, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.securityDesc, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, encodedSecurityDescLen, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.encodedSecurityDescLen, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, encodedSecurityDesc, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.encodedSecurityDesc, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, financialStatus, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.financialStatus, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, corporateAction, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.corporateAction, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, totalVolumeTraded, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.totalVolumeTraded, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, rgr_marketDataSnapshotFullRefresh_268, Record, Value)->
   erlang:setelement(#marketDataSnapshotFullRefresh.rgr_marketDataSnapshotFullRefresh_268, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, mDEntryType, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.mDEntryType, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, mDEntryPx, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.mDEntryPx, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, currency, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.currency, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, mDEntrySize, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.mDEntrySize, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, mDEntryDate, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.mDEntryDate, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, mDEntryTime, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.mDEntryTime, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, tickDirection, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.tickDirection, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, mDMkt, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.mDMkt, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.tradingSessionID, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, quoteCondition, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.quoteCondition, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, tradeCondition, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.tradeCondition, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, mDEntryOriginator, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.mDEntryOriginator, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, locationID, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.locationID, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, deskID, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.deskID, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, openCloseSettleFlag, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.openCloseSettleFlag, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, timeInForce, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.timeInForce, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, expireDate, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.expireDate, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, expireTime, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.expireTime, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, minQty, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.minQty, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, execInst, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.execInst, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, sellerDays, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.sellerDays, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, orderID, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.orderID, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, quoteEntryID, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.quoteEntryID, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, mDEntryBuyer, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.mDEntryBuyer, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, mDEntrySeller, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.mDEntrySeller, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, numberOfOrders, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.numberOfOrders, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, mDEntryPositionNo, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.mDEntryPositionNo, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, text, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.text, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.encodedTextLen, Record, Value);
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, encodedText, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.encodedText, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, standardTrailer, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.standardTrailer, Record, Value);
setFieldInRecord(marketDataIncrementalRefresh, standardHeader, Record, Value)->
    erlang:setelement(#marketDataIncrementalRefresh.standardHeader, Record, Value);
setFieldInRecord(marketDataIncrementalRefresh, mDReqID, Record, Value)->
    erlang:setelement(#marketDataIncrementalRefresh.mDReqID, Record, Value);
setFieldInRecord(marketDataIncrementalRefresh, rgr_marketDataIncrementalRefresh_268, Record, Value)->
   erlang:setelement(#marketDataIncrementalRefresh.rgr_marketDataIncrementalRefresh_268, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, mDUpdateAction, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.mDUpdateAction, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, deleteReason, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.deleteReason, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, mDEntryType, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.mDEntryType, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, mDEntryID, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.mDEntryID, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, mDEntryRefID, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.mDEntryRefID, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, symbol, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.symbol, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, symbolSfx, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.symbolSfx, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, securityID, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.securityID, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, iDSource, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.iDSource, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, securityType, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.securityType, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, maturityMonthYear, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.maturityMonthYear, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, maturityDay, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.maturityDay, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, putOrCall, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.putOrCall, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, strikePrice, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.strikePrice, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, optAttribute, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.optAttribute, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, contractMultiplier, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.contractMultiplier, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, couponRate, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.couponRate, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, securityExchange, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.securityExchange, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, issuer, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.issuer, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, encodedIssuerLen, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.encodedIssuerLen, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, encodedIssuer, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.encodedIssuer, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, securityDesc, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.securityDesc, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, encodedSecurityDescLen, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.encodedSecurityDescLen, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, encodedSecurityDesc, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.encodedSecurityDesc, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, financialStatus, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.financialStatus, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, corporateAction, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.corporateAction, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, mDEntryPx, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.mDEntryPx, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, currency, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.currency, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, mDEntrySize, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.mDEntrySize, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, mDEntryDate, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.mDEntryDate, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, mDEntryTime, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.mDEntryTime, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, tickDirection, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.tickDirection, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, mDMkt, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.mDMkt, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.tradingSessionID, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, quoteCondition, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.quoteCondition, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, tradeCondition, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.tradeCondition, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, mDEntryOriginator, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.mDEntryOriginator, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, locationID, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.locationID, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, deskID, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.deskID, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, openCloseSettleFlag, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.openCloseSettleFlag, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, timeInForce, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.timeInForce, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, expireDate, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.expireDate, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, expireTime, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.expireTime, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, minQty, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.minQty, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, execInst, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.execInst, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, sellerDays, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.sellerDays, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, orderID, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.orderID, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, quoteEntryID, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.quoteEntryID, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, mDEntryBuyer, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.mDEntryBuyer, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, mDEntrySeller, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.mDEntrySeller, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, numberOfOrders, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.numberOfOrders, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, mDEntryPositionNo, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.mDEntryPositionNo, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, totalVolumeTraded, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.totalVolumeTraded, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, text, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.text, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.encodedTextLen, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, encodedText, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.encodedText, Record, Value);
setFieldInRecord(marketDataIncrementalRefresh, standardTrailer, Record, Value)->
    erlang:setelement(#marketDataIncrementalRefresh.standardTrailer, Record, Value);
setFieldInRecord(marketDataRequestReject, standardHeader, Record, Value)->
    erlang:setelement(#marketDataRequestReject.standardHeader, Record, Value);
setFieldInRecord(marketDataRequestReject, mDReqID, Record, Value)->
    erlang:setelement(#marketDataRequestReject.mDReqID, Record, Value);
setFieldInRecord(marketDataRequestReject, mDReqRejReason, Record, Value)->
    erlang:setelement(#marketDataRequestReject.mDReqRejReason, Record, Value);
setFieldInRecord(marketDataRequestReject, text, Record, Value)->
    erlang:setelement(#marketDataRequestReject.text, Record, Value);
setFieldInRecord(marketDataRequestReject, encodedTextLen, Record, Value)->
    erlang:setelement(#marketDataRequestReject.encodedTextLen, Record, Value);
setFieldInRecord(marketDataRequestReject, encodedText, Record, Value)->
    erlang:setelement(#marketDataRequestReject.encodedText, Record, Value);
setFieldInRecord(marketDataRequestReject, standardTrailer, Record, Value)->
    erlang:setelement(#marketDataRequestReject.standardTrailer, Record, Value);
setFieldInRecord(quoteCancel, standardHeader, Record, Value)->
    erlang:setelement(#quoteCancel.standardHeader, Record, Value);
setFieldInRecord(quoteCancel, quoteReqID, Record, Value)->
    erlang:setelement(#quoteCancel.quoteReqID, Record, Value);
setFieldInRecord(quoteCancel, quoteID, Record, Value)->
    erlang:setelement(#quoteCancel.quoteID, Record, Value);
setFieldInRecord(quoteCancel, quoteCancelType, Record, Value)->
    erlang:setelement(#quoteCancel.quoteCancelType, Record, Value);
setFieldInRecord(quoteCancel, quoteResponseLevel, Record, Value)->
    erlang:setelement(#quoteCancel.quoteResponseLevel, Record, Value);
setFieldInRecord(quoteCancel, tradingSessionID, Record, Value)->
    erlang:setelement(#quoteCancel.tradingSessionID, Record, Value);
setFieldInRecord(quoteCancel, rgr_quoteCancel_295, Record, Value)->
   erlang:setelement(#quoteCancel.rgr_quoteCancel_295, Record, Value);
setFieldInRecord(rgr_quoteCancel_295, symbol, Record, Value)->
   erlang:setelement(#rgr_quoteCancel_295.symbol, Record, Value);
setFieldInRecord(rgr_quoteCancel_295, symbolSfx, Record, Value)->
   erlang:setelement(#rgr_quoteCancel_295.symbolSfx, Record, Value);
setFieldInRecord(rgr_quoteCancel_295, securityID, Record, Value)->
   erlang:setelement(#rgr_quoteCancel_295.securityID, Record, Value);
setFieldInRecord(rgr_quoteCancel_295, iDSource, Record, Value)->
   erlang:setelement(#rgr_quoteCancel_295.iDSource, Record, Value);
setFieldInRecord(rgr_quoteCancel_295, securityType, Record, Value)->
   erlang:setelement(#rgr_quoteCancel_295.securityType, Record, Value);
setFieldInRecord(rgr_quoteCancel_295, maturityMonthYear, Record, Value)->
   erlang:setelement(#rgr_quoteCancel_295.maturityMonthYear, Record, Value);
setFieldInRecord(rgr_quoteCancel_295, maturityDay, Record, Value)->
   erlang:setelement(#rgr_quoteCancel_295.maturityDay, Record, Value);
setFieldInRecord(rgr_quoteCancel_295, putOrCall, Record, Value)->
   erlang:setelement(#rgr_quoteCancel_295.putOrCall, Record, Value);
setFieldInRecord(rgr_quoteCancel_295, strikePrice, Record, Value)->
   erlang:setelement(#rgr_quoteCancel_295.strikePrice, Record, Value);
setFieldInRecord(rgr_quoteCancel_295, optAttribute, Record, Value)->
   erlang:setelement(#rgr_quoteCancel_295.optAttribute, Record, Value);
setFieldInRecord(rgr_quoteCancel_295, contractMultiplier, Record, Value)->
   erlang:setelement(#rgr_quoteCancel_295.contractMultiplier, Record, Value);
setFieldInRecord(rgr_quoteCancel_295, couponRate, Record, Value)->
   erlang:setelement(#rgr_quoteCancel_295.couponRate, Record, Value);
setFieldInRecord(rgr_quoteCancel_295, securityExchange, Record, Value)->
   erlang:setelement(#rgr_quoteCancel_295.securityExchange, Record, Value);
setFieldInRecord(rgr_quoteCancel_295, issuer, Record, Value)->
   erlang:setelement(#rgr_quoteCancel_295.issuer, Record, Value);
setFieldInRecord(rgr_quoteCancel_295, encodedIssuerLen, Record, Value)->
   erlang:setelement(#rgr_quoteCancel_295.encodedIssuerLen, Record, Value);
setFieldInRecord(rgr_quoteCancel_295, encodedIssuer, Record, Value)->
   erlang:setelement(#rgr_quoteCancel_295.encodedIssuer, Record, Value);
setFieldInRecord(rgr_quoteCancel_295, securityDesc, Record, Value)->
   erlang:setelement(#rgr_quoteCancel_295.securityDesc, Record, Value);
setFieldInRecord(rgr_quoteCancel_295, encodedSecurityDescLen, Record, Value)->
   erlang:setelement(#rgr_quoteCancel_295.encodedSecurityDescLen, Record, Value);
setFieldInRecord(rgr_quoteCancel_295, encodedSecurityDesc, Record, Value)->
   erlang:setelement(#rgr_quoteCancel_295.encodedSecurityDesc, Record, Value);
setFieldInRecord(rgr_quoteCancel_295, underlyingSymbol, Record, Value)->
   erlang:setelement(#rgr_quoteCancel_295.underlyingSymbol, Record, Value);
setFieldInRecord(quoteCancel, standardTrailer, Record, Value)->
    erlang:setelement(#quoteCancel.standardTrailer, Record, Value);
setFieldInRecord(quoteStatusRequest, standardHeader, Record, Value)->
    erlang:setelement(#quoteStatusRequest.standardHeader, Record, Value);
setFieldInRecord(quoteStatusRequest, quoteID, Record, Value)->
    erlang:setelement(#quoteStatusRequest.quoteID, Record, Value);
setFieldInRecord(quoteStatusRequest, symbol, Record, Value)->
    erlang:setelement(#quoteStatusRequest.symbol, Record, Value);
setFieldInRecord(quoteStatusRequest, symbolSfx, Record, Value)->
    erlang:setelement(#quoteStatusRequest.symbolSfx, Record, Value);
setFieldInRecord(quoteStatusRequest, securityID, Record, Value)->
    erlang:setelement(#quoteStatusRequest.securityID, Record, Value);
setFieldInRecord(quoteStatusRequest, iDSource, Record, Value)->
    erlang:setelement(#quoteStatusRequest.iDSource, Record, Value);
setFieldInRecord(quoteStatusRequest, securityType, Record, Value)->
    erlang:setelement(#quoteStatusRequest.securityType, Record, Value);
setFieldInRecord(quoteStatusRequest, maturityMonthYear, Record, Value)->
    erlang:setelement(#quoteStatusRequest.maturityMonthYear, Record, Value);
setFieldInRecord(quoteStatusRequest, maturityDay, Record, Value)->
    erlang:setelement(#quoteStatusRequest.maturityDay, Record, Value);
setFieldInRecord(quoteStatusRequest, putOrCall, Record, Value)->
    erlang:setelement(#quoteStatusRequest.putOrCall, Record, Value);
setFieldInRecord(quoteStatusRequest, strikePrice, Record, Value)->
    erlang:setelement(#quoteStatusRequest.strikePrice, Record, Value);
setFieldInRecord(quoteStatusRequest, optAttribute, Record, Value)->
    erlang:setelement(#quoteStatusRequest.optAttribute, Record, Value);
setFieldInRecord(quoteStatusRequest, contractMultiplier, Record, Value)->
    erlang:setelement(#quoteStatusRequest.contractMultiplier, Record, Value);
setFieldInRecord(quoteStatusRequest, couponRate, Record, Value)->
    erlang:setelement(#quoteStatusRequest.couponRate, Record, Value);
setFieldInRecord(quoteStatusRequest, securityExchange, Record, Value)->
    erlang:setelement(#quoteStatusRequest.securityExchange, Record, Value);
setFieldInRecord(quoteStatusRequest, issuer, Record, Value)->
    erlang:setelement(#quoteStatusRequest.issuer, Record, Value);
setFieldInRecord(quoteStatusRequest, encodedIssuerLen, Record, Value)->
    erlang:setelement(#quoteStatusRequest.encodedIssuerLen, Record, Value);
setFieldInRecord(quoteStatusRequest, encodedIssuer, Record, Value)->
    erlang:setelement(#quoteStatusRequest.encodedIssuer, Record, Value);
setFieldInRecord(quoteStatusRequest, securityDesc, Record, Value)->
    erlang:setelement(#quoteStatusRequest.securityDesc, Record, Value);
setFieldInRecord(quoteStatusRequest, encodedSecurityDescLen, Record, Value)->
    erlang:setelement(#quoteStatusRequest.encodedSecurityDescLen, Record, Value);
setFieldInRecord(quoteStatusRequest, encodedSecurityDesc, Record, Value)->
    erlang:setelement(#quoteStatusRequest.encodedSecurityDesc, Record, Value);
setFieldInRecord(quoteStatusRequest, side, Record, Value)->
    erlang:setelement(#quoteStatusRequest.side, Record, Value);
setFieldInRecord(quoteStatusRequest, tradingSessionID, Record, Value)->
    erlang:setelement(#quoteStatusRequest.tradingSessionID, Record, Value);
setFieldInRecord(quoteStatusRequest, standardTrailer, Record, Value)->
    erlang:setelement(#quoteStatusRequest.standardTrailer, Record, Value);
setFieldInRecord(quoteAcknowledgement, standardHeader, Record, Value)->
    erlang:setelement(#quoteAcknowledgement.standardHeader, Record, Value);
setFieldInRecord(quoteAcknowledgement, quoteReqID, Record, Value)->
    erlang:setelement(#quoteAcknowledgement.quoteReqID, Record, Value);
setFieldInRecord(quoteAcknowledgement, quoteID, Record, Value)->
    erlang:setelement(#quoteAcknowledgement.quoteID, Record, Value);
setFieldInRecord(quoteAcknowledgement, quoteAckStatus, Record, Value)->
    erlang:setelement(#quoteAcknowledgement.quoteAckStatus, Record, Value);
setFieldInRecord(quoteAcknowledgement, quoteRejectReason, Record, Value)->
    erlang:setelement(#quoteAcknowledgement.quoteRejectReason, Record, Value);
setFieldInRecord(quoteAcknowledgement, quoteResponseLevel, Record, Value)->
    erlang:setelement(#quoteAcknowledgement.quoteResponseLevel, Record, Value);
setFieldInRecord(quoteAcknowledgement, tradingSessionID, Record, Value)->
    erlang:setelement(#quoteAcknowledgement.tradingSessionID, Record, Value);
setFieldInRecord(quoteAcknowledgement, text, Record, Value)->
    erlang:setelement(#quoteAcknowledgement.text, Record, Value);
setFieldInRecord(quoteAcknowledgement, rgr_quoteAcknowledgement_296, Record, Value)->
   erlang:setelement(#quoteAcknowledgement.rgr_quoteAcknowledgement_296, Record, Value);
setFieldInRecord(rgr_quoteAcknowledgement_296, quoteSetID, Record, Value)->
   erlang:setelement(#rgr_quoteAcknowledgement_296.quoteSetID, Record, Value);
setFieldInRecord(rgr_quoteAcknowledgement_296, underlyingSymbol, Record, Value)->
   erlang:setelement(#rgr_quoteAcknowledgement_296.underlyingSymbol, Record, Value);
setFieldInRecord(rgr_quoteAcknowledgement_296, underlyingSymbolSfx, Record, Value)->
   erlang:setelement(#rgr_quoteAcknowledgement_296.underlyingSymbolSfx, Record, Value);
setFieldInRecord(rgr_quoteAcknowledgement_296, underlyingSecurityID, Record, Value)->
   erlang:setelement(#rgr_quoteAcknowledgement_296.underlyingSecurityID, Record, Value);
setFieldInRecord(rgr_quoteAcknowledgement_296, underlyingIDSource, Record, Value)->
   erlang:setelement(#rgr_quoteAcknowledgement_296.underlyingIDSource, Record, Value);
setFieldInRecord(rgr_quoteAcknowledgement_296, underlyingSecurityType, Record, Value)->
   erlang:setelement(#rgr_quoteAcknowledgement_296.underlyingSecurityType, Record, Value);
setFieldInRecord(rgr_quoteAcknowledgement_296, underlyingMaturityMonthYear, Record, Value)->
   erlang:setelement(#rgr_quoteAcknowledgement_296.underlyingMaturityMonthYear, Record, Value);
setFieldInRecord(rgr_quoteAcknowledgement_296, underlyingMaturityDay, Record, Value)->
   erlang:setelement(#rgr_quoteAcknowledgement_296.underlyingMaturityDay, Record, Value);
setFieldInRecord(rgr_quoteAcknowledgement_296, underlyingPutOrCall, Record, Value)->
   erlang:setelement(#rgr_quoteAcknowledgement_296.underlyingPutOrCall, Record, Value);
setFieldInRecord(rgr_quoteAcknowledgement_296, underlyingStrikePrice, Record, Value)->
   erlang:setelement(#rgr_quoteAcknowledgement_296.underlyingStrikePrice, Record, Value);
setFieldInRecord(rgr_quoteAcknowledgement_296, underlyingOptAttribute, Record, Value)->
   erlang:setelement(#rgr_quoteAcknowledgement_296.underlyingOptAttribute, Record, Value);
setFieldInRecord(rgr_quoteAcknowledgement_296, underlyingContractMultiplier, Record, Value)->
   erlang:setelement(#rgr_quoteAcknowledgement_296.underlyingContractMultiplier, Record, Value);
setFieldInRecord(rgr_quoteAcknowledgement_296, underlyingCouponRate, Record, Value)->
   erlang:setelement(#rgr_quoteAcknowledgement_296.underlyingCouponRate, Record, Value);
setFieldInRecord(rgr_quoteAcknowledgement_296, underlyingSecurityExchange, Record, Value)->
   erlang:setelement(#rgr_quoteAcknowledgement_296.underlyingSecurityExchange, Record, Value);
setFieldInRecord(rgr_quoteAcknowledgement_296, underlyingIssuer, Record, Value)->
   erlang:setelement(#rgr_quoteAcknowledgement_296.underlyingIssuer, Record, Value);
setFieldInRecord(rgr_quoteAcknowledgement_296, encodedUnderlyingIssuerLen, Record, Value)->
   erlang:setelement(#rgr_quoteAcknowledgement_296.encodedUnderlyingIssuerLen, Record, Value);
setFieldInRecord(rgr_quoteAcknowledgement_296, encodedUnderlyingIssuer, Record, Value)->
   erlang:setelement(#rgr_quoteAcknowledgement_296.encodedUnderlyingIssuer, Record, Value);
setFieldInRecord(rgr_quoteAcknowledgement_296, underlyingSecurityDesc, Record, Value)->
   erlang:setelement(#rgr_quoteAcknowledgement_296.underlyingSecurityDesc, Record, Value);
setFieldInRecord(rgr_quoteAcknowledgement_296, encodedUnderlyingSecurityDescLen, Record, Value)->
   erlang:setelement(#rgr_quoteAcknowledgement_296.encodedUnderlyingSecurityDescLen, Record, Value);
setFieldInRecord(rgr_quoteAcknowledgement_296, encodedUnderlyingSecurityDesc, Record, Value)->
   erlang:setelement(#rgr_quoteAcknowledgement_296.encodedUnderlyingSecurityDesc, Record, Value);
setFieldInRecord(rgr_quoteAcknowledgement_296, totQuoteEntries, Record, Value)->
   erlang:setelement(#rgr_quoteAcknowledgement_296.totQuoteEntries, Record, Value);
setFieldInRecord(rgr_quoteAcknowledgement_296, rgr_rgr_quoteAcknowledgement_296_295, Record, Value)->
   erlang:setelement(#rgr_quoteAcknowledgement_296.rgr_rgr_quoteAcknowledgement_296_295, Record, Value);
setFieldInRecord(rgr_quoteAcknowledgement_296, rgr_rgr_quoteAcknowledgement_296_295, Record, Value)->
   erlang:setelement(#rgr_quoteAcknowledgement_296.rgr_rgr_quoteAcknowledgement_296_295, Record, Value);
setFieldInRecord(rgr_rgr_quoteAcknowledgement_296_295, quoteEntryID, Record, Value)->
   erlang:setelement(#rgr_rgr_quoteAcknowledgement_296_295.quoteEntryID, Record, Value);
setFieldInRecord(rgr_rgr_quoteAcknowledgement_296_295, symbol, Record, Value)->
   erlang:setelement(#rgr_rgr_quoteAcknowledgement_296_295.symbol, Record, Value);
setFieldInRecord(rgr_rgr_quoteAcknowledgement_296_295, symbolSfx, Record, Value)->
   erlang:setelement(#rgr_rgr_quoteAcknowledgement_296_295.symbolSfx, Record, Value);
setFieldInRecord(rgr_rgr_quoteAcknowledgement_296_295, securityID, Record, Value)->
   erlang:setelement(#rgr_rgr_quoteAcknowledgement_296_295.securityID, Record, Value);
setFieldInRecord(rgr_rgr_quoteAcknowledgement_296_295, iDSource, Record, Value)->
   erlang:setelement(#rgr_rgr_quoteAcknowledgement_296_295.iDSource, Record, Value);
setFieldInRecord(rgr_rgr_quoteAcknowledgement_296_295, securityType, Record, Value)->
   erlang:setelement(#rgr_rgr_quoteAcknowledgement_296_295.securityType, Record, Value);
setFieldInRecord(rgr_rgr_quoteAcknowledgement_296_295, maturityMonthYear, Record, Value)->
   erlang:setelement(#rgr_rgr_quoteAcknowledgement_296_295.maturityMonthYear, Record, Value);
setFieldInRecord(rgr_rgr_quoteAcknowledgement_296_295, maturityDay, Record, Value)->
   erlang:setelement(#rgr_rgr_quoteAcknowledgement_296_295.maturityDay, Record, Value);
setFieldInRecord(rgr_rgr_quoteAcknowledgement_296_295, putOrCall, Record, Value)->
   erlang:setelement(#rgr_rgr_quoteAcknowledgement_296_295.putOrCall, Record, Value);
setFieldInRecord(rgr_rgr_quoteAcknowledgement_296_295, strikePrice, Record, Value)->
   erlang:setelement(#rgr_rgr_quoteAcknowledgement_296_295.strikePrice, Record, Value);
setFieldInRecord(rgr_rgr_quoteAcknowledgement_296_295, optAttribute, Record, Value)->
   erlang:setelement(#rgr_rgr_quoteAcknowledgement_296_295.optAttribute, Record, Value);
setFieldInRecord(rgr_rgr_quoteAcknowledgement_296_295, contractMultiplier, Record, Value)->
   erlang:setelement(#rgr_rgr_quoteAcknowledgement_296_295.contractMultiplier, Record, Value);
setFieldInRecord(rgr_rgr_quoteAcknowledgement_296_295, couponRate, Record, Value)->
   erlang:setelement(#rgr_rgr_quoteAcknowledgement_296_295.couponRate, Record, Value);
setFieldInRecord(rgr_rgr_quoteAcknowledgement_296_295, securityExchange, Record, Value)->
   erlang:setelement(#rgr_rgr_quoteAcknowledgement_296_295.securityExchange, Record, Value);
setFieldInRecord(rgr_rgr_quoteAcknowledgement_296_295, issuer, Record, Value)->
   erlang:setelement(#rgr_rgr_quoteAcknowledgement_296_295.issuer, Record, Value);
setFieldInRecord(rgr_rgr_quoteAcknowledgement_296_295, encodedIssuerLen, Record, Value)->
   erlang:setelement(#rgr_rgr_quoteAcknowledgement_296_295.encodedIssuerLen, Record, Value);
setFieldInRecord(rgr_rgr_quoteAcknowledgement_296_295, encodedIssuer, Record, Value)->
   erlang:setelement(#rgr_rgr_quoteAcknowledgement_296_295.encodedIssuer, Record, Value);
setFieldInRecord(rgr_rgr_quoteAcknowledgement_296_295, securityDesc, Record, Value)->
   erlang:setelement(#rgr_rgr_quoteAcknowledgement_296_295.securityDesc, Record, Value);
setFieldInRecord(rgr_rgr_quoteAcknowledgement_296_295, encodedSecurityDescLen, Record, Value)->
   erlang:setelement(#rgr_rgr_quoteAcknowledgement_296_295.encodedSecurityDescLen, Record, Value);
setFieldInRecord(rgr_rgr_quoteAcknowledgement_296_295, encodedSecurityDesc, Record, Value)->
   erlang:setelement(#rgr_rgr_quoteAcknowledgement_296_295.encodedSecurityDesc, Record, Value);
setFieldInRecord(rgr_rgr_quoteAcknowledgement_296_295, quoteEntryRejectReason, Record, Value)->
   erlang:setelement(#rgr_rgr_quoteAcknowledgement_296_295.quoteEntryRejectReason, Record, Value);
setFieldInRecord(quoteAcknowledgement, standardTrailer, Record, Value)->
    erlang:setelement(#quoteAcknowledgement.standardTrailer, Record, Value);
setFieldInRecord(securityDefinitionRequest, standardHeader, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.standardHeader, Record, Value);
setFieldInRecord(securityDefinitionRequest, securityReqID, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.securityReqID, Record, Value);
setFieldInRecord(securityDefinitionRequest, securityRequestType, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.securityRequestType, Record, Value);
setFieldInRecord(securityDefinitionRequest, symbol, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.symbol, Record, Value);
setFieldInRecord(securityDefinitionRequest, symbolSfx, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.symbolSfx, Record, Value);
setFieldInRecord(securityDefinitionRequest, securityID, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.securityID, Record, Value);
setFieldInRecord(securityDefinitionRequest, iDSource, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.iDSource, Record, Value);
setFieldInRecord(securityDefinitionRequest, securityType, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.securityType, Record, Value);
setFieldInRecord(securityDefinitionRequest, maturityMonthYear, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.maturityMonthYear, Record, Value);
setFieldInRecord(securityDefinitionRequest, maturityDay, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.maturityDay, Record, Value);
setFieldInRecord(securityDefinitionRequest, putOrCall, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.putOrCall, Record, Value);
setFieldInRecord(securityDefinitionRequest, strikePrice, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.strikePrice, Record, Value);
setFieldInRecord(securityDefinitionRequest, optAttribute, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.optAttribute, Record, Value);
setFieldInRecord(securityDefinitionRequest, contractMultiplier, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.contractMultiplier, Record, Value);
setFieldInRecord(securityDefinitionRequest, couponRate, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.couponRate, Record, Value);
setFieldInRecord(securityDefinitionRequest, securityExchange, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.securityExchange, Record, Value);
setFieldInRecord(securityDefinitionRequest, issuer, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.issuer, Record, Value);
setFieldInRecord(securityDefinitionRequest, encodedIssuerLen, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.encodedIssuerLen, Record, Value);
setFieldInRecord(securityDefinitionRequest, encodedIssuer, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.encodedIssuer, Record, Value);
setFieldInRecord(securityDefinitionRequest, securityDesc, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.securityDesc, Record, Value);
setFieldInRecord(securityDefinitionRequest, encodedSecurityDescLen, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.encodedSecurityDescLen, Record, Value);
setFieldInRecord(securityDefinitionRequest, encodedSecurityDesc, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.encodedSecurityDesc, Record, Value);
setFieldInRecord(securityDefinitionRequest, currency, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.currency, Record, Value);
setFieldInRecord(securityDefinitionRequest, text, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.text, Record, Value);
setFieldInRecord(securityDefinitionRequest, encodedTextLen, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.encodedTextLen, Record, Value);
setFieldInRecord(securityDefinitionRequest, encodedText, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.encodedText, Record, Value);
setFieldInRecord(securityDefinitionRequest, tradingSessionID, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.tradingSessionID, Record, Value);
setFieldInRecord(securityDefinitionRequest, rgr_securityDefinitionRequest_146, Record, Value)->
   erlang:setelement(#securityDefinitionRequest.rgr_securityDefinitionRequest_146, Record, Value);
setFieldInRecord(rgr_securityDefinitionRequest_146, underlyingSymbol, Record, Value)->
   erlang:setelement(#rgr_securityDefinitionRequest_146.underlyingSymbol, Record, Value);
setFieldInRecord(rgr_securityDefinitionRequest_146, underlyingSymbolSfx, Record, Value)->
   erlang:setelement(#rgr_securityDefinitionRequest_146.underlyingSymbolSfx, Record, Value);
setFieldInRecord(rgr_securityDefinitionRequest_146, underlyingSecurityID, Record, Value)->
   erlang:setelement(#rgr_securityDefinitionRequest_146.underlyingSecurityID, Record, Value);
setFieldInRecord(rgr_securityDefinitionRequest_146, underlyingIDSource, Record, Value)->
   erlang:setelement(#rgr_securityDefinitionRequest_146.underlyingIDSource, Record, Value);
setFieldInRecord(rgr_securityDefinitionRequest_146, underlyingSecurityType, Record, Value)->
   erlang:setelement(#rgr_securityDefinitionRequest_146.underlyingSecurityType, Record, Value);
setFieldInRecord(rgr_securityDefinitionRequest_146, underlyingMaturityMonthYear, Record, Value)->
   erlang:setelement(#rgr_securityDefinitionRequest_146.underlyingMaturityMonthYear, Record, Value);
setFieldInRecord(rgr_securityDefinitionRequest_146, underlyingMaturityDay, Record, Value)->
   erlang:setelement(#rgr_securityDefinitionRequest_146.underlyingMaturityDay, Record, Value);
setFieldInRecord(rgr_securityDefinitionRequest_146, underlyingPutOrCall, Record, Value)->
   erlang:setelement(#rgr_securityDefinitionRequest_146.underlyingPutOrCall, Record, Value);
setFieldInRecord(rgr_securityDefinitionRequest_146, underlyingStrikePrice, Record, Value)->
   erlang:setelement(#rgr_securityDefinitionRequest_146.underlyingStrikePrice, Record, Value);
setFieldInRecord(rgr_securityDefinitionRequest_146, underlyingOptAttribute, Record, Value)->
   erlang:setelement(#rgr_securityDefinitionRequest_146.underlyingOptAttribute, Record, Value);
setFieldInRecord(rgr_securityDefinitionRequest_146, underlyingContractMultiplier, Record, Value)->
   erlang:setelement(#rgr_securityDefinitionRequest_146.underlyingContractMultiplier, Record, Value);
setFieldInRecord(rgr_securityDefinitionRequest_146, underlyingCouponRate, Record, Value)->
   erlang:setelement(#rgr_securityDefinitionRequest_146.underlyingCouponRate, Record, Value);
setFieldInRecord(rgr_securityDefinitionRequest_146, underlyingSecurityExchange, Record, Value)->
   erlang:setelement(#rgr_securityDefinitionRequest_146.underlyingSecurityExchange, Record, Value);
setFieldInRecord(rgr_securityDefinitionRequest_146, underlyingIssuer, Record, Value)->
   erlang:setelement(#rgr_securityDefinitionRequest_146.underlyingIssuer, Record, Value);
setFieldInRecord(rgr_securityDefinitionRequest_146, encodedUnderlyingIssuerLen, Record, Value)->
   erlang:setelement(#rgr_securityDefinitionRequest_146.encodedUnderlyingIssuerLen, Record, Value);
setFieldInRecord(rgr_securityDefinitionRequest_146, encodedUnderlyingIssuer, Record, Value)->
   erlang:setelement(#rgr_securityDefinitionRequest_146.encodedUnderlyingIssuer, Record, Value);
setFieldInRecord(rgr_securityDefinitionRequest_146, underlyingSecurityDesc, Record, Value)->
   erlang:setelement(#rgr_securityDefinitionRequest_146.underlyingSecurityDesc, Record, Value);
setFieldInRecord(rgr_securityDefinitionRequest_146, encodedUnderlyingSecurityDescLen, Record, Value)->
   erlang:setelement(#rgr_securityDefinitionRequest_146.encodedUnderlyingSecurityDescLen, Record, Value);
setFieldInRecord(rgr_securityDefinitionRequest_146, encodedUnderlyingSecurityDesc, Record, Value)->
   erlang:setelement(#rgr_securityDefinitionRequest_146.encodedUnderlyingSecurityDesc, Record, Value);
setFieldInRecord(rgr_securityDefinitionRequest_146, ratioQty, Record, Value)->
   erlang:setelement(#rgr_securityDefinitionRequest_146.ratioQty, Record, Value);
setFieldInRecord(rgr_securityDefinitionRequest_146, side, Record, Value)->
   erlang:setelement(#rgr_securityDefinitionRequest_146.side, Record, Value);
setFieldInRecord(rgr_securityDefinitionRequest_146, underlyingCurrency, Record, Value)->
   erlang:setelement(#rgr_securityDefinitionRequest_146.underlyingCurrency, Record, Value);
setFieldInRecord(securityDefinitionRequest, standardTrailer, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.standardTrailer, Record, Value);
setFieldInRecord(securityDefinition, standardHeader, Record, Value)->
    erlang:setelement(#securityDefinition.standardHeader, Record, Value);
setFieldInRecord(securityDefinition, securityReqID, Record, Value)->
    erlang:setelement(#securityDefinition.securityReqID, Record, Value);
setFieldInRecord(securityDefinition, securityResponseID, Record, Value)->
    erlang:setelement(#securityDefinition.securityResponseID, Record, Value);
setFieldInRecord(securityDefinition, securityResponseType, Record, Value)->
    erlang:setelement(#securityDefinition.securityResponseType, Record, Value);
setFieldInRecord(securityDefinition, totalNumSecurities, Record, Value)->
    erlang:setelement(#securityDefinition.totalNumSecurities, Record, Value);
setFieldInRecord(securityDefinition, symbol, Record, Value)->
    erlang:setelement(#securityDefinition.symbol, Record, Value);
setFieldInRecord(securityDefinition, symbolSfx, Record, Value)->
    erlang:setelement(#securityDefinition.symbolSfx, Record, Value);
setFieldInRecord(securityDefinition, securityID, Record, Value)->
    erlang:setelement(#securityDefinition.securityID, Record, Value);
setFieldInRecord(securityDefinition, iDSource, Record, Value)->
    erlang:setelement(#securityDefinition.iDSource, Record, Value);
setFieldInRecord(securityDefinition, securityType, Record, Value)->
    erlang:setelement(#securityDefinition.securityType, Record, Value);
setFieldInRecord(securityDefinition, maturityMonthYear, Record, Value)->
    erlang:setelement(#securityDefinition.maturityMonthYear, Record, Value);
setFieldInRecord(securityDefinition, maturityDay, Record, Value)->
    erlang:setelement(#securityDefinition.maturityDay, Record, Value);
setFieldInRecord(securityDefinition, putOrCall, Record, Value)->
    erlang:setelement(#securityDefinition.putOrCall, Record, Value);
setFieldInRecord(securityDefinition, strikePrice, Record, Value)->
    erlang:setelement(#securityDefinition.strikePrice, Record, Value);
setFieldInRecord(securityDefinition, optAttribute, Record, Value)->
    erlang:setelement(#securityDefinition.optAttribute, Record, Value);
setFieldInRecord(securityDefinition, contractMultiplier, Record, Value)->
    erlang:setelement(#securityDefinition.contractMultiplier, Record, Value);
setFieldInRecord(securityDefinition, couponRate, Record, Value)->
    erlang:setelement(#securityDefinition.couponRate, Record, Value);
setFieldInRecord(securityDefinition, securityExchange, Record, Value)->
    erlang:setelement(#securityDefinition.securityExchange, Record, Value);
setFieldInRecord(securityDefinition, issuer, Record, Value)->
    erlang:setelement(#securityDefinition.issuer, Record, Value);
setFieldInRecord(securityDefinition, encodedIssuerLen, Record, Value)->
    erlang:setelement(#securityDefinition.encodedIssuerLen, Record, Value);
setFieldInRecord(securityDefinition, encodedIssuer, Record, Value)->
    erlang:setelement(#securityDefinition.encodedIssuer, Record, Value);
setFieldInRecord(securityDefinition, securityDesc, Record, Value)->
    erlang:setelement(#securityDefinition.securityDesc, Record, Value);
setFieldInRecord(securityDefinition, encodedSecurityDescLen, Record, Value)->
    erlang:setelement(#securityDefinition.encodedSecurityDescLen, Record, Value);
setFieldInRecord(securityDefinition, encodedSecurityDesc, Record, Value)->
    erlang:setelement(#securityDefinition.encodedSecurityDesc, Record, Value);
setFieldInRecord(securityDefinition, currency, Record, Value)->
    erlang:setelement(#securityDefinition.currency, Record, Value);
setFieldInRecord(securityDefinition, tradingSessionID, Record, Value)->
    erlang:setelement(#securityDefinition.tradingSessionID, Record, Value);
setFieldInRecord(securityDefinition, text, Record, Value)->
    erlang:setelement(#securityDefinition.text, Record, Value);
setFieldInRecord(securityDefinition, encodedTextLen, Record, Value)->
    erlang:setelement(#securityDefinition.encodedTextLen, Record, Value);
setFieldInRecord(securityDefinition, encodedText, Record, Value)->
    erlang:setelement(#securityDefinition.encodedText, Record, Value);
setFieldInRecord(securityDefinition, rgr_securityDefinition_146, Record, Value)->
   erlang:setelement(#securityDefinition.rgr_securityDefinition_146, Record, Value);
setFieldInRecord(rgr_securityDefinition_146, underlyingSymbol, Record, Value)->
   erlang:setelement(#rgr_securityDefinition_146.underlyingSymbol, Record, Value);
setFieldInRecord(rgr_securityDefinition_146, underlyingSymbolSfx, Record, Value)->
   erlang:setelement(#rgr_securityDefinition_146.underlyingSymbolSfx, Record, Value);
setFieldInRecord(rgr_securityDefinition_146, underlyingSecurityID, Record, Value)->
   erlang:setelement(#rgr_securityDefinition_146.underlyingSecurityID, Record, Value);
setFieldInRecord(rgr_securityDefinition_146, underlyingIDSource, Record, Value)->
   erlang:setelement(#rgr_securityDefinition_146.underlyingIDSource, Record, Value);
setFieldInRecord(rgr_securityDefinition_146, underlyingSecurityType, Record, Value)->
   erlang:setelement(#rgr_securityDefinition_146.underlyingSecurityType, Record, Value);
setFieldInRecord(rgr_securityDefinition_146, underlyingMaturityMonthYear, Record, Value)->
   erlang:setelement(#rgr_securityDefinition_146.underlyingMaturityMonthYear, Record, Value);
setFieldInRecord(rgr_securityDefinition_146, underlyingMaturityDay, Record, Value)->
   erlang:setelement(#rgr_securityDefinition_146.underlyingMaturityDay, Record, Value);
setFieldInRecord(rgr_securityDefinition_146, underlyingPutOrCall, Record, Value)->
   erlang:setelement(#rgr_securityDefinition_146.underlyingPutOrCall, Record, Value);
setFieldInRecord(rgr_securityDefinition_146, underlyingStrikePrice, Record, Value)->
   erlang:setelement(#rgr_securityDefinition_146.underlyingStrikePrice, Record, Value);
setFieldInRecord(rgr_securityDefinition_146, underlyingOptAttribute, Record, Value)->
   erlang:setelement(#rgr_securityDefinition_146.underlyingOptAttribute, Record, Value);
setFieldInRecord(rgr_securityDefinition_146, underlyingContractMultiplier, Record, Value)->
   erlang:setelement(#rgr_securityDefinition_146.underlyingContractMultiplier, Record, Value);
setFieldInRecord(rgr_securityDefinition_146, underlyingCouponRate, Record, Value)->
   erlang:setelement(#rgr_securityDefinition_146.underlyingCouponRate, Record, Value);
setFieldInRecord(rgr_securityDefinition_146, underlyingSecurityExchange, Record, Value)->
   erlang:setelement(#rgr_securityDefinition_146.underlyingSecurityExchange, Record, Value);
setFieldInRecord(rgr_securityDefinition_146, underlyingIssuer, Record, Value)->
   erlang:setelement(#rgr_securityDefinition_146.underlyingIssuer, Record, Value);
setFieldInRecord(rgr_securityDefinition_146, encodedUnderlyingIssuerLen, Record, Value)->
   erlang:setelement(#rgr_securityDefinition_146.encodedUnderlyingIssuerLen, Record, Value);
setFieldInRecord(rgr_securityDefinition_146, encodedUnderlyingIssuer, Record, Value)->
   erlang:setelement(#rgr_securityDefinition_146.encodedUnderlyingIssuer, Record, Value);
setFieldInRecord(rgr_securityDefinition_146, underlyingSecurityDesc, Record, Value)->
   erlang:setelement(#rgr_securityDefinition_146.underlyingSecurityDesc, Record, Value);
setFieldInRecord(rgr_securityDefinition_146, encodedUnderlyingSecurityDescLen, Record, Value)->
   erlang:setelement(#rgr_securityDefinition_146.encodedUnderlyingSecurityDescLen, Record, Value);
setFieldInRecord(rgr_securityDefinition_146, encodedUnderlyingSecurityDesc, Record, Value)->
   erlang:setelement(#rgr_securityDefinition_146.encodedUnderlyingSecurityDesc, Record, Value);
setFieldInRecord(rgr_securityDefinition_146, ratioQty, Record, Value)->
   erlang:setelement(#rgr_securityDefinition_146.ratioQty, Record, Value);
setFieldInRecord(rgr_securityDefinition_146, side, Record, Value)->
   erlang:setelement(#rgr_securityDefinition_146.side, Record, Value);
setFieldInRecord(rgr_securityDefinition_146, underlyingCurrency, Record, Value)->
   erlang:setelement(#rgr_securityDefinition_146.underlyingCurrency, Record, Value);
setFieldInRecord(securityDefinition, standardTrailer, Record, Value)->
    erlang:setelement(#securityDefinition.standardTrailer, Record, Value);
setFieldInRecord(securityStatusRequest, standardHeader, Record, Value)->
    erlang:setelement(#securityStatusRequest.standardHeader, Record, Value);
setFieldInRecord(securityStatusRequest, securityStatusReqID, Record, Value)->
    erlang:setelement(#securityStatusRequest.securityStatusReqID, Record, Value);
setFieldInRecord(securityStatusRequest, symbol, Record, Value)->
    erlang:setelement(#securityStatusRequest.symbol, Record, Value);
setFieldInRecord(securityStatusRequest, symbolSfx, Record, Value)->
    erlang:setelement(#securityStatusRequest.symbolSfx, Record, Value);
setFieldInRecord(securityStatusRequest, securityID, Record, Value)->
    erlang:setelement(#securityStatusRequest.securityID, Record, Value);
setFieldInRecord(securityStatusRequest, iDSource, Record, Value)->
    erlang:setelement(#securityStatusRequest.iDSource, Record, Value);
setFieldInRecord(securityStatusRequest, securityType, Record, Value)->
    erlang:setelement(#securityStatusRequest.securityType, Record, Value);
setFieldInRecord(securityStatusRequest, maturityMonthYear, Record, Value)->
    erlang:setelement(#securityStatusRequest.maturityMonthYear, Record, Value);
setFieldInRecord(securityStatusRequest, maturityDay, Record, Value)->
    erlang:setelement(#securityStatusRequest.maturityDay, Record, Value);
setFieldInRecord(securityStatusRequest, putOrCall, Record, Value)->
    erlang:setelement(#securityStatusRequest.putOrCall, Record, Value);
setFieldInRecord(securityStatusRequest, strikePrice, Record, Value)->
    erlang:setelement(#securityStatusRequest.strikePrice, Record, Value);
setFieldInRecord(securityStatusRequest, optAttribute, Record, Value)->
    erlang:setelement(#securityStatusRequest.optAttribute, Record, Value);
setFieldInRecord(securityStatusRequest, contractMultiplier, Record, Value)->
    erlang:setelement(#securityStatusRequest.contractMultiplier, Record, Value);
setFieldInRecord(securityStatusRequest, couponRate, Record, Value)->
    erlang:setelement(#securityStatusRequest.couponRate, Record, Value);
setFieldInRecord(securityStatusRequest, securityExchange, Record, Value)->
    erlang:setelement(#securityStatusRequest.securityExchange, Record, Value);
setFieldInRecord(securityStatusRequest, issuer, Record, Value)->
    erlang:setelement(#securityStatusRequest.issuer, Record, Value);
setFieldInRecord(securityStatusRequest, encodedIssuerLen, Record, Value)->
    erlang:setelement(#securityStatusRequest.encodedIssuerLen, Record, Value);
setFieldInRecord(securityStatusRequest, encodedIssuer, Record, Value)->
    erlang:setelement(#securityStatusRequest.encodedIssuer, Record, Value);
setFieldInRecord(securityStatusRequest, securityDesc, Record, Value)->
    erlang:setelement(#securityStatusRequest.securityDesc, Record, Value);
setFieldInRecord(securityStatusRequest, encodedSecurityDescLen, Record, Value)->
    erlang:setelement(#securityStatusRequest.encodedSecurityDescLen, Record, Value);
setFieldInRecord(securityStatusRequest, encodedSecurityDesc, Record, Value)->
    erlang:setelement(#securityStatusRequest.encodedSecurityDesc, Record, Value);
setFieldInRecord(securityStatusRequest, currency, Record, Value)->
    erlang:setelement(#securityStatusRequest.currency, Record, Value);
setFieldInRecord(securityStatusRequest, subscriptionRequestType, Record, Value)->
    erlang:setelement(#securityStatusRequest.subscriptionRequestType, Record, Value);
setFieldInRecord(securityStatusRequest, tradingSessionID, Record, Value)->
    erlang:setelement(#securityStatusRequest.tradingSessionID, Record, Value);
setFieldInRecord(securityStatusRequest, standardTrailer, Record, Value)->
    erlang:setelement(#securityStatusRequest.standardTrailer, Record, Value);
setFieldInRecord(securityStatus, standardHeader, Record, Value)->
    erlang:setelement(#securityStatus.standardHeader, Record, Value);
setFieldInRecord(securityStatus, securityStatusReqID, Record, Value)->
    erlang:setelement(#securityStatus.securityStatusReqID, Record, Value);
setFieldInRecord(securityStatus, symbol, Record, Value)->
    erlang:setelement(#securityStatus.symbol, Record, Value);
setFieldInRecord(securityStatus, symbolSfx, Record, Value)->
    erlang:setelement(#securityStatus.symbolSfx, Record, Value);
setFieldInRecord(securityStatus, securityID, Record, Value)->
    erlang:setelement(#securityStatus.securityID, Record, Value);
setFieldInRecord(securityStatus, iDSource, Record, Value)->
    erlang:setelement(#securityStatus.iDSource, Record, Value);
setFieldInRecord(securityStatus, securityType, Record, Value)->
    erlang:setelement(#securityStatus.securityType, Record, Value);
setFieldInRecord(securityStatus, maturityMonthYear, Record, Value)->
    erlang:setelement(#securityStatus.maturityMonthYear, Record, Value);
setFieldInRecord(securityStatus, maturityDay, Record, Value)->
    erlang:setelement(#securityStatus.maturityDay, Record, Value);
setFieldInRecord(securityStatus, putOrCall, Record, Value)->
    erlang:setelement(#securityStatus.putOrCall, Record, Value);
setFieldInRecord(securityStatus, strikePrice, Record, Value)->
    erlang:setelement(#securityStatus.strikePrice, Record, Value);
setFieldInRecord(securityStatus, optAttribute, Record, Value)->
    erlang:setelement(#securityStatus.optAttribute, Record, Value);
setFieldInRecord(securityStatus, contractMultiplier, Record, Value)->
    erlang:setelement(#securityStatus.contractMultiplier, Record, Value);
setFieldInRecord(securityStatus, couponRate, Record, Value)->
    erlang:setelement(#securityStatus.couponRate, Record, Value);
setFieldInRecord(securityStatus, securityExchange, Record, Value)->
    erlang:setelement(#securityStatus.securityExchange, Record, Value);
setFieldInRecord(securityStatus, issuer, Record, Value)->
    erlang:setelement(#securityStatus.issuer, Record, Value);
setFieldInRecord(securityStatus, encodedIssuerLen, Record, Value)->
    erlang:setelement(#securityStatus.encodedIssuerLen, Record, Value);
setFieldInRecord(securityStatus, encodedIssuer, Record, Value)->
    erlang:setelement(#securityStatus.encodedIssuer, Record, Value);
setFieldInRecord(securityStatus, securityDesc, Record, Value)->
    erlang:setelement(#securityStatus.securityDesc, Record, Value);
setFieldInRecord(securityStatus, encodedSecurityDescLen, Record, Value)->
    erlang:setelement(#securityStatus.encodedSecurityDescLen, Record, Value);
setFieldInRecord(securityStatus, encodedSecurityDesc, Record, Value)->
    erlang:setelement(#securityStatus.encodedSecurityDesc, Record, Value);
setFieldInRecord(securityStatus, currency, Record, Value)->
    erlang:setelement(#securityStatus.currency, Record, Value);
setFieldInRecord(securityStatus, tradingSessionID, Record, Value)->
    erlang:setelement(#securityStatus.tradingSessionID, Record, Value);
setFieldInRecord(securityStatus, unsolicitedIndicator, Record, Value)->
    erlang:setelement(#securityStatus.unsolicitedIndicator, Record, Value);
setFieldInRecord(securityStatus, securityTradingStatus, Record, Value)->
    erlang:setelement(#securityStatus.securityTradingStatus, Record, Value);
setFieldInRecord(securityStatus, financialStatus, Record, Value)->
    erlang:setelement(#securityStatus.financialStatus, Record, Value);
setFieldInRecord(securityStatus, corporateAction, Record, Value)->
    erlang:setelement(#securityStatus.corporateAction, Record, Value);
setFieldInRecord(securityStatus, haltReason, Record, Value)->
    erlang:setelement(#securityStatus.haltReason, Record, Value);
setFieldInRecord(securityStatus, inViewOfCommon, Record, Value)->
    erlang:setelement(#securityStatus.inViewOfCommon, Record, Value);
setFieldInRecord(securityStatus, dueToRelated, Record, Value)->
    erlang:setelement(#securityStatus.dueToRelated, Record, Value);
setFieldInRecord(securityStatus, buyVolume, Record, Value)->
    erlang:setelement(#securityStatus.buyVolume, Record, Value);
setFieldInRecord(securityStatus, sellVolume, Record, Value)->
    erlang:setelement(#securityStatus.sellVolume, Record, Value);
setFieldInRecord(securityStatus, highPx, Record, Value)->
    erlang:setelement(#securityStatus.highPx, Record, Value);
setFieldInRecord(securityStatus, lowPx, Record, Value)->
    erlang:setelement(#securityStatus.lowPx, Record, Value);
setFieldInRecord(securityStatus, lastPx, Record, Value)->
    erlang:setelement(#securityStatus.lastPx, Record, Value);
setFieldInRecord(securityStatus, transactTime, Record, Value)->
    erlang:setelement(#securityStatus.transactTime, Record, Value);
setFieldInRecord(securityStatus, adjustment, Record, Value)->
    erlang:setelement(#securityStatus.adjustment, Record, Value);
setFieldInRecord(securityStatus, standardTrailer, Record, Value)->
    erlang:setelement(#securityStatus.standardTrailer, Record, Value);
setFieldInRecord(tradingSessionStatusRequest, standardHeader, Record, Value)->
    erlang:setelement(#tradingSessionStatusRequest.standardHeader, Record, Value);
setFieldInRecord(tradingSessionStatusRequest, tradSesReqID, Record, Value)->
    erlang:setelement(#tradingSessionStatusRequest.tradSesReqID, Record, Value);
setFieldInRecord(tradingSessionStatusRequest, tradingSessionID, Record, Value)->
    erlang:setelement(#tradingSessionStatusRequest.tradingSessionID, Record, Value);
setFieldInRecord(tradingSessionStatusRequest, tradSesMethod, Record, Value)->
    erlang:setelement(#tradingSessionStatusRequest.tradSesMethod, Record, Value);
setFieldInRecord(tradingSessionStatusRequest, tradSesMode, Record, Value)->
    erlang:setelement(#tradingSessionStatusRequest.tradSesMode, Record, Value);
setFieldInRecord(tradingSessionStatusRequest, subscriptionRequestType, Record, Value)->
    erlang:setelement(#tradingSessionStatusRequest.subscriptionRequestType, Record, Value);
setFieldInRecord(tradingSessionStatusRequest, standardTrailer, Record, Value)->
    erlang:setelement(#tradingSessionStatusRequest.standardTrailer, Record, Value);
setFieldInRecord(tradingSessionStatus, standardHeader, Record, Value)->
    erlang:setelement(#tradingSessionStatus.standardHeader, Record, Value);
setFieldInRecord(tradingSessionStatus, tradSesReqID, Record, Value)->
    erlang:setelement(#tradingSessionStatus.tradSesReqID, Record, Value);
setFieldInRecord(tradingSessionStatus, tradingSessionID, Record, Value)->
    erlang:setelement(#tradingSessionStatus.tradingSessionID, Record, Value);
setFieldInRecord(tradingSessionStatus, tradSesMethod, Record, Value)->
    erlang:setelement(#tradingSessionStatus.tradSesMethod, Record, Value);
setFieldInRecord(tradingSessionStatus, tradSesMode, Record, Value)->
    erlang:setelement(#tradingSessionStatus.tradSesMode, Record, Value);
setFieldInRecord(tradingSessionStatus, unsolicitedIndicator, Record, Value)->
    erlang:setelement(#tradingSessionStatus.unsolicitedIndicator, Record, Value);
setFieldInRecord(tradingSessionStatus, tradSesStatus, Record, Value)->
    erlang:setelement(#tradingSessionStatus.tradSesStatus, Record, Value);
setFieldInRecord(tradingSessionStatus, tradSesStartTime, Record, Value)->
    erlang:setelement(#tradingSessionStatus.tradSesStartTime, Record, Value);
setFieldInRecord(tradingSessionStatus, tradSesOpenTime, Record, Value)->
    erlang:setelement(#tradingSessionStatus.tradSesOpenTime, Record, Value);
setFieldInRecord(tradingSessionStatus, tradSesPreCloseTime, Record, Value)->
    erlang:setelement(#tradingSessionStatus.tradSesPreCloseTime, Record, Value);
setFieldInRecord(tradingSessionStatus, tradSesCloseTime, Record, Value)->
    erlang:setelement(#tradingSessionStatus.tradSesCloseTime, Record, Value);
setFieldInRecord(tradingSessionStatus, tradSesEndTime, Record, Value)->
    erlang:setelement(#tradingSessionStatus.tradSesEndTime, Record, Value);
setFieldInRecord(tradingSessionStatus, totalVolumeTraded, Record, Value)->
    erlang:setelement(#tradingSessionStatus.totalVolumeTraded, Record, Value);
setFieldInRecord(tradingSessionStatus, text, Record, Value)->
    erlang:setelement(#tradingSessionStatus.text, Record, Value);
setFieldInRecord(tradingSessionStatus, encodedTextLen, Record, Value)->
    erlang:setelement(#tradingSessionStatus.encodedTextLen, Record, Value);
setFieldInRecord(tradingSessionStatus, encodedText, Record, Value)->
    erlang:setelement(#tradingSessionStatus.encodedText, Record, Value);
setFieldInRecord(tradingSessionStatus, standardTrailer, Record, Value)->
    erlang:setelement(#tradingSessionStatus.standardTrailer, Record, Value);
setFieldInRecord(massQuote, standardHeader, Record, Value)->
    erlang:setelement(#massQuote.standardHeader, Record, Value);
setFieldInRecord(massQuote, quoteReqID, Record, Value)->
    erlang:setelement(#massQuote.quoteReqID, Record, Value);
setFieldInRecord(massQuote, quoteID, Record, Value)->
    erlang:setelement(#massQuote.quoteID, Record, Value);
setFieldInRecord(massQuote, quoteResponseLevel, Record, Value)->
    erlang:setelement(#massQuote.quoteResponseLevel, Record, Value);
setFieldInRecord(massQuote, defBidSize, Record, Value)->
    erlang:setelement(#massQuote.defBidSize, Record, Value);
setFieldInRecord(massQuote, defOfferSize, Record, Value)->
    erlang:setelement(#massQuote.defOfferSize, Record, Value);
setFieldInRecord(massQuote, rgr_massQuote_296, Record, Value)->
   erlang:setelement(#massQuote.rgr_massQuote_296, Record, Value);
setFieldInRecord(rgr_massQuote_296, quoteSetID, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.quoteSetID, Record, Value);
setFieldInRecord(rgr_massQuote_296, underlyingSymbol, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.underlyingSymbol, Record, Value);
setFieldInRecord(rgr_massQuote_296, underlyingSymbolSfx, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.underlyingSymbolSfx, Record, Value);
setFieldInRecord(rgr_massQuote_296, underlyingSecurityID, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.underlyingSecurityID, Record, Value);
setFieldInRecord(rgr_massQuote_296, underlyingIDSource, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.underlyingIDSource, Record, Value);
setFieldInRecord(rgr_massQuote_296, underlyingSecurityType, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.underlyingSecurityType, Record, Value);
setFieldInRecord(rgr_massQuote_296, underlyingMaturityMonthYear, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.underlyingMaturityMonthYear, Record, Value);
setFieldInRecord(rgr_massQuote_296, underlyingMaturityDay, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.underlyingMaturityDay, Record, Value);
setFieldInRecord(rgr_massQuote_296, underlyingPutOrCall, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.underlyingPutOrCall, Record, Value);
setFieldInRecord(rgr_massQuote_296, underlyingStrikePrice, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.underlyingStrikePrice, Record, Value);
setFieldInRecord(rgr_massQuote_296, underlyingOptAttribute, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.underlyingOptAttribute, Record, Value);
setFieldInRecord(rgr_massQuote_296, underlyingContractMultiplier, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.underlyingContractMultiplier, Record, Value);
setFieldInRecord(rgr_massQuote_296, underlyingCouponRate, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.underlyingCouponRate, Record, Value);
setFieldInRecord(rgr_massQuote_296, underlyingSecurityExchange, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.underlyingSecurityExchange, Record, Value);
setFieldInRecord(rgr_massQuote_296, underlyingIssuer, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.underlyingIssuer, Record, Value);
setFieldInRecord(rgr_massQuote_296, encodedUnderlyingIssuerLen, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.encodedUnderlyingIssuerLen, Record, Value);
setFieldInRecord(rgr_massQuote_296, encodedUnderlyingIssuer, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.encodedUnderlyingIssuer, Record, Value);
setFieldInRecord(rgr_massQuote_296, underlyingSecurityDesc, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.underlyingSecurityDesc, Record, Value);
setFieldInRecord(rgr_massQuote_296, encodedUnderlyingSecurityDescLen, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.encodedUnderlyingSecurityDescLen, Record, Value);
setFieldInRecord(rgr_massQuote_296, encodedUnderlyingSecurityDesc, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.encodedUnderlyingSecurityDesc, Record, Value);
setFieldInRecord(rgr_massQuote_296, quoteSetValidUntilTime, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.quoteSetValidUntilTime, Record, Value);
setFieldInRecord(rgr_massQuote_296, totQuoteEntries, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.totQuoteEntries, Record, Value);
setFieldInRecord(rgr_massQuote_296, rgr_rgr_massQuote_296_295, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.rgr_rgr_massQuote_296_295, Record, Value);
setFieldInRecord(rgr_massQuote_296, rgr_rgr_massQuote_296_295, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.rgr_rgr_massQuote_296_295, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, quoteEntryID, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.quoteEntryID, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, symbol, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.symbol, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, symbolSfx, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.symbolSfx, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, securityID, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.securityID, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, iDSource, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.iDSource, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, securityType, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.securityType, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, maturityMonthYear, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.maturityMonthYear, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, maturityDay, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.maturityDay, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, putOrCall, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.putOrCall, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, strikePrice, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.strikePrice, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, optAttribute, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.optAttribute, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, contractMultiplier, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.contractMultiplier, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, couponRate, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.couponRate, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, securityExchange, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.securityExchange, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, issuer, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.issuer, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, encodedIssuerLen, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.encodedIssuerLen, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, encodedIssuer, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.encodedIssuer, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, securityDesc, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.securityDesc, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, encodedSecurityDescLen, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.encodedSecurityDescLen, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, encodedSecurityDesc, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.encodedSecurityDesc, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, bidPx, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.bidPx, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, offerPx, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.offerPx, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, bidSize, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.bidSize, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, offerSize, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.offerSize, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, validUntilTime, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.validUntilTime, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, bidSpotRate, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.bidSpotRate, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, offerSpotRate, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.offerSpotRate, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, bidForwardPoints, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.bidForwardPoints, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, offerForwardPoints, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.offerForwardPoints, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, transactTime, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.transactTime, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.tradingSessionID, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, futSettDate, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.futSettDate, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, ordType, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.ordType, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, futSettDate2, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.futSettDate2, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, orderQty2, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.orderQty2, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, currency, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.currency, Record, Value);
setFieldInRecord(massQuote, standardTrailer, Record, Value)->
    erlang:setelement(#massQuote.standardTrailer, Record, Value);
setFieldInRecord(businessMessageReject, standardHeader, Record, Value)->
    erlang:setelement(#businessMessageReject.standardHeader, Record, Value);
setFieldInRecord(businessMessageReject, refSeqNum, Record, Value)->
    erlang:setelement(#businessMessageReject.refSeqNum, Record, Value);
setFieldInRecord(businessMessageReject, refMsgType, Record, Value)->
    erlang:setelement(#businessMessageReject.refMsgType, Record, Value);
setFieldInRecord(businessMessageReject, businessRejectRefID, Record, Value)->
    erlang:setelement(#businessMessageReject.businessRejectRefID, Record, Value);
setFieldInRecord(businessMessageReject, businessRejectReason, Record, Value)->
    erlang:setelement(#businessMessageReject.businessRejectReason, Record, Value);
setFieldInRecord(businessMessageReject, text, Record, Value)->
    erlang:setelement(#businessMessageReject.text, Record, Value);
setFieldInRecord(businessMessageReject, encodedTextLen, Record, Value)->
    erlang:setelement(#businessMessageReject.encodedTextLen, Record, Value);
setFieldInRecord(businessMessageReject, encodedText, Record, Value)->
    erlang:setelement(#businessMessageReject.encodedText, Record, Value);
setFieldInRecord(businessMessageReject, standardTrailer, Record, Value)->
    erlang:setelement(#businessMessageReject.standardTrailer, Record, Value);
setFieldInRecord(bidRequest, standardHeader, Record, Value)->
    erlang:setelement(#bidRequest.standardHeader, Record, Value);
setFieldInRecord(bidRequest, bidID, Record, Value)->
    erlang:setelement(#bidRequest.bidID, Record, Value);
setFieldInRecord(bidRequest, clientBidID, Record, Value)->
    erlang:setelement(#bidRequest.clientBidID, Record, Value);
setFieldInRecord(bidRequest, bidRequestTransType, Record, Value)->
    erlang:setelement(#bidRequest.bidRequestTransType, Record, Value);
setFieldInRecord(bidRequest, listName, Record, Value)->
    erlang:setelement(#bidRequest.listName, Record, Value);
setFieldInRecord(bidRequest, totalNumSecurities, Record, Value)->
    erlang:setelement(#bidRequest.totalNumSecurities, Record, Value);
setFieldInRecord(bidRequest, bidType, Record, Value)->
    erlang:setelement(#bidRequest.bidType, Record, Value);
setFieldInRecord(bidRequest, numTickets, Record, Value)->
    erlang:setelement(#bidRequest.numTickets, Record, Value);
setFieldInRecord(bidRequest, currency, Record, Value)->
    erlang:setelement(#bidRequest.currency, Record, Value);
setFieldInRecord(bidRequest, sideValue1, Record, Value)->
    erlang:setelement(#bidRequest.sideValue1, Record, Value);
setFieldInRecord(bidRequest, sideValue2, Record, Value)->
    erlang:setelement(#bidRequest.sideValue2, Record, Value);
setFieldInRecord(bidRequest, rgr_bidRequest_398, Record, Value)->
   erlang:setelement(#bidRequest.rgr_bidRequest_398, Record, Value);
setFieldInRecord(rgr_bidRequest_398, bidDescriptorType, Record, Value)->
   erlang:setelement(#rgr_bidRequest_398.bidDescriptorType, Record, Value);
setFieldInRecord(rgr_bidRequest_398, bidDescriptor, Record, Value)->
   erlang:setelement(#rgr_bidRequest_398.bidDescriptor, Record, Value);
setFieldInRecord(rgr_bidRequest_398, sideValueInd, Record, Value)->
   erlang:setelement(#rgr_bidRequest_398.sideValueInd, Record, Value);
setFieldInRecord(rgr_bidRequest_398, liquidityValue, Record, Value)->
   erlang:setelement(#rgr_bidRequest_398.liquidityValue, Record, Value);
setFieldInRecord(rgr_bidRequest_398, liquidityNumSecurities, Record, Value)->
   erlang:setelement(#rgr_bidRequest_398.liquidityNumSecurities, Record, Value);
setFieldInRecord(rgr_bidRequest_398, liquidityPctLow, Record, Value)->
   erlang:setelement(#rgr_bidRequest_398.liquidityPctLow, Record, Value);
setFieldInRecord(rgr_bidRequest_398, liquidityPctHigh, Record, Value)->
   erlang:setelement(#rgr_bidRequest_398.liquidityPctHigh, Record, Value);
setFieldInRecord(rgr_bidRequest_398, eFPTrackingError, Record, Value)->
   erlang:setelement(#rgr_bidRequest_398.eFPTrackingError, Record, Value);
setFieldInRecord(rgr_bidRequest_398, fairValue, Record, Value)->
   erlang:setelement(#rgr_bidRequest_398.fairValue, Record, Value);
setFieldInRecord(rgr_bidRequest_398, outsideIndexPct, Record, Value)->
   erlang:setelement(#rgr_bidRequest_398.outsideIndexPct, Record, Value);
setFieldInRecord(rgr_bidRequest_398, valueOfFutures, Record, Value)->
   erlang:setelement(#rgr_bidRequest_398.valueOfFutures, Record, Value);
setFieldInRecord(bidRequest, rgr_bidRequest_420, Record, Value)->
   erlang:setelement(#bidRequest.rgr_bidRequest_420, Record, Value);
setFieldInRecord(rgr_bidRequest_420, listID, Record, Value)->
   erlang:setelement(#rgr_bidRequest_420.listID, Record, Value);
setFieldInRecord(rgr_bidRequest_420, side, Record, Value)->
   erlang:setelement(#rgr_bidRequest_420.side, Record, Value);
setFieldInRecord(rgr_bidRequest_420, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_bidRequest_420.tradingSessionID, Record, Value);
setFieldInRecord(rgr_bidRequest_420, netGrossInd, Record, Value)->
   erlang:setelement(#rgr_bidRequest_420.netGrossInd, Record, Value);
setFieldInRecord(rgr_bidRequest_420, settlmntTyp, Record, Value)->
   erlang:setelement(#rgr_bidRequest_420.settlmntTyp, Record, Value);
setFieldInRecord(rgr_bidRequest_420, futSettDate, Record, Value)->
   erlang:setelement(#rgr_bidRequest_420.futSettDate, Record, Value);
setFieldInRecord(rgr_bidRequest_420, account, Record, Value)->
   erlang:setelement(#rgr_bidRequest_420.account, Record, Value);
setFieldInRecord(bidRequest, liquidityIndType, Record, Value)->
    erlang:setelement(#bidRequest.liquidityIndType, Record, Value);
setFieldInRecord(bidRequest, wtAverageLiquidity, Record, Value)->
    erlang:setelement(#bidRequest.wtAverageLiquidity, Record, Value);
setFieldInRecord(bidRequest, exchangeForPhysical, Record, Value)->
    erlang:setelement(#bidRequest.exchangeForPhysical, Record, Value);
setFieldInRecord(bidRequest, outMainCntryUIndex, Record, Value)->
    erlang:setelement(#bidRequest.outMainCntryUIndex, Record, Value);
setFieldInRecord(bidRequest, crossPercent, Record, Value)->
    erlang:setelement(#bidRequest.crossPercent, Record, Value);
setFieldInRecord(bidRequest, progRptReqs, Record, Value)->
    erlang:setelement(#bidRequest.progRptReqs, Record, Value);
setFieldInRecord(bidRequest, progPeriodInterval, Record, Value)->
    erlang:setelement(#bidRequest.progPeriodInterval, Record, Value);
setFieldInRecord(bidRequest, incTaxInd, Record, Value)->
    erlang:setelement(#bidRequest.incTaxInd, Record, Value);
setFieldInRecord(bidRequest, forexReq, Record, Value)->
    erlang:setelement(#bidRequest.forexReq, Record, Value);
setFieldInRecord(bidRequest, numBidders, Record, Value)->
    erlang:setelement(#bidRequest.numBidders, Record, Value);
setFieldInRecord(bidRequest, tradeDate, Record, Value)->
    erlang:setelement(#bidRequest.tradeDate, Record, Value);
setFieldInRecord(bidRequest, tradeType, Record, Value)->
    erlang:setelement(#bidRequest.tradeType, Record, Value);
setFieldInRecord(bidRequest, basisPxType, Record, Value)->
    erlang:setelement(#bidRequest.basisPxType, Record, Value);
setFieldInRecord(bidRequest, strikeTime, Record, Value)->
    erlang:setelement(#bidRequest.strikeTime, Record, Value);
setFieldInRecord(bidRequest, text, Record, Value)->
    erlang:setelement(#bidRequest.text, Record, Value);
setFieldInRecord(bidRequest, encodedTextLen, Record, Value)->
    erlang:setelement(#bidRequest.encodedTextLen, Record, Value);
setFieldInRecord(bidRequest, encodedText, Record, Value)->
    erlang:setelement(#bidRequest.encodedText, Record, Value);
setFieldInRecord(bidRequest, standardTrailer, Record, Value)->
    erlang:setelement(#bidRequest.standardTrailer, Record, Value);
setFieldInRecord(bidResponse, standardHeader, Record, Value)->
    erlang:setelement(#bidResponse.standardHeader, Record, Value);
setFieldInRecord(bidResponse, bidID, Record, Value)->
    erlang:setelement(#bidResponse.bidID, Record, Value);
setFieldInRecord(bidResponse, clientBidID, Record, Value)->
    erlang:setelement(#bidResponse.clientBidID, Record, Value);
setFieldInRecord(bidResponse, rgr_bidResponse_420, Record, Value)->
   erlang:setelement(#bidResponse.rgr_bidResponse_420, Record, Value);
setFieldInRecord(rgr_bidResponse_420, commission, Record, Value)->
   erlang:setelement(#rgr_bidResponse_420.commission, Record, Value);
setFieldInRecord(rgr_bidResponse_420, commType, Record, Value)->
   erlang:setelement(#rgr_bidResponse_420.commType, Record, Value);
setFieldInRecord(rgr_bidResponse_420, listID, Record, Value)->
   erlang:setelement(#rgr_bidResponse_420.listID, Record, Value);
setFieldInRecord(rgr_bidResponse_420, country, Record, Value)->
   erlang:setelement(#rgr_bidResponse_420.country, Record, Value);
setFieldInRecord(rgr_bidResponse_420, side, Record, Value)->
   erlang:setelement(#rgr_bidResponse_420.side, Record, Value);
setFieldInRecord(rgr_bidResponse_420, price, Record, Value)->
   erlang:setelement(#rgr_bidResponse_420.price, Record, Value);
setFieldInRecord(rgr_bidResponse_420, priceType, Record, Value)->
   erlang:setelement(#rgr_bidResponse_420.priceType, Record, Value);
setFieldInRecord(rgr_bidResponse_420, fairValue, Record, Value)->
   erlang:setelement(#rgr_bidResponse_420.fairValue, Record, Value);
setFieldInRecord(rgr_bidResponse_420, netGrossInd, Record, Value)->
   erlang:setelement(#rgr_bidResponse_420.netGrossInd, Record, Value);
setFieldInRecord(rgr_bidResponse_420, settlmntTyp, Record, Value)->
   erlang:setelement(#rgr_bidResponse_420.settlmntTyp, Record, Value);
setFieldInRecord(rgr_bidResponse_420, futSettDate, Record, Value)->
   erlang:setelement(#rgr_bidResponse_420.futSettDate, Record, Value);
setFieldInRecord(rgr_bidResponse_420, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_bidResponse_420.tradingSessionID, Record, Value);
setFieldInRecord(rgr_bidResponse_420, text, Record, Value)->
   erlang:setelement(#rgr_bidResponse_420.text, Record, Value);
setFieldInRecord(rgr_bidResponse_420, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_bidResponse_420.encodedTextLen, Record, Value);
setFieldInRecord(rgr_bidResponse_420, encodedText, Record, Value)->
   erlang:setelement(#rgr_bidResponse_420.encodedText, Record, Value);
setFieldInRecord(bidResponse, standardTrailer, Record, Value)->
    erlang:setelement(#bidResponse.standardTrailer, Record, Value);
setFieldInRecord(listStrikePrice, standardHeader, Record, Value)->
    erlang:setelement(#listStrikePrice.standardHeader, Record, Value);
setFieldInRecord(listStrikePrice, listID, Record, Value)->
    erlang:setelement(#listStrikePrice.listID, Record, Value);
setFieldInRecord(listStrikePrice, totNoStrikes, Record, Value)->
    erlang:setelement(#listStrikePrice.totNoStrikes, Record, Value);
setFieldInRecord(listStrikePrice, rgr_listStrikePrice_428, Record, Value)->
   erlang:setelement(#listStrikePrice.rgr_listStrikePrice_428, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, symbol, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.symbol, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, symbolSfx, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.symbolSfx, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, securityID, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.securityID, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, iDSource, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.iDSource, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, securityType, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.securityType, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, maturityMonthYear, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.maturityMonthYear, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, maturityDay, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.maturityDay, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, putOrCall, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.putOrCall, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, strikePrice, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.strikePrice, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, optAttribute, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.optAttribute, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, contractMultiplier, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.contractMultiplier, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, couponRate, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.couponRate, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, securityExchange, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.securityExchange, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, issuer, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.issuer, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, encodedIssuerLen, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.encodedIssuerLen, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, encodedIssuer, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.encodedIssuer, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, securityDesc, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.securityDesc, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, encodedSecurityDescLen, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.encodedSecurityDescLen, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, encodedSecurityDesc, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.encodedSecurityDesc, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, prevClosePx, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.prevClosePx, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, clOrdID, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.clOrdID, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, side, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.side, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, price, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.price, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, currency, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.currency, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, text, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.text, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.encodedTextLen, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, encodedText, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.encodedText, Record, Value);
setFieldInRecord(listStrikePrice, standardTrailer, Record, Value)->
    erlang:setelement(#listStrikePrice.standardTrailer, Record, Value);
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
getMessageName(<<"T">>) -> 
    settlementInstructions;
getMessageName(<<"V">>) -> 
    marketDataRequest;
getMessageName(<<"W">>) -> 
    marketDataSnapshotFullRefresh;
getMessageName(<<"X">>) -> 
    marketDataIncrementalRefresh;
getMessageName(<<"Y">>) -> 
    marketDataRequestReject;
getMessageName(<<"Z">>) -> 
    quoteCancel;
getMessageName(<<"a">>) -> 
    quoteStatusRequest;
getMessageName(<<"b">>) -> 
    quoteAcknowledgement;
getMessageName(<<"c">>) -> 
    securityDefinitionRequest;
getMessageName(<<"d">>) -> 
    securityDefinition;
getMessageName(<<"e">>) -> 
    securityStatusRequest;
getMessageName(<<"f">>) -> 
    securityStatus;
getMessageName(<<"g">>) -> 
    tradingSessionStatusRequest;
getMessageName(<<"h">>) -> 
    tradingSessionStatus;
getMessageName(<<"i">>) -> 
    massQuote;
getMessageName(<<"j">>) -> 
    businessMessageReject;
getMessageName(<<"k">>) -> 
    bidRequest;
getMessageName(<<"l">>) -> 
    bidResponse;
getMessageName(<<"m">>) -> 
    listStrikePrice;
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
getFieldName(<<"51">>) ->
    sendingDate;
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
    totNoOrders;
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
getFieldName(<<"141">>) ->
    resetSeqNumFlag;
getFieldName(<<"142">>) ->
    senderLocationID;
getFieldName(<<"143">>) ->
    targetLocationID;
getFieldName(<<"144">>) ->
    onBehalfOfLocationID;
getFieldName(<<"145">>) ->
    deliverToLocationID;
getFieldName(<<"146">>) ->
    noRelatedSym;
getFieldName(<<"147">>) ->
    subject;
getFieldName(<<"148">>) ->
    headline;
getFieldName(<<"149">>) ->
    uRLLink;
getFieldName(<<"150">>) ->
    execType;
getFieldName(<<"151">>) ->
    leavesQty;
getFieldName(<<"152">>) ->
    cashOrderQty;
getFieldName(<<"153">>) ->
    allocAvgPx;
getFieldName(<<"154">>) ->
    allocNetMoney;
getFieldName(<<"155">>) ->
    settlCurrFxRate;
getFieldName(<<"156">>) ->
    settlCurrFxRateCalc;
getFieldName(<<"157">>) ->
    numDaysInterest;
getFieldName(<<"158">>) ->
    accruedInterestRate;
getFieldName(<<"159">>) ->
    accruedInterestAmt;
getFieldName(<<"160">>) ->
    settlInstMode;
getFieldName(<<"161">>) ->
    allocText;
getFieldName(<<"162">>) ->
    settlInstID;
getFieldName(<<"163">>) ->
    settlInstTransType;
getFieldName(<<"164">>) ->
    emailThreadID;
getFieldName(<<"165">>) ->
    settlInstSource;
getFieldName(<<"166">>) ->
    settlLocation;
getFieldName(<<"167">>) ->
    securityType;
getFieldName(<<"168">>) ->
    effectiveTime;
getFieldName(<<"169">>) ->
    standInstDbType;
getFieldName(<<"170">>) ->
    standInstDbName;
getFieldName(<<"171">>) ->
    standInstDbID;
getFieldName(<<"172">>) ->
    settlDeliveryType;
getFieldName(<<"173">>) ->
    settlDepositoryCode;
getFieldName(<<"174">>) ->
    settlBrkrCode;
getFieldName(<<"175">>) ->
    settlInstCode;
getFieldName(<<"176">>) ->
    securitySettlAgentName;
getFieldName(<<"177">>) ->
    securitySettlAgentCode;
getFieldName(<<"178">>) ->
    securitySettlAgentAcctNum;
getFieldName(<<"179">>) ->
    securitySettlAgentAcctName;
getFieldName(<<"180">>) ->
    securitySettlAgentContactName;
getFieldName(<<"181">>) ->
    securitySettlAgentContactPhone;
getFieldName(<<"182">>) ->
    cashSettlAgentName;
getFieldName(<<"183">>) ->
    cashSettlAgentCode;
getFieldName(<<"184">>) ->
    cashSettlAgentAcctNum;
getFieldName(<<"185">>) ->
    cashSettlAgentAcctName;
getFieldName(<<"186">>) ->
    cashSettlAgentContactName;
getFieldName(<<"187">>) ->
    cashSettlAgentContactPhone;
getFieldName(<<"188">>) ->
    bidSpotRate;
getFieldName(<<"189">>) ->
    bidForwardPoints;
getFieldName(<<"190">>) ->
    offerSpotRate;
getFieldName(<<"191">>) ->
    offerForwardPoints;
getFieldName(<<"192">>) ->
    orderQty2;
getFieldName(<<"193">>) ->
    futSettDate2;
getFieldName(<<"194">>) ->
    lastSpotRate;
getFieldName(<<"195">>) ->
    lastForwardPoints;
getFieldName(<<"196">>) ->
    allocLinkID;
getFieldName(<<"197">>) ->
    allocLinkType;
getFieldName(<<"198">>) ->
    secondaryOrderID;
getFieldName(<<"199">>) ->
    noIOIQualifiers;
getFieldName(<<"200">>) ->
    maturityMonthYear;
getFieldName(<<"201">>) ->
    putOrCall;
getFieldName(<<"202">>) ->
    strikePrice;
getFieldName(<<"203">>) ->
    coveredOrUncovered;
getFieldName(<<"204">>) ->
    customerOrFirm;
getFieldName(<<"205">>) ->
    maturityDay;
getFieldName(<<"206">>) ->
    optAttribute;
getFieldName(<<"207">>) ->
    securityExchange;
getFieldName(<<"208">>) ->
    notifyBrokerOfCredit;
getFieldName(<<"209">>) ->
    allocHandlInst;
getFieldName(<<"210">>) ->
    maxShow;
getFieldName(<<"211">>) ->
    pegDifference;
getFieldName(<<"212">>) ->
    xmlDataLen;
getFieldName(<<"213">>) ->
    xmlData;
getFieldName(<<"214">>) ->
    settlInstRefID;
getFieldName(<<"215">>) ->
    noRoutingIDs;
getFieldName(<<"216">>) ->
    routingType;
getFieldName(<<"217">>) ->
    routingID;
getFieldName(<<"218">>) ->
    spreadToBenchmark;
getFieldName(<<"219">>) ->
    benchmark;
getFieldName(<<"223">>) ->
    couponRate;
getFieldName(<<"231">>) ->
    contractMultiplier;
getFieldName(<<"262">>) ->
    mDReqID;
getFieldName(<<"263">>) ->
    subscriptionRequestType;
getFieldName(<<"264">>) ->
    marketDepth;
getFieldName(<<"265">>) ->
    mDUpdateType;
getFieldName(<<"266">>) ->
    aggregatedBook;
getFieldName(<<"267">>) ->
    noMDEntryTypes;
getFieldName(<<"268">>) ->
    noMDEntries;
getFieldName(<<"269">>) ->
    mDEntryType;
getFieldName(<<"270">>) ->
    mDEntryPx;
getFieldName(<<"271">>) ->
    mDEntrySize;
getFieldName(<<"272">>) ->
    mDEntryDate;
getFieldName(<<"273">>) ->
    mDEntryTime;
getFieldName(<<"274">>) ->
    tickDirection;
getFieldName(<<"275">>) ->
    mDMkt;
getFieldName(<<"276">>) ->
    quoteCondition;
getFieldName(<<"277">>) ->
    tradeCondition;
getFieldName(<<"278">>) ->
    mDEntryID;
getFieldName(<<"279">>) ->
    mDUpdateAction;
getFieldName(<<"280">>) ->
    mDEntryRefID;
getFieldName(<<"281">>) ->
    mDReqRejReason;
getFieldName(<<"282">>) ->
    mDEntryOriginator;
getFieldName(<<"283">>) ->
    locationID;
getFieldName(<<"284">>) ->
    deskID;
getFieldName(<<"285">>) ->
    deleteReason;
getFieldName(<<"286">>) ->
    openCloseSettleFlag;
getFieldName(<<"287">>) ->
    sellerDays;
getFieldName(<<"288">>) ->
    mDEntryBuyer;
getFieldName(<<"289">>) ->
    mDEntrySeller;
getFieldName(<<"290">>) ->
    mDEntryPositionNo;
getFieldName(<<"291">>) ->
    financialStatus;
getFieldName(<<"292">>) ->
    corporateAction;
getFieldName(<<"293">>) ->
    defBidSize;
getFieldName(<<"294">>) ->
    defOfferSize;
getFieldName(<<"295">>) ->
    noQuoteEntries;
getFieldName(<<"296">>) ->
    noQuoteSets;
getFieldName(<<"297">>) ->
    quoteAckStatus;
getFieldName(<<"298">>) ->
    quoteCancelType;
getFieldName(<<"299">>) ->
    quoteEntryID;
getFieldName(<<"300">>) ->
    quoteRejectReason;
getFieldName(<<"301">>) ->
    quoteResponseLevel;
getFieldName(<<"302">>) ->
    quoteSetID;
getFieldName(<<"303">>) ->
    quoteRequestType;
getFieldName(<<"304">>) ->
    totQuoteEntries;
getFieldName(<<"305">>) ->
    underlyingIDSource;
getFieldName(<<"306">>) ->
    underlyingIssuer;
getFieldName(<<"307">>) ->
    underlyingSecurityDesc;
getFieldName(<<"308">>) ->
    underlyingSecurityExchange;
getFieldName(<<"309">>) ->
    underlyingSecurityID;
getFieldName(<<"310">>) ->
    underlyingSecurityType;
getFieldName(<<"311">>) ->
    underlyingSymbol;
getFieldName(<<"312">>) ->
    underlyingSymbolSfx;
getFieldName(<<"313">>) ->
    underlyingMaturityMonthYear;
getFieldName(<<"314">>) ->
    underlyingMaturityDay;
getFieldName(<<"315">>) ->
    underlyingPutOrCall;
getFieldName(<<"316">>) ->
    underlyingStrikePrice;
getFieldName(<<"317">>) ->
    underlyingOptAttribute;
getFieldName(<<"318">>) ->
    underlyingCurrency;
getFieldName(<<"319">>) ->
    ratioQty;
getFieldName(<<"320">>) ->
    securityReqID;
getFieldName(<<"321">>) ->
    securityRequestType;
getFieldName(<<"322">>) ->
    securityResponseID;
getFieldName(<<"323">>) ->
    securityResponseType;
getFieldName(<<"324">>) ->
    securityStatusReqID;
getFieldName(<<"325">>) ->
    unsolicitedIndicator;
getFieldName(<<"326">>) ->
    securityTradingStatus;
getFieldName(<<"327">>) ->
    haltReason;
getFieldName(<<"328">>) ->
    inViewOfCommon;
getFieldName(<<"329">>) ->
    dueToRelated;
getFieldName(<<"330">>) ->
    buyVolume;
getFieldName(<<"331">>) ->
    sellVolume;
getFieldName(<<"332">>) ->
    highPx;
getFieldName(<<"333">>) ->
    lowPx;
getFieldName(<<"334">>) ->
    adjustment;
getFieldName(<<"335">>) ->
    tradSesReqID;
getFieldName(<<"336">>) ->
    tradingSessionID;
getFieldName(<<"337">>) ->
    contraTrader;
getFieldName(<<"338">>) ->
    tradSesMethod;
getFieldName(<<"339">>) ->
    tradSesMode;
getFieldName(<<"340">>) ->
    tradSesStatus;
getFieldName(<<"341">>) ->
    tradSesStartTime;
getFieldName(<<"342">>) ->
    tradSesOpenTime;
getFieldName(<<"343">>) ->
    tradSesPreCloseTime;
getFieldName(<<"344">>) ->
    tradSesCloseTime;
getFieldName(<<"345">>) ->
    tradSesEndTime;
getFieldName(<<"346">>) ->
    numberOfOrders;
getFieldName(<<"347">>) ->
    messageEncoding;
getFieldName(<<"348">>) ->
    encodedIssuerLen;
getFieldName(<<"349">>) ->
    encodedIssuer;
getFieldName(<<"350">>) ->
    encodedSecurityDescLen;
getFieldName(<<"351">>) ->
    encodedSecurityDesc;
getFieldName(<<"352">>) ->
    encodedListExecInstLen;
getFieldName(<<"353">>) ->
    encodedListExecInst;
getFieldName(<<"354">>) ->
    encodedTextLen;
getFieldName(<<"355">>) ->
    encodedText;
getFieldName(<<"356">>) ->
    encodedSubjectLen;
getFieldName(<<"357">>) ->
    encodedSubject;
getFieldName(<<"358">>) ->
    encodedHeadlineLen;
getFieldName(<<"359">>) ->
    encodedHeadline;
getFieldName(<<"360">>) ->
    encodedAllocTextLen;
getFieldName(<<"361">>) ->
    encodedAllocText;
getFieldName(<<"362">>) ->
    encodedUnderlyingIssuerLen;
getFieldName(<<"363">>) ->
    encodedUnderlyingIssuer;
getFieldName(<<"364">>) ->
    encodedUnderlyingSecurityDescLen;
getFieldName(<<"365">>) ->
    encodedUnderlyingSecurityDesc;
getFieldName(<<"366">>) ->
    allocPrice;
getFieldName(<<"367">>) ->
    quoteSetValidUntilTime;
getFieldName(<<"368">>) ->
    quoteEntryRejectReason;
getFieldName(<<"369">>) ->
    lastMsgSeqNumProcessed;
getFieldName(<<"370">>) ->
    onBehalfOfSendingTime;
getFieldName(<<"371">>) ->
    refTagID;
getFieldName(<<"372">>) ->
    refMsgType;
getFieldName(<<"373">>) ->
    sessionRejectReason;
getFieldName(<<"374">>) ->
    bidRequestTransType;
getFieldName(<<"375">>) ->
    contraBroker;
getFieldName(<<"376">>) ->
    complianceID;
getFieldName(<<"377">>) ->
    solicitedFlag;
getFieldName(<<"378">>) ->
    execRestatementReason;
getFieldName(<<"379">>) ->
    businessRejectRefID;
getFieldName(<<"380">>) ->
    businessRejectReason;
getFieldName(<<"381">>) ->
    grossTradeAmt;
getFieldName(<<"382">>) ->
    noContraBrokers;
getFieldName(<<"383">>) ->
    maxMessageSize;
getFieldName(<<"384">>) ->
    noMsgTypes;
getFieldName(<<"385">>) ->
    msgDirection;
getFieldName(<<"386">>) ->
    noTradingSessions;
getFieldName(<<"387">>) ->
    totalVolumeTraded;
getFieldName(<<"388">>) ->
    discretionInst;
getFieldName(<<"389">>) ->
    discretionOffset;
getFieldName(<<"390">>) ->
    bidID;
getFieldName(<<"391">>) ->
    clientBidID;
getFieldName(<<"392">>) ->
    listName;
getFieldName(<<"393">>) ->
    totalNumSecurities;
getFieldName(<<"394">>) ->
    bidType;
getFieldName(<<"395">>) ->
    numTickets;
getFieldName(<<"396">>) ->
    sideValue1;
getFieldName(<<"397">>) ->
    sideValue2;
getFieldName(<<"398">>) ->
    noBidDescriptors;
getFieldName(<<"399">>) ->
    bidDescriptorType;
getFieldName(<<"400">>) ->
    bidDescriptor;
getFieldName(<<"401">>) ->
    sideValueInd;
getFieldName(<<"402">>) ->
    liquidityPctLow;
getFieldName(<<"403">>) ->
    liquidityPctHigh;
getFieldName(<<"404">>) ->
    liquidityValue;
getFieldName(<<"405">>) ->
    eFPTrackingError;
getFieldName(<<"406">>) ->
    fairValue;
getFieldName(<<"407">>) ->
    outsideIndexPct;
getFieldName(<<"408">>) ->
    valueOfFutures;
getFieldName(<<"409">>) ->
    liquidityIndType;
getFieldName(<<"410">>) ->
    wtAverageLiquidity;
getFieldName(<<"411">>) ->
    exchangeForPhysical;
getFieldName(<<"412">>) ->
    outMainCntryUIndex;
getFieldName(<<"413">>) ->
    crossPercent;
getFieldName(<<"414">>) ->
    progRptReqs;
getFieldName(<<"415">>) ->
    progPeriodInterval;
getFieldName(<<"416">>) ->
    incTaxInd;
getFieldName(<<"417">>) ->
    numBidders;
getFieldName(<<"418">>) ->
    tradeType;
getFieldName(<<"419">>) ->
    basisPxType;
getFieldName(<<"420">>) ->
    noBidComponents;
getFieldName(<<"421">>) ->
    country;
getFieldName(<<"422">>) ->
    totNoStrikes;
getFieldName(<<"423">>) ->
    priceType;
getFieldName(<<"424">>) ->
    dayOrderQty;
getFieldName(<<"425">>) ->
    dayCumQty;
getFieldName(<<"426">>) ->
    dayAvgPx;
getFieldName(<<"427">>) ->
    gTBookingInst;
getFieldName(<<"428">>) ->
    noStrikes;
getFieldName(<<"429">>) ->
    listStatusType;
getFieldName(<<"430">>) ->
    netGrossInd;
getFieldName(<<"431">>) ->
    listOrderStatus;
getFieldName(<<"432">>) ->
    expireDate;
getFieldName(<<"433">>) ->
    listExecInstType;
getFieldName(<<"434">>) ->
    cxlRejResponseTo;
getFieldName(<<"435">>) ->
    underlyingCouponRate;
getFieldName(<<"436">>) ->
    underlyingContractMultiplier;
getFieldName(<<"437">>) ->
    contraTradeQty;
getFieldName(<<"438">>) ->
    contraTradeTime;
getFieldName(<<"439">>) ->
    clearingFirm;
getFieldName(<<"440">>) ->
    clearingAccount;
getFieldName(<<"441">>) ->
    liquidityNumSecurities;
getFieldName(<<"442">>) ->
    multiLegReportingType;
getFieldName(<<"443">>) ->
    strikeTime;
getFieldName(<<"444">>) ->
    listStatusText;
getFieldName(<<"445">>) ->
    encodedListStatusTextLen;
getFieldName(<<"446">>) ->
    encodedListStatusText;
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
getTagId(sendingDate) ->
    <<"51">>;
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
getTagId(totNoOrders) ->
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
getTagId(resetSeqNumFlag) ->
    <<"141">>;
getTagId(senderLocationID) ->
    <<"142">>;
getTagId(targetLocationID) ->
    <<"143">>;
getTagId(onBehalfOfLocationID) ->
    <<"144">>;
getTagId(deliverToLocationID) ->
    <<"145">>;
getTagId(noRelatedSym) ->
    <<"146">>;
getTagId(subject) ->
    <<"147">>;
getTagId(headline) ->
    <<"148">>;
getTagId(uRLLink) ->
    <<"149">>;
getTagId(execType) ->
    <<"150">>;
getTagId(leavesQty) ->
    <<"151">>;
getTagId(cashOrderQty) ->
    <<"152">>;
getTagId(allocAvgPx) ->
    <<"153">>;
getTagId(allocNetMoney) ->
    <<"154">>;
getTagId(settlCurrFxRate) ->
    <<"155">>;
getTagId(settlCurrFxRateCalc) ->
    <<"156">>;
getTagId(numDaysInterest) ->
    <<"157">>;
getTagId(accruedInterestRate) ->
    <<"158">>;
getTagId(accruedInterestAmt) ->
    <<"159">>;
getTagId(settlInstMode) ->
    <<"160">>;
getTagId(allocText) ->
    <<"161">>;
getTagId(settlInstID) ->
    <<"162">>;
getTagId(settlInstTransType) ->
    <<"163">>;
getTagId(emailThreadID) ->
    <<"164">>;
getTagId(settlInstSource) ->
    <<"165">>;
getTagId(settlLocation) ->
    <<"166">>;
getTagId(securityType) ->
    <<"167">>;
getTagId(effectiveTime) ->
    <<"168">>;
getTagId(standInstDbType) ->
    <<"169">>;
getTagId(standInstDbName) ->
    <<"170">>;
getTagId(standInstDbID) ->
    <<"171">>;
getTagId(settlDeliveryType) ->
    <<"172">>;
getTagId(settlDepositoryCode) ->
    <<"173">>;
getTagId(settlBrkrCode) ->
    <<"174">>;
getTagId(settlInstCode) ->
    <<"175">>;
getTagId(securitySettlAgentName) ->
    <<"176">>;
getTagId(securitySettlAgentCode) ->
    <<"177">>;
getTagId(securitySettlAgentAcctNum) ->
    <<"178">>;
getTagId(securitySettlAgentAcctName) ->
    <<"179">>;
getTagId(securitySettlAgentContactName) ->
    <<"180">>;
getTagId(securitySettlAgentContactPhone) ->
    <<"181">>;
getTagId(cashSettlAgentName) ->
    <<"182">>;
getTagId(cashSettlAgentCode) ->
    <<"183">>;
getTagId(cashSettlAgentAcctNum) ->
    <<"184">>;
getTagId(cashSettlAgentAcctName) ->
    <<"185">>;
getTagId(cashSettlAgentContactName) ->
    <<"186">>;
getTagId(cashSettlAgentContactPhone) ->
    <<"187">>;
getTagId(bidSpotRate) ->
    <<"188">>;
getTagId(bidForwardPoints) ->
    <<"189">>;
getTagId(offerSpotRate) ->
    <<"190">>;
getTagId(offerForwardPoints) ->
    <<"191">>;
getTagId(orderQty2) ->
    <<"192">>;
getTagId(futSettDate2) ->
    <<"193">>;
getTagId(lastSpotRate) ->
    <<"194">>;
getTagId(lastForwardPoints) ->
    <<"195">>;
getTagId(allocLinkID) ->
    <<"196">>;
getTagId(allocLinkType) ->
    <<"197">>;
getTagId(secondaryOrderID) ->
    <<"198">>;
getTagId(noIOIQualifiers) ->
    <<"199">>;
getTagId(maturityMonthYear) ->
    <<"200">>;
getTagId(putOrCall) ->
    <<"201">>;
getTagId(strikePrice) ->
    <<"202">>;
getTagId(coveredOrUncovered) ->
    <<"203">>;
getTagId(customerOrFirm) ->
    <<"204">>;
getTagId(maturityDay) ->
    <<"205">>;
getTagId(optAttribute) ->
    <<"206">>;
getTagId(securityExchange) ->
    <<"207">>;
getTagId(notifyBrokerOfCredit) ->
    <<"208">>;
getTagId(allocHandlInst) ->
    <<"209">>;
getTagId(maxShow) ->
    <<"210">>;
getTagId(pegDifference) ->
    <<"211">>;
getTagId(xmlDataLen) ->
    <<"212">>;
getTagId(xmlData) ->
    <<"213">>;
getTagId(settlInstRefID) ->
    <<"214">>;
getTagId(noRoutingIDs) ->
    <<"215">>;
getTagId(routingType) ->
    <<"216">>;
getTagId(routingID) ->
    <<"217">>;
getTagId(spreadToBenchmark) ->
    <<"218">>;
getTagId(benchmark) ->
    <<"219">>;
getTagId(couponRate) ->
    <<"223">>;
getTagId(contractMultiplier) ->
    <<"231">>;
getTagId(mDReqID) ->
    <<"262">>;
getTagId(subscriptionRequestType) ->
    <<"263">>;
getTagId(marketDepth) ->
    <<"264">>;
getTagId(mDUpdateType) ->
    <<"265">>;
getTagId(aggregatedBook) ->
    <<"266">>;
getTagId(noMDEntryTypes) ->
    <<"267">>;
getTagId(noMDEntries) ->
    <<"268">>;
getTagId(mDEntryType) ->
    <<"269">>;
getTagId(mDEntryPx) ->
    <<"270">>;
getTagId(mDEntrySize) ->
    <<"271">>;
getTagId(mDEntryDate) ->
    <<"272">>;
getTagId(mDEntryTime) ->
    <<"273">>;
getTagId(tickDirection) ->
    <<"274">>;
getTagId(mDMkt) ->
    <<"275">>;
getTagId(quoteCondition) ->
    <<"276">>;
getTagId(tradeCondition) ->
    <<"277">>;
getTagId(mDEntryID) ->
    <<"278">>;
getTagId(mDUpdateAction) ->
    <<"279">>;
getTagId(mDEntryRefID) ->
    <<"280">>;
getTagId(mDReqRejReason) ->
    <<"281">>;
getTagId(mDEntryOriginator) ->
    <<"282">>;
getTagId(locationID) ->
    <<"283">>;
getTagId(deskID) ->
    <<"284">>;
getTagId(deleteReason) ->
    <<"285">>;
getTagId(openCloseSettleFlag) ->
    <<"286">>;
getTagId(sellerDays) ->
    <<"287">>;
getTagId(mDEntryBuyer) ->
    <<"288">>;
getTagId(mDEntrySeller) ->
    <<"289">>;
getTagId(mDEntryPositionNo) ->
    <<"290">>;
getTagId(financialStatus) ->
    <<"291">>;
getTagId(corporateAction) ->
    <<"292">>;
getTagId(defBidSize) ->
    <<"293">>;
getTagId(defOfferSize) ->
    <<"294">>;
getTagId(noQuoteEntries) ->
    <<"295">>;
getTagId(noQuoteSets) ->
    <<"296">>;
getTagId(quoteAckStatus) ->
    <<"297">>;
getTagId(quoteCancelType) ->
    <<"298">>;
getTagId(quoteEntryID) ->
    <<"299">>;
getTagId(quoteRejectReason) ->
    <<"300">>;
getTagId(quoteResponseLevel) ->
    <<"301">>;
getTagId(quoteSetID) ->
    <<"302">>;
getTagId(quoteRequestType) ->
    <<"303">>;
getTagId(totQuoteEntries) ->
    <<"304">>;
getTagId(underlyingIDSource) ->
    <<"305">>;
getTagId(underlyingIssuer) ->
    <<"306">>;
getTagId(underlyingSecurityDesc) ->
    <<"307">>;
getTagId(underlyingSecurityExchange) ->
    <<"308">>;
getTagId(underlyingSecurityID) ->
    <<"309">>;
getTagId(underlyingSecurityType) ->
    <<"310">>;
getTagId(underlyingSymbol) ->
    <<"311">>;
getTagId(underlyingSymbolSfx) ->
    <<"312">>;
getTagId(underlyingMaturityMonthYear) ->
    <<"313">>;
getTagId(underlyingMaturityDay) ->
    <<"314">>;
getTagId(underlyingPutOrCall) ->
    <<"315">>;
getTagId(underlyingStrikePrice) ->
    <<"316">>;
getTagId(underlyingOptAttribute) ->
    <<"317">>;
getTagId(underlyingCurrency) ->
    <<"318">>;
getTagId(ratioQty) ->
    <<"319">>;
getTagId(securityReqID) ->
    <<"320">>;
getTagId(securityRequestType) ->
    <<"321">>;
getTagId(securityResponseID) ->
    <<"322">>;
getTagId(securityResponseType) ->
    <<"323">>;
getTagId(securityStatusReqID) ->
    <<"324">>;
getTagId(unsolicitedIndicator) ->
    <<"325">>;
getTagId(securityTradingStatus) ->
    <<"326">>;
getTagId(haltReason) ->
    <<"327">>;
getTagId(inViewOfCommon) ->
    <<"328">>;
getTagId(dueToRelated) ->
    <<"329">>;
getTagId(buyVolume) ->
    <<"330">>;
getTagId(sellVolume) ->
    <<"331">>;
getTagId(highPx) ->
    <<"332">>;
getTagId(lowPx) ->
    <<"333">>;
getTagId(adjustment) ->
    <<"334">>;
getTagId(tradSesReqID) ->
    <<"335">>;
getTagId(tradingSessionID) ->
    <<"336">>;
getTagId(contraTrader) ->
    <<"337">>;
getTagId(tradSesMethod) ->
    <<"338">>;
getTagId(tradSesMode) ->
    <<"339">>;
getTagId(tradSesStatus) ->
    <<"340">>;
getTagId(tradSesStartTime) ->
    <<"341">>;
getTagId(tradSesOpenTime) ->
    <<"342">>;
getTagId(tradSesPreCloseTime) ->
    <<"343">>;
getTagId(tradSesCloseTime) ->
    <<"344">>;
getTagId(tradSesEndTime) ->
    <<"345">>;
getTagId(numberOfOrders) ->
    <<"346">>;
getTagId(messageEncoding) ->
    <<"347">>;
getTagId(encodedIssuerLen) ->
    <<"348">>;
getTagId(encodedIssuer) ->
    <<"349">>;
getTagId(encodedSecurityDescLen) ->
    <<"350">>;
getTagId(encodedSecurityDesc) ->
    <<"351">>;
getTagId(encodedListExecInstLen) ->
    <<"352">>;
getTagId(encodedListExecInst) ->
    <<"353">>;
getTagId(encodedTextLen) ->
    <<"354">>;
getTagId(encodedText) ->
    <<"355">>;
getTagId(encodedSubjectLen) ->
    <<"356">>;
getTagId(encodedSubject) ->
    <<"357">>;
getTagId(encodedHeadlineLen) ->
    <<"358">>;
getTagId(encodedHeadline) ->
    <<"359">>;
getTagId(encodedAllocTextLen) ->
    <<"360">>;
getTagId(encodedAllocText) ->
    <<"361">>;
getTagId(encodedUnderlyingIssuerLen) ->
    <<"362">>;
getTagId(encodedUnderlyingIssuer) ->
    <<"363">>;
getTagId(encodedUnderlyingSecurityDescLen) ->
    <<"364">>;
getTagId(encodedUnderlyingSecurityDesc) ->
    <<"365">>;
getTagId(allocPrice) ->
    <<"366">>;
getTagId(quoteSetValidUntilTime) ->
    <<"367">>;
getTagId(quoteEntryRejectReason) ->
    <<"368">>;
getTagId(lastMsgSeqNumProcessed) ->
    <<"369">>;
getTagId(onBehalfOfSendingTime) ->
    <<"370">>;
getTagId(refTagID) ->
    <<"371">>;
getTagId(refMsgType) ->
    <<"372">>;
getTagId(sessionRejectReason) ->
    <<"373">>;
getTagId(bidRequestTransType) ->
    <<"374">>;
getTagId(contraBroker) ->
    <<"375">>;
getTagId(complianceID) ->
    <<"376">>;
getTagId(solicitedFlag) ->
    <<"377">>;
getTagId(execRestatementReason) ->
    <<"378">>;
getTagId(businessRejectRefID) ->
    <<"379">>;
getTagId(businessRejectReason) ->
    <<"380">>;
getTagId(grossTradeAmt) ->
    <<"381">>;
getTagId(noContraBrokers) ->
    <<"382">>;
getTagId(maxMessageSize) ->
    <<"383">>;
getTagId(noMsgTypes) ->
    <<"384">>;
getTagId(msgDirection) ->
    <<"385">>;
getTagId(noTradingSessions) ->
    <<"386">>;
getTagId(totalVolumeTraded) ->
    <<"387">>;
getTagId(discretionInst) ->
    <<"388">>;
getTagId(discretionOffset) ->
    <<"389">>;
getTagId(bidID) ->
    <<"390">>;
getTagId(clientBidID) ->
    <<"391">>;
getTagId(listName) ->
    <<"392">>;
getTagId(totalNumSecurities) ->
    <<"393">>;
getTagId(bidType) ->
    <<"394">>;
getTagId(numTickets) ->
    <<"395">>;
getTagId(sideValue1) ->
    <<"396">>;
getTagId(sideValue2) ->
    <<"397">>;
getTagId(noBidDescriptors) ->
    <<"398">>;
getTagId(bidDescriptorType) ->
    <<"399">>;
getTagId(bidDescriptor) ->
    <<"400">>;
getTagId(sideValueInd) ->
    <<"401">>;
getTagId(liquidityPctLow) ->
    <<"402">>;
getTagId(liquidityPctHigh) ->
    <<"403">>;
getTagId(liquidityValue) ->
    <<"404">>;
getTagId(eFPTrackingError) ->
    <<"405">>;
getTagId(fairValue) ->
    <<"406">>;
getTagId(outsideIndexPct) ->
    <<"407">>;
getTagId(valueOfFutures) ->
    <<"408">>;
getTagId(liquidityIndType) ->
    <<"409">>;
getTagId(wtAverageLiquidity) ->
    <<"410">>;
getTagId(exchangeForPhysical) ->
    <<"411">>;
getTagId(outMainCntryUIndex) ->
    <<"412">>;
getTagId(crossPercent) ->
    <<"413">>;
getTagId(progRptReqs) ->
    <<"414">>;
getTagId(progPeriodInterval) ->
    <<"415">>;
getTagId(incTaxInd) ->
    <<"416">>;
getTagId(numBidders) ->
    <<"417">>;
getTagId(tradeType) ->
    <<"418">>;
getTagId(basisPxType) ->
    <<"419">>;
getTagId(noBidComponents) ->
    <<"420">>;
getTagId(country) ->
    <<"421">>;
getTagId(totNoStrikes) ->
    <<"422">>;
getTagId(priceType) ->
    <<"423">>;
getTagId(dayOrderQty) ->
    <<"424">>;
getTagId(dayCumQty) ->
    <<"425">>;
getTagId(dayAvgPx) ->
    <<"426">>;
getTagId(gTBookingInst) ->
    <<"427">>;
getTagId(noStrikes) ->
    <<"428">>;
getTagId(listStatusType) ->
    <<"429">>;
getTagId(netGrossInd) ->
    <<"430">>;
getTagId(listOrderStatus) ->
    <<"431">>;
getTagId(expireDate) ->
    <<"432">>;
getTagId(listExecInstType) ->
    <<"433">>;
getTagId(cxlRejResponseTo) ->
    <<"434">>;
getTagId(underlyingCouponRate) ->
    <<"435">>;
getTagId(underlyingContractMultiplier) ->
    <<"436">>;
getTagId(contraTradeQty) ->
    <<"437">>;
getTagId(contraTradeTime) ->
    <<"438">>;
getTagId(clearingFirm) ->
    <<"439">>;
getTagId(clearingAccount) ->
    <<"440">>;
getTagId(liquidityNumSecurities) ->
    <<"441">>;
getTagId(multiLegReportingType) ->
    <<"442">>;
getTagId(strikeTime) ->
    <<"443">>;
getTagId(listStatusText) ->
    <<"444">>;
getTagId(encodedListStatusTextLen) ->
    <<"445">>;
getTagId(encodedListStatusText) ->
    <<"446">>;
getTagId(_Name) ->
    error.
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
reconvert(endSeqNo, Int) -> 
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
reconvert(execInst, fixedPegToLocalBestBidOrOfferAtTimeOfOrder) -> 
    <<"T">>;
reconvert(execInst, customerDisplayInstruction) -> 
    <<"U">>;
reconvert(execInst, netting) -> 
    <<"V">>;
reconvert(execInst, pegToVWAP) -> 
    <<"W">>;
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
reconvert(iDSource, iSOCurrencyCode) -> 
    <<"6">>;
reconvert(iDSource, iSOCountryCode) -> 
    <<"7">>;
reconvert(iDSource, exchangeSymbol) -> 
    <<"8">>;
reconvert(iDSource, consolidatedTapeAssociation) -> 
    <<"9">>;
reconvert(iOIQltyInd, high) -> 
    <<"H">>;
reconvert(iOIQltyInd, low) -> 
    <<"L">>;
reconvert(iOIQltyInd, medium) -> 
    <<"M">>;
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
reconvert(msgType, settlementInstructions) -> 
    <<"T">>;
reconvert(msgType, marketDataRequest) -> 
    <<"V">>;
reconvert(msgType, marketDataSnapshotFullRefresh) -> 
    <<"W">>;
reconvert(msgType, marketDataIncrementalRefresh) -> 
    <<"X">>;
reconvert(msgType, marketDataRequestReject) -> 
    <<"Y">>;
reconvert(msgType, quoteCancel) -> 
    <<"Z">>;
reconvert(msgType, quoteStatusRequest) -> 
    <<"a">>;
reconvert(msgType, quoteAcknowledgement) -> 
    <<"b">>;
reconvert(msgType, securityDefinitionRequest) -> 
    <<"c">>;
reconvert(msgType, securityDefinition) -> 
    <<"d">>;
reconvert(msgType, securityStatusRequest) -> 
    <<"e">>;
reconvert(msgType, securityStatus) -> 
    <<"f">>;
reconvert(msgType, tradingSessionStatusRequest) -> 
    <<"g">>;
reconvert(msgType, tradingSessionStatus) -> 
    <<"h">>;
reconvert(msgType, massQuote) -> 
    <<"i">>;
reconvert(msgType, businessMessageReject) -> 
    <<"j">>;
reconvert(msgType, bidRequest) -> 
    <<"k">>;
reconvert(msgType, bidResponse) -> 
    <<"l">>;
reconvert(msgType, listStrikePrice) -> 
    <<"m">>;
reconvert(newSeqNo, Int) -> 
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
reconvert(ordStatus, acceptedForBidding) -> 
    <<"D">>;
reconvert(ordStatus, pendingReplace) -> 
    <<"E">>;
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
reconvert(ordType, forexLimit) -> 
    <<"F">>;
reconvert(ordType, forexSwap) -> 
    <<"G">>;
reconvert(ordType, forexPreviouslyQuoted) -> 
    <<"H">>;
reconvert(ordType, funari) -> 
    <<"I">>;
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
reconvert(rule80A, shortExemptTransactionAType) -> 
    <<"B">>;
reconvert(rule80A, proprietaryNonAlgo) -> 
    <<"C">>;
reconvert(rule80A, programOrderMember) -> 
    <<"D">>;
reconvert(rule80A, shortExemptTransactionForPrincipal) -> 
    <<"E">>;
reconvert(rule80A, shortExemptTransactionWType) -> 
    <<"F">>;
reconvert(rule80A, shortExemptTransactionIType) -> 
    <<"H">>;
reconvert(rule80A, individualInvestor) -> 
    <<"I">>;
reconvert(rule80A, proprietaryAlgo) -> 
    <<"J">>;
reconvert(rule80A, agencyAlgo) -> 
    <<"K">>;
reconvert(rule80A, shortExemptTransactionMemberAffliated) -> 
    <<"L">>;
reconvert(rule80A, programOrderOtherMember) -> 
    <<"M">>;
reconvert(rule80A, agentForOtherMember) -> 
    <<"N">>;
reconvert(rule80A, proprietaryTransactionAffiliated) -> 
    <<"O">>;
reconvert(rule80A, principal) -> 
    <<"P">>;
reconvert(rule80A, transactionNonMember) -> 
    <<"R">>;
reconvert(rule80A, specialistTrades) -> 
    <<"S">>;
reconvert(rule80A, transactionUnaffiliatedMember) -> 
    <<"T">>;
reconvert(rule80A, agencyIndexArb) -> 
    <<"U">>;
reconvert(rule80A, allOtherOrdersAsAgentForOtherMember) -> 
    <<"W">>;
reconvert(rule80A, shortExemptTransactionMemberNotAffliated) -> 
    <<"X">>;
reconvert(rule80A, agencyNonAlgo) -> 
    <<"Y">>;
reconvert(rule80A, shortExemptTransactionNonMember) -> 
    <<"Z">>;
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
reconvert(side, undisclosed) -> 
    <<"7">>;
reconvert(side, cross) -> 
    <<"8">>;
reconvert(side, crossShort) -> 
    <<"9">>;
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
reconvert(totNoOrders, Int) -> 
    erlang:integer_to_list(Int);
reconvert(allocTransType, new) -> 
    <<"0">>;
reconvert(allocTransType, replace) -> 
    <<"1">>;
reconvert(allocTransType, cancel) -> 
    <<"2">>;
reconvert(allocTransType, preliminary) -> 
    <<"3">>;
reconvert(allocTransType, calculated) -> 
    <<"4">>;
reconvert(allocTransType, calculatedWithoutPreliminary) -> 
    <<"5">>;
reconvert(noOrders, Int) -> 
    erlang:integer_to_list(Int);
reconvert(avgPrxPrecision, Int) -> 
    erlang:integer_to_list(Int);
reconvert(openClose, close) -> 
    <<"C">>;
reconvert(openClose, open) -> 
    <<"O">>;
reconvert(noAllocs, Int) -> 
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
reconvert(possResend, originalTransmission) -> 
    <<"N">>;
reconvert(possResend, possibleResend) -> 
    <<"Y">>;
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
reconvert(cxlRejReason, tooLateToCancel) -> 
    <<"0">>;
reconvert(cxlRejReason, unknownOrder) -> 
    <<"1">>;
reconvert(cxlRejReason, brokerCredit) -> 
    <<"2">>;
reconvert(cxlRejReason, orderAlreadyInPendingStatus) -> 
    <<"3">>;
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
reconvert(ordRejReason, unknownOrder) -> 
    <<"5">>;
reconvert(ordRejReason, duplicateOrder) -> 
    <<"6">>;
reconvert(ordRejReason, duplicateOfAVerballyCommunicatedOrder) -> 
    <<"7">>;
reconvert(ordRejReason, staleOrder) -> 
    <<"8">>;
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
reconvert(iOIQualifier, readyToTrade) -> 
    <<"R">>;
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
reconvert(iOIQualifier, atTheMidpoint) -> 
    <<"Y">>;
reconvert(iOIQualifier, preOpen) -> 
    <<"Z">>;
reconvert(heartBtInt, Int) -> 
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
reconvert(miscFeeType, markup) -> 
    <<"8">>;
reconvert(miscFeeType, consumptionTax) -> 
    <<"9">>;
reconvert(resetSeqNumFlag, no) -> 
    <<"N">>;
reconvert(resetSeqNumFlag, yes) -> 
    <<"Y">>;
reconvert(noRelatedSym, Int) -> 
    erlang:integer_to_list(Int);
reconvert(execType, new) -> 
    <<"0">>;
reconvert(execType, partialFill) -> 
    <<"1">>;
reconvert(execType, fill) -> 
    <<"2">>;
reconvert(execType, doneForDay) -> 
    <<"3">>;
reconvert(execType, canceled) -> 
    <<"4">>;
reconvert(execType, replaced) -> 
    <<"5">>;
reconvert(execType, pendingCancel) -> 
    <<"6">>;
reconvert(execType, stopped) -> 
    <<"7">>;
reconvert(execType, rejected) -> 
    <<"8">>;
reconvert(execType, suspended) -> 
    <<"9">>;
reconvert(execType, pendingNew) -> 
    <<"A">>;
reconvert(execType, calculated) -> 
    <<"B">>;
reconvert(execType, expired) -> 
    <<"C">>;
reconvert(execType, restated) -> 
    <<"D">>;
reconvert(execType, pendingReplace) -> 
    <<"E">>;
reconvert(numDaysInterest, Int) -> 
    erlang:integer_to_list(Int);
reconvert(settlInstMode, default) -> 
    <<"0">>;
reconvert(settlInstMode, standingInstructionsProvided) -> 
    <<"1">>;
reconvert(settlInstMode, specificAllocationAccountOverriding) -> 
    <<"2">>;
reconvert(settlInstMode, specificAllocationAccountStanding) -> 
    <<"3">>;
reconvert(settlInstTransType, cancel) -> 
    <<"C">>;
reconvert(settlInstTransType, new) -> 
    <<"N">>;
reconvert(settlInstTransType, replace) -> 
    <<"R">>;
reconvert(settlInstSource, brokerCredit) -> 
    <<"1">>;
reconvert(settlInstSource, institution) -> 
    <<"2">>;
reconvert(settlLocation, cEDEL) -> 
    <<"CED">>;
reconvert(settlLocation, depositoryTrustCompany) -> 
    <<"DTC">>;
reconvert(settlLocation, euroClear) -> 
    <<"EUR">>;
reconvert(settlLocation, federalBookEntry) -> 
    <<"FED">>;
reconvert(settlLocation, localMarketSettleLocation) -> 
    <<"ISO Country Code">>;
reconvert(settlLocation, physical) -> 
    <<"PNY">>;
reconvert(settlLocation, participantTrustCompany) -> 
    <<"PTC">>;
reconvert(securityType, wildcard) -> 
    <<"?">>;
reconvert(securityType, bankersAcceptance) -> 
    <<"BA">>;
reconvert(securityType, convertibleBond) -> 
    <<"CB">>;
reconvert(securityType, certificateOfDeposit) -> 
    <<"CD">>;
reconvert(securityType, collateralizedMortgageObligation) -> 
    <<"CMO">>;
reconvert(securityType, corporateBond) -> 
    <<"CORP">>;
reconvert(securityType, commercialPaper) -> 
    <<"CP">>;
reconvert(securityType, corporatePrivatePlacement) -> 
    <<"CPP">>;
reconvert(securityType, commonStock) -> 
    <<"CS">>;
reconvert(securityType, federalHousingAuthority) -> 
    <<"FHA">>;
reconvert(securityType, federalHomeLoan) -> 
    <<"FHL">>;
reconvert(securityType, federalNationalMortgageAssociation) -> 
    <<"FN">>;
reconvert(securityType, foreignExchangeContract) -> 
    <<"FOR">>;
reconvert(securityType, future) -> 
    <<"FUT">>;
reconvert(securityType, governmentNationalMortgageAssociation) -> 
    <<"GN">>;
reconvert(securityType, treasuriesAgencyDebenture) -> 
    <<"GOVT">>;
reconvert(securityType, iOETTEMortgage) -> 
    <<"IET">>;
reconvert(securityType, mutualFund) -> 
    <<"MF">>;
reconvert(securityType, mortgageInterestOnly) -> 
    <<"MIO">>;
reconvert(securityType, mortgagePrincipalOnly) -> 
    <<"MPO">>;
reconvert(securityType, mortgagePrivatePlacement) -> 
    <<"MPP">>;
reconvert(securityType, miscellaneousPassThrough) -> 
    <<"MPT">>;
reconvert(securityType, municipalBond) -> 
    <<"MUNI">>;
reconvert(securityType, noSecurityType) -> 
    <<"NONE">>;
reconvert(securityType, option) -> 
    <<"OPT">>;
reconvert(securityType, preferredStock) -> 
    <<"PS">>;
reconvert(securityType, repurchaseAgreement) -> 
    <<"RP">>;
reconvert(securityType, reverseRepurchaseAgreement) -> 
    <<"RVRP">>;
reconvert(securityType, studentLoanMarketingAssociation) -> 
    <<"SL">>;
reconvert(securityType, timeDeposit) -> 
    <<"TD">>;
reconvert(securityType, uSTreasuryBillOld) -> 
    <<"USTB">>;
reconvert(securityType, warrant) -> 
    <<"WAR">>;
reconvert(securityType, catsTigersAndLions) -> 
    <<"ZOO">>;
reconvert(standInstDbType, other) -> 
    <<"0">>;
reconvert(standInstDbType, dTCSID) -> 
    <<"1">>;
reconvert(standInstDbType, thomsonALERT) -> 
    <<"2">>;
reconvert(standInstDbType, aGlobalCustodian) -> 
    <<"3">>;
reconvert(settlDeliveryType, Int) -> 
    erlang:integer_to_list(Int);
reconvert(allocLinkType, fXNetting) -> 
    <<"0">>;
reconvert(allocLinkType, fXSwap) -> 
    <<"1">>;
reconvert(noIOIQualifiers, Int) -> 
    erlang:integer_to_list(Int);
reconvert(putOrCall, put) -> 
    <<"0">>;
reconvert(putOrCall, call) -> 
    <<"1">>;
reconvert(coveredOrUncovered, covered) -> 
    <<"0">>;
reconvert(coveredOrUncovered, uncovered) -> 
    <<"1">>;
reconvert(customerOrFirm, customer) -> 
    <<"0">>;
reconvert(customerOrFirm, firm) -> 
    <<"1">>;
reconvert(maturityDay, Int) -> 
    erlang:integer_to_list(Int);
reconvert(notifyBrokerOfCredit, detailsShouldNotBeCommunicated) -> 
    <<"N">>;
reconvert(notifyBrokerOfCredit, detailsShouldBeCommunicated) -> 
    <<"Y">>;
reconvert(allocHandlInst, match) -> 
    <<"1">>;
reconvert(allocHandlInst, forward) -> 
    <<"2">>;
reconvert(allocHandlInst, forwardAndMatch) -> 
    <<"3">>;
reconvert(xmlDataLen, Int) -> 
    erlang:integer_to_list(Int);
reconvert(noRoutingIDs, Int) -> 
    erlang:integer_to_list(Int);
reconvert(routingType, targetFirm) -> 
    <<"1">>;
reconvert(routingType, targetList) -> 
    <<"2">>;
reconvert(routingType, blockFirm) -> 
    <<"3">>;
reconvert(routingType, blockList) -> 
    <<"4">>;
reconvert(benchmark, cURVE) -> 
    <<"1">>;
reconvert(benchmark, fiveYR) -> 
    <<"2">>;
reconvert(benchmark, oLD5) -> 
    <<"3">>;
reconvert(benchmark, tenYR) -> 
    <<"4">>;
reconvert(benchmark, oLD10) -> 
    <<"5">>;
reconvert(benchmark, thirtyYR) -> 
    <<"6">>;
reconvert(benchmark, oLD30) -> 
    <<"7">>;
reconvert(benchmark, threeMOLIBOR) -> 
    <<"8">>;
reconvert(benchmark, sixMOLIBOR) -> 
    <<"9">>;
reconvert(subscriptionRequestType, snapshot) -> 
    <<"0">>;
reconvert(subscriptionRequestType, snapshotAndUpdates) -> 
    <<"1">>;
reconvert(subscriptionRequestType, disablePreviousSnapshot) -> 
    <<"2">>;
reconvert(marketDepth, Int) -> 
    erlang:integer_to_list(Int);
reconvert(mDUpdateType, fullRefresh) -> 
    <<"0">>;
reconvert(mDUpdateType, incrementalRefresh) -> 
    <<"1">>;
reconvert(aggregatedBook, bookEntriesShouldNotBeAggregated) -> 
    <<"N">>;
reconvert(aggregatedBook, bookEntriesToBeAggregated) -> 
    <<"Y">>;
reconvert(noMDEntryTypes, Int) -> 
    erlang:integer_to_list(Int);
reconvert(noMDEntries, Int) -> 
    erlang:integer_to_list(Int);
reconvert(mDEntryType, bid) -> 
    <<"0">>;
reconvert(mDEntryType, offer) -> 
    <<"1">>;
reconvert(mDEntryType, trade) -> 
    <<"2">>;
reconvert(mDEntryType, indexValue) -> 
    <<"3">>;
reconvert(mDEntryType, openingPrice) -> 
    <<"4">>;
reconvert(mDEntryType, closingPrice) -> 
    <<"5">>;
reconvert(mDEntryType, settlementPrice) -> 
    <<"6">>;
reconvert(mDEntryType, tradingSessionHighPrice) -> 
    <<"7">>;
reconvert(mDEntryType, tradingSessionLowPrice) -> 
    <<"8">>;
reconvert(mDEntryType, tradingSessionVWAPPrice) -> 
    <<"9">>;
reconvert(tickDirection, plusTick) -> 
    <<"0">>;
reconvert(tickDirection, zeroPlusTick) -> 
    <<"1">>;
reconvert(tickDirection, minusTick) -> 
    <<"2">>;
reconvert(tickDirection, zeroMinusTick) -> 
    <<"3">>;
reconvert(quoteCondition, open) -> 
    <<"A">>;
reconvert(quoteCondition, closed) -> 
    <<"B">>;
reconvert(quoteCondition, exchangeBest) -> 
    <<"C">>;
reconvert(quoteCondition, consolidatedBest) -> 
    <<"D">>;
reconvert(quoteCondition, locked) -> 
    <<"E">>;
reconvert(quoteCondition, crossed) -> 
    <<"F">>;
reconvert(quoteCondition, depth) -> 
    <<"G">>;
reconvert(quoteCondition, fastTrading) -> 
    <<"H">>;
reconvert(quoteCondition, nonFirm) -> 
    <<"I">>;
reconvert(tradeCondition, cash) -> 
    <<"A">>;
reconvert(tradeCondition, averagePriceTrade) -> 
    <<"B">>;
reconvert(tradeCondition, cashTrade) -> 
    <<"C">>;
reconvert(tradeCondition, nextDay) -> 
    <<"D">>;
reconvert(tradeCondition, opening) -> 
    <<"E">>;
reconvert(tradeCondition, intradayTradeDetail) -> 
    <<"F">>;
reconvert(tradeCondition, rule127Trade) -> 
    <<"G">>;
reconvert(tradeCondition, rule155Trade) -> 
    <<"H">>;
reconvert(tradeCondition, soldLast) -> 
    <<"I">>;
reconvert(tradeCondition, nextDayTrade) -> 
    <<"J">>;
reconvert(tradeCondition, opened) -> 
    <<"K">>;
reconvert(tradeCondition, seller) -> 
    <<"L">>;
reconvert(tradeCondition, sold) -> 
    <<"M">>;
reconvert(tradeCondition, stoppedStock) -> 
    <<"N">>;
reconvert(mDUpdateAction, new) -> 
    <<"0">>;
reconvert(mDUpdateAction, change) -> 
    <<"1">>;
reconvert(mDUpdateAction, delete) -> 
    <<"2">>;
reconvert(mDReqRejReason, unknownSymbol) -> 
    <<"0">>;
reconvert(mDReqRejReason, duplicateMDReqID) -> 
    <<"1">>;
reconvert(mDReqRejReason, insufficientBandwidth) -> 
    <<"2">>;
reconvert(mDReqRejReason, insufficientPermissions) -> 
    <<"3">>;
reconvert(mDReqRejReason, unsupportedSubscriptionRequestType) -> 
    <<"4">>;
reconvert(mDReqRejReason, unsupportedMarketDepth) -> 
    <<"5">>;
reconvert(mDReqRejReason, unsupportedMDUpdateType) -> 
    <<"6">>;
reconvert(mDReqRejReason, unsupportedAggregatedBook) -> 
    <<"7">>;
reconvert(mDReqRejReason, unsupportedMDEntryType) -> 
    <<"8">>;
reconvert(deleteReason, cancellation) -> 
    <<"0">>;
reconvert(deleteReason, error) -> 
    <<"1">>;
reconvert(openCloseSettleFlag, dailyOpen) -> 
    <<"0">>;
reconvert(openCloseSettleFlag, sessionOpen) -> 
    <<"1">>;
reconvert(openCloseSettleFlag, deliverySettlementEntry) -> 
    <<"2">>;
reconvert(sellerDays, Int) -> 
    erlang:integer_to_list(Int);
reconvert(mDEntryPositionNo, Int) -> 
    erlang:integer_to_list(Int);
reconvert(financialStatus, bankrupt) -> 
    <<"1">>;
reconvert(corporateAction, exDividend) -> 
    <<"A">>;
reconvert(corporateAction, exDistribution) -> 
    <<"B">>;
reconvert(corporateAction, exRights) -> 
    <<"C">>;
reconvert(corporateAction, new) -> 
    <<"D">>;
reconvert(corporateAction, exInterest) -> 
    <<"E">>;
reconvert(noQuoteEntries, Int) -> 
    erlang:integer_to_list(Int);
reconvert(noQuoteSets, Int) -> 
    erlang:integer_to_list(Int);
reconvert(quoteAckStatus, accepted) -> 
    <<"0">>;
reconvert(quoteAckStatus, cancelForSymbol) -> 
    <<"1">>;
reconvert(quoteAckStatus, canceledForSecurityType) -> 
    <<"2">>;
reconvert(quoteAckStatus, canceledForUnderlying) -> 
    <<"3">>;
reconvert(quoteAckStatus, canceledAll) -> 
    <<"4">>;
reconvert(quoteAckStatus, rejected) -> 
    <<"5">>;
reconvert(quoteCancelType, cancelForOneOrMoreSecurities) -> 
    <<"1">>;
reconvert(quoteCancelType, cancelForSecurityType) -> 
    <<"2">>;
reconvert(quoteCancelType, cancelForUnderlyingSecurity) -> 
    <<"3">>;
reconvert(quoteCancelType, cancelAllQuotes) -> 
    <<"4">>;
reconvert(quoteRejectReason, unknownSymbol) -> 
    <<"1">>;
reconvert(quoteRejectReason, exchange) -> 
    <<"2">>;
reconvert(quoteRejectReason, quoteRequestExceedsLimit) -> 
    <<"3">>;
reconvert(quoteRejectReason, tooLateToEnter) -> 
    <<"4">>;
reconvert(quoteRejectReason, unknownQuote) -> 
    <<"5">>;
reconvert(quoteRejectReason, duplicateQuote) -> 
    <<"6">>;
reconvert(quoteRejectReason, invalidBid) -> 
    <<"7">>;
reconvert(quoteRejectReason, invalidPrice) -> 
    <<"8">>;
reconvert(quoteRejectReason, notAuthorizedToQuoteSecurity) -> 
    <<"9">>;
reconvert(quoteResponseLevel, noAcknowledgement) -> 
    <<"0">>;
reconvert(quoteResponseLevel, acknowledgeOnlyNegativeOrErroneousQuotes) -> 
    <<"1">>;
reconvert(quoteResponseLevel, acknowledgeEachQuoteMessage) -> 
    <<"2">>;
reconvert(quoteRequestType, manual) -> 
    <<"1">>;
reconvert(quoteRequestType, automatic) -> 
    <<"2">>;
reconvert(totQuoteEntries, Int) -> 
    erlang:integer_to_list(Int);
reconvert(underlyingMaturityDay, Int) -> 
    erlang:integer_to_list(Int);
reconvert(underlyingPutOrCall, Int) -> 
    erlang:integer_to_list(Int);
reconvert(securityRequestType, requestSecurityIdentityAndSpecifications) -> 
    <<"0">>;
reconvert(securityRequestType, requestSecurityIdentityForSpecifications) -> 
    <<"1">>;
reconvert(securityRequestType, requestListSecurityTypes) -> 
    <<"2">>;
reconvert(securityRequestType, requestListSecurities) -> 
    <<"3">>;
reconvert(securityResponseType, acceptAsIs) -> 
    <<"1">>;
reconvert(securityResponseType, acceptWithRevisions) -> 
    <<"2">>;
reconvert(securityResponseType, listOfSecurityTypesReturnedPerRequest) -> 
    <<"3">>;
reconvert(securityResponseType, listOfSecuritiesReturnedPerRequest) -> 
    <<"4">>;
reconvert(securityResponseType, rejectSecurityProposal) -> 
    <<"5">>;
reconvert(securityResponseType, cannotMatchSelectionCriteria) -> 
    <<"6">>;
reconvert(unsolicitedIndicator, messageIsBeingSentAsAResultOfAPriorRequest) -> 
    <<"N">>;
reconvert(unsolicitedIndicator, messageIsBeingSentUnsolicited) -> 
    <<"Y">>;
reconvert(securityTradingStatus, openingDelay) -> 
    <<"1">>;
reconvert(securityTradingStatus, marketOnCloseImbalanceSell) -> 
    <<"10">>;
reconvert(securityTradingStatus, noMarketImbalance) -> 
    <<"12">>;
reconvert(securityTradingStatus, noMarketOnCloseImbalance) -> 
    <<"13">>;
reconvert(securityTradingStatus, iTSPreOpening) -> 
    <<"14">>;
reconvert(securityTradingStatus, newPriceIndication) -> 
    <<"15">>;
reconvert(securityTradingStatus, tradeDisseminationTime) -> 
    <<"16">>;
reconvert(securityTradingStatus, readyToTrade) -> 
    <<"17">>;
reconvert(securityTradingStatus, notAvailableForTrading) -> 
    <<"18">>;
reconvert(securityTradingStatus, notTradedOnThisMarket) -> 
    <<"19">>;
reconvert(securityTradingStatus, tradingHalt) -> 
    <<"2">>;
reconvert(securityTradingStatus, unknownOrInvalid) -> 
    <<"20">>;
reconvert(securityTradingStatus, resume) -> 
    <<"3">>;
reconvert(securityTradingStatus, noOpen) -> 
    <<"4">>;
reconvert(securityTradingStatus, priceIndication) -> 
    <<"5">>;
reconvert(securityTradingStatus, tradingRangeIndication) -> 
    <<"6">>;
reconvert(securityTradingStatus, marketImbalanceBuy) -> 
    <<"7">>;
reconvert(securityTradingStatus, marketImbalanceSell) -> 
    <<"8">>;
reconvert(securityTradingStatus, marketOnCloseImbalanceBuy) -> 
    <<"9">>;
reconvert(haltReason, newsDissemination) -> 
    <<"D">>;
reconvert(haltReason, orderInflux) -> 
    <<"E">>;
reconvert(haltReason, orderImbalance) -> 
    <<"I">>;
reconvert(haltReason, additionalInformation) -> 
    <<"M">>;
reconvert(haltReason, newsPending) -> 
    <<"P">>;
reconvert(haltReason, equipmentChangeover) -> 
    <<"X">>;
reconvert(inViewOfCommon, haltWasNotRelatedToAHaltOfTheCommonStock) -> 
    <<"N">>;
reconvert(inViewOfCommon, haltWasDueToCommonStockBeingHalted) -> 
    <<"Y">>;
reconvert(dueToRelated, notRelatedToSecurityHalt) -> 
    <<"N">>;
reconvert(dueToRelated, relatedToSecurityHalt) -> 
    <<"Y">>;
reconvert(adjustment, cancel) -> 
    <<"1">>;
reconvert(adjustment, error) -> 
    <<"2">>;
reconvert(adjustment, correction) -> 
    <<"3">>;
reconvert(tradSesMethod, electronic) -> 
    <<"1">>;
reconvert(tradSesMethod, openOutcry) -> 
    <<"2">>;
reconvert(tradSesMethod, twoParty) -> 
    <<"3">>;
reconvert(tradSesMode, testing) -> 
    <<"1">>;
reconvert(tradSesMode, simulated) -> 
    <<"2">>;
reconvert(tradSesMode, production) -> 
    <<"3">>;
reconvert(tradSesStatus, halted) -> 
    <<"1">>;
reconvert(tradSesStatus, open) -> 
    <<"2">>;
reconvert(tradSesStatus, closed) -> 
    <<"3">>;
reconvert(tradSesStatus, preOpen) -> 
    <<"4">>;
reconvert(tradSesStatus, preClose) -> 
    <<"5">>;
reconvert(numberOfOrders, Int) -> 
    erlang:integer_to_list(Int);
reconvert(messageEncoding, eUCJP) -> 
    <<"EUC-JP">>;
reconvert(messageEncoding, iSO2022JP) -> 
    <<"ISO-2022-JP">>;
reconvert(messageEncoding, shiftJIS) -> 
    <<"Shift_JIS">>;
reconvert(messageEncoding, uTF8) -> 
    <<"UTF-8">>;
reconvert(encodedIssuerLen, Int) -> 
    erlang:integer_to_list(Int);
reconvert(encodedSecurityDescLen, Int) -> 
    erlang:integer_to_list(Int);
reconvert(encodedListExecInstLen, Int) -> 
    erlang:integer_to_list(Int);
reconvert(encodedTextLen, Int) -> 
    erlang:integer_to_list(Int);
reconvert(encodedSubjectLen, Int) -> 
    erlang:integer_to_list(Int);
reconvert(encodedHeadlineLen, Int) -> 
    erlang:integer_to_list(Int);
reconvert(encodedAllocTextLen, Int) -> 
    erlang:integer_to_list(Int);
reconvert(encodedUnderlyingIssuerLen, Int) -> 
    erlang:integer_to_list(Int);
reconvert(encodedUnderlyingSecurityDescLen, Int) -> 
    erlang:integer_to_list(Int);
reconvert(quoteEntryRejectReason, unknownSymbol) -> 
    <<"1">>;
reconvert(quoteEntryRejectReason, exchange) -> 
    <<"2">>;
reconvert(quoteEntryRejectReason, quoteExceedsLimit) -> 
    <<"3">>;
reconvert(quoteEntryRejectReason, tooLateToEnter) -> 
    <<"4">>;
reconvert(quoteEntryRejectReason, unknownQuote) -> 
    <<"5">>;
reconvert(quoteEntryRejectReason, duplicateQuote) -> 
    <<"6">>;
reconvert(quoteEntryRejectReason, invalidBidAskSpread) -> 
    <<"7">>;
reconvert(quoteEntryRejectReason, invalidPrice) -> 
    <<"8">>;
reconvert(quoteEntryRejectReason, notAuthorizedToQuoteSecurity) -> 
    <<"9">>;
reconvert(lastMsgSeqNumProcessed, Int) -> 
    erlang:integer_to_list(Int);
reconvert(refTagID, Int) -> 
    erlang:integer_to_list(Int);
reconvert(sessionRejectReason, invalidTagNumber) -> 
    <<"0">>;
reconvert(sessionRejectReason, requiredTagMissing) -> 
    <<"1">>;
reconvert(sessionRejectReason, sendingTimeAccuracyProblem) -> 
    <<"10">>;
reconvert(sessionRejectReason, invalidMsgType) -> 
    <<"11">>;
reconvert(sessionRejectReason, tagNotDefinedForThisMessageType) -> 
    <<"2">>;
reconvert(sessionRejectReason, undefinedTag) -> 
    <<"3">>;
reconvert(sessionRejectReason, tagSpecifiedWithoutAValue) -> 
    <<"4">>;
reconvert(sessionRejectReason, valueIsIncorrect) -> 
    <<"5">>;
reconvert(sessionRejectReason, incorrectDataFormatForValue) -> 
    <<"6">>;
reconvert(sessionRejectReason, decryptionProblem) -> 
    <<"7">>;
reconvert(sessionRejectReason, signatureProblem) -> 
    <<"8">>;
reconvert(sessionRejectReason, compIDProblem) -> 
    <<"9">>;
reconvert(bidRequestTransType, cancel) -> 
    <<"C">>;
reconvert(bidRequestTransType, new) -> 
    <<"N">>;
reconvert(solicitedFlag, wasNotSolicited) -> 
    <<"N">>;
reconvert(solicitedFlag, wasSolicited) -> 
    <<"Y">>;
reconvert(execRestatementReason, gTCorporateAction) -> 
    <<"0">>;
reconvert(execRestatementReason, gTRenewal) -> 
    <<"1">>;
reconvert(execRestatementReason, verbalChange) -> 
    <<"2">>;
reconvert(execRestatementReason, repricingOfOrder) -> 
    <<"3">>;
reconvert(execRestatementReason, brokerOption) -> 
    <<"4">>;
reconvert(execRestatementReason, partialDeclineOfOrderQty) -> 
    <<"5">>;
reconvert(businessRejectReason, other) -> 
    <<"0">>;
reconvert(businessRejectReason, unknownID) -> 
    <<"1">>;
reconvert(businessRejectReason, unknownSecurity) -> 
    <<"2">>;
reconvert(businessRejectReason, unsupportedMessageType) -> 
    <<"3">>;
reconvert(businessRejectReason, applicationNotAvailable) -> 
    <<"4">>;
reconvert(businessRejectReason, conditionallyRequiredFieldMissing) -> 
    <<"5">>;
reconvert(noContraBrokers, Int) -> 
    erlang:integer_to_list(Int);
reconvert(maxMessageSize, Int) -> 
    erlang:integer_to_list(Int);
reconvert(noMsgTypes, Int) -> 
    erlang:integer_to_list(Int);
reconvert(msgDirection, receivereceiveFix) -> 
    <<"R">>;
reconvert(msgDirection, send) -> 
    <<"S">>;
reconvert(noTradingSessions, Int) -> 
    erlang:integer_to_list(Int);
reconvert(discretionInst, relatedToDisplayedPrice) -> 
    <<"0">>;
reconvert(discretionInst, relatedToMarketPrice) -> 
    <<"1">>;
reconvert(discretionInst, relatedToPrimaryPrice) -> 
    <<"2">>;
reconvert(discretionInst, relatedToLocalPrimaryPrice) -> 
    <<"3">>;
reconvert(discretionInst, relatedToMidpointPrice) -> 
    <<"4">>;
reconvert(discretionInst, relatedToLastTradePrice) -> 
    <<"5">>;
reconvert(totalNumSecurities, Int) -> 
    erlang:integer_to_list(Int);
reconvert(bidType, Int) -> 
    erlang:integer_to_list(Int);
reconvert(numTickets, Int) -> 
    erlang:integer_to_list(Int);
reconvert(noBidDescriptors, Int) -> 
    erlang:integer_to_list(Int);
reconvert(bidDescriptorType, Int) -> 
    erlang:integer_to_list(Int);
reconvert(sideValueInd, Int) -> 
    erlang:integer_to_list(Int);
reconvert(liquidityIndType, fiveDayMovingAverage) -> 
    <<"1">>;
reconvert(liquidityIndType, twentyDayMovingAverage) -> 
    <<"2">>;
reconvert(liquidityIndType, normalMarketSize) -> 
    <<"3">>;
reconvert(liquidityIndType, other) -> 
    <<"4">>;
reconvert(exchangeForPhysical, false) -> 
    <<"N">>;
reconvert(exchangeForPhysical, true) -> 
    <<"Y">>;
reconvert(progRptReqs, buySideRequests) -> 
    <<"1">>;
reconvert(progRptReqs, sellSideSends) -> 
    <<"2">>;
reconvert(progRptReqs, realTimeExecutionReports) -> 
    <<"3">>;
reconvert(progPeriodInterval, Int) -> 
    erlang:integer_to_list(Int);
reconvert(incTaxInd, net) -> 
    <<"1">>;
reconvert(incTaxInd, gross) -> 
    <<"2">>;
reconvert(numBidders, Int) -> 
    erlang:integer_to_list(Int);
reconvert(tradeType, agency) -> 
    <<"A">>;
reconvert(tradeType, vWAPGuarantee) -> 
    <<"G">>;
reconvert(tradeType, guaranteedClose) -> 
    <<"J">>;
reconvert(tradeType, riskTrade) -> 
    <<"R">>;
reconvert(basisPxType, closingPriceAtMorningSession) -> 
    <<"2">>;
reconvert(basisPxType, closingPrice) -> 
    <<"3">>;
reconvert(basisPxType, currentPrice) -> 
    <<"4">>;
reconvert(basisPxType, sQ) -> 
    <<"5">>;
reconvert(basisPxType, vWAPThroughADay) -> 
    <<"6">>;
reconvert(basisPxType, vWAPThroughAMorningSession) -> 
    <<"7">>;
reconvert(basisPxType, vWAPThroughAnAfternoonSession) -> 
    <<"8">>;
reconvert(basisPxType, vWAPThroughADayExcept) -> 
    <<"9">>;
reconvert(basisPxType, vWAPThroughAMorningSessionExcept) -> 
    <<"A">>;
reconvert(basisPxType, vWAPThroughAnAfternoonSessionExcept) -> 
    <<"B">>;
reconvert(basisPxType, strike) -> 
    <<"C">>;
reconvert(basisPxType, open) -> 
    <<"D">>;
reconvert(basisPxType, others) -> 
    <<"Z">>;
reconvert(noBidComponents, Int) -> 
    erlang:integer_to_list(Int);
reconvert(totNoStrikes, Int) -> 
    erlang:integer_to_list(Int);
reconvert(priceType, percentage) -> 
    <<"1">>;
reconvert(priceType, perUnit) -> 
    <<"2">>;
reconvert(priceType, fixedAmount) -> 
    <<"3">>;
reconvert(gTBookingInst, bookOutAllTradesOnDayOfExecution) -> 
    <<"0">>;
reconvert(gTBookingInst, accumulateUntilFilledOrExpired) -> 
    <<"1">>;
reconvert(gTBookingInst, accumulateUntilVerballlyNotifiedOtherwise) -> 
    <<"2">>;
reconvert(noStrikes, Int) -> 
    erlang:integer_to_list(Int);
reconvert(listStatusType, Int) -> 
    erlang:integer_to_list(Int);
reconvert(netGrossInd, net) -> 
    <<"1">>;
reconvert(netGrossInd, gross) -> 
    <<"2">>;
reconvert(listOrderStatus, Int) -> 
    erlang:integer_to_list(Int);
reconvert(listExecInstType, immediate) -> 
    <<"1">>;
reconvert(listExecInstType, waitForInstruction) -> 
    <<"2">>;
reconvert(cxlRejResponseTo, orderCancelRequest) -> 
    <<"1">>;
reconvert(cxlRejResponseTo, orderCancel) -> 
    <<"2">>;
reconvert(liquidityNumSecurities, Int) -> 
    erlang:integer_to_list(Int);
reconvert(multiLegReportingType, singleSecurity) -> 
    <<"1">>;
reconvert(multiLegReportingType, individualLegOfAMultiLegSecurity) -> 
    <<"2">>;
reconvert(multiLegReportingType, multiLegSecurity) -> 
    <<"3">>;
reconvert(encodedListStatusTextLen, Int) -> 
    erlang:integer_to_list(Int);
reconvert(_Name, Bin) ->
    Bin.
bin_to_num(Bin) ->
    N = erlang:binary_to_list(Bin),
    case string:to_float(N) of
        {error,no_float} -> erlang:list_to_integer(N);
        {F,_Rest} -> F
    end.
