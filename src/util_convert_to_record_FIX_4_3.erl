%% This module is automatically generated - do not edit it!!!
%%TODO: funktion to convert date and time types
-module(util_convert_to_record_FIX_4_3).

%%
%% Include files
%%
-include("FIX_4_3.hrl").
    
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

convert(advSide, <<"B">>) -> 
    buy;
convert(advSide, <<"S">>) -> 
    sell;
convert(advSide, <<"X">>) -> 
    cross;
convert(advSide, <<"T">>) -> 
    trade;
convert(advTransType, <<"N">>) -> 
    new;
convert(advTransType, <<"C">>) -> 
    cancel;
convert(advTransType, <<"R">>) -> 
    replace;
convert(avgPx, Bin) -> 
    bin_to_num(Bin);
convert(beginSeqNo, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(bodyLength, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(commission, Bin) -> 
    bin_to_num(Bin);
convert(commType, <<"6">>) -> 
    pointsPerBondOrContract;
convert(commType, <<"1">>) -> 
    perUnit;
convert(commType, <<"2">>) -> 
    percent;
convert(commType, <<"3">>) -> 
    absolute;
convert(commType, <<"5">>) -> 
    percentageWaivedEnhancedUnits;
convert(commType, <<"4">>) -> 
    percentageWaivedCashDiscount;
convert(cumQty, Bin) -> 
    bin_to_num(Bin);
convert(endSeqNo, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(execInst, <<"Y">>) -> 
    tryToStop;
convert(execInst, <<"M">>) -> 
    midPricePeg;
convert(execInst, <<"P">>) -> 
    marketPeg;
convert(execInst, <<"Q">>) -> 
    cancelOnSystemFailure;
convert(execInst, <<"R">>) -> 
    primaryPeg;
convert(execInst, <<"S">>) -> 
    suspend;
convert(execInst, <<"U">>) -> 
    customerDisplayInstruction;
convert(execInst, <<"V">>) -> 
    netting;
convert(execInst, <<"W">>) -> 
    pegToVWAP;
convert(execInst, <<"X">>) -> 
    tradeAlong;
convert(execInst, <<"D">>) -> 
    percentOfVolume;
convert(execInst, <<"0">>) -> 
    stayOnOfferSide;
convert(execInst, <<"2">>) -> 
    work;
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
convert(execInst, <<"O">>) -> 
    openingPeg;
convert(execInst, <<"C">>) -> 
    callFirst;
convert(execInst, <<"N">>) -> 
    nonNegotiable;
convert(execInst, <<"E">>) -> 
    doNotIncrease;
convert(execInst, <<"F">>) -> 
    doNotReduce;
convert(execInst, <<"G">>) -> 
    allOrNone;
convert(execInst, <<"H">>) -> 
    reinstateOnSystemFailure;
convert(execInst, <<"I">>) -> 
    institutionsOnly;
convert(execInst, <<"J">>) -> 
    reinstateOnTradingHalt;
convert(execInst, <<"K">>) -> 
    cancelOnTradingHalt;
convert(execInst, <<"L">>) -> 
    lastPeg;
convert(execInst, <<"3">>) -> 
    goAlong;
convert(execInst, <<"B">>) -> 
    oKToCross;
convert(execInst, <<"1">>) -> 
    notHeld;
convert(handlInst, <<"1">>) -> 
    automatedExecutionNoIntervention;
convert(handlInst, <<"2">>) -> 
    automatedExecutionInterventionOK;
convert(handlInst, <<"3">>) -> 
    manualOrder;
convert(securityIDSource, <<"E">>) -> 
    sicovam;
convert(securityIDSource, <<"2">>) -> 
    sEDOL;
convert(securityIDSource, <<"1">>) -> 
    cUSIP;
convert(securityIDSource, <<"3">>) -> 
    qUIK;
convert(securityIDSource, <<"F">>) -> 
    belgian;
convert(securityIDSource, <<"D">>) -> 
    valoren;
convert(securityIDSource, <<"C">>) -> 
    dutch;
convert(securityIDSource, <<"B">>) -> 
    wertpapier;
convert(securityIDSource, <<"A">>) -> 
    bloombergSymbol;
convert(securityIDSource, <<"9">>) -> 
    consolidatedTapeAssociation;
convert(securityIDSource, <<"8">>) -> 
    exchangeSymbol;
convert(securityIDSource, <<"7">>) -> 
    iSOCountryCode;
convert(securityIDSource, <<"6">>) -> 
    iSOCurrencyCode;
convert(securityIDSource, <<"5">>) -> 
    rICCode;
convert(securityIDSource, <<"4">>) -> 
    iSINNumber;
convert(securityIDSource, <<"G">>) -> 
    common;
convert(iOIQltyInd, <<"M">>) -> 
    medium;
convert(iOIQltyInd, <<"H">>) -> 
    high;
convert(iOIQltyInd, <<"L">>) -> 
    low;
convert(iOIQty, <<"L">>) -> 
    large;
convert(iOIQty, <<"M">>) -> 
    medium;
convert(iOIQty, <<"S">>) -> 
    small;
convert(iOITransType, <<"C">>) -> 
    cancel;
convert(iOITransType, <<"N">>) -> 
    new;
convert(iOITransType, <<"R">>) -> 
    replace;
convert(lastCapacity, <<"4">>) -> 
    principal;
convert(lastCapacity, <<"3">>) -> 
    crossAsPrincipal;
convert(lastCapacity, <<"1">>) -> 
    agent;
convert(lastCapacity, <<"2">>) -> 
    crossAsAgent;
convert(lastPx, Bin) -> 
    bin_to_num(Bin);
convert(lastQty, Bin) -> 
    bin_to_num(Bin);
convert(linesOfText, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(msgSeqNum, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
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
convert(msgType, <<"a">>) -> 
    quoteStatusRequest;
convert(msgType, <<"A">>) -> 
    logon;
convert(msgType, <<"AA">>) -> 
    derivativeSecurityList;
convert(msgType, <<"AB">>) -> 
    newOrderMultileg;
convert(msgType, <<"AC">>) -> 
    multilegOrderCancelReplace;
convert(msgType, <<"AD">>) -> 
    tradeCaptureReportRequest;
convert(msgType, <<"AE">>) -> 
    tradeCaptureReport;
convert(msgType, <<"AF">>) -> 
    orderMassStatusRequest;
convert(msgType, <<"AG">>) -> 
    quoteRequestReject;
convert(msgType, <<"AH">>) -> 
    rFQRequest;
convert(msgType, <<"AI">>) -> 
    quoteStatusReport;
convert(msgType, <<"b">>) -> 
    massQuoteAcknowledgement;
convert(msgType, <<"B">>) -> 
    news;
convert(msgType, <<"c">>) -> 
    securityDefinitionRequest;
convert(msgType, <<"C">>) -> 
    email;
convert(msgType, <<"d">>) -> 
    securityDefinition;
convert(msgType, <<"D">>) -> 
    newOrderSingle;
convert(msgType, <<"e">>) -> 
    securityStatusRequest;
convert(msgType, <<"E">>) -> 
    newOrderList;
convert(msgType, <<"f">>) -> 
    securityStatus;
convert(msgType, <<"F">>) -> 
    orderCancelRequest;
convert(msgType, <<"G">>) -> 
    orderCancelReplaceRequest;
convert(msgType, <<"g">>) -> 
    tradingSessionStatusRequest;
convert(msgType, <<"h">>) -> 
    tradingSessionStatus;
convert(msgType, <<"H">>) -> 
    orderStatusRequest;
convert(msgType, <<"i">>) -> 
    massQuote;
convert(msgType, <<"j">>) -> 
    businessMessageReject;
convert(msgType, <<"J">>) -> 
    allocationInstruction;
convert(msgType, <<"K">>) -> 
    listCancelRequest;
convert(msgType, <<"k">>) -> 
    bidRequest;
convert(msgType, <<"l">>) -> 
    bidResponse;
convert(msgType, <<"L">>) -> 
    listExecute;
convert(msgType, <<"m">>) -> 
    listStrikePrice;
convert(msgType, <<"M">>) -> 
    listStatusRequest;
convert(msgType, <<"N">>) -> 
    listStatus;
convert(msgType, <<"n">>) -> 
    xMLNonFIX;
convert(msgType, <<"o">>) -> 
    registrationInstructions;
convert(msgType, <<"P">>) -> 
    allocationInstructionAck;
convert(msgType, <<"p">>) -> 
    registrationInstructionsResponse;
convert(msgType, <<"q">>) -> 
    orderMassCancelRequest;
convert(msgType, <<"Q">>) -> 
    dontKnowTrade;
convert(msgType, <<"r">>) -> 
    orderMassCancelReport;
convert(msgType, <<"R">>) -> 
    quoteRequest;
convert(msgType, <<"s">>) -> 
    newOrderCross;
convert(msgType, <<"S">>) -> 
    quote;
convert(msgType, <<"t">>) -> 
    crossOrderCancelReplaceRequest;
convert(msgType, <<"T">>) -> 
    settlementInstructions;
convert(msgType, <<"u">>) -> 
    crossOrderCancelRequest;
convert(msgType, <<"v">>) -> 
    securityTypeRequest;
convert(msgType, <<"V">>) -> 
    marketDataRequest;
convert(msgType, <<"w">>) -> 
    securityTypes;
convert(msgType, <<"W">>) -> 
    marketDataSnapshotFullRefresh;
convert(msgType, <<"x">>) -> 
    securityListRequest;
convert(msgType, <<"X">>) -> 
    marketDataIncrementalRefresh;
convert(msgType, <<"y">>) -> 
    securityList;
convert(msgType, <<"Y">>) -> 
    marketDataRequestReject;
convert(msgType, <<"z">>) -> 
    derivativeSecurityListRequest;
convert(msgType, <<"Z">>) -> 
    quoteCancel;
convert(newSeqNo, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(orderQty, Bin) -> 
    bin_to_num(Bin);
convert(ordStatus, <<"0">>) -> 
    new;
convert(ordStatus, <<"1">>) -> 
    partiallyFilled;
convert(ordStatus, <<"5">>) -> 
    replaced;
convert(ordStatus, <<"2">>) -> 
    filled;
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
convert(ordStatus, <<"3">>) -> 
    doneForDay;
convert(ordStatus, <<"4">>) -> 
    canceled;
convert(ordType, <<"D">>) -> 
    previouslyQuoted;
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
convert(ordType, <<"1">>) -> 
    market;
convert(ordType, <<"C">>) -> 
    forexMarket;
convert(ordType, <<"F">>) -> 
    forexLimit;
convert(ordType, <<"E">>) -> 
    previouslyIndicated;
convert(ordType, <<"G">>) -> 
    forexSwap;
convert(ordType, <<"I">>) -> 
    funari;
convert(ordType, <<"J">>) -> 
    marketIfTouched;
convert(ordType, <<"K">>) -> 
    marketWithLeftOverAsLimit;
convert(ordType, <<"L">>) -> 
    previousFundValuationPoint;
convert(ordType, <<"M">>) -> 
    nextFundValuationPoint;
convert(ordType, <<"P">>) -> 
    pegged;
convert(ordType, <<"B">>) -> 
    limitOnClose;
convert(ordType, <<"H">>) -> 
    forexPreviouslyQuoted;
convert(possDupFlag, <<"N">>) -> 
    originalTransmission;
convert(possDupFlag, <<"Y">>) -> 
    possibleDuplicate;
convert(price, Bin) -> 
    bin_to_num(Bin);
convert(refSeqNum, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(rule80A, <<"N">>) -> 
    agentForOtherMember;
convert(rule80A, <<"B">>) -> 
    shortExemptTransactionAType;
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
convert(rule80A, <<"M">>) -> 
    programOrderOtherMember;
convert(rule80A, <<"A">>) -> 
    agencySingleOrder;
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
convert(rule80A, <<"L">>) -> 
    shortExemptTransactionMemberAffliated;
convert(rule80A, <<"C">>) -> 
    proprietaryNonAlgo;
convert(quantity, Bin) -> 
    bin_to_num(Bin);
convert(side, <<"6">>) -> 
    sellShortExempt;
convert(side, <<"B">>) -> 
    asDefined;
convert(side, <<"C">>) -> 
    opposite;
convert(side, <<"8">>) -> 
    cross;
convert(side, <<"9">>) -> 
    crossShort;
convert(side, <<"1">>) -> 
    buy;
convert(side, <<"2">>) -> 
    sell;
convert(side, <<"3">>) -> 
    buyMinus;
convert(side, <<"4">>) -> 
    sellPlus;
convert(side, <<"A">>) -> 
    crossShortExempt;
convert(side, <<"5">>) -> 
    sellShort;
convert(side, <<"7">>) -> 
    undisclosed;
convert(timeInForce, <<"7">>) -> 
    atTheClose;
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
convert(urgency, <<"1">>) -> 
    flash;
convert(urgency, <<"2">>) -> 
    background;
convert(urgency, <<"0">>) -> 
    normal;
convert(settlmntTyp, <<"5">>) -> 
    tPlus4;
convert(settlmntTyp, <<"A">>) -> 
    t1;
convert(settlmntTyp, <<"6">>) -> 
    future;
convert(settlmntTyp, <<"3">>) -> 
    tPlus2;
convert(settlmntTyp, <<"2">>) -> 
    nextDay;
convert(settlmntTyp, <<"8">>) -> 
    sellersOption;
convert(settlmntTyp, <<"1">>) -> 
    cash;
convert(settlmntTyp, <<"7">>) -> 
    whenAndIfIssued;
convert(settlmntTyp, <<"0">>) -> 
    regular;
convert(settlmntTyp, <<"9">>) -> 
    tPlus5;
convert(settlmntTyp, <<"4">>) -> 
    tPlus3;
convert(listSeqNo, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(totNoOrders, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(allocTransType, <<"5">>) -> 
    calculatedWithoutPreliminary;
convert(allocTransType, <<"4">>) -> 
    calculated;
convert(allocTransType, <<"3">>) -> 
    preliminary;
convert(allocTransType, <<"2">>) -> 
    cancel;
convert(allocTransType, <<"1">>) -> 
    replace;
convert(allocTransType, <<"0">>) -> 
    new;
convert(noOrders, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(avgPrxPrecision, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(positionEffect, <<"F">>) -> 
    fIFO;
convert(positionEffect, <<"R">>) -> 
    rolled;
convert(positionEffect, <<"C">>) -> 
    close;
convert(positionEffect, <<"O">>) -> 
    open;
convert(noAllocs, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(allocQty, Bin) -> 
    bin_to_num(Bin);
convert(processCode, <<"6">>) -> 
    planSponsor;
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
convert(noRpts, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(rptSeq, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(cxlQty, Bin) -> 
    bin_to_num(Bin);
convert(allocStatus, <<"1">>) -> 
    blockLevelReject;
convert(allocStatus, <<"2">>) -> 
    accountLevelReject;
convert(allocStatus, <<"3">>) -> 
    received;
convert(allocStatus, <<"0">>) -> 
    accepted;
convert(allocRejCode, <<"0">>) -> 
    unknownAccount;
convert(allocRejCode, <<"6">>) -> 
    unknownListID;
convert(allocRejCode, <<"3">>) -> 
    unknownExecutingBrokerMnemonic;
convert(allocRejCode, <<"5">>) -> 
    unknownOrderID;
convert(allocRejCode, <<"7">>) -> 
    otherSeeText;
convert(allocRejCode, <<"4">>) -> 
    commissionDifference;
convert(allocRejCode, <<"1">>) -> 
    incorrectQuantity;
convert(allocRejCode, <<"2">>) -> 
    incorrectAveragegPrice;
convert(secureDataLen, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(signatureLength, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(emailType, <<"0">>) -> 
    new;
convert(emailType, <<"1">>) -> 
    reply;
convert(emailType, <<"2">>) -> 
    adminReply;
convert(rawDataLength, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(possResend, <<"N">>) -> 
    originalTransmission;
convert(possResend, <<"Y">>) -> 
    possibleResend;
convert(encryptMethod, <<"2">>) -> 
    dES;
convert(encryptMethod, <<"6">>) -> 
    pEM;
convert(encryptMethod, <<"5">>) -> 
    pGPDESMD5;
convert(encryptMethod, <<"3">>) -> 
    pKCSDES;
convert(encryptMethod, <<"0">>) -> 
    none;
convert(encryptMethod, <<"1">>) -> 
    pKCS;
convert(encryptMethod, <<"4">>) -> 
    pGPDES;
convert(stopPx, Bin) -> 
    bin_to_num(Bin);
convert(cxlRejReason, <<"1">>) -> 
    unknownOrder;
convert(cxlRejReason, <<"0">>) -> 
    tooLateToCancel;
convert(cxlRejReason, <<"6">>) -> 
    duplicateClOrdID;
convert(cxlRejReason, <<"5">>) -> 
    origOrdModTime;
convert(cxlRejReason, <<"4">>) -> 
    unableToProcessOrderMassCancelRequest;
convert(cxlRejReason, <<"3">>) -> 
    orderAlreadyInPendingStatus;
convert(cxlRejReason, <<"2">>) -> 
    brokerCredit;
convert(ordRejReason, <<"2">>) -> 
    exchangeClosed;
convert(ordRejReason, <<"1">>) -> 
    unknownSymbol;
convert(ordRejReason, <<"3">>) -> 
    orderExceedsLimit;
convert(ordRejReason, <<"4">>) -> 
    tooLateToEnter;
convert(ordRejReason, <<"5">>) -> 
    unknownOrder;
convert(ordRejReason, <<"7">>) -> 
    duplicateOfAVerballyCommunicatedOrder;
convert(ordRejReason, <<"9">>) -> 
    tradeAlongRequired;
convert(ordRejReason, <<"10">>) -> 
    invalidInvestorID;
convert(ordRejReason, <<"6">>) -> 
    duplicateOrder;
convert(ordRejReason, <<"11">>) -> 
    unsupportedOrderCharacteristic;
convert(ordRejReason, <<"12">>) -> 
    surveillenceOption;
convert(ordRejReason, <<"0">>) -> 
    brokerCredit;
convert(ordRejReason, <<"8">>) -> 
    staleOrder;
convert(iOIQualifier, <<"O">>) -> 
    atTheOpen;
convert(iOIQualifier, <<"X">>) -> 
    crossingOpportunity;
convert(iOIQualifier, <<"W">>) -> 
    indication;
convert(iOIQualifier, <<"V">>) -> 
    versus;
convert(iOIQualifier, <<"T">>) -> 
    throughTheDay;
convert(iOIQualifier, <<"S">>) -> 
    portfolioShown;
convert(iOIQualifier, <<"R">>) -> 
    readyToTrade;
convert(iOIQualifier, <<"A">>) -> 
    allOrNone;
convert(iOIQualifier, <<"P">>) -> 
    takingAPosition;
convert(iOIQualifier, <<"M">>) -> 
    moreBehind;
convert(iOIQualifier, <<"L">>) -> 
    limit;
convert(iOIQualifier, <<"I">>) -> 
    inTouchWith;
convert(iOIQualifier, <<"D">>) -> 
    vWAP;
convert(iOIQualifier, <<"C">>) -> 
    atTheClose;
convert(iOIQualifier, <<"B">>) -> 
    marketOnClose;
convert(iOIQualifier, <<"Q">>) -> 
    atTheMarket;
convert(iOIQualifier, <<"Y">>) -> 
    atTheMidpoint;
convert(iOIQualifier, <<"Z">>) -> 
    preOpen;
convert(heartBtInt, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(minQty, Bin) -> 
    bin_to_num(Bin);
convert(maxFloor, Bin) -> 
    bin_to_num(Bin);
convert(reportToExch, <<"Y">>) -> 
    receiverReports;
convert(reportToExch, <<"N">>) -> 
    senderReports;
convert(locateReqd, <<"Y">>) -> 
    yes;
convert(locateReqd, <<"N">>) -> 
    no;
convert(netMoney, Bin) -> 
    bin_to_num(Bin);
convert(settlCurrAmt, Bin) -> 
    bin_to_num(Bin);
convert(forexReq, <<"Y">>) -> 
    executeForexAfterSecurityTrade;
convert(forexReq, <<"N">>) -> 
    doNotExecuteForexAfterSecurityTrade;
convert(gapFillFlag, <<"Y">>) -> 
    gapFillMessage;
convert(gapFillFlag, <<"N">>) -> 
    sequenceReset;
convert(noExecs, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
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
convert(dKReason, <<"A">>) -> 
    unknownSymbol;
convert(iOINaturalFlag, <<"Y">>) -> 
    natural;
convert(iOINaturalFlag, <<"N">>) -> 
    notNatural;
convert(bidPx, Bin) -> 
    bin_to_num(Bin);
convert(offerPx, Bin) -> 
    bin_to_num(Bin);
convert(bidSize, Bin) -> 
    bin_to_num(Bin);
convert(offerSize, Bin) -> 
    bin_to_num(Bin);
convert(noMiscFees, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(miscFeeAmt, Bin) -> 
    bin_to_num(Bin);
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
convert(miscFeeType, <<"1">>) -> 
    regulatory;
convert(miscFeeType, <<"2">>) -> 
    tax;
convert(prevClosePx, Bin) -> 
    bin_to_num(Bin);
convert(resetSeqNumFlag, <<"Y">>) -> 
    yes;
convert(resetSeqNumFlag, <<"N">>) -> 
    no;
convert(noRelatedSym, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(execType, <<"6">>) -> 
    pendingCancel;
convert(execType, <<"0">>) -> 
    new;
convert(execType, <<"1">>) -> 
    partialFill;
convert(execType, <<"2">>) -> 
    fill;
convert(execType, <<"4">>) -> 
    canceled;
convert(execType, <<"5">>) -> 
    replaced;
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
convert(execType, <<"F">>) -> 
    trade;
convert(execType, <<"G">>) -> 
    tradeCorrect;
convert(execType, <<"H">>) -> 
    tradeCancel;
convert(execType, <<"I">>) -> 
    orderStatus;
convert(execType, <<"3">>) -> 
    doneForDay;
convert(execType, <<"7">>) -> 
    stopped;
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
convert(settlCurrFxRateCalc, <<"D">>) -> 
    divide;
convert(settlCurrFxRateCalc, <<"M">>) -> 
    multiply;
convert(numDaysInterest, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(accruedInterestRate, Bin) -> 
    bin_to_num(Bin);
convert(accruedInterestAmt, Bin) -> 
    bin_to_num(Bin);
convert(settlInstMode, <<"0">>) -> 
    default;
convert(settlInstMode, <<"4">>) -> 
    specificOrderForASingleAccount;
convert(settlInstMode, <<"3">>) -> 
    specificAllocationAccountStanding;
convert(settlInstMode, <<"1">>) -> 
    standingInstructionsProvided;
convert(settlInstMode, <<"2">>) -> 
    specificAllocationAccountOverriding;
convert(settlInstTransType, <<"N">>) -> 
    new;
convert(settlInstTransType, <<"R">>) -> 
    replace;
convert(settlInstTransType, <<"C">>) -> 
    cancel;
convert(settlInstSource, <<"2">>) -> 
    institution;
convert(settlInstSource, <<"3">>) -> 
    investor;
convert(settlInstSource, <<"1">>) -> 
    brokerCredit;
convert(securityType, <<"CP">>) -> 
    commercialPaper;
convert(securityType, <<"VRDN">>) -> 
    variableRateDemandNote;
convert(securityType, <<"PZFJ">>) -> 
    plazosFijos;
convert(securityType, <<"PN">>) -> 
    promissoryNote;
convert(securityType, <<"ONITE">>) -> 
    overnight;
convert(securityType, <<"MTN">>) -> 
    mediumTermNotes;
convert(securityType, <<"TECP">>) -> 
    taxExemptCommercialPaper;
convert(securityType, <<"AMENDED">>) -> 
    amended;
convert(securityType, <<"BRIDGE">>) -> 
    bridgeLoan;
convert(securityType, <<"LOFC">>) -> 
    letterOfCredit;
convert(securityType, <<"SWING">>) -> 
    swingLineFacility;
convert(securityType, <<"DINP">>) -> 
    debtorInPossession;
convert(securityType, <<"DEFLTED">>) -> 
    defaulted;
convert(securityType, <<"WITHDRN">>) -> 
    withdrawn;
convert(securityType, <<"LQN">>) -> 
    liquidityNote;
convert(securityType, <<"MATURED">>) -> 
    matured;
convert(securityType, <<"DN">>) -> 
    depositNotes;
convert(securityType, <<"RETIRED">>) -> 
    retired;
convert(securityType, <<"BA">>) -> 
    bankersAcceptance;
convert(securityType, <<"BN">>) -> 
    bankNotes;
convert(securityType, <<"BOX">>) -> 
    billOfExchanges;
convert(securityType, <<"CD">>) -> 
    certificateOfDeposit;
convert(securityType, <<"CL">>) -> 
    callLoans;
convert(securityType, <<"REPLACD">>) -> 
    replaced;
convert(securityType, <<"MT">>) -> 
    mandatoryTender;
convert(securityType, <<"RVLVTRM">>) -> 
    revolver;
convert(securityType, <<"MPP">>) -> 
    mortgagePrivatePlacement;
convert(securityType, <<"STN">>) -> 
    shortTermLoanNote;
convert(securityType, <<"MPT">>) -> 
    miscellaneousPassThrough;
convert(securityType, <<"TBA">>) -> 
    toBeAnnounced;
convert(securityType, <<"AN">>) -> 
    otherAnticipationNotes;
convert(securityType, <<"MIO">>) -> 
    mortgageInterestOnly;
convert(securityType, <<"COFP">>) -> 
    certificateOfParticipation;
convert(securityType, <<"MBS">>) -> 
    mortgageBackedSecurities;
convert(securityType, <<"REV">>) -> 
    revenueBonds;
convert(securityType, <<"SPCLA">>) -> 
    specialAssessment;
convert(securityType, <<"SPCLO">>) -> 
    specialObligation;
convert(securityType, <<"SPCLT">>) -> 
    specialTax;
convert(securityType, <<"TAN">>) -> 
    taxAnticipationNote;
convert(securityType, <<"TAXA">>) -> 
    taxAllocation;
convert(securityType, <<"COFO">>) -> 
    certificateOfObligation;
convert(securityType, <<"TD">>) -> 
    timeDeposit;
convert(securityType, <<"GO">>) -> 
    generalObligationBonds;
convert(securityType, <<"?">>) -> 
    wildcard;
convert(securityType, <<"WAR">>) -> 
    warrant;
convert(securityType, <<"MF">>) -> 
    mutualFund;
convert(securityType, <<"MLEG">>) -> 
    multilegInstrument;
convert(securityType, <<"TRAN">>) -> 
    taxRevenueAnticipationNote;
convert(securityType, <<"MPO">>) -> 
    mortgagePrincipalOnly;
convert(securityType, <<"RP">>) -> 
    repurchaseAgreement;
convert(securityType, <<"NONE">>) -> 
    noSecurityType;
convert(securityType, <<"XCN">>) -> 
    extendedCommNote;
convert(securityType, <<"POOL">>) -> 
    agencyPools;
convert(securityType, <<"ABS">>) -> 
    assetBackedSecurities;
convert(securityType, <<"CMBS">>) -> 
    corp;
convert(securityType, <<"CMO">>) -> 
    collateralizedMortgageObligation;
convert(securityType, <<"IET">>) -> 
    iOETTEMortgage;
convert(securityType, <<"RVRP">>) -> 
    reverseRepurchaseAgreement;
convert(securityType, <<"FOR">>) -> 
    foreignExchangeContract;
convert(securityType, <<"RAN">>) -> 
    revenueAnticipationNote;
convert(securityType, <<"RVLV">>) -> 
    revolverLoan;
convert(securityType, <<"FAC">>) -> 
    federalAgencyCoupon;
convert(securityType, <<"FADN">>) -> 
    federalAgencyDiscountNote;
convert(securityType, <<"PEF">>) -> 
    privateExportFunding;
convert(securityType, <<"CORP">>) -> 
    corporateBond;
convert(securityType, <<"CPP">>) -> 
    corporatePrivatePlacement;
convert(securityType, <<"CB">>) -> 
    convertibleBond;
convert(securityType, <<"DUAL">>) -> 
    dualCurrency;
convert(securityType, <<"XLINKD">>) -> 
    indexedLinked;
convert(securityType, <<"YANK">>) -> 
    yankeeCorporateBond;
convert(securityType, <<"CS">>) -> 
    commonStock;
convert(securityType, <<"PS">>) -> 
    preferredStock;
convert(securityType, <<"BRADY">>) -> 
    bradyBond;
convert(securityType, <<"TBOND">>) -> 
    uSTreasuryBond;
convert(securityType, <<"TINT">>) -> 
    interestStripFromAnyBondOrNote;
convert(securityType, <<"TIPS">>) -> 
    treasuryInflationProtectedSecurities;
convert(securityType, <<"TCAL">>) -> 
    principalStripOfACallableBondOrNote;
convert(securityType, <<"TPRN">>) -> 
    principalStripFromANonCallableBondOrNote;
convert(securityType, <<"UST">>) -> 
    uSTreasuryNoteOld;
convert(securityType, <<"USTB">>) -> 
    uSTreasuryBillOld;
convert(securityType, <<"TERM">>) -> 
    termLoan;
convert(securityType, <<"STRUCT">>) -> 
    structuredNotes;
convert(standInstDbType, <<"0">>) -> 
    other;
convert(standInstDbType, <<"1">>) -> 
    dTCSID;
convert(standInstDbType, <<"3">>) -> 
    aGlobalCustodian;
convert(standInstDbType, <<"2">>) -> 
    thomsonALERT;
convert(settlDeliveryType, <<"1">>) -> 
    free;
convert(settlDeliveryType, <<"0">>) -> 
    versus;
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
convert(lastSpotRate, Bin) -> 
    bin_to_num(Bin);
convert(lastForwardPoints, Bin) -> 
    bin_to_num(Bin);
convert(allocLinkType, <<"0">>) -> 
    fXNetting;
convert(allocLinkType, <<"1">>) -> 
    fXSwap;
convert(noIOIQualifiers, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(strikePrice, Bin) -> 
    bin_to_num(Bin);
convert(coveredOrUncovered, <<"1">>) -> 
    uncovered;
convert(coveredOrUncovered, <<"0">>) -> 
    covered;
convert(notifyBrokerOfCredit, <<"N">>) -> 
    detailsShouldNotBeCommunicated;
convert(notifyBrokerOfCredit, <<"Y">>) -> 
    detailsShouldBeCommunicated;
convert(allocHandlInst, <<"3">>) -> 
    forwardAndMatch;
convert(allocHandlInst, <<"2">>) -> 
    forward;
convert(allocHandlInst, <<"1">>) -> 
    match;
convert(maxShow, Bin) -> 
    bin_to_num(Bin);
convert(pegDifference, Bin) -> 
    bin_to_num(Bin);
convert(xmlDataLen, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(noRoutingIDs, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(routingType, <<"1">>) -> 
    targetFirm;
convert(routingType, <<"2">>) -> 
    targetList;
convert(routingType, <<"3">>) -> 
    blockFirm;
convert(routingType, <<"4">>) -> 
    blockList;
convert(spread, Bin) -> 
    bin_to_num(Bin);
convert(benchmark, <<"5">>) -> 
    oLD10;
convert(benchmark, <<"1">>) -> 
    cURVE;
convert(benchmark, <<"2">>) -> 
    fiveYR;
convert(benchmark, <<"4">>) -> 
    tenYR;
convert(benchmark, <<"6">>) -> 
    thirtyYR;
convert(benchmark, <<"7">>) -> 
    oLD30;
convert(benchmark, <<"8">>) -> 
    threeMOLIBOR;
convert(benchmark, <<"9">>) -> 
    sixMOLIBOR;
convert(benchmark, <<"3">>) -> 
    oLD5;
convert(benchmarkCurveName, <<"SWAP">>) -> 
    sWAP;
convert(benchmarkCurveName, <<"LIBID">>) -> 
    lIBID;
convert(benchmarkCurveName, <<"OTHER">>) -> 
    oTHER;
convert(benchmarkCurveName, <<"Treasury">>) -> 
    treasury;
convert(benchmarkCurveName, <<"Euribor">>) -> 
    euribor;
convert(benchmarkCurveName, <<"Pfandbriefe">>) -> 
    pfandbriefe;
convert(benchmarkCurveName, <<"FutureSWAP">>) -> 
    futureSWAP;
convert(benchmarkCurveName, <<"MuniAAA">>) -> 
    muniAAA;
convert(benchmarkCurveName, <<"LIBOR">>) -> 
    lIBOR;
convert(couponRate, Bin) -> 
    bin_to_num(Bin);
convert(repurchaseTerm, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(repurchaseRate, Bin) -> 
    bin_to_num(Bin);
convert(factor, Bin) -> 
    bin_to_num(Bin);
convert(contractMultiplier, Bin) -> 
    bin_to_num(Bin);
convert(noStipulations, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(stipulationType, <<"ABS">>) -> 
    absolutePrepaymentSpeed;
convert(stipulationType, <<"WALA">>) -> 
    weightedAverageLoanAge;
convert(stipulationType, <<"WAM">>) -> 
    weightedAverageMaturity;
convert(stipulationType, <<"CPR">>) -> 
    constantPrepaymentRate;
convert(stipulationType, <<"HEP">>) -> 
    finalCPROfHomeEquityPrepaymentCurve;
convert(stipulationType, <<"WAL">>) -> 
    weightedAverageLifeCoupon;
convert(stipulationType, <<"MHP">>) -> 
    percentOfManufacturedHousingPrepaymentCurve;
convert(stipulationType, <<"SMM">>) -> 
    singleMonthlyMortality;
convert(stipulationType, <<"MPR">>) -> 
    monthlyPrepaymentRate;
convert(stipulationType, <<"PSA">>) -> 
    percentOfBMAPrepaymentCurve;
convert(stipulationType, <<"PPC">>) -> 
    percentOfProspectusPrepaymentCurve;
convert(stipulationType, <<"CPP">>) -> 
    constantPrepaymentPenalty;
convert(stipulationType, <<"LOTVAR">>) -> 
    lotVariance;
convert(stipulationType, <<"CPY">>) -> 
    constantPrepaymentYield;
convert(stipulationType, <<"WAC">>) -> 
    weightedAverageCoupon;
convert(stipulationType, <<"ISSUE">>) -> 
    issueDate;
convert(stipulationType, <<"MAT">>) -> 
    maturityYearAndMonth;
convert(stipulationType, <<"PIECES">>) -> 
    numberOfPieces;
convert(stipulationType, <<"PMAX">>) -> 
    poolsMaximum;
convert(stipulationType, <<"PPM">>) -> 
    poolsPerMillion;
convert(stipulationType, <<"PPL">>) -> 
    poolsPerLot;
convert(stipulationType, <<"PPT">>) -> 
    poolsPerTrade;
convert(stipulationType, <<"PROD">>) -> 
    productionYear;
convert(stipulationType, <<"TRDVAR">>) -> 
    tradeVariance;
convert(stipulationType, <<"GEOG">>) -> 
    geographics;
convert(yieldType, <<"TRUE">>) -> 
    trueYield;
convert(yieldType, <<"PREVCLOSE">>) -> 
    previousCloseYield;
convert(yieldType, <<"LONGEST">>) -> 
    yieldToLongestAverage;
convert(yieldType, <<"LONGAVGLIFE">>) -> 
    yieldToLongestAverageLife;
convert(yieldType, <<"MATURITY">>) -> 
    yieldToMaturity;
convert(yieldType, <<"MARK">>) -> 
    markToMarketYield;
convert(yieldType, <<"OPENAVG">>) -> 
    openAverageYield;
convert(yieldType, <<"PUT">>) -> 
    yieldToNextPut;
convert(yieldType, <<"PROCEEDS">>) -> 
    proceedsYield;
convert(yieldType, <<"SEMIANNUAL">>) -> 
    semiAnnualYield;
convert(yieldType, <<"SHORTAVGLIFE">>) -> 
    yieldToShortestAverageLife;
convert(yieldType, <<"SHORTEST">>) -> 
    yieldToShortestAverage;
convert(yieldType, <<"SIMPLE">>) -> 
    simpleYield;
convert(yieldType, <<"TENDER">>) -> 
    yieldToTenderDate;
convert(yieldType, <<"VALUE1/32">>) -> 
    yieldValueOf32nds;
convert(yieldType, <<"WORST">>) -> 
    yieldToWorst;
convert(yieldType, <<"TAXEQUIV">>) -> 
    taxEquivalentYield;
convert(yieldType, <<"ANNUAL">>) -> 
    annualYield;
convert(yieldType, <<"LASTYEAR">>) -> 
    closingYieldMostRecentYear;
convert(yieldType, <<"NEXTREFUND">>) -> 
    yieldToNextRefund;
convert(yieldType, <<"AFTERTAX">>) -> 
    afterTaxYield;
convert(yieldType, <<"ATISSUE">>) -> 
    yieldAtIssue;
convert(yieldType, <<"AVGLIFE">>) -> 
    yieldToAverageLife;
convert(yieldType, <<"AVGMATURITY">>) -> 
    yieldToAverageMaturity;
convert(yieldType, <<"BOOK">>) -> 
    bookYield;
convert(yieldType, <<"CALL">>) -> 
    yieldToNextCall;
convert(yieldType, <<"CHANGE">>) -> 
    yieldChangeSinceClose;
convert(yieldType, <<"COMPOUND">>) -> 
    compoundYield;
convert(yieldType, <<"CURRENT">>) -> 
    currentYield;
convert(yieldType, <<"GROSS">>) -> 
    trueGrossYield;
convert(yieldType, <<"GOVTEQUIV">>) -> 
    gvntEquivalentYield;
convert(yieldType, <<"INFLATION">>) -> 
    yieldWithInflationAssumption;
convert(yieldType, <<"INVERSEFLOATER">>) -> 
    inverseFloaterBondYield;
convert(yieldType, <<"LASTQUARTER">>) -> 
    closingYieldMostRecentQuarter;
convert(yieldType, <<"LASTCLOSE">>) -> 
    mostRecentClosingYield;
convert(yieldType, <<"LASTMONTH">>) -> 
    closingYieldMostRecentMonth;
convert(yieldType, <<"CLOSE">>) -> 
    closingYield;
convert(yield, Bin) -> 
    bin_to_num(Bin);
convert(totalTakedown, Bin) -> 
    bin_to_num(Bin);
convert(concession, Bin) -> 
    bin_to_num(Bin);
convert(underlyingRepurchaseTerm, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(underlyingRepurchaseRate, Bin) -> 
    bin_to_num(Bin);
convert(underlyingFactor, Bin) -> 
    bin_to_num(Bin);
convert(legRepurchaseTerm, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(legRepurchaseRate, Bin) -> 
    bin_to_num(Bin);
convert(legFactor, Bin) -> 
    bin_to_num(Bin);
convert(tradedFlatSwitch, <<"N">>) -> 
    notTradedFlat;
convert(tradedFlatSwitch, <<"Y">>) -> 
    tradedFlat;
convert(basisFeaturePrice, Bin) -> 
    bin_to_num(Bin);
convert(subscriptionRequestType, <<"1">>) -> 
    snapshotAndUpdates;
convert(subscriptionRequestType, <<"2">>) -> 
    disablePreviousSnapshot;
convert(subscriptionRequestType, <<"0">>) -> 
    snapshot;
convert(marketDepth, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(mDUpdateType, <<"0">>) -> 
    fullRefresh;
convert(mDUpdateType, <<"1">>) -> 
    incrementalRefresh;
convert(aggregatedBook, <<"Y">>) -> 
    bookEntriesToBeAggregated;
convert(aggregatedBook, <<"N">>) -> 
    bookEntriesShouldNotBeAggregated;
convert(noMDEntryTypes, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(noMDEntries, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(mDEntryType, <<"7">>) -> 
    tradingSessionHighPrice;
convert(mDEntryType, <<"1">>) -> 
    offer;
convert(mDEntryType, <<"A">>) -> 
    imbalance;
convert(mDEntryType, <<"9">>) -> 
    tradingSessionVWAPPrice;
convert(mDEntryType, <<"8">>) -> 
    tradingSessionLowPrice;
convert(mDEntryType, <<"5">>) -> 
    closingPrice;
convert(mDEntryType, <<"4">>) -> 
    openingPrice;
convert(mDEntryType, <<"0">>) -> 
    bid;
convert(mDEntryType, <<"2">>) -> 
    trade;
convert(mDEntryType, <<"3">>) -> 
    indexValue;
convert(mDEntryType, <<"6">>) -> 
    settlementPrice;
convert(mDEntryPx, Bin) -> 
    bin_to_num(Bin);
convert(mDEntrySize, Bin) -> 
    bin_to_num(Bin);
convert(tickDirection, <<"0">>) -> 
    plusTick;
convert(tickDirection, <<"1">>) -> 
    zeroPlusTick;
convert(tickDirection, <<"2">>) -> 
    minusTick;
convert(tickDirection, <<"3">>) -> 
    zeroMinusTick;
convert(quoteCondition, <<"E">>) -> 
    locked;
convert(quoteCondition, <<"I">>) -> 
    nonFirm;
convert(quoteCondition, <<"H">>) -> 
    fastTrading;
convert(quoteCondition, <<"F">>) -> 
    crossed;
convert(quoteCondition, <<"D">>) -> 
    consolidatedBest;
convert(quoteCondition, <<"C">>) -> 
    exchangeBest;
convert(quoteCondition, <<"B">>) -> 
    closed;
convert(quoteCondition, <<"A">>) -> 
    open;
convert(quoteCondition, <<"G">>) -> 
    depth;
convert(tradeCondition, <<"J">>) -> 
    nextDayTrade;
convert(tradeCondition, <<"K">>) -> 
    opened;
convert(tradeCondition, <<"L">>) -> 
    seller;
convert(tradeCondition, <<"B">>) -> 
    averagePriceTrade;
convert(tradeCondition, <<"M">>) -> 
    sold;
convert(tradeCondition, <<"H">>) -> 
    rule155Trade;
convert(tradeCondition, <<"N">>) -> 
    stoppedStock;
convert(tradeCondition, <<"P">>) -> 
    imbalanceMoreBuyers;
convert(tradeCondition, <<"Q">>) -> 
    imbalanceMoreSellers;
convert(tradeCondition, <<"R">>) -> 
    openingPrice;
convert(tradeCondition, <<"I">>) -> 
    soldLast;
convert(tradeCondition, <<"A">>) -> 
    cash;
convert(tradeCondition, <<"C">>) -> 
    cashTrade;
convert(tradeCondition, <<"E">>) -> 
    opening;
convert(tradeCondition, <<"F">>) -> 
    intradayTradeDetail;
convert(tradeCondition, <<"G">>) -> 
    rule127Trade;
convert(tradeCondition, <<"D">>) -> 
    nextDay;
convert(mDUpdateAction, <<"0">>) -> 
    new;
convert(mDUpdateAction, <<"1">>) -> 
    change;
convert(mDUpdateAction, <<"2">>) -> 
    delete;
convert(mDReqRejReason, <<"7">>) -> 
    unsupportedAggregatedBook;
convert(mDReqRejReason, <<"1">>) -> 
    duplicateMDReqID;
convert(mDReqRejReason, <<"C">>) -> 
    unsupportedMDImplicitDelete;
convert(mDReqRejReason, <<"B">>) -> 
    unsupportedOpenCloseSettleFlag;
convert(mDReqRejReason, <<"A">>) -> 
    unsupportedScope;
convert(mDReqRejReason, <<"9">>) -> 
    unsupportedTradingSessionID;
convert(mDReqRejReason, <<"8">>) -> 
    unsupportedMDEntryType;
convert(mDReqRejReason, <<"6">>) -> 
    unsupportedMDUpdateType;
convert(mDReqRejReason, <<"5">>) -> 
    unsupportedMarketDepth;
convert(mDReqRejReason, <<"4">>) -> 
    unsupportedSubscriptionRequestType;
convert(mDReqRejReason, <<"2">>) -> 
    insufficientBandwidth;
convert(mDReqRejReason, <<"0">>) -> 
    unknownSymbol;
convert(mDReqRejReason, <<"3">>) -> 
    insufficientPermissions;
convert(deleteReason, <<"0">>) -> 
    cancellation;
convert(deleteReason, <<"1">>) -> 
    error;
convert(openCloseSettleFlag, <<"1">>) -> 
    sessionOpen;
convert(openCloseSettleFlag, <<"2">>) -> 
    deliverySettlementEntry;
convert(openCloseSettleFlag, <<"3">>) -> 
    expectedEntry;
convert(openCloseSettleFlag, <<"4">>) -> 
    entryFromPreviousBusinessDay;
convert(openCloseSettleFlag, <<"0">>) -> 
    dailyOpen;
convert(sellerDays, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(mDEntryPositionNo, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(financialStatus, <<"1">>) -> 
    bankrupt;
convert(financialStatus, <<"2">>) -> 
    pendingDelisting;
convert(corporateAction, <<"B">>) -> 
    exDistribution;
convert(corporateAction, <<"E">>) -> 
    exInterest;
convert(corporateAction, <<"C">>) -> 
    exRights;
convert(corporateAction, <<"A">>) -> 
    exDividend;
convert(corporateAction, <<"D">>) -> 
    new;
convert(defBidSize, Bin) -> 
    bin_to_num(Bin);
convert(defOfferSize, Bin) -> 
    bin_to_num(Bin);
convert(noQuoteEntries, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(noQuoteSets, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(quoteStatus, <<"6">>) -> 
    removedFromMarket;
convert(quoteStatus, <<"1">>) -> 
    cancelForSymbol;
convert(quoteStatus, <<"10">>) -> 
    pending;
convert(quoteStatus, <<"9">>) -> 
    quoteNotFound;
convert(quoteStatus, <<"8">>) -> 
    queryqueryFix;
convert(quoteStatus, <<"7">>) -> 
    expired;
convert(quoteStatus, <<"5">>) -> 
    rejected;
convert(quoteStatus, <<"4">>) -> 
    canceledAll;
convert(quoteStatus, <<"3">>) -> 
    canceledForUnderlying;
convert(quoteStatus, <<"2">>) -> 
    canceledForSecurityType;
convert(quoteStatus, <<"0">>) -> 
    accepted;
convert(quoteCancelType, <<"4">>) -> 
    cancelAllQuotes;
convert(quoteCancelType, <<"2">>) -> 
    cancelForSecurityType;
convert(quoteCancelType, <<"1">>) -> 
    cancelForOneOrMoreSecurities;
convert(quoteCancelType, <<"3">>) -> 
    cancelForUnderlyingSecurity;
convert(quoteRejectReason, <<"9">>) -> 
    notAuthorizedToQuoteSecurity;
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
convert(quoteResponseLevel, <<"1">>) -> 
    acknowledgeOnlyNegativeOrErroneousQuotes;
convert(quoteResponseLevel, <<"0">>) -> 
    noAcknowledgement;
convert(quoteResponseLevel, <<"2">>) -> 
    acknowledgeEachQuoteMessage;
convert(quoteRequestType, <<"2">>) -> 
    automatic;
convert(quoteRequestType, <<"1">>) -> 
    manual;
convert(totQuoteEntries, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(underlyingPutOrCall, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(underlyingStrikePrice, Bin) -> 
    bin_to_num(Bin);
convert(securityRequestType, <<"0">>) -> 
    requestSecurityIdentityAndSpecifications;
convert(securityRequestType, <<"1">>) -> 
    requestSecurityIdentityForSpecifications;
convert(securityRequestType, <<"2">>) -> 
    requestListSecurityTypes;
convert(securityRequestType, <<"3">>) -> 
    requestListSecurities;
convert(securityResponseType, <<"5">>) -> 
    rejectSecurityProposal;
convert(securityResponseType, <<"1">>) -> 
    acceptAsIs;
convert(securityResponseType, <<"6">>) -> 
    cannotMatchSelectionCriteria;
convert(securityResponseType, <<"2">>) -> 
    acceptWithRevisions;
convert(securityResponseType, <<"4">>) -> 
    listOfSecuritiesReturnedPerRequest;
convert(securityResponseType, <<"3">>) -> 
    listOfSecurityTypesReturnedPerRequest;
convert(unsolicitedIndicator, <<"Y">>) -> 
    messageIsBeingSentUnsolicited;
convert(unsolicitedIndicator, <<"N">>) -> 
    messageIsBeingSentAsAResultOfAPriorRequest;
convert(securityTradingStatus, <<"20">>) -> 
    unknownOrInvalid;
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
convert(securityTradingStatus, <<"19">>) -> 
    notTradedOnThisMarket;
convert(securityTradingStatus, <<"22">>) -> 
    openingRotation;
convert(securityTradingStatus, <<"21">>) -> 
    preOpen;
convert(securityTradingStatus, <<"12">>) -> 
    noMarketImbalance;
convert(securityTradingStatus, <<"18">>) -> 
    notAvailableForTrading;
convert(securityTradingStatus, <<"10">>) -> 
    marketOnCloseImbalanceSell;
convert(securityTradingStatus, <<"9">>) -> 
    marketOnCloseImbalanceBuy;
convert(securityTradingStatus, <<"8">>) -> 
    marketImbalanceSell;
convert(securityTradingStatus, <<"7">>) -> 
    marketImbalanceBuy;
convert(securityTradingStatus, <<"6">>) -> 
    tradingRangeIndication;
convert(securityTradingStatus, <<"5">>) -> 
    priceIndication;
convert(securityTradingStatus, <<"4">>) -> 
    noOpen;
convert(securityTradingStatus, <<"3">>) -> 
    resume;
convert(securityTradingStatus, <<"1">>) -> 
    openingDelay;
convert(securityTradingStatus, <<"2">>) -> 
    tradingHalt;
convert(securityTradingStatus, <<"23">>) -> 
    fastMarket;
convert(haltReason, <<"X">>) -> 
    equipmentChangeover;
convert(haltReason, <<"M">>) -> 
    additionalInformation;
convert(haltReason, <<"E">>) -> 
    orderInflux;
convert(haltReason, <<"P">>) -> 
    newsPending;
convert(haltReason, <<"I">>) -> 
    orderImbalance;
convert(haltReason, <<"D">>) -> 
    newsDissemination;
convert(inViewOfCommon, <<"Y">>) -> 
    haltWasDueToCommonStockBeingHalted;
convert(inViewOfCommon, <<"N">>) -> 
    haltWasNotRelatedToAHaltOfTheCommonStock;
convert(dueToRelated, <<"Y">>) -> 
    relatedToSecurityHalt;
convert(dueToRelated, <<"N">>) -> 
    notRelatedToSecurityHalt;
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
convert(tradSesMethod, <<"3">>) -> 
    twoParty;
convert(tradSesMethod, <<"1">>) -> 
    electronic;
convert(tradSesMethod, <<"2">>) -> 
    openOutcry;
convert(tradSesMode, <<"3">>) -> 
    production;
convert(tradSesMode, <<"1">>) -> 
    testing;
convert(tradSesMode, <<"2">>) -> 
    simulated;
convert(tradSesStatus, <<"5">>) -> 
    preClose;
convert(tradSesStatus, <<"6">>) -> 
    requestRejected;
convert(tradSesStatus, <<"4">>) -> 
    preOpen;
convert(tradSesStatus, <<"3">>) -> 
    closed;
convert(tradSesStatus, <<"2">>) -> 
    open;
convert(tradSesStatus, <<"1">>) -> 
    halted;
convert(tradSesStatus, <<"0">>) -> 
    unknown;
convert(numberOfOrders, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(messageEncoding, <<"UTF-8">>) -> 
    uTF8;
convert(messageEncoding, <<"ISO-2022-JP">>) -> 
    iSO2022JP;
convert(messageEncoding, <<"EUC-JP">>) -> 
    eUCJP;
convert(messageEncoding, <<"Shift_JIS">>) -> 
    shiftJIS;
convert(encodedIssuerLen, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(encodedSecurityDescLen, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(encodedListExecInstLen, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(encodedTextLen, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(encodedSubjectLen, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(encodedHeadlineLen, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(encodedAllocTextLen, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(encodedUnderlyingIssuerLen, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(encodedUnderlyingSecurityDescLen, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(allocPrice, Bin) -> 
    bin_to_num(Bin);
convert(quoteEntryRejectReason, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(lastMsgSeqNumProcessed, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(refTagID, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(sessionRejectReason, <<"12">>) -> 
    xMLValidationError;
convert(sessionRejectReason, <<"17">>) -> 
    non;
convert(sessionRejectReason, <<"16">>) -> 
    incorrectNumInGroupCountForRepeatingGroup;
convert(sessionRejectReason, <<"15">>) -> 
    repeatingGroupFieldsOutOfOrder;
convert(sessionRejectReason, <<"14">>) -> 
    tagSpecifiedOutOfRequiredOrder;
convert(sessionRejectReason, <<"11">>) -> 
    invalidMsgType;
convert(sessionRejectReason, <<"0">>) -> 
    invalidTagNumber;
convert(sessionRejectReason, <<"9">>) -> 
    compIDProblem;
convert(sessionRejectReason, <<"8">>) -> 
    signatureProblem;
convert(sessionRejectReason, <<"7">>) -> 
    decryptionProblem;
convert(sessionRejectReason, <<"6">>) -> 
    incorrectDataFormatForValue;
convert(sessionRejectReason, <<"5">>) -> 
    valueIsIncorrect;
convert(sessionRejectReason, <<"4">>) -> 
    tagSpecifiedWithoutAValue;
convert(sessionRejectReason, <<"3">>) -> 
    undefinedTag;
convert(sessionRejectReason, <<"10">>) -> 
    sendingTimeAccuracyProblem;
convert(sessionRejectReason, <<"13">>) -> 
    tagAppearsMoreThanOnce;
convert(sessionRejectReason, <<"2">>) -> 
    tagNotDefinedForThisMessageType;
convert(sessionRejectReason, <<"1">>) -> 
    requiredTagMissing;
convert(bidRequestTransType, <<"N">>) -> 
    new;
convert(bidRequestTransType, <<"C">>) -> 
    cancel;
convert(solicitedFlag, <<"N">>) -> 
    wasNotSolicited;
convert(solicitedFlag, <<"Y">>) -> 
    wasSolicited;
convert(execRestatementReason, <<"7">>) -> 
    cancelOnSystemFailure;
convert(execRestatementReason, <<"0">>) -> 
    gTCorporateAction;
convert(execRestatementReason, <<"8">>) -> 
    market;
convert(execRestatementReason, <<"6">>) -> 
    cancelOnTradingHalt;
convert(execRestatementReason, <<"5">>) -> 
    partialDeclineOfOrderQty;
convert(execRestatementReason, <<"4">>) -> 
    brokerOption;
convert(execRestatementReason, <<"3">>) -> 
    repricingOfOrder;
convert(execRestatementReason, <<"1">>) -> 
    gTRenewal;
convert(execRestatementReason, <<"2">>) -> 
    verbalChange;
convert(businessRejectReason, <<"3">>) -> 
    unsupportedMessageType;
convert(businessRejectReason, <<"7">>) -> 
    deliverToFirmNotAvailableAtThisTime;
convert(businessRejectReason, <<"4">>) -> 
    applicationNotAvailable;
convert(businessRejectReason, <<"6">>) -> 
    notAuthorized;
convert(businessRejectReason, <<"0">>) -> 
    other;
convert(businessRejectReason, <<"5">>) -> 
    conditionallyRequiredFieldMissing;
convert(businessRejectReason, <<"1">>) -> 
    unknownID;
convert(businessRejectReason, <<"2">>) -> 
    unknownSecurity;
convert(grossTradeAmt, Bin) -> 
    bin_to_num(Bin);
convert(noContraBrokers, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(maxMessageSize, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(noMsgTypes, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(msgDirection, <<"S">>) -> 
    send;
convert(msgDirection, <<"R">>) -> 
    receivereceiveFix;
convert(noTradingSessions, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
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
convert(totalNumSecurities, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(bidType, <<"1">>) -> 
    nonDisclosed;
convert(bidType, <<"2">>) -> 
    disclosed;
convert(bidType, <<"3">>) -> 
    noBiddingProcess;
convert(numTickets, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(sideValue1, Bin) -> 
    bin_to_num(Bin);
convert(sideValue2, Bin) -> 
    bin_to_num(Bin);
convert(noBidDescriptors, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(bidDescriptorType, <<"3">>) -> 
    index;
convert(bidDescriptorType, <<"2">>) -> 
    countrycountryFix;
convert(bidDescriptorType, <<"1">>) -> 
    sector;
convert(sideValueInd, <<"1">>) -> 
    sideValue1;
convert(sideValueInd, <<"2">>) -> 
    sideValue2;
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
convert(liquidityIndType, <<"3">>) -> 
    normalMarketSize;
convert(liquidityIndType, <<"4">>) -> 
    other;
convert(liquidityIndType, <<"2">>) -> 
    twentyDayMovingAverage;
convert(liquidityIndType, <<"1">>) -> 
    fiveDayMovingAverage;
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
convert(progRptReqs, <<"3">>) -> 
    realTimeExecutionReports;
convert(progRptReqs, <<"2">>) -> 
    sellSideSends;
convert(progRptReqs, <<"1">>) -> 
    buySideRequests;
convert(progPeriodInterval, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(incTaxInd, <<"2">>) -> 
    gross;
convert(incTaxInd, <<"1">>) -> 
    net;
convert(numBidders, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(tradeType, <<"G">>) -> 
    vWAPGuarantee;
convert(tradeType, <<"A">>) -> 
    agency;
convert(tradeType, <<"J">>) -> 
    guaranteedClose;
convert(tradeType, <<"R">>) -> 
    riskTrade;
convert(basisPxType, <<"8">>) -> 
    vWAPThroughAnAfternoonSession;
convert(basisPxType, <<"D">>) -> 
    open;
convert(basisPxType, <<"Z">>) -> 
    others;
convert(basisPxType, <<"C">>) -> 
    strike;
convert(basisPxType, <<"B">>) -> 
    vWAPThroughAnAfternoonSessionExcept;
convert(basisPxType, <<"9">>) -> 
    vWAPThroughADayExcept;
convert(basisPxType, <<"7">>) -> 
    vWAPThroughAMorningSession;
convert(basisPxType, <<"6">>) -> 
    vWAPThroughADay;
convert(basisPxType, <<"5">>) -> 
    sQ;
convert(basisPxType, <<"4">>) -> 
    currentPrice;
convert(basisPxType, <<"3">>) -> 
    closingPrice;
convert(basisPxType, <<"2">>) -> 
    closingPriceAtMorningSession;
convert(basisPxType, <<"A">>) -> 
    vWAPThroughAMorningSessionExcept;
convert(noBidComponents, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(totNoStrikes, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(priceType, <<"3">>) -> 
    fixedAmount;
convert(priceType, <<"1">>) -> 
    percentage;
convert(priceType, <<"4">>) -> 
    discount;
convert(priceType, <<"6">>) -> 
    spread;
convert(priceType, <<"7">>) -> 
    tEDPrice;
convert(priceType, <<"8">>) -> 
    tEDYield;
convert(priceType, <<"5">>) -> 
    premium;
convert(priceType, <<"2">>) -> 
    perUnit;
convert(dayOrderQty, Bin) -> 
    bin_to_num(Bin);
convert(dayCumQty, Bin) -> 
    bin_to_num(Bin);
convert(dayAvgPx, Bin) -> 
    bin_to_num(Bin);
convert(gTBookingInst, <<"0">>) -> 
    bookOutAllTradesOnDayOfExecution;
convert(gTBookingInst, <<"2">>) -> 
    accumulateUntilVerballlyNotifiedOtherwise;
convert(gTBookingInst, <<"1">>) -> 
    accumulateUntilFilledOrExpired;
convert(noStrikes, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(listStatusType, <<"6">>) -> 
    alert;
convert(listStatusType, <<"4">>) -> 
    execStarted;
convert(listStatusType, <<"3">>) -> 
    timed;
convert(listStatusType, <<"2">>) -> 
    response;
convert(listStatusType, <<"1">>) -> 
    ack;
convert(listStatusType, <<"5">>) -> 
    allDone;
convert(netGrossInd, <<"1">>) -> 
    net;
convert(netGrossInd, <<"2">>) -> 
    gross;
convert(listOrderStatus, <<"4">>) -> 
    cancelling;
convert(listOrderStatus, <<"3">>) -> 
    executing;
convert(listOrderStatus, <<"7">>) -> 
    reject;
convert(listOrderStatus, <<"6">>) -> 
    allDone;
convert(listOrderStatus, <<"5">>) -> 
    alert;
convert(listOrderStatus, <<"2">>) -> 
    receivedForExecution;
convert(listOrderStatus, <<"1">>) -> 
    inBiddingProcess;
convert(listExecInstType, <<"5">>) -> 
    buyDrivenCashWithdraw;
convert(listExecInstType, <<"4">>) -> 
    buyDrivenCashTopUp;
convert(listExecInstType, <<"2">>) -> 
    waitForInstruction;
convert(listExecInstType, <<"1">>) -> 
    immediate;
convert(listExecInstType, <<"3">>) -> 
    sellDriven;
convert(cxlRejResponseTo, <<"2">>) -> 
    orderCancel;
convert(cxlRejResponseTo, <<"1">>) -> 
    orderCancelRequest;
convert(underlyingCouponRate, Bin) -> 
    bin_to_num(Bin);
convert(underlyingContractMultiplier, Bin) -> 
    bin_to_num(Bin);
convert(contraTradeQty, Bin) -> 
    bin_to_num(Bin);
convert(liquidityNumSecurities, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(multiLegReportingType, <<"1">>) -> 
    singleSecurity;
convert(multiLegReportingType, <<"2">>) -> 
    individualLegOfAMultiLegSecurity;
convert(multiLegReportingType, <<"3">>) -> 
    multiLegSecurity;
convert(encodedListStatusTextLen, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(partyIDSource, <<"5">>) -> 
    chineseInvestorID;
convert(partyIDSource, <<"8">>) -> 
    uSEmployerOrTaxIDNumber;
convert(partyIDSource, <<"A">>) -> 
    australianTaxFileNumber;
convert(partyIDSource, <<"9">>) -> 
    australianBusinessNumber;
convert(partyIDSource, <<"E">>) -> 
    iSOCountryCode;
convert(partyIDSource, <<"B">>) -> 
    bIC;
convert(partyIDSource, <<"7">>) -> 
    uSSocialSecurityNumber;
convert(partyIDSource, <<"D">>) -> 
    proprietary;
convert(partyIDSource, <<"F">>) -> 
    settlementEntityLocation;
convert(partyIDSource, <<"1">>) -> 
    koreanInvestorID;
convert(partyIDSource, <<"2">>) -> 
    taiwaneseForeignInvestorID;
convert(partyIDSource, <<"3">>) -> 
    taiwaneseTradingAcct;
convert(partyIDSource, <<"4">>) -> 
    malaysianCentralDepository;
convert(partyIDSource, <<"6">>) -> 
    uKNationalInsuranceOrPensionNumber;
convert(partyIDSource, <<"C">>) -> 
    generalIdentifier;
convert(netChgPrevDay, Bin) -> 
    bin_to_num(Bin);
convert(partyRole, <<"15">>) -> 
    correspondantClearingFirm;
convert(partyRole, <<"3">>) -> 
    clientID;
convert(partyRole, <<"20">>) -> 
    underlyingContraFirm;
convert(partyRole, <<"19">>) -> 
    sponsoringFirm;
convert(partyRole, <<"18">>) -> 
    contraClearingFirm;
convert(partyRole, <<"17">>) -> 
    contraFirm;
convert(partyRole, <<"16">>) -> 
    executingSystem;
convert(partyRole, <<"7">>) -> 
    enteringFirm;
convert(partyRole, <<"1">>) -> 
    executingFirm;
convert(partyRole, <<"2">>) -> 
    brokerOfCredit;
convert(partyRole, <<"5">>) -> 
    investorID;
convert(partyRole, <<"6">>) -> 
    introducingFirm;
convert(partyRole, <<"14">>) -> 
    giveupClearingFirm;
convert(partyRole, <<"8">>) -> 
    locate;
convert(partyRole, <<"9">>) -> 
    fundManagerClientID;
convert(partyRole, <<"10">>) -> 
    settlementLocation;
convert(partyRole, <<"11">>) -> 
    orderOriginationTrader;
convert(partyRole, <<"12">>) -> 
    executingTrader;
convert(partyRole, <<"13">>) -> 
    orderOriginationFirm;
convert(partyRole, <<"4">>) -> 
    clearingFirm;
convert(noPartyIDs, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(noSecurityAltID, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(noUnderlyingSecurityAltID, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(produkt, <<"8">>) -> 
    lOAN;
convert(produkt, <<"12">>) -> 
    oTHER;
convert(produkt, <<"11">>) -> 
    mUNICIPAL;
convert(produkt, <<"1">>) -> 
    aGENCY;
convert(produkt, <<"3">>) -> 
    cORPORATE;
convert(produkt, <<"4">>) -> 
    cURRENCY;
convert(produkt, <<"2">>) -> 
    cOMMODITY;
convert(produkt, <<"6">>) -> 
    gOVERNMENT;
convert(produkt, <<"10">>) -> 
    mORTGAGE;
convert(produkt, <<"7">>) -> 
    iNDEX;
convert(produkt, <<"9">>) -> 
    mONEYMARKET;
convert(produkt, <<"5">>) -> 
    eQUITY;
convert(underlyingProduct, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(testMessageIndicator, <<"Y">>) -> 
    true;
convert(testMessageIndicator, <<"N">>) -> 
    fales;
convert(quantityType, <<"6">>) -> 
    cONTRACTS;
convert(quantityType, <<"7">>) -> 
    oTHER;
convert(quantityType, <<"5">>) -> 
    cURRENCY;
convert(quantityType, <<"4">>) -> 
    oRIGINALFACE;
convert(quantityType, <<"3">>) -> 
    cURRENTFACE;
convert(quantityType, <<"2">>) -> 
    bONDS;
convert(quantityType, <<"1">>) -> 
    sHARES;
convert(quantityType, <<"8">>) -> 
    pAR;
convert(roundingDirection, <<"0">>) -> 
    roundToNearest;
convert(roundingDirection, <<"1">>) -> 
    roundDown;
convert(roundingDirection, <<"2">>) -> 
    roundUp;
convert(roundingModulus, Bin) -> 
    bin_to_num(Bin);
convert(noRegistDtls, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(distribPaymentMethod, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(cancellationRights, <<"M">>) -> 
    noWaiverAgreement;
convert(cancellationRights, <<"N">>) -> 
    noExecutionOnly;
convert(cancellationRights, <<"Y">>) -> 
    yes;
convert(cancellationRights, <<"O">>) -> 
    noInstitutional;
convert(moneyLaunderingStatus, <<"3">>) -> 
    exemptAuthorised;
convert(moneyLaunderingStatus, <<"2">>) -> 
    exemptMoneyType;
convert(moneyLaunderingStatus, <<"1">>) -> 
    exemptBelowLimit;
convert(moneyLaunderingStatus, <<"Y">>) -> 
    passed;
convert(moneyLaunderingStatus, <<"N">>) -> 
    notChecked;
convert(execPriceType, <<"S">>) -> 
    singlePrice;
convert(execPriceType, <<"Q">>) -> 
    offerPriceMinusAdjustmentAmount;
convert(execPriceType, <<"P">>) -> 
    offerPriceMinusAdjustmentPercent;
convert(execPriceType, <<"O">>) -> 
    offerPrice;
convert(execPriceType, <<"E">>) -> 
    creationPricePlusAdjustmentAmount;
convert(execPriceType, <<"D">>) -> 
    creationPricePlusAdjustmentPercent;
convert(execPriceType, <<"C">>) -> 
    creationPrice;
convert(execPriceType, <<"B">>) -> 
    bidPrice;
convert(execPriceAdjustment, Bin) -> 
    bin_to_num(Bin);
convert(tradeReportTransType, <<"N">>) -> 
    new;
convert(tradeReportTransType, <<"R">>) -> 
    replace;
convert(tradeReportTransType, <<"C">>) -> 
    cancel;
convert(paymentMethod, <<"14">>) -> 
    bPAY;
convert(paymentMethod, <<"13">>) -> 
    aCHCredit;
convert(paymentMethod, <<"12">>) -> 
    aCHDebit;
convert(paymentMethod, <<"11">>) -> 
    creditCard;
convert(paymentMethod, <<"10">>) -> 
    directCredit;
convert(paymentMethod, <<"9">>) -> 
    directDebit;
convert(paymentMethod, <<"8">>) -> 
    debitCard;
convert(paymentMethod, <<"7">>) -> 
    fedWire;
convert(paymentMethod, <<"15">>) -> 
    highValueClearingSystem;
convert(paymentMethod, <<"3">>) -> 
    euroclear;
convert(paymentMethod, <<"6">>) -> 
    telegraphicTransfer;
convert(paymentMethod, <<"4">>) -> 
    clearstream;
convert(paymentMethod, <<"1">>) -> 
    cREST;
convert(paymentMethod, <<"2">>) -> 
    nSCC;
convert(paymentMethod, <<"5">>) -> 
    cheque;
convert(taxAdvantageType, <<"19">>) -> 
    profitSharingPlan;
convert(taxAdvantageType, <<"11">>) -> 
    employerPriorYear;
convert(taxAdvantageType, <<"12">>) -> 
    employerCurrentYear;
convert(taxAdvantageType, <<"13">>) -> 
    nonFundPrototypeIRA;
convert(taxAdvantageType, <<"14">>) -> 
    nonFundQualifiedPlan;
convert(taxAdvantageType, <<"15">>) -> 
    definedContributionPlan;
convert(taxAdvantageType, <<"10">>) -> 
    employeeCurrentYear;
convert(taxAdvantageType, <<"17">>) -> 
    iRARollover;
convert(taxAdvantageType, <<"5">>) -> 
    miniInsuranceISA;
convert(taxAdvantageType, <<"16">>) -> 
    iRA;
convert(taxAdvantageType, <<"9">>) -> 
    employeePriorYear;
convert(taxAdvantageType, <<"8">>) -> 
    assetTransfer;
convert(taxAdvantageType, <<"21">>) -> 
    selfDirectedIRA;
convert(taxAdvantageType, <<"6">>) -> 
    currentYearPayment;
convert(taxAdvantageType, <<"20">>) -> 
    uS401K;
convert(taxAdvantageType, <<"4">>) -> 
    miniStocksAndSharesISA;
convert(taxAdvantageType, <<"3">>) -> 
    miniCashISA;
convert(taxAdvantageType, <<"2">>) -> 
    tESSA;
convert(taxAdvantageType, <<"1">>) -> 
    maxiISA;
convert(taxAdvantageType, <<"0">>) -> 
    none;
convert(taxAdvantageType, <<"7">>) -> 
    priorYearPayment;
convert(taxAdvantageType, <<"23">>) -> 
    uS457;
convert(taxAdvantageType, <<"24">>) -> 
    rothIRAPrototype;
convert(taxAdvantageType, <<"25">>) -> 
    rothIRANonPrototype;
convert(taxAdvantageType, <<"26">>) -> 
    rothConversionIRAPrototype;
convert(taxAdvantageType, <<"27">>) -> 
    rothConversionIRANonPrototype;
convert(taxAdvantageType, <<"28">>) -> 
    educationIRAPrototype;
convert(taxAdvantageType, <<"29">>) -> 
    educationIRANonPrototype;
convert(taxAdvantageType, <<"18">>) -> 
    kEOGH;
convert(taxAdvantageType, <<"22">>) -> 
    uS403b;
convert(fundRenewWaiv, <<"N">>) -> 
    no;
convert(fundRenewWaiv, <<"Y">>) -> 
    yes;
convert(registStatus, <<"A">>) -> 
    accepted;
convert(registStatus, <<"N">>) -> 
    reminder;
convert(registStatus, <<"R">>) -> 
    rejected;
convert(registStatus, <<"H">>) -> 
    held;
convert(registRejReasonCode, <<"13">>) -> 
    invalidDistribInstns;
convert(registRejReasonCode, <<"17">>) -> 
    invalidAgentCode;
convert(registRejReasonCode, <<"16">>) -> 
    invalidAccountName;
convert(registRejReasonCode, <<"4">>) -> 
    noRegDetails;
convert(registRejReasonCode, <<"15">>) -> 
    invalidPaymentMethod;
convert(registRejReasonCode, <<"14">>) -> 
    invalidPercentage;
convert(registRejReasonCode, <<"3">>) -> 
    invalidOwnershipType;
convert(registRejReasonCode, <<"2">>) -> 
    invalidTaxExemptType;
convert(registRejReasonCode, <<"12">>) -> 
    invalidCountry;
convert(registRejReasonCode, <<"11">>) -> 
    invalidDateOfBirth;
convert(registRejReasonCode, <<"10">>) -> 
    invalidInvestorIDSource;
convert(registRejReasonCode, <<"9">>) -> 
    invalidInvestorID;
convert(registRejReasonCode, <<"8">>) -> 
    invalidMailingInstructions;
convert(registRejReasonCode, <<"7">>) -> 
    invalidMailingDetails;
convert(registRejReasonCode, <<"5">>) -> 
    invalidRegSeqNo;
convert(registRejReasonCode, <<"1">>) -> 
    invalidAccountType;
convert(registRejReasonCode, <<"18">>) -> 
    invalidAccountNum;
convert(registRejReasonCode, <<"6">>) -> 
    invalidRegDetails;
convert(noDistribInsts, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(distribPercentage, Bin) -> 
    bin_to_num(Bin);
convert(registTransType, <<"2">>) -> 
    cancel;
convert(registTransType, <<"0">>) -> 
    new;
convert(registTransType, <<"1">>) -> 
    replace;
convert(orderPercent, Bin) -> 
    bin_to_num(Bin);
convert(noContAmts, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(contAmtType, <<"15">>) -> 
    netSettlementAmount;
convert(contAmtType, <<"1">>) -> 
    commissionAmount;
convert(contAmtType, <<"2">>) -> 
    commissionPercent;
convert(contAmtType, <<"3">>) -> 
    initialChargeAmount;
convert(contAmtType, <<"4">>) -> 
    initialChargePercent;
convert(contAmtType, <<"5">>) -> 
    discountAmount;
convert(contAmtType, <<"6">>) -> 
    discountPercent;
convert(contAmtType, <<"7">>) -> 
    dilutionLevyAmount;
convert(contAmtType, <<"8">>) -> 
    dilutionLevyPercent;
convert(contAmtType, <<"9">>) -> 
    exitChargeAmount;
convert(contAmtType, <<"10">>) -> 
    exitChargePercent;
convert(contAmtType, <<"11">>) -> 
    fundBasedRenewalCommissionPercent;
convert(contAmtType, <<"12">>) -> 
    projectedFundValue;
convert(contAmtType, <<"14">>) -> 
    fundBasedRenewalCommissionOnFund;
convert(contAmtType, <<"13">>) -> 
    fundBasedRenewalCommissionOnOrder;
convert(contAmtValue, Bin) -> 
    bin_to_num(Bin);
convert(ownerType, <<"5">>) -> 
    companyTrustee;
convert(ownerType, <<"13">>) -> 
    nominee;
convert(ownerType, <<"12">>) -> 
    corporateBody;
convert(ownerType, <<"11">>) -> 
    nonProfitOrganization;
convert(ownerType, <<"10">>) -> 
    networkingSubAccount;
convert(ownerType, <<"9">>) -> 
    fiduciaries;
convert(ownerType, <<"8">>) -> 
    trusts;
convert(ownerType, <<"6">>) -> 
    pensionPlan;
convert(ownerType, <<"4">>) -> 
    individualTrustee;
convert(ownerType, <<"2">>) -> 
    publicCompany;
convert(ownerType, <<"3">>) -> 
    privateCompany;
convert(ownerType, <<"1">>) -> 
    individualInvestor;
convert(ownerType, <<"7">>) -> 
    custodianUnderGiftsToMinorsAct;
convert(orderCapacity, <<"R">>) -> 
    risklessPrincipal;
convert(orderCapacity, <<"I">>) -> 
    individual;
convert(orderCapacity, <<"P">>) -> 
    principal;
convert(orderCapacity, <<"W">>) -> 
    agentForOtherMember;
convert(orderCapacity, <<"A">>) -> 
    agency;
convert(orderCapacity, <<"G">>) -> 
    proprietary;
convert(orderRestrictions, <<"7">>) -> 
    foreignEntity;
convert(orderRestrictions, <<"A">>) -> 
    risklessArbitrage;
convert(orderRestrictions, <<"1">>) -> 
    programTrade;
convert(orderRestrictions, <<"8">>) -> 
    externalMarketParticipant;
convert(orderRestrictions, <<"6">>) -> 
    actingAsMarketMakerOrSpecialistInUnderlying;
convert(orderRestrictions, <<"5">>) -> 
    actingAsMarketMakerOrSpecialistInSecurity;
convert(orderRestrictions, <<"3">>) -> 
    nonIndexArbitrage;
convert(orderRestrictions, <<"2">>) -> 
    indexArbitrage;
convert(orderRestrictions, <<"4">>) -> 
    competingMarketMaker;
convert(orderRestrictions, <<"9">>) -> 
    externalInterConnectedMarketLinkage;
convert(massCancelRequestType, <<"1">>) -> 
    cancelOrdersForASecurity;
convert(massCancelRequestType, <<"7">>) -> 
    cancelAllOrders;
convert(massCancelRequestType, <<"6">>) -> 
    cancelOrdersForATradingSession;
convert(massCancelRequestType, <<"5">>) -> 
    cancelOrdersForASecurityType;
convert(massCancelRequestType, <<"4">>) -> 
    cancelOrdersForACFICode;
convert(massCancelRequestType, <<"2">>) -> 
    cancelOrdersForAnUnderlyingSecurity;
convert(massCancelRequestType, <<"3">>) -> 
    cancelOrdersForAProduct;
convert(massCancelResponse, <<"6">>) -> 
    cancelOrdersForATradingSession;
convert(massCancelResponse, <<"0">>) -> 
    cancelRequestRejected;
convert(massCancelResponse, <<"7">>) -> 
    cancelAllOrders;
convert(massCancelResponse, <<"3">>) -> 
    cancelOrdersForAProduct;
convert(massCancelResponse, <<"5">>) -> 
    cancelOrdersForASecurityType;
convert(massCancelResponse, <<"4">>) -> 
    cancelOrdersForACFICode;
convert(massCancelResponse, <<"1">>) -> 
    cancelOrdersForASecurity;
convert(massCancelResponse, <<"2">>) -> 
    cancelOrdersForAnUnderlyingSecurity;
convert(massCancelRejectReason, <<"2">>) -> 
    invalidOrUnkownUnderlyingSecurity;
convert(massCancelRejectReason, <<"6">>) -> 
    invalidOrUnknownTradingSession;
convert(massCancelRejectReason, <<"5">>) -> 
    invalidOrUnknownSecurityType;
convert(massCancelRejectReason, <<"3">>) -> 
    invalidOrUnknownProduct;
convert(massCancelRejectReason, <<"1">>) -> 
    invalidOrUnknownSecurity;
convert(massCancelRejectReason, <<"0">>) -> 
    massCancelNotSupported;
convert(massCancelRejectReason, <<"4">>) -> 
    invalidOrUnknownCFICode;
convert(totalAffectedOrders, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(noAffectedOrders, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(quoteType, <<"0">>) -> 
    indicative;
convert(quoteType, <<"1">>) -> 
    tradeable;
convert(quoteType, <<"2">>) -> 
    restrictedTradeable;
convert(nestedPartyRole, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(noNestedPartyIDs, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(totalAccruedInterestAmt, Bin) -> 
    bin_to_num(Bin);
convert(cashMargin, <<"2">>) -> 
    marginOpen;
convert(cashMargin, <<"3">>) -> 
    marginClose;
convert(cashMargin, <<"1">>) -> 
    cash;
convert(scope, <<"1">>) -> 
    localMarket;
convert(scope, <<"2">>) -> 
    national;
convert(scope, <<"3">>) -> 
    global;
convert(mDImplicitDelete, <<"Y">>) -> 
    yes;
convert(mDImplicitDelete, <<"N">>) -> 
    no;
convert(crossType, <<"1">>) -> 
    crossAON;
convert(crossType, <<"2">>) -> 
    crossIOC;
convert(crossType, <<"3">>) -> 
    crossOneSide;
convert(crossType, <<"4">>) -> 
    crossSamePrice;
convert(crossPrioritization, <<"2">>) -> 
    sellSideIsPrioritized;
convert(crossPrioritization, <<"0">>) -> 
    none;
convert(crossPrioritization, <<"1">>) -> 
    buySideIsPrioritized;
convert(noSides, <<"1">>) -> 
    oneSide;
convert(noSides, <<"2">>) -> 
    bothSides;
convert(noLegs, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(totalNumSecurityTypes, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(noSecurityTypes, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(securityListRequestType, <<"1">>) -> 
    securityTypeAnd;
convert(securityListRequestType, <<"2">>) -> 
    produkt;
convert(securityListRequestType, <<"3">>) -> 
    tradingSessionID;
convert(securityListRequestType, <<"4">>) -> 
    allSecurities;
convert(securityListRequestType, <<"0">>) -> 
    symbol;
convert(securityRequestResult, <<"4">>) -> 
    instrumentDataTemporarilyUnavailable;
convert(securityRequestResult, <<"0">>) -> 
    validRequest;
convert(securityRequestResult, <<"1">>) -> 
    invalidOrUnsupportedRequest;
convert(securityRequestResult, <<"5">>) -> 
    requestForInstrumentDataNotSupported;
convert(securityRequestResult, <<"3">>) -> 
    notAuthorizedToRetrieveInstrumentData;
convert(securityRequestResult, <<"2">>) -> 
    noInstrumentsFound;
convert(roundLot, Bin) -> 
    bin_to_num(Bin);
convert(minTradeVol, Bin) -> 
    bin_to_num(Bin);
convert(multiLegRptTypeReq, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(legCoveredOrUncovered, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(legPrice, Bin) -> 
    bin_to_num(Bin);
convert(tradSesStatusRejReason, <<"1">>) -> 
    unknownOrInvalidTradingSessionID;
convert(tradeRequestType, <<"4">>) -> 
    advisoriesThatMatchCriteria;
convert(tradeRequestType, <<"3">>) -> 
    unreportedTradesThatMatchCriteria;
convert(tradeRequestType, <<"2">>) -> 
    unmatchedTradesThatMatchCriteria;
convert(tradeRequestType, <<"1">>) -> 
    matchedTradesMatchingCriteria;
convert(tradeRequestType, <<"0">>) -> 
    allTrades;
convert(previouslyReported, <<"N">>) -> 
    notReportedToCounterparty;
convert(previouslyReported, <<"Y">>) -> 
    perviouslyReportedToCounterparty;
convert(matchStatus, <<"0">>) -> 
    compared;
convert(matchStatus, <<"1">>) -> 
    uncompared;
convert(matchStatus, <<"2">>) -> 
    advisoryOrAlert;
convert(matchType, <<"S5">>) -> 
    a5ExactMatchSummarizedQuantity;
convert(matchType, <<"M1">>) -> 
    exactMatchMinusBadgesTimes;
convert(matchType, <<"M6">>) -> 
    aCTM6Match;
convert(matchType, <<"M5">>) -> 
    aCTDefaultAfterM2;
convert(matchType, <<"M3">>) -> 
    aCTAcceptedTrade;
convert(matchType, <<"S2">>) -> 
    a2ExactMatchSummarizedQuantity;
convert(matchType, <<"S3">>) -> 
    a3ExactMatchSummarizedQuantity;
convert(matchType, <<"S4">>) -> 
    a4ExactMatchSummarizedQuantity;
convert(matchType, <<"M2">>) -> 
    summarizedMatchMinusBadgesTimes;
convert(matchType, <<"A2">>) -> 
    exactMatchPlus4Badges;
convert(matchType, <<"A3">>) -> 
    exactMatchPlus2BadgesExecTime;
convert(matchType, <<"A4">>) -> 
    exactMatchPlus2Badges;
convert(matchType, <<"AQ">>) -> 
    stampedAdvisoriesOrSpecialistAccepts;
convert(matchType, <<"MT">>) -> 
    oCSLockedIn;
convert(matchType, <<"M4">>) -> 
    aCTDefaultTrade;
convert(matchType, <<"A1">>) -> 
    exactMatchPlus4BadgesExecTime;
convert(matchType, <<"S1">>) -> 
    a1ExactMatchSummarizedQuantity;
convert(matchType, <<"A5">>) -> 
    exactMatchPlusExecTime;
convert(oddLot, <<"Y">>) -> 
    true;
convert(oddLot, <<"N">>) -> 
    false;
convert(noClearingInstructions, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(clearingInstruction, <<"8">>) -> 
    manualMode;
convert(clearingInstruction, <<"5">>) -> 
    multilateralNetting;
convert(clearingInstruction, <<"9">>) -> 
    automaticPostingMode;
convert(clearingInstruction, <<"2">>) -> 
    bilateralNettingOnly;
convert(clearingInstruction, <<"6">>) -> 
    clearAgainstCentralCounterparty;
convert(clearingInstruction, <<"10">>) -> 
    automaticGiveUpMode;
convert(clearingInstruction, <<"4">>) -> 
    specialTrade;
convert(clearingInstruction, <<"3">>) -> 
    exClearing;
convert(clearingInstruction, <<"0">>) -> 
    processNormally;
convert(clearingInstruction, <<"7">>) -> 
    excludeFromCentralCounterparty;
convert(clearingInstruction, <<"1">>) -> 
    excludeFromAllNetting;
convert(noDates, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(accountType, <<"3">>) -> 
    houseTrader;
convert(accountType, <<"7">>) -> 
    houseTraderCrossMargined;
convert(accountType, <<"6">>) -> 
    carriedNonCustomerSideCrossMargined;
convert(accountType, <<"4">>) -> 
    floorTrader;
convert(accountType, <<"2">>) -> 
    carriedNonCustomerSide;
convert(accountType, <<"1">>) -> 
    carriedCustomerSide;
convert(accountType, <<"8">>) -> 
    jointBackOfficeAccount;
convert(custOrderCapacity, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(massStatusReqType, <<"1">>) -> 
    statusForOrdersForASecurity;
convert(massStatusReqType, <<"2">>) -> 
    statusForOrdersForAnUnderlyingSecurity;
convert(massStatusReqType, <<"3">>) -> 
    statusForOrdersForAProduct;
convert(massStatusReqType, <<"4">>) -> 
    statusForOrdersForACFICode;
convert(massStatusReqType, <<"5">>) -> 
    statusForOrdersForASecurityType;
convert(massStatusReqType, <<"6">>) -> 
    statusForOrdersForATradingSession;
convert(massStatusReqType, <<"8">>) -> 
    statusForOrdersForAPartyID;
convert(massStatusReqType, <<"7">>) -> 
    statusForAllOrders;
convert(dayBookingInst, <<"0">>) -> 
    auto;
convert(dayBookingInst, <<"1">>) -> 
    speakWithOrderInitiatorBeforeBooking;
convert(bookingUnit, <<"1">>) -> 
    aggregatePartialExecutionsOnThisOrder;
convert(bookingUnit, <<"2">>) -> 
    aggregateExecutionsForThisSymbol;
convert(bookingUnit, <<"0">>) -> 
    eachPartialExecutionIsABookableUnit;
convert(preallocMethod, <<"0">>) -> 
    proRata;
convert(preallocMethod, <<"1">>) -> 
    doNotProRata;
convert(noLegSecurityAltID, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(legProduct, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(legStrikePrice, Bin) -> 
    bin_to_num(Bin);
convert(legContractMultiplier, Bin) -> 
    bin_to_num(Bin);
convert(legCouponRate, Bin) -> 
    bin_to_num(Bin);
convert(encodedLegIssuerLen, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(encodedLegSecurityDescLen, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(legRatioQty, Bin) -> 
    bin_to_num(Bin);
convert(allocType, <<"6">>) -> 
    buysideReadyToBook;
convert(allocType, <<"2">>) -> 
    preliminary;
convert(allocType, <<"3">>) -> 
    sellsideCalculatedUsingPreliminary;
convert(allocType, <<"5">>) -> 
    readyToBook;
convert(allocType, <<"1">>) -> 
    calculated;
convert(allocType, <<"4">>) -> 
    sellsideCalculatedWithoutPreliminary;
convert(noHops, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(hopRefID, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(midPx, Bin) -> 
    bin_to_num(Bin);
convert(bidYield, Bin) -> 
    bin_to_num(Bin);
convert(midYield, Bin) -> 
    bin_to_num(Bin);
convert(offerYield, Bin) -> 
    bin_to_num(Bin);
convert(clearingFeeIndicator, <<"H">>) -> 
    firms106HAnd106J;
convert(clearingFeeIndicator, <<"5">>) -> 
    fifthYearDelegate;
convert(clearingFeeIndicator, <<"4">>) -> 
    fourthYearDelegate;
convert(clearingFeeIndicator, <<"3">>) -> 
    thirdYearDelegate;
convert(clearingFeeIndicator, <<"2">>) -> 
    secondYearDelegate;
convert(clearingFeeIndicator, <<"1">>) -> 
    firstYearDelegate;
convert(clearingFeeIndicator, <<"M">>) -> 
    allOtherOwnershipTypes;
convert(clearingFeeIndicator, <<"I">>) -> 
    gIM;
convert(clearingFeeIndicator, <<"9">>) -> 
    sixthYearDelegate;
convert(clearingFeeIndicator, <<"F">>) -> 
    fullAndAssociateMember;
convert(clearingFeeIndicator, <<"E">>) -> 
    equityMemberAndClearingMember;
convert(clearingFeeIndicator, <<"C">>) -> 
    nonMemberAndCustomer;
convert(clearingFeeIndicator, <<"B">>) -> 
    cBOEMember;
convert(clearingFeeIndicator, <<"L">>) -> 
    lessee106FEmployees;
convert(workingIndicator, <<"N">>) -> 
    notWorking;
convert(workingIndicator, <<"Y">>) -> 
    working;
convert(legLastPx, Bin) -> 
    bin_to_num(Bin);
convert(priorityIndicator, <<"0">>) -> 
    priorityUnchanged;
convert(priorityIndicator, <<"1">>) -> 
    lostPriorityAsResultOfOrderChange;
convert(priceImprovement, Bin) -> 
    bin_to_num(Bin);
convert(price2, Bin) -> 
    bin_to_num(Bin);
convert(lastForwardPoints2, Bin) -> 
    bin_to_num(Bin);
convert(bidForwardPoints2, Bin) -> 
    bin_to_num(Bin);
convert(offerForwardPoints2, Bin) -> 
    bin_to_num(Bin);
convert(mktBidPx, Bin) -> 
    bin_to_num(Bin);
convert(mktOfferPx, Bin) -> 
    bin_to_num(Bin);
convert(minBidSize, Bin) -> 
    bin_to_num(Bin);
convert(minOfferSize, Bin) -> 
    bin_to_num(Bin);
convert(legalConfirm, <<"Y">>) -> 
    legalConfirm;
convert(legalConfirm, <<"N">>) -> 
    doesNotConsituteALegalConfirm;
convert(underlyingLastPx, Bin) -> 
    bin_to_num(Bin);
convert(underlyingLastQty, Bin) -> 
    bin_to_num(Bin);
convert(settlCurrBidFxRate, Bin) -> 
    bin_to_num(Bin);
convert(settlCurrOfferFxRate, Bin) -> 
    bin_to_num(Bin);
convert(quoteRequestRejectReason, <<"1">>) -> 
    unknownSymbol;
convert(quoteRequestRejectReason, <<"2">>) -> 
    exchange;
convert(quoteRequestRejectReason, <<"3">>) -> 
    quoteRequestExceedsLimit;
convert(quoteRequestRejectReason, <<"4">>) -> 
    tooLateToEnter;
convert(quoteRequestRejectReason, <<"5">>) -> 
    invalidPrice;
convert(quoteRequestRejectReason, <<"6">>) -> 
    notAuthorizedToRequestQuote;
convert(_Name, Bin) ->
    Bin.
get_record_def(commissionData) -> 
    [commissionData, commission, commType, commCurrency, fundRenewWaiv];
get_record_def(rgr_instrument_454) -> 
    [rgr_instrument_454, securityAltID, securityAltIDSource];
get_record_def(instrument) -> 
    [instrument, symbol, symbolSfx, securityID, securityIDSource, [[rgr_instrument_454]], produkt, cFICode, securityType, maturityMonthYear, maturityDate, couponPaymentDate, issueDate, repoCollateralSecurityType, repurchaseTerm, repurchaseRate, factor, creditRating, instrRegistry, countryOfIssue, stateOrProvinceOfIssue, localeOfIssue, redemptionDate, strikePrice, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc];
get_record_def(rgr_instrumentLeg_604) -> 
    [rgr_instrumentLeg_604, legSecurityAltID, legSecurityAltIDSource];
get_record_def(instrumentLeg) -> 
    [instrumentLeg, legSymbol, legSymbolSfx, legSecurityID, legSecurityIDSource, [[rgr_instrumentLeg_604]], legProduct, legCFICode, legSecurityType, legMaturityMonthYear, legMaturityDate, legCouponPaymentDate, legIssueDate, legRepoCollateralSecurityType, legRepurchaseTerm, legRepurchaseRate, legFactor, legCreditRating, legInstrRegistry, legCountryOfIssue, legStateOrProvinceOfIssue, legLocaleOfIssue, legRedemptionDate, legStrikePrice, legOptAttribute, legContractMultiplier, legCouponRate, legSecurityExchange, legIssuer, encodedLegIssuerLen, encodedLegIssuer, legSecurityDesc, encodedLegSecurityDescLen, encodedLegSecurityDesc, legRatioQty, legSide];
get_record_def(rgr_nestedParties_539) -> 
    [rgr_nestedParties_539, nestedPartyID, nestedPartyIDSource, nestedPartyRole, nestedPartySubID];
get_record_def(nestedParties) -> 
    [nestedParties, [[rgr_nestedParties_539]]];
get_record_def(orderQtyData) -> 
    [orderQtyData, orderQty, cashOrderQty, orderPercent, roundingDirection, roundingModulus];
get_record_def(rgr_parties_453) -> 
    [rgr_parties_453, partyID, partyIDSource, partyRole, partySubID];
get_record_def(parties) -> 
    [parties, [[rgr_parties_453]]];
get_record_def(spreadOrBenchmarkCurveData) -> 
    [spreadOrBenchmarkCurveData, spread, benchmarkCurveCurrency, benchmarkCurveName, benchmarkCurvePoint];
get_record_def(rgr_stipulations_232) -> 
    [rgr_stipulations_232, stipulationType, stipulationValue];
get_record_def(stipulations) -> 
    [stipulations, [[rgr_stipulations_232]]];
get_record_def(rgr_underlyingInstrument_457) -> 
    [rgr_underlyingInstrument_457, underlyingSecurityAltID, underlyingSecurityAltIDSource];
get_record_def(underlyingInstrument) -> 
    [underlyingInstrument, underlyingSymbol, underlyingSymbolSfx, underlyingSecurityID, underlyingSecurityIDSource, [[rgr_underlyingInstrument_457]], underlyingProduct, underlyingCFICode, underlyingSecurityType, underlyingMaturityMonthYear, underlyingMaturityDate, underlyingPutOrCall, underlyingCouponPaymentDate, underlyingIssueDate, underlyingRepoCollateralSecurityType, underlyingRepurchaseTerm, underlyingRepurchaseRate, underlyingFactor, underlyingCreditRating, underlyingInstrRegistry, underlyingCountryOfIssue, underlyingStateOrProvinceOfIssue, underlyingLocaleOfIssue, underlyingRedemptionDate, underlyingStrikePrice, underlyingOptAttribute, underlyingContractMultiplier, underlyingCouponRate, underlyingSecurityExchange, underlyingIssuer, encodedUnderlyingIssuerLen, encodedUnderlyingIssuer, underlyingSecurityDesc, encodedUnderlyingSecurityDescLen, encodedUnderlyingSecurityDesc];
get_record_def(yieldData) -> 
    [yieldData, yieldType, yield];
get_record_def(rgr_standardHeader_627) -> 
    [rgr_standardHeader_627, hopCompID, hopSendingTime, hopRefID];
get_record_def(standardHeader) -> 
    [standardHeader, beginString, bodyLength, msgType, senderCompID, targetCompID, onBehalfOfCompID, deliverToCompID, secureDataLen, secureData, msgSeqNum, senderSubID, senderLocationID, targetSubID, targetLocationID, onBehalfOfSubID, onBehalfOfLocationID, deliverToSubID, deliverToLocationID, possDupFlag, possResend, sendingTime, origSendingTime, xmlDataLen, xmlData, messageEncoding, lastMsgSeqNumProcessed, onBehalfOfSendingTime, [[rgr_standardHeader_627]]];
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
    [iOI, [standardHeader], iOIid, iOITransType, iOIRefID, [instrument], side, quantityType, iOIQty, priceType, price, currency, validUntilTime, iOIQltyInd, iOINaturalFlag, [[rgr_iOI_199]], text, encodedTextLen, encodedText, transactTime, uRLLink, [[rgr_iOI_215]], [spreadOrBenchmarkCurveData], benchmark, [standardTrailer]];
get_record_def(advertisement) -> 
    [advertisement, [standardHeader], advId, advTransType, advRefID, [instrument], advSide, quantity, price, currency, tradeDate, transactTime, text, encodedTextLen, encodedText, uRLLink, lastMkt, tradingSessionID, tradingSessionSubID, [standardTrailer]];
get_record_def(rgr_executionReport_382) -> 
    [rgr_executionReport_382, contraBroker, contraTrader, contraTradeQty, contraTradeTime, contraLegRefID];
get_record_def(rgr_executionReport_518) -> 
    [rgr_executionReport_518, contAmtType, contAmtValue, contAmtCurr];
get_record_def(rgr_executionReport_555) -> 
    [rgr_executionReport_555, [instrumentLeg], legPositionEffect, legCoveredOrUncovered, [nestedParties], legRefID, legPrice, legSettlmntTyp, legFutSettDate, legLastPx];
get_record_def(executionReport) -> 
    [executionReport, [standardHeader], orderID, secondaryOrderID, secondaryClOrdID, secondaryExecID, clOrdID, origClOrdID, clOrdLinkID, [parties], tradeOriginationDate, [[rgr_executionReport_382]], listID, crossID, origCrossID, crossType, execID, execRefID, execType, ordStatus, workingIndicator, ordRejReason, execRestatementReason, account, accountType, dayBookingInst, bookingUnit, preallocMethod, settlmntTyp, futSettDate, cashMargin, clearingFeeIndicator, [instrument], side, [stipulations], quantityType, [orderQtyData], ordType, priceType, price, stopPx, pegDifference, discretionInst, discretionOffset, currency, complianceID, solicitedFlag, timeInForce, effectiveTime, expireDate, expireTime, execInst, orderCapacity, orderRestrictions, custOrderCapacity, rule80A, lastQty, underlyingLastQty, lastPx, underlyingLastPx, lastSpotRate, lastForwardPoints, lastMkt, tradingSessionID, tradingSessionSubID, lastCapacity, leavesQty, cumQty, avgPx, dayOrderQty, dayCumQty, dayAvgPx, gTBookingInst, tradeDate, transactTime, reportToExch, [commissionData], [spreadOrBenchmarkCurveData], [yieldData], grossTradeAmt, numDaysInterest, exDate, accruedInterestRate, accruedInterestAmt, tradedFlatSwitch, basisFeatureDate, basisFeaturePrice, concession, totalTakedown, netMoney, settlCurrAmt, settlCurrency, settlCurrFxRate, settlCurrFxRateCalc, handlInst, minQty, maxFloor, positionEffect, maxShow, text, encodedTextLen, encodedText, futSettDate2, orderQty2, lastForwardPoints2, multiLegReportingType, cancellationRights, moneyLaunderingStatus, registID, designation, transBkdTime, execValuationPoint, execPriceType, execPriceAdjustment, priorityIndicator, priceImprovement, [[rgr_executionReport_518]], [[rgr_executionReport_555]], [standardTrailer]];
get_record_def(orderCancelReject) -> 
    [orderCancelReject, [standardHeader], orderID, secondaryOrderID, secondaryClOrdID, clOrdID, clOrdLinkID, origClOrdID, ordStatus, workingIndicator, origOrdModTime, listID, account, accountType, tradeOriginationDate, transactTime, cxlRejResponseTo, cxlRejReason, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(rgr_logon_384) -> 
    [rgr_logon_384, refMsgType, msgDirection];
get_record_def(logon) -> 
    [logon, [standardHeader], encryptMethod, heartBtInt, rawDataLength, rawData, resetSeqNumFlag, maxMessageSize, [[rgr_logon_384]], testMessageIndicator, username, password, [standardTrailer]];
get_record_def(rgr_news_215) -> 
    [rgr_news_215, routingType, routingID];
get_record_def(rgr_news_146) -> 
    [rgr_news_146, [instrument]];
get_record_def(rgr_news_33) -> 
    [rgr_news_33, text, encodedTextLen, encodedText];
get_record_def(news) -> 
    [news, [standardHeader], origTime, urgency, headline, encodedHeadlineLen, encodedHeadline, [[rgr_news_215]], [[rgr_news_146]], [[rgr_news_33]], uRLLink, rawDataLength, rawData, [standardTrailer]];
get_record_def(rgr_email_215) -> 
    [rgr_email_215, routingType, routingID];
get_record_def(rgr_email_146) -> 
    [rgr_email_146, [instrument]];
get_record_def(rgr_email_33) -> 
    [rgr_email_33, text, encodedTextLen, encodedText];
get_record_def(email) -> 
    [email, [standardHeader], emailThreadID, emailType, origTime, subject, encodedSubjectLen, encodedSubject, [[rgr_email_215]], [[rgr_email_146]], orderID, clOrdID, [[rgr_email_33]], rawDataLength, rawData, [standardTrailer]];
get_record_def(rgr_newOrderSingle_78) -> 
    [rgr_newOrderSingle_78, allocAccount, individualAllocID, [nestedParties], allocQty];
get_record_def(rgr_newOrderSingle_386) -> 
    [rgr_newOrderSingle_386, tradingSessionID, tradingSessionSubID];
get_record_def(newOrderSingle) -> 
    [newOrderSingle, [standardHeader], clOrdID, secondaryClOrdID, clOrdLinkID, [parties], tradeOriginationDate, account, accountType, dayBookingInst, bookingUnit, preallocMethod, [[rgr_newOrderSingle_78]], settlmntTyp, futSettDate, cashMargin, clearingFeeIndicator, handlInst, execInst, minQty, maxFloor, exDestination, [[rgr_newOrderSingle_386]], processCode, [instrument], prevClosePx, side, locateReqd, transactTime, [stipulations], quantityType, [orderQtyData], ordType, priceType, price, stopPx, [spreadOrBenchmarkCurveData], [yieldData], currency, complianceID, solicitedFlag, iOIid, quoteID, timeInForce, effectiveTime, expireDate, expireTime, gTBookingInst, [commissionData], orderCapacity, orderRestrictions, custOrderCapacity, rule80A, forexReq, settlCurrency, text, encodedTextLen, encodedText, futSettDate2, orderQty2, price2, positionEffect, coveredOrUncovered, maxShow, pegDifference, discretionInst, discretionOffset, cancellationRights, moneyLaunderingStatus, registID, designation, accruedInterestRate, accruedInterestAmt, netMoney, [standardTrailer]];
get_record_def(rgr_rgr_newOrderList_73_78) -> 
    [rgr_rgr_newOrderList_73_78, allocAccount, individualAllocID, [nestedParties], allocQty];
get_record_def(rgr_rgr_newOrderList_73_386) -> 
    [rgr_rgr_newOrderList_73_386, tradingSessionID, tradingSessionSubID];
get_record_def(rgr_newOrderList_73) -> 
    [rgr_newOrderList_73, clOrdID, secondaryClOrdID, listSeqNo, clOrdLinkID, settlInstMode, [parties], tradeOriginationDate, account, accountType, dayBookingInst, bookingUnit, preallocMethod, [[rgr_rgr_newOrderList_73_78]], settlmntTyp, futSettDate, cashMargin, clearingFeeIndicator, handlInst, execInst, minQty, maxFloor, exDestination, [[rgr_rgr_newOrderList_73_386]], processCode, [instrument], prevClosePx, side, sideValueInd, locateReqd, transactTime, [stipulations], quantityType, [orderQtyData], ordType, priceType, price, stopPx, [spreadOrBenchmarkCurveData], [yieldData], currency, complianceID, solicitedFlag, iOIid, quoteID, timeInForce, effectiveTime, expireDate, expireTime, gTBookingInst, [commissionData], orderCapacity, orderRestrictions, custOrderCapacity, rule80A, forexReq, settlCurrency, text, encodedTextLen, encodedText, futSettDate2, orderQty2, price2, positionEffect, coveredOrUncovered, maxShow, pegDifference, discretionInst, discretionOffset, designation, accruedInterestRate, accruedInterestAmt, netMoney];
get_record_def(newOrderList) -> 
    [newOrderList, [standardHeader], listID, bidID, clientBidID, progRptReqs, bidType, progPeriodInterval, cancellationRights, moneyLaunderingStatus, registID, listExecInstType, listExecInst, encodedListExecInstLen, encodedListExecInst, totNoOrders, [[rgr_newOrderList_73]], [standardTrailer]];
get_record_def(orderCancelRequest) -> 
    [orderCancelRequest, [standardHeader], origClOrdID, orderID, clOrdID, secondaryClOrdID, clOrdLinkID, listID, origOrdModTime, account, accountType, [parties], [instrument], side, transactTime, [orderQtyData], complianceID, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(rgr_orderCancelReplaceRequest_78) -> 
    [rgr_orderCancelReplaceRequest_78, allocAccount, individualAllocID, [nestedParties], allocQty];
get_record_def(rgr_orderCancelReplaceRequest_386) -> 
    [rgr_orderCancelReplaceRequest_386, tradingSessionID, tradingSessionSubID];
get_record_def(orderCancelReplaceRequest) -> 
    [orderCancelReplaceRequest, [standardHeader], orderID, [parties], tradeOriginationDate, origClOrdID, clOrdID, secondaryClOrdID, clOrdLinkID, listID, origOrdModTime, account, accountType, dayBookingInst, bookingUnit, preallocMethod, [[rgr_orderCancelReplaceRequest_78]], settlmntTyp, futSettDate, cashMargin, clearingFeeIndicator, handlInst, execInst, minQty, maxFloor, exDestination, [[rgr_orderCancelReplaceRequest_386]], [instrument], side, transactTime, quantityType, [orderQtyData], ordType, priceType, price, stopPx, [spreadOrBenchmarkCurveData], [yieldData], pegDifference, discretionInst, discretionOffset, complianceID, solicitedFlag, currency, timeInForce, effectiveTime, expireDate, expireTime, gTBookingInst, [commissionData], orderCapacity, orderRestrictions, custOrderCapacity, rule80A, forexReq, settlCurrency, text, encodedTextLen, encodedText, futSettDate2, orderQty2, price2, positionEffect, coveredOrUncovered, maxShow, locateReqd, cancellationRights, moneyLaunderingStatus, registID, designation, accruedInterestRate, accruedInterestAmt, netMoney, [standardTrailer]];
get_record_def(orderStatusRequest) -> 
    [orderStatusRequest, [standardHeader], orderID, clOrdID, secondaryClOrdID, clOrdLinkID, [parties], account, [instrument], side, [standardTrailer]];
get_record_def(rgr_allocation_73) -> 
    [rgr_allocation_73, clOrdID, orderID, secondaryOrderID, secondaryClOrdID, listID];
get_record_def(rgr_allocation_124) -> 
    [rgr_allocation_124, lastQty, execID, secondaryExecID, lastPx, lastCapacity];
get_record_def(rgr_rgr_allocation_78_136) -> 
    [rgr_rgr_allocation_78_136, miscFeeAmt, miscFeeCurr, miscFeeType];
get_record_def(rgr_allocation_78) -> 
    [rgr_allocation_78, allocAccount, allocPrice, allocQty, individualAllocID, processCode, [nestedParties], notifyBrokerOfCredit, allocHandlInst, allocText, encodedAllocTextLen, encodedAllocText, [commissionData], allocAvgPx, allocNetMoney, settlCurrAmt, settlCurrency, settlCurrFxRate, settlCurrFxRateCalc, accruedInterestAmt, settlInstMode, [[rgr_rgr_allocation_78_136]]];
get_record_def(allocation) -> 
    [allocation, [standardHeader], allocID, allocTransType, allocType, refAllocID, allocLinkID, allocLinkType, bookingRefID, [[rgr_allocation_73]], [[rgr_allocation_124]], side, [instrument], quantity, lastMkt, tradeOriginationDate, tradingSessionID, tradingSessionSubID, priceType, avgPx, currency, avgPrxPrecision, [parties], tradeDate, transactTime, settlmntTyp, futSettDate, grossTradeAmt, concession, totalTakedown, netMoney, positionEffect, text, encodedTextLen, encodedText, numDaysInterest, accruedInterestRate, totalAccruedInterestAmt, legalConfirm, [[rgr_allocation_78]], [standardTrailer]];
get_record_def(listCancelRequest) -> 
    [listCancelRequest, [standardHeader], listID, transactTime, tradeOriginationDate, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(listExecute) -> 
    [listExecute, [standardHeader], listID, clientBidID, bidID, transactTime, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(listStatusRequest) -> 
    [listStatusRequest, [standardHeader], listID, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(rgr_listStatus_73) -> 
    [rgr_listStatus_73, clOrdID, secondaryClOrdID, cumQty, ordStatus, workingIndicator, leavesQty, cxlQty, avgPx, ordRejReason, text, encodedTextLen, encodedText];
get_record_def(listStatus) -> 
    [listStatus, [standardHeader], listID, listStatusType, noRpts, listOrderStatus, rptSeq, listStatusText, encodedListStatusTextLen, encodedListStatusText, transactTime, totNoOrders, [[rgr_listStatus_73]], [standardTrailer]];
get_record_def(allocationAck) -> 
    [allocationAck, [standardHeader], [parties], allocID, tradeDate, transactTime, allocStatus, allocRejCode, text, encodedTextLen, encodedText, legalConfirm, [standardTrailer]];
get_record_def(dontKnowTrade) -> 
    [dontKnowTrade, [standardHeader], orderID, execID, dKReason, [instrument], side, [orderQtyData], lastQty, lastPx, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(rgr_quoteRequest_146) -> 
    [rgr_quoteRequest_146, [instrument], prevClosePx, quoteRequestType, quoteType, tradingSessionID, tradingSessionSubID, tradeOriginationDate, [stipulations], side, quantityType, orderQty, cashOrderQty, settlmntTyp, futSettDate, ordType, futSettDate2, orderQty2, expireTime, transactTime, currency, [spreadOrBenchmarkCurveData], priceType, price, price2, [yieldData]];
get_record_def(quoteRequest) -> 
    [quoteRequest, [standardHeader], quoteReqID, rFQReqID, [[rgr_quoteRequest_146]], text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(quote) -> 
    [quote, [standardHeader], quoteReqID, quoteID, quoteType, quoteResponseLevel, [parties], account, accountType, tradingSessionID, tradingSessionSubID, [instrument], bidPx, offerPx, mktBidPx, mktOfferPx, minBidSize, bidSize, minOfferSize, offerSize, validUntilTime, bidSpotRate, offerSpotRate, bidForwardPoints, offerForwardPoints, midPx, bidYield, midYield, offerYield, transactTime, settlmntTyp, futSettDate, ordType, futSettDate2, orderQty2, bidForwardPoints2, offerForwardPoints2, currency, settlCurrBidFxRate, settlCurrOfferFxRate, settlCurrFxRateCalc, commission, commType, custOrderCapacity, exDestination, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(settlementInstructions) -> 
    [settlementInstructions, [standardHeader], settlInstID, settlInstTransType, settlInstRefID, settlInstMode, settlInstSource, allocAccount, individualAllocID, clOrdID, tradeDate, allocID, lastMkt, tradingSessionID, tradingSessionSubID, side, securityType, effectiveTime, transactTime, [parties], standInstDbType, standInstDbName, standInstDbID, settlDeliveryType, settlDepositoryCode, settlBrkrCode, settlInstCode, securitySettlAgentName, securitySettlAgentCode, securitySettlAgentAcctNum, securitySettlAgentAcctName, securitySettlAgentContactName, securitySettlAgentContactPhone, cashSettlAgentName, cashSettlAgentCode, cashSettlAgentAcctNum, cashSettlAgentAcctName, cashSettlAgentContactName, cashSettlAgentContactPhone, paymentMethod, paymentRef, cardHolderName, cardNumber, cardStartDate, cardExpDate, cardIssNo, paymentDate, paymentRemitterID, [standardTrailer]];
get_record_def(rgr_marketDataRequest_267) -> 
    [rgr_marketDataRequest_267, mDEntryType];
get_record_def(rgr_marketDataRequest_146) -> 
    [rgr_marketDataRequest_146, [instrument]];
get_record_def(rgr_marketDataRequest_386) -> 
    [rgr_marketDataRequest_386, tradingSessionID, tradingSessionSubID];
get_record_def(marketDataRequest) -> 
    [marketDataRequest, [standardHeader], mDReqID, subscriptionRequestType, marketDepth, mDUpdateType, aggregatedBook, openCloseSettleFlag, scope, mDImplicitDelete, [[rgr_marketDataRequest_267]], [[rgr_marketDataRequest_146]], [[rgr_marketDataRequest_386]], [standardTrailer]];
get_record_def(rgr_marketDataSnapshotFullRefresh_268) -> 
    [rgr_marketDataSnapshotFullRefresh_268, mDEntryType, mDEntryPx, currency, mDEntrySize, mDEntryDate, mDEntryTime, tickDirection, mDMkt, tradingSessionID, tradingSessionSubID, quoteCondition, tradeCondition, mDEntryOriginator, locationID, deskID, openCloseSettleFlag, timeInForce, expireDate, expireTime, minQty, execInst, sellerDays, orderID, quoteEntryID, mDEntryBuyer, mDEntrySeller, numberOfOrders, mDEntryPositionNo, scope, text, encodedTextLen, encodedText];
get_record_def(marketDataSnapshotFullRefresh) -> 
    [marketDataSnapshotFullRefresh, [standardHeader], mDReqID, [instrument], financialStatus, corporateAction, totalVolumeTraded, totalVolumeTradedDate, totalVolumeTradedTime, netChgPrevDay, [[rgr_marketDataSnapshotFullRefresh_268]], [standardTrailer]];
get_record_def(rgr_marketDataIncrementalRefresh_268) -> 
    [rgr_marketDataIncrementalRefresh_268, mDUpdateAction, deleteReason, mDEntryType, mDEntryID, mDEntryRefID, [instrument], financialStatus, corporateAction, mDEntryPx, currency, mDEntrySize, mDEntryDate, mDEntryTime, tickDirection, mDMkt, tradingSessionID, tradingSessionSubID, quoteCondition, tradeCondition, mDEntryOriginator, locationID, deskID, openCloseSettleFlag, timeInForce, expireDate, expireTime, minQty, execInst, sellerDays, orderID, quoteEntryID, mDEntryBuyer, mDEntrySeller, numberOfOrders, mDEntryPositionNo, scope, totalVolumeTraded, totalVolumeTradedDate, totalVolumeTradedTime, netChgPrevDay, text, encodedTextLen, encodedText];
get_record_def(marketDataIncrementalRefresh) -> 
    [marketDataIncrementalRefresh, [standardHeader], mDReqID, [[rgr_marketDataIncrementalRefresh_268]], [standardTrailer]];
get_record_def(marketDataRequestReject) -> 
    [marketDataRequestReject, [standardHeader], mDReqID, mDReqRejReason, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(rgr_quoteCancel_295) -> 
    [rgr_quoteCancel_295, [instrument]];
get_record_def(quoteCancel) -> 
    [quoteCancel, [standardHeader], quoteReqID, quoteID, quoteCancelType, quoteResponseLevel, [parties], account, accountType, tradingSessionID, tradingSessionSubID, [[rgr_quoteCancel_295]], [standardTrailer]];
get_record_def(quoteStatusRequest) -> 
    [quoteStatusRequest, [standardHeader], quoteStatusReqID, quoteID, [instrument], [parties], account, accountType, tradingSessionID, tradingSessionSubID, subscriptionRequestType, [standardTrailer]];
get_record_def(rgr_rgr_massQuoteAcknowledgement_296_295) -> 
    [rgr_rgr_massQuoteAcknowledgement_296_295, quoteEntryID, [instrument], bidPx, offerPx, bidSize, offerSize, validUntilTime, bidSpotRate, offerSpotRate, bidForwardPoints, offerForwardPoints, midPx, bidYield, midYield, offerYield, transactTime, tradingSessionID, tradingSessionSubID, futSettDate, ordType, futSettDate2, orderQty2, bidForwardPoints2, offerForwardPoints2, currency, quoteEntryRejectReason];
get_record_def(rgr_massQuoteAcknowledgement_296) -> 
    [rgr_massQuoteAcknowledgement_296, quoteSetID, [underlyingInstrument], totQuoteEntries, [[rgr_rgr_massQuoteAcknowledgement_296_295]]];
get_record_def(massQuoteAcknowledgement) -> 
    [massQuoteAcknowledgement, [standardHeader], quoteReqID, quoteID, quoteStatus, quoteRejectReason, quoteResponseLevel, quoteType, [parties], account, accountType, text, [[rgr_massQuoteAcknowledgement_296]], [standardTrailer]];
get_record_def(rgr_securityDefinitionRequest_555) -> 
    [rgr_securityDefinitionRequest_555, [instrumentLeg], legCurrency];
get_record_def(securityDefinitionRequest) -> 
    [securityDefinitionRequest, [standardHeader], securityReqID, securityRequestType, [instrument], currency, text, encodedTextLen, encodedText, tradingSessionID, tradingSessionSubID, [[rgr_securityDefinitionRequest_555]], subscriptionRequestType, [standardTrailer]];
get_record_def(rgr_securityDefinition_555) -> 
    [rgr_securityDefinition_555, [instrumentLeg], legCurrency];
get_record_def(securityDefinition) -> 
    [securityDefinition, [standardHeader], securityReqID, securityResponseID, securityResponseType, [instrument], currency, tradingSessionID, tradingSessionSubID, text, encodedTextLen, encodedText, [[rgr_securityDefinition_555]], roundLot, minTradeVol, [standardTrailer]];
get_record_def(securityStatusRequest) -> 
    [securityStatusRequest, [standardHeader], securityStatusReqID, [instrument], currency, subscriptionRequestType, tradingSessionID, tradingSessionSubID, [standardTrailer]];
get_record_def(securityStatus) -> 
    [securityStatus, [standardHeader], securityStatusReqID, [instrument], currency, tradingSessionID, tradingSessionSubID, unsolicitedIndicator, securityTradingStatus, financialStatus, corporateAction, haltReason, inViewOfCommon, dueToRelated, buyVolume, sellVolume, highPx, lowPx, lastPx, transactTime, adjustment, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(tradingSessionStatusRequest) -> 
    [tradingSessionStatusRequest, [standardHeader], tradSesReqID, tradingSessionID, tradingSessionSubID, tradSesMethod, tradSesMode, subscriptionRequestType, [standardTrailer]];
get_record_def(tradingSessionStatus) -> 
    [tradingSessionStatus, [standardHeader], tradSesReqID, tradingSessionID, tradingSessionSubID, tradSesMethod, tradSesMode, unsolicitedIndicator, tradSesStatus, tradSesStatusRejReason, tradSesStartTime, tradSesOpenTime, tradSesPreCloseTime, tradSesCloseTime, tradSesEndTime, totalVolumeTraded, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(rgr_rgr_massQuote_296_295) -> 
    [rgr_rgr_massQuote_296_295, quoteEntryID, [instrument], bidPx, offerPx, bidSize, offerSize, validUntilTime, bidSpotRate, offerSpotRate, bidForwardPoints, offerForwardPoints, midPx, bidYield, midYield, offerYield, transactTime, tradingSessionID, tradingSessionSubID, futSettDate, ordType, futSettDate2, orderQty2, bidForwardPoints2, offerForwardPoints2, currency];
get_record_def(rgr_massQuote_296) -> 
    [rgr_massQuote_296, quoteSetID, [underlyingInstrument], quoteSetValidUntilTime, totQuoteEntries, [[rgr_rgr_massQuote_296_295]]];
get_record_def(massQuote) -> 
    [massQuote, [standardHeader], quoteReqID, quoteID, quoteType, quoteResponseLevel, [parties], account, accountType, defBidSize, defOfferSize, [[rgr_massQuote_296]], [standardTrailer]];
get_record_def(businessMessageReject) -> 
    [businessMessageReject, [standardHeader], refSeqNum, refMsgType, businessRejectRefID, businessRejectReason, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(rgr_bidRequest_398) -> 
    [rgr_bidRequest_398, bidDescriptorType, bidDescriptor, sideValueInd, liquidityValue, liquidityNumSecurities, liquidityPctLow, liquidityPctHigh, eFPTrackingError, fairValue, outsideIndexPct, valueOfFutures];
get_record_def(rgr_bidRequest_420) -> 
    [rgr_bidRequest_420, listID, side, tradingSessionID, tradingSessionSubID, netGrossInd, settlmntTyp, futSettDate, account];
get_record_def(bidRequest) -> 
    [bidRequest, [standardHeader], bidID, clientBidID, bidRequestTransType, listName, totalNumSecurities, bidType, numTickets, currency, sideValue1, sideValue2, [[rgr_bidRequest_398]], [[rgr_bidRequest_420]], liquidityIndType, wtAverageLiquidity, exchangeForPhysical, outMainCntryUIndex, crossPercent, progRptReqs, progPeriodInterval, incTaxInd, forexReq, numBidders, tradeDate, tradeType, basisPxType, strikeTime, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(rgr_bidResponse_420) -> 
    [rgr_bidResponse_420, [commissionData], listID, country, side, price, priceType, fairValue, netGrossInd, settlmntTyp, futSettDate, tradingSessionID, tradingSessionSubID, text, encodedTextLen, encodedText];
get_record_def(bidResponse) -> 
    [bidResponse, [standardHeader], bidID, clientBidID, [[rgr_bidResponse_420]], [standardTrailer]];
get_record_def(rgr_listStrikePrice_428) -> 
    [rgr_listStrikePrice_428, [instrument], prevClosePx, clOrdID, secondaryClOrdID, side, price, currency, text, encodedTextLen, encodedText];
get_record_def(listStrikePrice) -> 
    [listStrikePrice, [standardHeader], listID, totNoStrikes, [[rgr_listStrikePrice_428]], [standardTrailer]];
get_record_def(xMLnonFIX) -> 
    [xMLnonFIX, [standardHeader], [standardTrailer]];
get_record_def(rgr_registrationInstructions_473) -> 
    [rgr_registrationInstructions_473, registDetls, registEmail, mailingDtls, mailingInst, [nestedParties], ownerType, dateOfBirth, investorCountryOfResidence];
get_record_def(rgr_registrationInstructions_510) -> 
    [rgr_registrationInstructions_510, distribPaymentMethod, distribPercentage, cashDistribCurr, cashDistribAgentName, cashDistribAgentCode, cashDistribAgentAcctNumber, cashDistribPayRef];
get_record_def(registrationInstructions) -> 
    [registrationInstructions, [standardHeader], registID, registTransType, registRefID, clOrdID, [parties], account, registAcctType, taxAdvantageType, ownershipType, [[rgr_registrationInstructions_473]], [[rgr_registrationInstructions_510]], [standardTrailer]];
get_record_def(registrationInstructionsResponse) -> 
    [registrationInstructionsResponse, [standardHeader], registID, registTransType, registRefID, clOrdID, [parties], account, registStatus, registRejReasonCode, registRejReasonText, [standardTrailer]];
get_record_def(orderMassCancelRequest) -> 
    [orderMassCancelRequest, [standardHeader], clOrdID, secondaryClOrdID, massCancelRequestType, tradingSessionID, tradingSessionSubID, [instrument], [underlyingInstrument], side, transactTime, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(rgr_orderMassCancelReport_534) -> 
    [rgr_orderMassCancelReport_534, origClOrdID, affectedOrderID, affectedSecondaryOrderID];
get_record_def(orderMassCancelReport) -> 
    [orderMassCancelReport, [standardHeader], clOrdID, secondaryClOrdID, orderID, secondaryOrderID, massCancelRequestType, massCancelResponse, massCancelRejectReason, totalAffectedOrders, [[rgr_orderMassCancelReport_534]], tradingSessionID, tradingSessionSubID, [instrument], [underlyingInstrument], side, transactTime, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(rgr_rgr_newOrderCross_552_78) -> 
    [rgr_rgr_newOrderCross_552_78, allocAccount, individualAllocID, [nestedParties], allocQty];
get_record_def(rgr_newOrderCross_552) -> 
    [rgr_newOrderCross_552, side, clOrdID, secondaryClOrdID, clOrdLinkID, [parties], tradeOriginationDate, account, accountType, dayBookingInst, bookingUnit, preallocMethod, [[rgr_rgr_newOrderCross_552_78]], quantityType, [orderQtyData], [commissionData], orderCapacity, orderRestrictions, custOrderCapacity, forexReq, settlCurrency, text, encodedTextLen, encodedText, positionEffect, coveredOrUncovered, cashMargin, clearingFeeIndicator, solicitedFlag, sideComplianceID];
get_record_def(rgr_newOrderCross_386) -> 
    [rgr_newOrderCross_386, tradingSessionID, tradingSessionSubID];
get_record_def(newOrderCross) -> 
    [newOrderCross, [standardHeader], crossID, crossType, crossPrioritization, [[rgr_newOrderCross_552]], [instrument], settlmntTyp, futSettDate, handlInst, execInst, minQty, maxFloor, exDestination, [[rgr_newOrderCross_386]], processCode, prevClosePx, locateReqd, transactTime, [stipulations], ordType, priceType, price, stopPx, [spreadOrBenchmarkCurveData], [yieldData], currency, complianceID, iOIid, quoteID, timeInForce, effectiveTime, expireDate, expireTime, gTBookingInst, maxShow, pegDifference, discretionInst, discretionOffset, cancellationRights, moneyLaunderingStatus, registID, designation, accruedInterestRate, accruedInterestAmt, netMoney, [standardTrailer]];
get_record_def(rgr_rgr_crossOrderCancelReplaceRequest_552_78) -> 
    [rgr_rgr_crossOrderCancelReplaceRequest_552_78, allocAccount, individualAllocID, [nestedParties], allocQty];
get_record_def(rgr_crossOrderCancelReplaceRequest_552) -> 
    [rgr_crossOrderCancelReplaceRequest_552, side, origClOrdID, clOrdID, secondaryClOrdID, clOrdLinkID, origOrdModTime, [parties], tradeOriginationDate, account, accountType, dayBookingInst, bookingUnit, preallocMethod, [[rgr_rgr_crossOrderCancelReplaceRequest_552_78]], quantityType, [orderQtyData], [commissionData], orderCapacity, orderRestrictions, custOrderCapacity, forexReq, settlCurrency, text, encodedTextLen, encodedText, positionEffect, coveredOrUncovered, cashMargin, clearingFeeIndicator, solicitedFlag, sideComplianceID];
get_record_def(rgr_crossOrderCancelReplaceRequest_386) -> 
    [rgr_crossOrderCancelReplaceRequest_386, tradingSessionID, tradingSessionSubID];
get_record_def(crossOrderCancelReplaceRequest) -> 
    [crossOrderCancelReplaceRequest, [standardHeader], orderID, crossID, origCrossID, crossType, crossPrioritization, [[rgr_crossOrderCancelReplaceRequest_552]], [instrument], settlmntTyp, futSettDate, handlInst, execInst, minQty, maxFloor, exDestination, [[rgr_crossOrderCancelReplaceRequest_386]], processCode, prevClosePx, locateReqd, transactTime, [stipulations], ordType, priceType, price, stopPx, [spreadOrBenchmarkCurveData], [yieldData], currency, complianceID, iOIid, quoteID, timeInForce, effectiveTime, expireDate, expireTime, gTBookingInst, maxShow, pegDifference, discretionInst, discretionOffset, cancellationRights, moneyLaunderingStatus, registID, designation, accruedInterestRate, accruedInterestAmt, netMoney, [standardTrailer]];
get_record_def(rgr_crossOrderCancelRequest_552) -> 
    [rgr_crossOrderCancelRequest_552, side, origClOrdID, clOrdID, secondaryClOrdID, clOrdLinkID, origOrdModTime, [parties], tradeOriginationDate, [orderQtyData], complianceID, text, encodedTextLen, encodedText];
get_record_def(crossOrderCancelRequest) -> 
    [crossOrderCancelRequest, [standardHeader], orderID, crossID, origCrossID, crossType, crossPrioritization, [[rgr_crossOrderCancelRequest_552]], [instrument], transactTime, [standardTrailer]];
get_record_def(securityTypeRequest) -> 
    [securityTypeRequest, [standardHeader], securityReqID, text, encodedTextLen, encodedText, tradingSessionID, tradingSessionSubID, [standardTrailer]];
get_record_def(rgr_securityTypes_558) -> 
    [rgr_securityTypes_558, securityType, produkt, cFICode];
get_record_def(securityTypes) -> 
    [securityTypes, [standardHeader], securityReqID, securityResponseID, securityResponseType, totalNumSecurityTypes, [[rgr_securityTypes_558]], text, encodedTextLen, encodedText, tradingSessionID, tradingSessionSubID, subscriptionRequestType, [standardTrailer]];
get_record_def(securityListRequest) -> 
    [securityListRequest, [standardHeader], securityReqID, securityListRequestType, [instrument], currency, text, encodedTextLen, encodedText, tradingSessionID, tradingSessionSubID, subscriptionRequestType, [standardTrailer]];
get_record_def(rgr_rgr_securityList_146_555) -> 
    [rgr_rgr_securityList_146_555, [instrumentLeg], legCurrency];
get_record_def(rgr_securityList_146) -> 
    [rgr_securityList_146, [instrument], currency, [[rgr_rgr_securityList_146_555]], roundLot, minTradeVol, tradingSessionID, tradingSessionSubID, text, encodedTextLen, encodedText];
get_record_def(securityList) -> 
    [securityList, [standardHeader], securityReqID, securityResponseID, securityRequestResult, totalNumSecurities, [[rgr_securityList_146]], [standardTrailer]];
get_record_def(derivativeSecurityListRequest) -> 
    [derivativeSecurityListRequest, [standardHeader], securityReqID, securityListRequestType, [underlyingInstrument], currency, text, encodedTextLen, encodedText, tradingSessionID, tradingSessionSubID, subscriptionRequestType, [standardTrailer]];
get_record_def(rgr_rgr_derivativeSecurityList_146_555) -> 
    [rgr_rgr_derivativeSecurityList_146_555, [instrumentLeg], legCurrency];
get_record_def(rgr_derivativeSecurityList_146) -> 
    [rgr_derivativeSecurityList_146, [instrument], currency, [[rgr_rgr_derivativeSecurityList_146_555]], tradingSessionID, tradingSessionSubID, text, encodedTextLen, encodedText];
get_record_def(derivativeSecurityList) -> 
    [derivativeSecurityList, [standardHeader], securityReqID, securityResponseID, securityRequestResult, [underlyingInstrument], totalNumSecurities, [[rgr_derivativeSecurityList_146]], [standardTrailer]];
get_record_def(rgr_newOrderMultileg_78) -> 
    [rgr_newOrderMultileg_78, allocAccount, individualAllocID, allocQty];
get_record_def(rgr_newOrderMultileg_386) -> 
    [rgr_newOrderMultileg_386, tradingSessionID, tradingSessionSubID];
get_record_def(rgr_newOrderMultileg_555) -> 
    [rgr_newOrderMultileg_555, [instrumentLeg], legPositionEffect, legCoveredOrUncovered, [nestedParties], legRefID, legPrice, legSettlmntTyp, legFutSettDate];
get_record_def(newOrderMultileg) -> 
    [newOrderMultileg, [standardHeader], clOrdID, secondaryClOrdID, clOrdLinkID, [parties], account, accountType, dayBookingInst, bookingUnit, preallocMethod, [[rgr_newOrderMultileg_78]], settlmntTyp, futSettDate, cashMargin, clearingFeeIndicator, handlInst, execInst, minQty, maxFloor, exDestination, [[rgr_newOrderMultileg_386]], processCode, side, [instrument], prevClosePx, [[rgr_newOrderMultileg_555]], locateReqd, transactTime, quantityType, [orderQtyData], ordType, priceType, price, stopPx, currency, complianceID, solicitedFlag, iOIid, quoteID, timeInForce, effectiveTime, expireDate, expireTime, gTBookingInst, [commissionData], orderCapacity, orderRestrictions, custOrderCapacity, forexReq, settlCurrency, text, encodedTextLen, encodedText, positionEffect, coveredOrUncovered, maxShow, pegDifference, discretionInst, discretionOffset, cancellationRights, moneyLaunderingStatus, registID, designation, multiLegRptTypeReq, netMoney, [standardTrailer]];
get_record_def(rgr_multilegOrderCancelReplaceRequest_78) -> 
    [rgr_multilegOrderCancelReplaceRequest_78, allocAccount, individualAllocID, allocQty];
get_record_def(rgr_multilegOrderCancelReplaceRequest_386) -> 
    [rgr_multilegOrderCancelReplaceRequest_386, tradingSessionID, tradingSessionSubID];
get_record_def(rgr_multilegOrderCancelReplaceRequest_555) -> 
    [rgr_multilegOrderCancelReplaceRequest_555, [instrumentLeg], legPositionEffect, legCoveredOrUncovered, [nestedParties], legRefID, legPrice, legSettlmntTyp, legFutSettDate];
get_record_def(multilegOrderCancelReplaceRequest) -> 
    [multilegOrderCancelReplaceRequest, [standardHeader], orderID, origClOrdID, clOrdID, secondaryClOrdID, clOrdLinkID, origOrdModTime, [parties], account, accountType, dayBookingInst, bookingUnit, preallocMethod, [[rgr_multilegOrderCancelReplaceRequest_78]], settlmntTyp, futSettDate, cashMargin, clearingFeeIndicator, handlInst, execInst, minQty, maxFloor, exDestination, [[rgr_multilegOrderCancelReplaceRequest_386]], processCode, side, [instrument], prevClosePx, [[rgr_multilegOrderCancelReplaceRequest_555]], locateReqd, transactTime, quantityType, [orderQtyData], ordType, priceType, price, stopPx, currency, complianceID, solicitedFlag, iOIid, quoteID, timeInForce, effectiveTime, expireDate, expireTime, gTBookingInst, [commissionData], orderCapacity, orderRestrictions, custOrderCapacity, forexReq, settlCurrency, text, encodedTextLen, encodedText, positionEffect, coveredOrUncovered, maxShow, pegDifference, discretionInst, discretionOffset, cancellationRights, moneyLaunderingStatus, registID, designation, multiLegRptTypeReq, netMoney, [standardTrailer]];
get_record_def(rgr_tradeCaptureReportRequest_580) -> 
    [rgr_tradeCaptureReportRequest_580, tradeDate, transactTime];
get_record_def(tradeCaptureReportRequest) -> 
    [tradeCaptureReportRequest, [standardHeader], tradeRequestID, tradeRequestType, subscriptionRequestType, execID, orderID, clOrdID, matchStatus, [parties], [instrument], [[rgr_tradeCaptureReportRequest_580]], side, text, encodedTextLen, encodedText, tradeInputSource, tradeInputDevice, [standardTrailer]];
get_record_def(rgr_rgr_tradeCaptureReport_552_576) -> 
    [rgr_rgr_tradeCaptureReport_552_576, clearingInstruction];
get_record_def(rgr_rgr_tradeCaptureReport_552_518) -> 
    [rgr_rgr_tradeCaptureReport_552_518, contAmtType, contAmtValue, contAmtCurr];
get_record_def(rgr_rgr_tradeCaptureReport_552_136) -> 
    [rgr_rgr_tradeCaptureReport_552_136, miscFeeAmt, miscFeeCurr, miscFeeType];
get_record_def(rgr_tradeCaptureReport_552) -> 
    [rgr_tradeCaptureReport_552, side, orderID, secondaryOrderID, clOrdID, [parties], account, accountType, processCode, oddLot, [[rgr_rgr_tradeCaptureReport_552_576]], clearingFeeIndicator, tradeInputSource, tradeInputDevice, currency, complianceID, solicitedFlag, orderCapacity, orderRestrictions, custOrderCapacity, transBkdTime, tradingSessionID, tradingSessionSubID, [commissionData], grossTradeAmt, numDaysInterest, exDate, accruedInterestRate, accruedInterestAmt, concession, totalTakedown, netMoney, settlCurrAmt, settlCurrency, settlCurrFxRate, settlCurrFxRateCalc, positionEffect, text, encodedTextLen, encodedText, multiLegReportingType, [[rgr_rgr_tradeCaptureReport_552_518]], [[rgr_rgr_tradeCaptureReport_552_136]]];
get_record_def(tradeCaptureReport) -> 
    [tradeCaptureReport, [standardHeader], tradeReportID, tradeReportTransType, tradeRequestID, execType, tradeReportRefID, execID, secondaryExecID, execRestatementReason, previouslyReported, [instrument], [orderQtyData], lastQty, lastPx, lastSpotRate, lastForwardPoints, lastMkt, tradeDate, transactTime, settlmntTyp, futSettDate, matchStatus, matchType, [[rgr_tradeCaptureReport_552]], [standardTrailer]];
get_record_def(orderMassStatusRequest) -> 
    [orderMassStatusRequest, [standardHeader], massStatusReqID, massStatusReqType, [parties], account, tradingSessionID, tradingSessionSubID, [instrument], [underlyingInstrument], side, [standardTrailer]];
get_record_def(rgr_quoteRequestReject_146) -> 
    [rgr_quoteRequestReject_146, [instrument], prevClosePx, quoteRequestType, quoteType, tradingSessionID, tradingSessionSubID, tradeOriginationDate, [stipulations], side, quantityType, orderQty, cashOrderQty, settlmntTyp, futSettDate, ordType, futSettDate2, orderQty2, expireTime, transactTime, currency, [spreadOrBenchmarkCurveData], priceType, price, price2, [yieldData]];
get_record_def(quoteRequestReject) -> 
    [quoteRequestReject, [standardHeader], quoteReqID, rFQReqID, quoteRequestRejectReason, [[rgr_quoteRequestReject_146]], text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(rgr_rFQRequest_146) -> 
    [rgr_rFQRequest_146, [instrument], prevClosePx, quoteRequestType, quoteType, tradingSessionID, tradingSessionSubID];
get_record_def(rFQRequest) -> 
    [rFQRequest, [standardHeader], rFQReqID, [[rgr_rFQRequest_146]], subscriptionRequestType, [standardTrailer]];
get_record_def(quoteStatusReport) -> 
    [quoteStatusReport, [standardHeader], quoteStatusReqID, quoteReqID, quoteID, quoteType, [parties], account, accountType, tradingSessionID, tradingSessionSubID, [instrument], bidPx, offerPx, mktBidPx, mktOfferPx, minBidSize, bidSize, minOfferSize, offerSize, validUntilTime, bidSpotRate, offerSpotRate, bidForwardPoints, offerForwardPoints, midPx, bidYield, midYield, offerYield, transactTime, futSettDate, ordType, futSettDate2, orderQty2, bidForwardPoints2, offerForwardPoints2, currency, settlCurrBidFxRate, settlCurrOfferFxRate, settlCurrFxRateCalc, commission, commType, custOrderCapacity, exDestination, quoteStatus, [standardTrailer]];
get_record_def(_Else) -> 
    error.

getRecord(commissionData)->
    #commissionData{};
getRecord(rgr_instrument_454)->
    #rgr_instrument_454{};
getRecord(instrument)->
    #instrument{};
getRecord(rgr_instrumentLeg_604)->
    #rgr_instrumentLeg_604{};
getRecord(instrumentLeg)->
    #instrumentLeg{};
getRecord(rgr_nestedParties_539)->
    #rgr_nestedParties_539{};
getRecord(nestedParties)->
    #nestedParties{};
getRecord(orderQtyData)->
    #orderQtyData{};
getRecord(rgr_parties_453)->
    #rgr_parties_453{};
getRecord(parties)->
    #parties{};
getRecord(spreadOrBenchmarkCurveData)->
    #spreadOrBenchmarkCurveData{};
getRecord(rgr_stipulations_232)->
    #rgr_stipulations_232{};
getRecord(stipulations)->
    #stipulations{};
getRecord(rgr_underlyingInstrument_457)->
    #rgr_underlyingInstrument_457{};
getRecord(underlyingInstrument)->
    #underlyingInstrument{};
getRecord(yieldData)->
    #yieldData{};
getRecord(rgr_standardHeader_627)->
    #rgr_standardHeader_627{};
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
getRecord(rgr_executionReport_518)->
    #rgr_executionReport_518{};
getRecord(rgr_executionReport_555)->
    #rgr_executionReport_555{};
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
getRecord(rgr_newOrderSingle_78)->
    #rgr_newOrderSingle_78{};
getRecord(rgr_newOrderSingle_386)->
    #rgr_newOrderSingle_386{};
getRecord(newOrderSingle)->
    #newOrderSingle{};
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
getRecord(rgr_allocation_73)->
    #rgr_allocation_73{};
getRecord(rgr_allocation_124)->
    #rgr_allocation_124{};
getRecord(rgr_allocation_78)->
    #rgr_allocation_78{};
getRecord(rgr_rgr_allocation_78_136)->
    #rgr_rgr_allocation_78_136{};
getRecord(allocation)->
    #allocation{};
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
getRecord(allocationAck)->
    #allocationAck{};
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
getRecord(rgr_marketDataRequest_386)->
    #rgr_marketDataRequest_386{};
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
getRecord(rgr_massQuoteAcknowledgement_296)->
    #rgr_massQuoteAcknowledgement_296{};
getRecord(rgr_rgr_massQuoteAcknowledgement_296_295)->
    #rgr_rgr_massQuoteAcknowledgement_296_295{};
getRecord(massQuoteAcknowledgement)->
    #massQuoteAcknowledgement{};
getRecord(rgr_securityDefinitionRequest_555)->
    #rgr_securityDefinitionRequest_555{};
getRecord(securityDefinitionRequest)->
    #securityDefinitionRequest{};
getRecord(rgr_securityDefinition_555)->
    #rgr_securityDefinition_555{};
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
    #listStrikePrice{};
getRecord(xMLnonFIX)->
    #xMLnonFIX{};
getRecord(rgr_registrationInstructions_473)->
    #rgr_registrationInstructions_473{};
getRecord(rgr_registrationInstructions_510)->
    #rgr_registrationInstructions_510{};
getRecord(registrationInstructions)->
    #registrationInstructions{};
getRecord(registrationInstructionsResponse)->
    #registrationInstructionsResponse{};
getRecord(orderMassCancelRequest)->
    #orderMassCancelRequest{};
getRecord(rgr_orderMassCancelReport_534)->
    #rgr_orderMassCancelReport_534{};
getRecord(orderMassCancelReport)->
    #orderMassCancelReport{};
getRecord(rgr_newOrderCross_552)->
    #rgr_newOrderCross_552{};
getRecord(rgr_rgr_newOrderCross_552_78)->
    #rgr_rgr_newOrderCross_552_78{};
getRecord(rgr_newOrderCross_386)->
    #rgr_newOrderCross_386{};
getRecord(newOrderCross)->
    #newOrderCross{};
getRecord(rgr_crossOrderCancelReplaceRequest_552)->
    #rgr_crossOrderCancelReplaceRequest_552{};
getRecord(rgr_rgr_crossOrderCancelReplaceRequest_552_78)->
    #rgr_rgr_crossOrderCancelReplaceRequest_552_78{};
getRecord(rgr_crossOrderCancelReplaceRequest_386)->
    #rgr_crossOrderCancelReplaceRequest_386{};
getRecord(crossOrderCancelReplaceRequest)->
    #crossOrderCancelReplaceRequest{};
getRecord(rgr_crossOrderCancelRequest_552)->
    #rgr_crossOrderCancelRequest_552{};
getRecord(crossOrderCancelRequest)->
    #crossOrderCancelRequest{};
getRecord(securityTypeRequest)->
    #securityTypeRequest{};
getRecord(rgr_securityTypes_558)->
    #rgr_securityTypes_558{};
getRecord(securityTypes)->
    #securityTypes{};
getRecord(securityListRequest)->
    #securityListRequest{};
getRecord(rgr_securityList_146)->
    #rgr_securityList_146{};
getRecord(rgr_rgr_securityList_146_555)->
    #rgr_rgr_securityList_146_555{};
getRecord(securityList)->
    #securityList{};
getRecord(derivativeSecurityListRequest)->
    #derivativeSecurityListRequest{};
getRecord(rgr_derivativeSecurityList_146)->
    #rgr_derivativeSecurityList_146{};
getRecord(rgr_rgr_derivativeSecurityList_146_555)->
    #rgr_rgr_derivativeSecurityList_146_555{};
getRecord(derivativeSecurityList)->
    #derivativeSecurityList{};
getRecord(rgr_newOrderMultileg_78)->
    #rgr_newOrderMultileg_78{};
getRecord(rgr_newOrderMultileg_386)->
    #rgr_newOrderMultileg_386{};
getRecord(rgr_newOrderMultileg_555)->
    #rgr_newOrderMultileg_555{};
getRecord(newOrderMultileg)->
    #newOrderMultileg{};
getRecord(rgr_multilegOrderCancelReplaceRequest_78)->
    #rgr_multilegOrderCancelReplaceRequest_78{};
getRecord(rgr_multilegOrderCancelReplaceRequest_386)->
    #rgr_multilegOrderCancelReplaceRequest_386{};
getRecord(rgr_multilegOrderCancelReplaceRequest_555)->
    #rgr_multilegOrderCancelReplaceRequest_555{};
getRecord(multilegOrderCancelReplaceRequest)->
    #multilegOrderCancelReplaceRequest{};
getRecord(rgr_tradeCaptureReportRequest_580)->
    #rgr_tradeCaptureReportRequest_580{};
getRecord(tradeCaptureReportRequest)->
    #tradeCaptureReportRequest{};
getRecord(rgr_tradeCaptureReport_552)->
    #rgr_tradeCaptureReport_552{};
getRecord(rgr_rgr_tradeCaptureReport_552_576)->
    #rgr_rgr_tradeCaptureReport_552_576{};
getRecord(rgr_rgr_tradeCaptureReport_552_518)->
    #rgr_rgr_tradeCaptureReport_552_518{};
getRecord(rgr_rgr_tradeCaptureReport_552_136)->
    #rgr_rgr_tradeCaptureReport_552_136{};
getRecord(tradeCaptureReport)->
    #tradeCaptureReport{};
getRecord(orderMassStatusRequest)->
    #orderMassStatusRequest{};
getRecord(rgr_quoteRequestReject_146)->
    #rgr_quoteRequestReject_146{};
getRecord(quoteRequestReject)->
    #quoteRequestReject{};
getRecord(rgr_rFQRequest_146)->
    #rgr_rFQRequest_146{};
getRecord(rFQRequest)->
    #rFQRequest{};
getRecord(quoteStatusReport)->
    #quoteStatusReport{}.
setFieldInRecord(commissionData, commission, Record, Value)->
   erlang:setelement(#commissionData.commission, Record, Value);
setFieldInRecord(commissionData, commType, Record, Value)->
   erlang:setelement(#commissionData.commType, Record, Value);
setFieldInRecord(commissionData, commCurrency, Record, Value)->
   erlang:setelement(#commissionData.commCurrency, Record, Value);
setFieldInRecord(commissionData, fundRenewWaiv, Record, Value)->
   erlang:setelement(#commissionData.fundRenewWaiv, Record, Value);
setFieldInRecord(instrument, symbol, Record, Value)->
   erlang:setelement(#instrument.symbol, Record, Value);
setFieldInRecord(instrument, symbolSfx, Record, Value)->
   erlang:setelement(#instrument.symbolSfx, Record, Value);
setFieldInRecord(instrument, securityID, Record, Value)->
   erlang:setelement(#instrument.securityID, Record, Value);
setFieldInRecord(instrument, securityIDSource, Record, Value)->
   erlang:setelement(#instrument.securityIDSource, Record, Value);
setFieldInRecord(instrument, rgr_instrument_454, Record, Value)->
   erlang:setelement(#instrument.rgr_instrument_454, Record, Value);
setFieldInRecord(rgr_instrument_454, securityAltID, Record, Value)->
   erlang:setelement(#rgr_instrument_454.securityAltID, Record, Value);
setFieldInRecord(rgr_instrument_454, securityAltIDSource, Record, Value)->
   erlang:setelement(#rgr_instrument_454.securityAltIDSource, Record, Value);
setFieldInRecord(instrument, produkt, Record, Value)->
   erlang:setelement(#instrument.produkt, Record, Value);
setFieldInRecord(instrument, cFICode, Record, Value)->
   erlang:setelement(#instrument.cFICode, Record, Value);
setFieldInRecord(instrument, securityType, Record, Value)->
   erlang:setelement(#instrument.securityType, Record, Value);
setFieldInRecord(instrument, maturityMonthYear, Record, Value)->
   erlang:setelement(#instrument.maturityMonthYear, Record, Value);
setFieldInRecord(instrument, maturityDate, Record, Value)->
   erlang:setelement(#instrument.maturityDate, Record, Value);
setFieldInRecord(instrument, couponPaymentDate, Record, Value)->
   erlang:setelement(#instrument.couponPaymentDate, Record, Value);
setFieldInRecord(instrument, issueDate, Record, Value)->
   erlang:setelement(#instrument.issueDate, Record, Value);
setFieldInRecord(instrument, repoCollateralSecurityType, Record, Value)->
   erlang:setelement(#instrument.repoCollateralSecurityType, Record, Value);
setFieldInRecord(instrument, repurchaseTerm, Record, Value)->
   erlang:setelement(#instrument.repurchaseTerm, Record, Value);
setFieldInRecord(instrument, repurchaseRate, Record, Value)->
   erlang:setelement(#instrument.repurchaseRate, Record, Value);
setFieldInRecord(instrument, factor, Record, Value)->
   erlang:setelement(#instrument.factor, Record, Value);
setFieldInRecord(instrument, creditRating, Record, Value)->
   erlang:setelement(#instrument.creditRating, Record, Value);
setFieldInRecord(instrument, instrRegistry, Record, Value)->
   erlang:setelement(#instrument.instrRegistry, Record, Value);
setFieldInRecord(instrument, countryOfIssue, Record, Value)->
   erlang:setelement(#instrument.countryOfIssue, Record, Value);
setFieldInRecord(instrument, stateOrProvinceOfIssue, Record, Value)->
   erlang:setelement(#instrument.stateOrProvinceOfIssue, Record, Value);
setFieldInRecord(instrument, localeOfIssue, Record, Value)->
   erlang:setelement(#instrument.localeOfIssue, Record, Value);
setFieldInRecord(instrument, redemptionDate, Record, Value)->
   erlang:setelement(#instrument.redemptionDate, Record, Value);
setFieldInRecord(instrument, strikePrice, Record, Value)->
   erlang:setelement(#instrument.strikePrice, Record, Value);
setFieldInRecord(instrument, optAttribute, Record, Value)->
   erlang:setelement(#instrument.optAttribute, Record, Value);
setFieldInRecord(instrument, contractMultiplier, Record, Value)->
   erlang:setelement(#instrument.contractMultiplier, Record, Value);
setFieldInRecord(instrument, couponRate, Record, Value)->
   erlang:setelement(#instrument.couponRate, Record, Value);
setFieldInRecord(instrument, securityExchange, Record, Value)->
   erlang:setelement(#instrument.securityExchange, Record, Value);
setFieldInRecord(instrument, issuer, Record, Value)->
   erlang:setelement(#instrument.issuer, Record, Value);
setFieldInRecord(instrument, encodedIssuerLen, Record, Value)->
   erlang:setelement(#instrument.encodedIssuerLen, Record, Value);
setFieldInRecord(instrument, encodedIssuer, Record, Value)->
   erlang:setelement(#instrument.encodedIssuer, Record, Value);
setFieldInRecord(instrument, securityDesc, Record, Value)->
   erlang:setelement(#instrument.securityDesc, Record, Value);
setFieldInRecord(instrument, encodedSecurityDescLen, Record, Value)->
   erlang:setelement(#instrument.encodedSecurityDescLen, Record, Value);
setFieldInRecord(instrument, encodedSecurityDesc, Record, Value)->
   erlang:setelement(#instrument.encodedSecurityDesc, Record, Value);
setFieldInRecord(instrumentLeg, legSymbol, Record, Value)->
   erlang:setelement(#instrumentLeg.legSymbol, Record, Value);
setFieldInRecord(instrumentLeg, legSymbolSfx, Record, Value)->
   erlang:setelement(#instrumentLeg.legSymbolSfx, Record, Value);
setFieldInRecord(instrumentLeg, legSecurityID, Record, Value)->
   erlang:setelement(#instrumentLeg.legSecurityID, Record, Value);
setFieldInRecord(instrumentLeg, legSecurityIDSource, Record, Value)->
   erlang:setelement(#instrumentLeg.legSecurityIDSource, Record, Value);
setFieldInRecord(instrumentLeg, rgr_instrumentLeg_604, Record, Value)->
   erlang:setelement(#instrumentLeg.rgr_instrumentLeg_604, Record, Value);
setFieldInRecord(rgr_instrumentLeg_604, legSecurityAltID, Record, Value)->
   erlang:setelement(#rgr_instrumentLeg_604.legSecurityAltID, Record, Value);
setFieldInRecord(rgr_instrumentLeg_604, legSecurityAltIDSource, Record, Value)->
   erlang:setelement(#rgr_instrumentLeg_604.legSecurityAltIDSource, Record, Value);
setFieldInRecord(instrumentLeg, legProduct, Record, Value)->
   erlang:setelement(#instrumentLeg.legProduct, Record, Value);
setFieldInRecord(instrumentLeg, legCFICode, Record, Value)->
   erlang:setelement(#instrumentLeg.legCFICode, Record, Value);
setFieldInRecord(instrumentLeg, legSecurityType, Record, Value)->
   erlang:setelement(#instrumentLeg.legSecurityType, Record, Value);
setFieldInRecord(instrumentLeg, legMaturityMonthYear, Record, Value)->
   erlang:setelement(#instrumentLeg.legMaturityMonthYear, Record, Value);
setFieldInRecord(instrumentLeg, legMaturityDate, Record, Value)->
   erlang:setelement(#instrumentLeg.legMaturityDate, Record, Value);
setFieldInRecord(instrumentLeg, legCouponPaymentDate, Record, Value)->
   erlang:setelement(#instrumentLeg.legCouponPaymentDate, Record, Value);
setFieldInRecord(instrumentLeg, legIssueDate, Record, Value)->
   erlang:setelement(#instrumentLeg.legIssueDate, Record, Value);
setFieldInRecord(instrumentLeg, legRepoCollateralSecurityType, Record, Value)->
   erlang:setelement(#instrumentLeg.legRepoCollateralSecurityType, Record, Value);
setFieldInRecord(instrumentLeg, legRepurchaseTerm, Record, Value)->
   erlang:setelement(#instrumentLeg.legRepurchaseTerm, Record, Value);
setFieldInRecord(instrumentLeg, legRepurchaseRate, Record, Value)->
   erlang:setelement(#instrumentLeg.legRepurchaseRate, Record, Value);
setFieldInRecord(instrumentLeg, legFactor, Record, Value)->
   erlang:setelement(#instrumentLeg.legFactor, Record, Value);
setFieldInRecord(instrumentLeg, legCreditRating, Record, Value)->
   erlang:setelement(#instrumentLeg.legCreditRating, Record, Value);
setFieldInRecord(instrumentLeg, legInstrRegistry, Record, Value)->
   erlang:setelement(#instrumentLeg.legInstrRegistry, Record, Value);
setFieldInRecord(instrumentLeg, legCountryOfIssue, Record, Value)->
   erlang:setelement(#instrumentLeg.legCountryOfIssue, Record, Value);
setFieldInRecord(instrumentLeg, legStateOrProvinceOfIssue, Record, Value)->
   erlang:setelement(#instrumentLeg.legStateOrProvinceOfIssue, Record, Value);
setFieldInRecord(instrumentLeg, legLocaleOfIssue, Record, Value)->
   erlang:setelement(#instrumentLeg.legLocaleOfIssue, Record, Value);
setFieldInRecord(instrumentLeg, legRedemptionDate, Record, Value)->
   erlang:setelement(#instrumentLeg.legRedemptionDate, Record, Value);
setFieldInRecord(instrumentLeg, legStrikePrice, Record, Value)->
   erlang:setelement(#instrumentLeg.legStrikePrice, Record, Value);
setFieldInRecord(instrumentLeg, legOptAttribute, Record, Value)->
   erlang:setelement(#instrumentLeg.legOptAttribute, Record, Value);
setFieldInRecord(instrumentLeg, legContractMultiplier, Record, Value)->
   erlang:setelement(#instrumentLeg.legContractMultiplier, Record, Value);
setFieldInRecord(instrumentLeg, legCouponRate, Record, Value)->
   erlang:setelement(#instrumentLeg.legCouponRate, Record, Value);
setFieldInRecord(instrumentLeg, legSecurityExchange, Record, Value)->
   erlang:setelement(#instrumentLeg.legSecurityExchange, Record, Value);
setFieldInRecord(instrumentLeg, legIssuer, Record, Value)->
   erlang:setelement(#instrumentLeg.legIssuer, Record, Value);
setFieldInRecord(instrumentLeg, encodedLegIssuerLen, Record, Value)->
   erlang:setelement(#instrumentLeg.encodedLegIssuerLen, Record, Value);
setFieldInRecord(instrumentLeg, encodedLegIssuer, Record, Value)->
   erlang:setelement(#instrumentLeg.encodedLegIssuer, Record, Value);
setFieldInRecord(instrumentLeg, legSecurityDesc, Record, Value)->
   erlang:setelement(#instrumentLeg.legSecurityDesc, Record, Value);
setFieldInRecord(instrumentLeg, encodedLegSecurityDescLen, Record, Value)->
   erlang:setelement(#instrumentLeg.encodedLegSecurityDescLen, Record, Value);
setFieldInRecord(instrumentLeg, encodedLegSecurityDesc, Record, Value)->
   erlang:setelement(#instrumentLeg.encodedLegSecurityDesc, Record, Value);
setFieldInRecord(instrumentLeg, legRatioQty, Record, Value)->
   erlang:setelement(#instrumentLeg.legRatioQty, Record, Value);
setFieldInRecord(instrumentLeg, legSide, Record, Value)->
   erlang:setelement(#instrumentLeg.legSide, Record, Value);
setFieldInRecord(nestedParties, rgr_nestedParties_539, Record, Value)->
   erlang:setelement(#nestedParties.rgr_nestedParties_539, Record, Value);
setFieldInRecord(rgr_nestedParties_539, nestedPartyID, Record, Value)->
   erlang:setelement(#rgr_nestedParties_539.nestedPartyID, Record, Value);
setFieldInRecord(rgr_nestedParties_539, nestedPartyIDSource, Record, Value)->
   erlang:setelement(#rgr_nestedParties_539.nestedPartyIDSource, Record, Value);
setFieldInRecord(rgr_nestedParties_539, nestedPartyRole, Record, Value)->
   erlang:setelement(#rgr_nestedParties_539.nestedPartyRole, Record, Value);
setFieldInRecord(rgr_nestedParties_539, nestedPartySubID, Record, Value)->
   erlang:setelement(#rgr_nestedParties_539.nestedPartySubID, Record, Value);
setFieldInRecord(orderQtyData, orderQty, Record, Value)->
   erlang:setelement(#orderQtyData.orderQty, Record, Value);
setFieldInRecord(orderQtyData, cashOrderQty, Record, Value)->
   erlang:setelement(#orderQtyData.cashOrderQty, Record, Value);
setFieldInRecord(orderQtyData, orderPercent, Record, Value)->
   erlang:setelement(#orderQtyData.orderPercent, Record, Value);
setFieldInRecord(orderQtyData, roundingDirection, Record, Value)->
   erlang:setelement(#orderQtyData.roundingDirection, Record, Value);
setFieldInRecord(orderQtyData, roundingModulus, Record, Value)->
   erlang:setelement(#orderQtyData.roundingModulus, Record, Value);
setFieldInRecord(parties, rgr_parties_453, Record, Value)->
   erlang:setelement(#parties.rgr_parties_453, Record, Value);
setFieldInRecord(rgr_parties_453, partyID, Record, Value)->
   erlang:setelement(#rgr_parties_453.partyID, Record, Value);
setFieldInRecord(rgr_parties_453, partyIDSource, Record, Value)->
   erlang:setelement(#rgr_parties_453.partyIDSource, Record, Value);
setFieldInRecord(rgr_parties_453, partyRole, Record, Value)->
   erlang:setelement(#rgr_parties_453.partyRole, Record, Value);
setFieldInRecord(rgr_parties_453, partySubID, Record, Value)->
   erlang:setelement(#rgr_parties_453.partySubID, Record, Value);
setFieldInRecord(spreadOrBenchmarkCurveData, spread, Record, Value)->
   erlang:setelement(#spreadOrBenchmarkCurveData.spread, Record, Value);
setFieldInRecord(spreadOrBenchmarkCurveData, benchmarkCurveCurrency, Record, Value)->
   erlang:setelement(#spreadOrBenchmarkCurveData.benchmarkCurveCurrency, Record, Value);
setFieldInRecord(spreadOrBenchmarkCurveData, benchmarkCurveName, Record, Value)->
   erlang:setelement(#spreadOrBenchmarkCurveData.benchmarkCurveName, Record, Value);
setFieldInRecord(spreadOrBenchmarkCurveData, benchmarkCurvePoint, Record, Value)->
   erlang:setelement(#spreadOrBenchmarkCurveData.benchmarkCurvePoint, Record, Value);
setFieldInRecord(stipulations, rgr_stipulations_232, Record, Value)->
   erlang:setelement(#stipulations.rgr_stipulations_232, Record, Value);
setFieldInRecord(rgr_stipulations_232, stipulationType, Record, Value)->
   erlang:setelement(#rgr_stipulations_232.stipulationType, Record, Value);
setFieldInRecord(rgr_stipulations_232, stipulationValue, Record, Value)->
   erlang:setelement(#rgr_stipulations_232.stipulationValue, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingSymbol, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingSymbol, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingSymbolSfx, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingSymbolSfx, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingSecurityID, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingSecurityID, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingSecurityIDSource, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingSecurityIDSource, Record, Value);
setFieldInRecord(underlyingInstrument, rgr_underlyingInstrument_457, Record, Value)->
   erlang:setelement(#underlyingInstrument.rgr_underlyingInstrument_457, Record, Value);
setFieldInRecord(rgr_underlyingInstrument_457, underlyingSecurityAltID, Record, Value)->
   erlang:setelement(#rgr_underlyingInstrument_457.underlyingSecurityAltID, Record, Value);
setFieldInRecord(rgr_underlyingInstrument_457, underlyingSecurityAltIDSource, Record, Value)->
   erlang:setelement(#rgr_underlyingInstrument_457.underlyingSecurityAltIDSource, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingProduct, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingProduct, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingCFICode, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingCFICode, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingSecurityType, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingSecurityType, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingMaturityMonthYear, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingMaturityMonthYear, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingMaturityDate, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingMaturityDate, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingPutOrCall, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingPutOrCall, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingCouponPaymentDate, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingCouponPaymentDate, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingIssueDate, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingIssueDate, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingRepoCollateralSecurityType, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingRepoCollateralSecurityType, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingRepurchaseTerm, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingRepurchaseTerm, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingRepurchaseRate, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingRepurchaseRate, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingFactor, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingFactor, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingCreditRating, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingCreditRating, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingInstrRegistry, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingInstrRegistry, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingCountryOfIssue, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingCountryOfIssue, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingStateOrProvinceOfIssue, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingStateOrProvinceOfIssue, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingLocaleOfIssue, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingLocaleOfIssue, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingRedemptionDate, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingRedemptionDate, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingStrikePrice, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingStrikePrice, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingOptAttribute, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingOptAttribute, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingContractMultiplier, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingContractMultiplier, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingCouponRate, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingCouponRate, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingSecurityExchange, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingSecurityExchange, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingIssuer, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingIssuer, Record, Value);
setFieldInRecord(underlyingInstrument, encodedUnderlyingIssuerLen, Record, Value)->
   erlang:setelement(#underlyingInstrument.encodedUnderlyingIssuerLen, Record, Value);
setFieldInRecord(underlyingInstrument, encodedUnderlyingIssuer, Record, Value)->
   erlang:setelement(#underlyingInstrument.encodedUnderlyingIssuer, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingSecurityDesc, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingSecurityDesc, Record, Value);
setFieldInRecord(underlyingInstrument, encodedUnderlyingSecurityDescLen, Record, Value)->
   erlang:setelement(#underlyingInstrument.encodedUnderlyingSecurityDescLen, Record, Value);
setFieldInRecord(underlyingInstrument, encodedUnderlyingSecurityDesc, Record, Value)->
   erlang:setelement(#underlyingInstrument.encodedUnderlyingSecurityDesc, Record, Value);
setFieldInRecord(yieldData, yieldType, Record, Value)->
   erlang:setelement(#yieldData.yieldType, Record, Value);
setFieldInRecord(yieldData, yield, Record, Value)->
   erlang:setelement(#yieldData.yield, Record, Value);
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
setFieldInRecord(standardHeader, rgr_standardHeader_627, Record, Value)->
   erlang:setelement(#standardHeader.rgr_standardHeader_627, Record, Value);
setFieldInRecord(rgr_standardHeader_627, hopCompID, Record, Value)->
   erlang:setelement(#rgr_standardHeader_627.hopCompID, Record, Value);
setFieldInRecord(rgr_standardHeader_627, hopSendingTime, Record, Value)->
   erlang:setelement(#rgr_standardHeader_627.hopSendingTime, Record, Value);
setFieldInRecord(rgr_standardHeader_627, hopRefID, Record, Value)->
   erlang:setelement(#rgr_standardHeader_627.hopRefID, Record, Value);
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
setFieldInRecord(iOI, instrument, Record, Value)->
    erlang:setelement(#iOI.instrument, Record, Value);
setFieldInRecord(iOI, side, Record, Value)->
    erlang:setelement(#iOI.side, Record, Value);
setFieldInRecord(iOI, quantityType, Record, Value)->
    erlang:setelement(#iOI.quantityType, Record, Value);
setFieldInRecord(iOI, iOIQty, Record, Value)->
    erlang:setelement(#iOI.iOIQty, Record, Value);
setFieldInRecord(iOI, priceType, Record, Value)->
    erlang:setelement(#iOI.priceType, Record, Value);
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
setFieldInRecord(iOI, spreadOrBenchmarkCurveData, Record, Value)->
    erlang:setelement(#iOI.spreadOrBenchmarkCurveData, Record, Value);
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
setFieldInRecord(advertisement, instrument, Record, Value)->
    erlang:setelement(#advertisement.instrument, Record, Value);
setFieldInRecord(advertisement, advSide, Record, Value)->
    erlang:setelement(#advertisement.advSide, Record, Value);
setFieldInRecord(advertisement, quantity, Record, Value)->
    erlang:setelement(#advertisement.quantity, Record, Value);
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
setFieldInRecord(advertisement, tradingSessionSubID, Record, Value)->
    erlang:setelement(#advertisement.tradingSessionSubID, Record, Value);
setFieldInRecord(advertisement, standardTrailer, Record, Value)->
    erlang:setelement(#advertisement.standardTrailer, Record, Value);
setFieldInRecord(executionReport, standardHeader, Record, Value)->
    erlang:setelement(#executionReport.standardHeader, Record, Value);
setFieldInRecord(executionReport, orderID, Record, Value)->
    erlang:setelement(#executionReport.orderID, Record, Value);
setFieldInRecord(executionReport, secondaryOrderID, Record, Value)->
    erlang:setelement(#executionReport.secondaryOrderID, Record, Value);
setFieldInRecord(executionReport, secondaryClOrdID, Record, Value)->
    erlang:setelement(#executionReport.secondaryClOrdID, Record, Value);
setFieldInRecord(executionReport, secondaryExecID, Record, Value)->
    erlang:setelement(#executionReport.secondaryExecID, Record, Value);
setFieldInRecord(executionReport, clOrdID, Record, Value)->
    erlang:setelement(#executionReport.clOrdID, Record, Value);
setFieldInRecord(executionReport, origClOrdID, Record, Value)->
    erlang:setelement(#executionReport.origClOrdID, Record, Value);
setFieldInRecord(executionReport, clOrdLinkID, Record, Value)->
    erlang:setelement(#executionReport.clOrdLinkID, Record, Value);
setFieldInRecord(executionReport, parties, Record, Value)->
    erlang:setelement(#executionReport.parties, Record, Value);
setFieldInRecord(executionReport, tradeOriginationDate, Record, Value)->
    erlang:setelement(#executionReport.tradeOriginationDate, Record, Value);
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
setFieldInRecord(rgr_executionReport_382, contraLegRefID, Record, Value)->
   erlang:setelement(#rgr_executionReport_382.contraLegRefID, Record, Value);
setFieldInRecord(executionReport, listID, Record, Value)->
    erlang:setelement(#executionReport.listID, Record, Value);
setFieldInRecord(executionReport, crossID, Record, Value)->
    erlang:setelement(#executionReport.crossID, Record, Value);
setFieldInRecord(executionReport, origCrossID, Record, Value)->
    erlang:setelement(#executionReport.origCrossID, Record, Value);
setFieldInRecord(executionReport, crossType, Record, Value)->
    erlang:setelement(#executionReport.crossType, Record, Value);
setFieldInRecord(executionReport, execID, Record, Value)->
    erlang:setelement(#executionReport.execID, Record, Value);
setFieldInRecord(executionReport, execRefID, Record, Value)->
    erlang:setelement(#executionReport.execRefID, Record, Value);
setFieldInRecord(executionReport, execType, Record, Value)->
    erlang:setelement(#executionReport.execType, Record, Value);
setFieldInRecord(executionReport, ordStatus, Record, Value)->
    erlang:setelement(#executionReport.ordStatus, Record, Value);
setFieldInRecord(executionReport, workingIndicator, Record, Value)->
    erlang:setelement(#executionReport.workingIndicator, Record, Value);
setFieldInRecord(executionReport, ordRejReason, Record, Value)->
    erlang:setelement(#executionReport.ordRejReason, Record, Value);
setFieldInRecord(executionReport, execRestatementReason, Record, Value)->
    erlang:setelement(#executionReport.execRestatementReason, Record, Value);
setFieldInRecord(executionReport, account, Record, Value)->
    erlang:setelement(#executionReport.account, Record, Value);
setFieldInRecord(executionReport, accountType, Record, Value)->
    erlang:setelement(#executionReport.accountType, Record, Value);
setFieldInRecord(executionReport, dayBookingInst, Record, Value)->
    erlang:setelement(#executionReport.dayBookingInst, Record, Value);
setFieldInRecord(executionReport, bookingUnit, Record, Value)->
    erlang:setelement(#executionReport.bookingUnit, Record, Value);
setFieldInRecord(executionReport, preallocMethod, Record, Value)->
    erlang:setelement(#executionReport.preallocMethod, Record, Value);
setFieldInRecord(executionReport, settlmntTyp, Record, Value)->
    erlang:setelement(#executionReport.settlmntTyp, Record, Value);
setFieldInRecord(executionReport, futSettDate, Record, Value)->
    erlang:setelement(#executionReport.futSettDate, Record, Value);
setFieldInRecord(executionReport, cashMargin, Record, Value)->
    erlang:setelement(#executionReport.cashMargin, Record, Value);
setFieldInRecord(executionReport, clearingFeeIndicator, Record, Value)->
    erlang:setelement(#executionReport.clearingFeeIndicator, Record, Value);
setFieldInRecord(executionReport, instrument, Record, Value)->
    erlang:setelement(#executionReport.instrument, Record, Value);
setFieldInRecord(executionReport, side, Record, Value)->
    erlang:setelement(#executionReport.side, Record, Value);
setFieldInRecord(executionReport, stipulations, Record, Value)->
    erlang:setelement(#executionReport.stipulations, Record, Value);
setFieldInRecord(executionReport, quantityType, Record, Value)->
    erlang:setelement(#executionReport.quantityType, Record, Value);
setFieldInRecord(executionReport, orderQtyData, Record, Value)->
    erlang:setelement(#executionReport.orderQtyData, Record, Value);
setFieldInRecord(executionReport, ordType, Record, Value)->
    erlang:setelement(#executionReport.ordType, Record, Value);
setFieldInRecord(executionReport, priceType, Record, Value)->
    erlang:setelement(#executionReport.priceType, Record, Value);
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
setFieldInRecord(executionReport, orderCapacity, Record, Value)->
    erlang:setelement(#executionReport.orderCapacity, Record, Value);
setFieldInRecord(executionReport, orderRestrictions, Record, Value)->
    erlang:setelement(#executionReport.orderRestrictions, Record, Value);
setFieldInRecord(executionReport, custOrderCapacity, Record, Value)->
    erlang:setelement(#executionReport.custOrderCapacity, Record, Value);
setFieldInRecord(executionReport, rule80A, Record, Value)->
    erlang:setelement(#executionReport.rule80A, Record, Value);
setFieldInRecord(executionReport, lastQty, Record, Value)->
    erlang:setelement(#executionReport.lastQty, Record, Value);
setFieldInRecord(executionReport, underlyingLastQty, Record, Value)->
    erlang:setelement(#executionReport.underlyingLastQty, Record, Value);
setFieldInRecord(executionReport, lastPx, Record, Value)->
    erlang:setelement(#executionReport.lastPx, Record, Value);
setFieldInRecord(executionReport, underlyingLastPx, Record, Value)->
    erlang:setelement(#executionReport.underlyingLastPx, Record, Value);
setFieldInRecord(executionReport, lastSpotRate, Record, Value)->
    erlang:setelement(#executionReport.lastSpotRate, Record, Value);
setFieldInRecord(executionReport, lastForwardPoints, Record, Value)->
    erlang:setelement(#executionReport.lastForwardPoints, Record, Value);
setFieldInRecord(executionReport, lastMkt, Record, Value)->
    erlang:setelement(#executionReport.lastMkt, Record, Value);
setFieldInRecord(executionReport, tradingSessionID, Record, Value)->
    erlang:setelement(#executionReport.tradingSessionID, Record, Value);
setFieldInRecord(executionReport, tradingSessionSubID, Record, Value)->
    erlang:setelement(#executionReport.tradingSessionSubID, Record, Value);
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
setFieldInRecord(executionReport, commissionData, Record, Value)->
    erlang:setelement(#executionReport.commissionData, Record, Value);
setFieldInRecord(executionReport, spreadOrBenchmarkCurveData, Record, Value)->
    erlang:setelement(#executionReport.spreadOrBenchmarkCurveData, Record, Value);
setFieldInRecord(executionReport, yieldData, Record, Value)->
    erlang:setelement(#executionReport.yieldData, Record, Value);
setFieldInRecord(executionReport, grossTradeAmt, Record, Value)->
    erlang:setelement(#executionReport.grossTradeAmt, Record, Value);
setFieldInRecord(executionReport, numDaysInterest, Record, Value)->
    erlang:setelement(#executionReport.numDaysInterest, Record, Value);
setFieldInRecord(executionReport, exDate, Record, Value)->
    erlang:setelement(#executionReport.exDate, Record, Value);
setFieldInRecord(executionReport, accruedInterestRate, Record, Value)->
    erlang:setelement(#executionReport.accruedInterestRate, Record, Value);
setFieldInRecord(executionReport, accruedInterestAmt, Record, Value)->
    erlang:setelement(#executionReport.accruedInterestAmt, Record, Value);
setFieldInRecord(executionReport, tradedFlatSwitch, Record, Value)->
    erlang:setelement(#executionReport.tradedFlatSwitch, Record, Value);
setFieldInRecord(executionReport, basisFeatureDate, Record, Value)->
    erlang:setelement(#executionReport.basisFeatureDate, Record, Value);
setFieldInRecord(executionReport, basisFeaturePrice, Record, Value)->
    erlang:setelement(#executionReport.basisFeaturePrice, Record, Value);
setFieldInRecord(executionReport, concession, Record, Value)->
    erlang:setelement(#executionReport.concession, Record, Value);
setFieldInRecord(executionReport, totalTakedown, Record, Value)->
    erlang:setelement(#executionReport.totalTakedown, Record, Value);
setFieldInRecord(executionReport, netMoney, Record, Value)->
    erlang:setelement(#executionReport.netMoney, Record, Value);
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
setFieldInRecord(executionReport, positionEffect, Record, Value)->
    erlang:setelement(#executionReport.positionEffect, Record, Value);
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
setFieldInRecord(executionReport, lastForwardPoints2, Record, Value)->
    erlang:setelement(#executionReport.lastForwardPoints2, Record, Value);
setFieldInRecord(executionReport, multiLegReportingType, Record, Value)->
    erlang:setelement(#executionReport.multiLegReportingType, Record, Value);
setFieldInRecord(executionReport, cancellationRights, Record, Value)->
    erlang:setelement(#executionReport.cancellationRights, Record, Value);
setFieldInRecord(executionReport, moneyLaunderingStatus, Record, Value)->
    erlang:setelement(#executionReport.moneyLaunderingStatus, Record, Value);
setFieldInRecord(executionReport, registID, Record, Value)->
    erlang:setelement(#executionReport.registID, Record, Value);
setFieldInRecord(executionReport, designation, Record, Value)->
    erlang:setelement(#executionReport.designation, Record, Value);
setFieldInRecord(executionReport, transBkdTime, Record, Value)->
    erlang:setelement(#executionReport.transBkdTime, Record, Value);
setFieldInRecord(executionReport, execValuationPoint, Record, Value)->
    erlang:setelement(#executionReport.execValuationPoint, Record, Value);
setFieldInRecord(executionReport, execPriceType, Record, Value)->
    erlang:setelement(#executionReport.execPriceType, Record, Value);
setFieldInRecord(executionReport, execPriceAdjustment, Record, Value)->
    erlang:setelement(#executionReport.execPriceAdjustment, Record, Value);
setFieldInRecord(executionReport, priorityIndicator, Record, Value)->
    erlang:setelement(#executionReport.priorityIndicator, Record, Value);
setFieldInRecord(executionReport, priceImprovement, Record, Value)->
    erlang:setelement(#executionReport.priceImprovement, Record, Value);
setFieldInRecord(executionReport, rgr_executionReport_518, Record, Value)->
   erlang:setelement(#executionReport.rgr_executionReport_518, Record, Value);
setFieldInRecord(rgr_executionReport_518, contAmtType, Record, Value)->
   erlang:setelement(#rgr_executionReport_518.contAmtType, Record, Value);
setFieldInRecord(rgr_executionReport_518, contAmtValue, Record, Value)->
   erlang:setelement(#rgr_executionReport_518.contAmtValue, Record, Value);
setFieldInRecord(rgr_executionReport_518, contAmtCurr, Record, Value)->
   erlang:setelement(#rgr_executionReport_518.contAmtCurr, Record, Value);
setFieldInRecord(executionReport, rgr_executionReport_555, Record, Value)->
   erlang:setelement(#executionReport.rgr_executionReport_555, Record, Value);
setFieldInRecord(rgr_executionReport_555, instrumentLeg, Record, Value)->
   erlang:setelement(#rgr_executionReport_555.instrumentLeg, Record, Value);
setFieldInRecord(rgr_executionReport_555, legPositionEffect, Record, Value)->
   erlang:setelement(#rgr_executionReport_555.legPositionEffect, Record, Value);
setFieldInRecord(rgr_executionReport_555, legCoveredOrUncovered, Record, Value)->
   erlang:setelement(#rgr_executionReport_555.legCoveredOrUncovered, Record, Value);
setFieldInRecord(rgr_executionReport_555, nestedParties, Record, Value)->
   erlang:setelement(#rgr_executionReport_555.nestedParties, Record, Value);
setFieldInRecord(rgr_executionReport_555, legRefID, Record, Value)->
   erlang:setelement(#rgr_executionReport_555.legRefID, Record, Value);
setFieldInRecord(rgr_executionReport_555, legPrice, Record, Value)->
   erlang:setelement(#rgr_executionReport_555.legPrice, Record, Value);
setFieldInRecord(rgr_executionReport_555, legSettlmntTyp, Record, Value)->
   erlang:setelement(#rgr_executionReport_555.legSettlmntTyp, Record, Value);
setFieldInRecord(rgr_executionReport_555, legFutSettDate, Record, Value)->
   erlang:setelement(#rgr_executionReport_555.legFutSettDate, Record, Value);
setFieldInRecord(rgr_executionReport_555, legLastPx, Record, Value)->
   erlang:setelement(#rgr_executionReport_555.legLastPx, Record, Value);
setFieldInRecord(executionReport, standardTrailer, Record, Value)->
    erlang:setelement(#executionReport.standardTrailer, Record, Value);
setFieldInRecord(orderCancelReject, standardHeader, Record, Value)->
    erlang:setelement(#orderCancelReject.standardHeader, Record, Value);
setFieldInRecord(orderCancelReject, orderID, Record, Value)->
    erlang:setelement(#orderCancelReject.orderID, Record, Value);
setFieldInRecord(orderCancelReject, secondaryOrderID, Record, Value)->
    erlang:setelement(#orderCancelReject.secondaryOrderID, Record, Value);
setFieldInRecord(orderCancelReject, secondaryClOrdID, Record, Value)->
    erlang:setelement(#orderCancelReject.secondaryClOrdID, Record, Value);
setFieldInRecord(orderCancelReject, clOrdID, Record, Value)->
    erlang:setelement(#orderCancelReject.clOrdID, Record, Value);
setFieldInRecord(orderCancelReject, clOrdLinkID, Record, Value)->
    erlang:setelement(#orderCancelReject.clOrdLinkID, Record, Value);
setFieldInRecord(orderCancelReject, origClOrdID, Record, Value)->
    erlang:setelement(#orderCancelReject.origClOrdID, Record, Value);
setFieldInRecord(orderCancelReject, ordStatus, Record, Value)->
    erlang:setelement(#orderCancelReject.ordStatus, Record, Value);
setFieldInRecord(orderCancelReject, workingIndicator, Record, Value)->
    erlang:setelement(#orderCancelReject.workingIndicator, Record, Value);
setFieldInRecord(orderCancelReject, origOrdModTime, Record, Value)->
    erlang:setelement(#orderCancelReject.origOrdModTime, Record, Value);
setFieldInRecord(orderCancelReject, listID, Record, Value)->
    erlang:setelement(#orderCancelReject.listID, Record, Value);
setFieldInRecord(orderCancelReject, account, Record, Value)->
    erlang:setelement(#orderCancelReject.account, Record, Value);
setFieldInRecord(orderCancelReject, accountType, Record, Value)->
    erlang:setelement(#orderCancelReject.accountType, Record, Value);
setFieldInRecord(orderCancelReject, tradeOriginationDate, Record, Value)->
    erlang:setelement(#orderCancelReject.tradeOriginationDate, Record, Value);
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
setFieldInRecord(logon, testMessageIndicator, Record, Value)->
    erlang:setelement(#logon.testMessageIndicator, Record, Value);
setFieldInRecord(logon, username, Record, Value)->
    erlang:setelement(#logon.username, Record, Value);
setFieldInRecord(logon, password, Record, Value)->
    erlang:setelement(#logon.password, Record, Value);
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
setFieldInRecord(rgr_news_146, instrument, Record, Value)->
   erlang:setelement(#rgr_news_146.instrument, Record, Value);
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
setFieldInRecord(rgr_email_146, instrument, Record, Value)->
   erlang:setelement(#rgr_email_146.instrument, Record, Value);
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
setFieldInRecord(newOrderSingle, standardHeader, Record, Value)->
    erlang:setelement(#newOrderSingle.standardHeader, Record, Value);
setFieldInRecord(newOrderSingle, clOrdID, Record, Value)->
    erlang:setelement(#newOrderSingle.clOrdID, Record, Value);
setFieldInRecord(newOrderSingle, secondaryClOrdID, Record, Value)->
    erlang:setelement(#newOrderSingle.secondaryClOrdID, Record, Value);
setFieldInRecord(newOrderSingle, clOrdLinkID, Record, Value)->
    erlang:setelement(#newOrderSingle.clOrdLinkID, Record, Value);
setFieldInRecord(newOrderSingle, parties, Record, Value)->
    erlang:setelement(#newOrderSingle.parties, Record, Value);
setFieldInRecord(newOrderSingle, tradeOriginationDate, Record, Value)->
    erlang:setelement(#newOrderSingle.tradeOriginationDate, Record, Value);
setFieldInRecord(newOrderSingle, account, Record, Value)->
    erlang:setelement(#newOrderSingle.account, Record, Value);
setFieldInRecord(newOrderSingle, accountType, Record, Value)->
    erlang:setelement(#newOrderSingle.accountType, Record, Value);
setFieldInRecord(newOrderSingle, dayBookingInst, Record, Value)->
    erlang:setelement(#newOrderSingle.dayBookingInst, Record, Value);
setFieldInRecord(newOrderSingle, bookingUnit, Record, Value)->
    erlang:setelement(#newOrderSingle.bookingUnit, Record, Value);
setFieldInRecord(newOrderSingle, preallocMethod, Record, Value)->
    erlang:setelement(#newOrderSingle.preallocMethod, Record, Value);
setFieldInRecord(newOrderSingle, rgr_newOrderSingle_78, Record, Value)->
   erlang:setelement(#newOrderSingle.rgr_newOrderSingle_78, Record, Value);
setFieldInRecord(rgr_newOrderSingle_78, allocAccount, Record, Value)->
   erlang:setelement(#rgr_newOrderSingle_78.allocAccount, Record, Value);
setFieldInRecord(rgr_newOrderSingle_78, individualAllocID, Record, Value)->
   erlang:setelement(#rgr_newOrderSingle_78.individualAllocID, Record, Value);
setFieldInRecord(rgr_newOrderSingle_78, nestedParties, Record, Value)->
   erlang:setelement(#rgr_newOrderSingle_78.nestedParties, Record, Value);
setFieldInRecord(rgr_newOrderSingle_78, allocQty, Record, Value)->
   erlang:setelement(#rgr_newOrderSingle_78.allocQty, Record, Value);
setFieldInRecord(newOrderSingle, settlmntTyp, Record, Value)->
    erlang:setelement(#newOrderSingle.settlmntTyp, Record, Value);
setFieldInRecord(newOrderSingle, futSettDate, Record, Value)->
    erlang:setelement(#newOrderSingle.futSettDate, Record, Value);
setFieldInRecord(newOrderSingle, cashMargin, Record, Value)->
    erlang:setelement(#newOrderSingle.cashMargin, Record, Value);
setFieldInRecord(newOrderSingle, clearingFeeIndicator, Record, Value)->
    erlang:setelement(#newOrderSingle.clearingFeeIndicator, Record, Value);
setFieldInRecord(newOrderSingle, handlInst, Record, Value)->
    erlang:setelement(#newOrderSingle.handlInst, Record, Value);
setFieldInRecord(newOrderSingle, execInst, Record, Value)->
    erlang:setelement(#newOrderSingle.execInst, Record, Value);
setFieldInRecord(newOrderSingle, minQty, Record, Value)->
    erlang:setelement(#newOrderSingle.minQty, Record, Value);
setFieldInRecord(newOrderSingle, maxFloor, Record, Value)->
    erlang:setelement(#newOrderSingle.maxFloor, Record, Value);
setFieldInRecord(newOrderSingle, exDestination, Record, Value)->
    erlang:setelement(#newOrderSingle.exDestination, Record, Value);
setFieldInRecord(newOrderSingle, rgr_newOrderSingle_386, Record, Value)->
   erlang:setelement(#newOrderSingle.rgr_newOrderSingle_386, Record, Value);
setFieldInRecord(rgr_newOrderSingle_386, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_newOrderSingle_386.tradingSessionID, Record, Value);
setFieldInRecord(rgr_newOrderSingle_386, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_newOrderSingle_386.tradingSessionSubID, Record, Value);
setFieldInRecord(newOrderSingle, processCode, Record, Value)->
    erlang:setelement(#newOrderSingle.processCode, Record, Value);
setFieldInRecord(newOrderSingle, instrument, Record, Value)->
    erlang:setelement(#newOrderSingle.instrument, Record, Value);
setFieldInRecord(newOrderSingle, prevClosePx, Record, Value)->
    erlang:setelement(#newOrderSingle.prevClosePx, Record, Value);
setFieldInRecord(newOrderSingle, side, Record, Value)->
    erlang:setelement(#newOrderSingle.side, Record, Value);
setFieldInRecord(newOrderSingle, locateReqd, Record, Value)->
    erlang:setelement(#newOrderSingle.locateReqd, Record, Value);
setFieldInRecord(newOrderSingle, transactTime, Record, Value)->
    erlang:setelement(#newOrderSingle.transactTime, Record, Value);
setFieldInRecord(newOrderSingle, stipulations, Record, Value)->
    erlang:setelement(#newOrderSingle.stipulations, Record, Value);
setFieldInRecord(newOrderSingle, quantityType, Record, Value)->
    erlang:setelement(#newOrderSingle.quantityType, Record, Value);
setFieldInRecord(newOrderSingle, orderQtyData, Record, Value)->
    erlang:setelement(#newOrderSingle.orderQtyData, Record, Value);
setFieldInRecord(newOrderSingle, ordType, Record, Value)->
    erlang:setelement(#newOrderSingle.ordType, Record, Value);
setFieldInRecord(newOrderSingle, priceType, Record, Value)->
    erlang:setelement(#newOrderSingle.priceType, Record, Value);
setFieldInRecord(newOrderSingle, price, Record, Value)->
    erlang:setelement(#newOrderSingle.price, Record, Value);
setFieldInRecord(newOrderSingle, stopPx, Record, Value)->
    erlang:setelement(#newOrderSingle.stopPx, Record, Value);
setFieldInRecord(newOrderSingle, spreadOrBenchmarkCurveData, Record, Value)->
    erlang:setelement(#newOrderSingle.spreadOrBenchmarkCurveData, Record, Value);
setFieldInRecord(newOrderSingle, yieldData, Record, Value)->
    erlang:setelement(#newOrderSingle.yieldData, Record, Value);
setFieldInRecord(newOrderSingle, currency, Record, Value)->
    erlang:setelement(#newOrderSingle.currency, Record, Value);
setFieldInRecord(newOrderSingle, complianceID, Record, Value)->
    erlang:setelement(#newOrderSingle.complianceID, Record, Value);
setFieldInRecord(newOrderSingle, solicitedFlag, Record, Value)->
    erlang:setelement(#newOrderSingle.solicitedFlag, Record, Value);
setFieldInRecord(newOrderSingle, iOIid, Record, Value)->
    erlang:setelement(#newOrderSingle.iOIid, Record, Value);
setFieldInRecord(newOrderSingle, quoteID, Record, Value)->
    erlang:setelement(#newOrderSingle.quoteID, Record, Value);
setFieldInRecord(newOrderSingle, timeInForce, Record, Value)->
    erlang:setelement(#newOrderSingle.timeInForce, Record, Value);
setFieldInRecord(newOrderSingle, effectiveTime, Record, Value)->
    erlang:setelement(#newOrderSingle.effectiveTime, Record, Value);
setFieldInRecord(newOrderSingle, expireDate, Record, Value)->
    erlang:setelement(#newOrderSingle.expireDate, Record, Value);
setFieldInRecord(newOrderSingle, expireTime, Record, Value)->
    erlang:setelement(#newOrderSingle.expireTime, Record, Value);
setFieldInRecord(newOrderSingle, gTBookingInst, Record, Value)->
    erlang:setelement(#newOrderSingle.gTBookingInst, Record, Value);
setFieldInRecord(newOrderSingle, commissionData, Record, Value)->
    erlang:setelement(#newOrderSingle.commissionData, Record, Value);
setFieldInRecord(newOrderSingle, orderCapacity, Record, Value)->
    erlang:setelement(#newOrderSingle.orderCapacity, Record, Value);
setFieldInRecord(newOrderSingle, orderRestrictions, Record, Value)->
    erlang:setelement(#newOrderSingle.orderRestrictions, Record, Value);
setFieldInRecord(newOrderSingle, custOrderCapacity, Record, Value)->
    erlang:setelement(#newOrderSingle.custOrderCapacity, Record, Value);
setFieldInRecord(newOrderSingle, rule80A, Record, Value)->
    erlang:setelement(#newOrderSingle.rule80A, Record, Value);
setFieldInRecord(newOrderSingle, forexReq, Record, Value)->
    erlang:setelement(#newOrderSingle.forexReq, Record, Value);
setFieldInRecord(newOrderSingle, settlCurrency, Record, Value)->
    erlang:setelement(#newOrderSingle.settlCurrency, Record, Value);
setFieldInRecord(newOrderSingle, text, Record, Value)->
    erlang:setelement(#newOrderSingle.text, Record, Value);
setFieldInRecord(newOrderSingle, encodedTextLen, Record, Value)->
    erlang:setelement(#newOrderSingle.encodedTextLen, Record, Value);
setFieldInRecord(newOrderSingle, encodedText, Record, Value)->
    erlang:setelement(#newOrderSingle.encodedText, Record, Value);
setFieldInRecord(newOrderSingle, futSettDate2, Record, Value)->
    erlang:setelement(#newOrderSingle.futSettDate2, Record, Value);
setFieldInRecord(newOrderSingle, orderQty2, Record, Value)->
    erlang:setelement(#newOrderSingle.orderQty2, Record, Value);
setFieldInRecord(newOrderSingle, price2, Record, Value)->
    erlang:setelement(#newOrderSingle.price2, Record, Value);
setFieldInRecord(newOrderSingle, positionEffect, Record, Value)->
    erlang:setelement(#newOrderSingle.positionEffect, Record, Value);
setFieldInRecord(newOrderSingle, coveredOrUncovered, Record, Value)->
    erlang:setelement(#newOrderSingle.coveredOrUncovered, Record, Value);
setFieldInRecord(newOrderSingle, maxShow, Record, Value)->
    erlang:setelement(#newOrderSingle.maxShow, Record, Value);
setFieldInRecord(newOrderSingle, pegDifference, Record, Value)->
    erlang:setelement(#newOrderSingle.pegDifference, Record, Value);
setFieldInRecord(newOrderSingle, discretionInst, Record, Value)->
    erlang:setelement(#newOrderSingle.discretionInst, Record, Value);
setFieldInRecord(newOrderSingle, discretionOffset, Record, Value)->
    erlang:setelement(#newOrderSingle.discretionOffset, Record, Value);
setFieldInRecord(newOrderSingle, cancellationRights, Record, Value)->
    erlang:setelement(#newOrderSingle.cancellationRights, Record, Value);
setFieldInRecord(newOrderSingle, moneyLaunderingStatus, Record, Value)->
    erlang:setelement(#newOrderSingle.moneyLaunderingStatus, Record, Value);
setFieldInRecord(newOrderSingle, registID, Record, Value)->
    erlang:setelement(#newOrderSingle.registID, Record, Value);
setFieldInRecord(newOrderSingle, designation, Record, Value)->
    erlang:setelement(#newOrderSingle.designation, Record, Value);
setFieldInRecord(newOrderSingle, accruedInterestRate, Record, Value)->
    erlang:setelement(#newOrderSingle.accruedInterestRate, Record, Value);
setFieldInRecord(newOrderSingle, accruedInterestAmt, Record, Value)->
    erlang:setelement(#newOrderSingle.accruedInterestAmt, Record, Value);
setFieldInRecord(newOrderSingle, netMoney, Record, Value)->
    erlang:setelement(#newOrderSingle.netMoney, Record, Value);
setFieldInRecord(newOrderSingle, standardTrailer, Record, Value)->
    erlang:setelement(#newOrderSingle.standardTrailer, Record, Value);
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
setFieldInRecord(newOrderList, cancellationRights, Record, Value)->
    erlang:setelement(#newOrderList.cancellationRights, Record, Value);
setFieldInRecord(newOrderList, moneyLaunderingStatus, Record, Value)->
    erlang:setelement(#newOrderList.moneyLaunderingStatus, Record, Value);
setFieldInRecord(newOrderList, registID, Record, Value)->
    erlang:setelement(#newOrderList.registID, Record, Value);
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
setFieldInRecord(rgr_newOrderList_73, secondaryClOrdID, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.secondaryClOrdID, Record, Value);
setFieldInRecord(rgr_newOrderList_73, listSeqNo, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.listSeqNo, Record, Value);
setFieldInRecord(rgr_newOrderList_73, clOrdLinkID, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.clOrdLinkID, Record, Value);
setFieldInRecord(rgr_newOrderList_73, settlInstMode, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.settlInstMode, Record, Value);
setFieldInRecord(rgr_newOrderList_73, parties, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.parties, Record, Value);
setFieldInRecord(rgr_newOrderList_73, tradeOriginationDate, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.tradeOriginationDate, Record, Value);
setFieldInRecord(rgr_newOrderList_73, account, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.account, Record, Value);
setFieldInRecord(rgr_newOrderList_73, accountType, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.accountType, Record, Value);
setFieldInRecord(rgr_newOrderList_73, dayBookingInst, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.dayBookingInst, Record, Value);
setFieldInRecord(rgr_newOrderList_73, bookingUnit, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.bookingUnit, Record, Value);
setFieldInRecord(rgr_newOrderList_73, preallocMethod, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.preallocMethod, Record, Value);
setFieldInRecord(rgr_newOrderList_73, rgr_rgr_newOrderList_73_78, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.rgr_rgr_newOrderList_73_78, Record, Value);
setFieldInRecord(rgr_rgr_newOrderList_73_78, allocAccount, Record, Value)->
   erlang:setelement(#rgr_rgr_newOrderList_73_78.allocAccount, Record, Value);
setFieldInRecord(rgr_rgr_newOrderList_73_78, individualAllocID, Record, Value)->
   erlang:setelement(#rgr_rgr_newOrderList_73_78.individualAllocID, Record, Value);
setFieldInRecord(rgr_rgr_newOrderList_73_78, nestedParties, Record, Value)->
   erlang:setelement(#rgr_rgr_newOrderList_73_78.nestedParties, Record, Value);
setFieldInRecord(rgr_rgr_newOrderList_73_78, allocQty, Record, Value)->
   erlang:setelement(#rgr_rgr_newOrderList_73_78.allocQty, Record, Value);
setFieldInRecord(rgr_newOrderList_73, settlmntTyp, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.settlmntTyp, Record, Value);
setFieldInRecord(rgr_newOrderList_73, futSettDate, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.futSettDate, Record, Value);
setFieldInRecord(rgr_newOrderList_73, cashMargin, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.cashMargin, Record, Value);
setFieldInRecord(rgr_newOrderList_73, clearingFeeIndicator, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.clearingFeeIndicator, Record, Value);
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
setFieldInRecord(rgr_rgr_newOrderList_73_386, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_rgr_newOrderList_73_386.tradingSessionID, Record, Value);
setFieldInRecord(rgr_rgr_newOrderList_73_386, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_rgr_newOrderList_73_386.tradingSessionSubID, Record, Value);
setFieldInRecord(rgr_newOrderList_73, processCode, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.processCode, Record, Value);
setFieldInRecord(rgr_newOrderList_73, instrument, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.instrument, Record, Value);
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
setFieldInRecord(rgr_newOrderList_73, stipulations, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.stipulations, Record, Value);
setFieldInRecord(rgr_newOrderList_73, quantityType, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.quantityType, Record, Value);
setFieldInRecord(rgr_newOrderList_73, orderQtyData, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.orderQtyData, Record, Value);
setFieldInRecord(rgr_newOrderList_73, ordType, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.ordType, Record, Value);
setFieldInRecord(rgr_newOrderList_73, priceType, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.priceType, Record, Value);
setFieldInRecord(rgr_newOrderList_73, price, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.price, Record, Value);
setFieldInRecord(rgr_newOrderList_73, stopPx, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.stopPx, Record, Value);
setFieldInRecord(rgr_newOrderList_73, spreadOrBenchmarkCurveData, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.spreadOrBenchmarkCurveData, Record, Value);
setFieldInRecord(rgr_newOrderList_73, yieldData, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.yieldData, Record, Value);
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
setFieldInRecord(rgr_newOrderList_73, commissionData, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.commissionData, Record, Value);
setFieldInRecord(rgr_newOrderList_73, orderCapacity, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.orderCapacity, Record, Value);
setFieldInRecord(rgr_newOrderList_73, orderRestrictions, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.orderRestrictions, Record, Value);
setFieldInRecord(rgr_newOrderList_73, custOrderCapacity, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.custOrderCapacity, Record, Value);
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
setFieldInRecord(rgr_newOrderList_73, price2, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.price2, Record, Value);
setFieldInRecord(rgr_newOrderList_73, positionEffect, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.positionEffect, Record, Value);
setFieldInRecord(rgr_newOrderList_73, coveredOrUncovered, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.coveredOrUncovered, Record, Value);
setFieldInRecord(rgr_newOrderList_73, maxShow, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.maxShow, Record, Value);
setFieldInRecord(rgr_newOrderList_73, pegDifference, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.pegDifference, Record, Value);
setFieldInRecord(rgr_newOrderList_73, discretionInst, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.discretionInst, Record, Value);
setFieldInRecord(rgr_newOrderList_73, discretionOffset, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.discretionOffset, Record, Value);
setFieldInRecord(rgr_newOrderList_73, designation, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.designation, Record, Value);
setFieldInRecord(rgr_newOrderList_73, accruedInterestRate, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.accruedInterestRate, Record, Value);
setFieldInRecord(rgr_newOrderList_73, accruedInterestAmt, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.accruedInterestAmt, Record, Value);
setFieldInRecord(rgr_newOrderList_73, netMoney, Record, Value)->
   erlang:setelement(#rgr_newOrderList_73.netMoney, Record, Value);
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
setFieldInRecord(orderCancelRequest, secondaryClOrdID, Record, Value)->
    erlang:setelement(#orderCancelRequest.secondaryClOrdID, Record, Value);
setFieldInRecord(orderCancelRequest, clOrdLinkID, Record, Value)->
    erlang:setelement(#orderCancelRequest.clOrdLinkID, Record, Value);
setFieldInRecord(orderCancelRequest, listID, Record, Value)->
    erlang:setelement(#orderCancelRequest.listID, Record, Value);
setFieldInRecord(orderCancelRequest, origOrdModTime, Record, Value)->
    erlang:setelement(#orderCancelRequest.origOrdModTime, Record, Value);
setFieldInRecord(orderCancelRequest, account, Record, Value)->
    erlang:setelement(#orderCancelRequest.account, Record, Value);
setFieldInRecord(orderCancelRequest, accountType, Record, Value)->
    erlang:setelement(#orderCancelRequest.accountType, Record, Value);
setFieldInRecord(orderCancelRequest, parties, Record, Value)->
    erlang:setelement(#orderCancelRequest.parties, Record, Value);
setFieldInRecord(orderCancelRequest, instrument, Record, Value)->
    erlang:setelement(#orderCancelRequest.instrument, Record, Value);
setFieldInRecord(orderCancelRequest, side, Record, Value)->
    erlang:setelement(#orderCancelRequest.side, Record, Value);
setFieldInRecord(orderCancelRequest, transactTime, Record, Value)->
    erlang:setelement(#orderCancelRequest.transactTime, Record, Value);
setFieldInRecord(orderCancelRequest, orderQtyData, Record, Value)->
    erlang:setelement(#orderCancelRequest.orderQtyData, Record, Value);
setFieldInRecord(orderCancelRequest, complianceID, Record, Value)->
    erlang:setelement(#orderCancelRequest.complianceID, Record, Value);
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
setFieldInRecord(orderCancelReplaceRequest, parties, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.parties, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, tradeOriginationDate, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.tradeOriginationDate, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, origClOrdID, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.origClOrdID, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, clOrdID, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.clOrdID, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, secondaryClOrdID, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.secondaryClOrdID, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, clOrdLinkID, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.clOrdLinkID, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, listID, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.listID, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, origOrdModTime, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.origOrdModTime, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, account, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.account, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, accountType, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.accountType, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, dayBookingInst, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.dayBookingInst, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, bookingUnit, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.bookingUnit, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, preallocMethod, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.preallocMethod, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, rgr_orderCancelReplaceRequest_78, Record, Value)->
   erlang:setelement(#orderCancelReplaceRequest.rgr_orderCancelReplaceRequest_78, Record, Value);
setFieldInRecord(rgr_orderCancelReplaceRequest_78, allocAccount, Record, Value)->
   erlang:setelement(#rgr_orderCancelReplaceRequest_78.allocAccount, Record, Value);
setFieldInRecord(rgr_orderCancelReplaceRequest_78, individualAllocID, Record, Value)->
   erlang:setelement(#rgr_orderCancelReplaceRequest_78.individualAllocID, Record, Value);
setFieldInRecord(rgr_orderCancelReplaceRequest_78, nestedParties, Record, Value)->
   erlang:setelement(#rgr_orderCancelReplaceRequest_78.nestedParties, Record, Value);
setFieldInRecord(rgr_orderCancelReplaceRequest_78, allocQty, Record, Value)->
   erlang:setelement(#rgr_orderCancelReplaceRequest_78.allocQty, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, settlmntTyp, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.settlmntTyp, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, futSettDate, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.futSettDate, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, cashMargin, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.cashMargin, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, clearingFeeIndicator, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.clearingFeeIndicator, Record, Value);
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
setFieldInRecord(rgr_orderCancelReplaceRequest_386, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_orderCancelReplaceRequest_386.tradingSessionSubID, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, instrument, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.instrument, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, side, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.side, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, transactTime, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.transactTime, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, quantityType, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.quantityType, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, orderQtyData, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.orderQtyData, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, ordType, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.ordType, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, priceType, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.priceType, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, price, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.price, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, stopPx, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.stopPx, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, spreadOrBenchmarkCurveData, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.spreadOrBenchmarkCurveData, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, yieldData, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.yieldData, Record, Value);
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
setFieldInRecord(orderCancelReplaceRequest, commissionData, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.commissionData, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, orderCapacity, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.orderCapacity, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, orderRestrictions, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.orderRestrictions, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, custOrderCapacity, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.custOrderCapacity, Record, Value);
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
setFieldInRecord(orderCancelReplaceRequest, price2, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.price2, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, positionEffect, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.positionEffect, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, coveredOrUncovered, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.coveredOrUncovered, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, maxShow, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.maxShow, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, locateReqd, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.locateReqd, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, cancellationRights, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.cancellationRights, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, moneyLaunderingStatus, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.moneyLaunderingStatus, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, registID, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.registID, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, designation, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.designation, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, accruedInterestRate, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.accruedInterestRate, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, accruedInterestAmt, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.accruedInterestAmt, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, netMoney, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.netMoney, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, standardTrailer, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.standardTrailer, Record, Value);
setFieldInRecord(orderStatusRequest, standardHeader, Record, Value)->
    erlang:setelement(#orderStatusRequest.standardHeader, Record, Value);
setFieldInRecord(orderStatusRequest, orderID, Record, Value)->
    erlang:setelement(#orderStatusRequest.orderID, Record, Value);
setFieldInRecord(orderStatusRequest, clOrdID, Record, Value)->
    erlang:setelement(#orderStatusRequest.clOrdID, Record, Value);
setFieldInRecord(orderStatusRequest, secondaryClOrdID, Record, Value)->
    erlang:setelement(#orderStatusRequest.secondaryClOrdID, Record, Value);
setFieldInRecord(orderStatusRequest, clOrdLinkID, Record, Value)->
    erlang:setelement(#orderStatusRequest.clOrdLinkID, Record, Value);
setFieldInRecord(orderStatusRequest, parties, Record, Value)->
    erlang:setelement(#orderStatusRequest.parties, Record, Value);
setFieldInRecord(orderStatusRequest, account, Record, Value)->
    erlang:setelement(#orderStatusRequest.account, Record, Value);
setFieldInRecord(orderStatusRequest, instrument, Record, Value)->
    erlang:setelement(#orderStatusRequest.instrument, Record, Value);
setFieldInRecord(orderStatusRequest, side, Record, Value)->
    erlang:setelement(#orderStatusRequest.side, Record, Value);
setFieldInRecord(orderStatusRequest, standardTrailer, Record, Value)->
    erlang:setelement(#orderStatusRequest.standardTrailer, Record, Value);
setFieldInRecord(allocation, standardHeader, Record, Value)->
    erlang:setelement(#allocation.standardHeader, Record, Value);
setFieldInRecord(allocation, allocID, Record, Value)->
    erlang:setelement(#allocation.allocID, Record, Value);
setFieldInRecord(allocation, allocTransType, Record, Value)->
    erlang:setelement(#allocation.allocTransType, Record, Value);
setFieldInRecord(allocation, allocType, Record, Value)->
    erlang:setelement(#allocation.allocType, Record, Value);
setFieldInRecord(allocation, refAllocID, Record, Value)->
    erlang:setelement(#allocation.refAllocID, Record, Value);
setFieldInRecord(allocation, allocLinkID, Record, Value)->
    erlang:setelement(#allocation.allocLinkID, Record, Value);
setFieldInRecord(allocation, allocLinkType, Record, Value)->
    erlang:setelement(#allocation.allocLinkType, Record, Value);
setFieldInRecord(allocation, bookingRefID, Record, Value)->
    erlang:setelement(#allocation.bookingRefID, Record, Value);
setFieldInRecord(allocation, rgr_allocation_73, Record, Value)->
   erlang:setelement(#allocation.rgr_allocation_73, Record, Value);
setFieldInRecord(rgr_allocation_73, clOrdID, Record, Value)->
   erlang:setelement(#rgr_allocation_73.clOrdID, Record, Value);
setFieldInRecord(rgr_allocation_73, orderID, Record, Value)->
   erlang:setelement(#rgr_allocation_73.orderID, Record, Value);
setFieldInRecord(rgr_allocation_73, secondaryOrderID, Record, Value)->
   erlang:setelement(#rgr_allocation_73.secondaryOrderID, Record, Value);
setFieldInRecord(rgr_allocation_73, secondaryClOrdID, Record, Value)->
   erlang:setelement(#rgr_allocation_73.secondaryClOrdID, Record, Value);
setFieldInRecord(rgr_allocation_73, listID, Record, Value)->
   erlang:setelement(#rgr_allocation_73.listID, Record, Value);
setFieldInRecord(allocation, rgr_allocation_124, Record, Value)->
   erlang:setelement(#allocation.rgr_allocation_124, Record, Value);
setFieldInRecord(rgr_allocation_124, lastQty, Record, Value)->
   erlang:setelement(#rgr_allocation_124.lastQty, Record, Value);
setFieldInRecord(rgr_allocation_124, execID, Record, Value)->
   erlang:setelement(#rgr_allocation_124.execID, Record, Value);
setFieldInRecord(rgr_allocation_124, secondaryExecID, Record, Value)->
   erlang:setelement(#rgr_allocation_124.secondaryExecID, Record, Value);
setFieldInRecord(rgr_allocation_124, lastPx, Record, Value)->
   erlang:setelement(#rgr_allocation_124.lastPx, Record, Value);
setFieldInRecord(rgr_allocation_124, lastCapacity, Record, Value)->
   erlang:setelement(#rgr_allocation_124.lastCapacity, Record, Value);
setFieldInRecord(allocation, side, Record, Value)->
    erlang:setelement(#allocation.side, Record, Value);
setFieldInRecord(allocation, instrument, Record, Value)->
    erlang:setelement(#allocation.instrument, Record, Value);
setFieldInRecord(allocation, quantity, Record, Value)->
    erlang:setelement(#allocation.quantity, Record, Value);
setFieldInRecord(allocation, lastMkt, Record, Value)->
    erlang:setelement(#allocation.lastMkt, Record, Value);
setFieldInRecord(allocation, tradeOriginationDate, Record, Value)->
    erlang:setelement(#allocation.tradeOriginationDate, Record, Value);
setFieldInRecord(allocation, tradingSessionID, Record, Value)->
    erlang:setelement(#allocation.tradingSessionID, Record, Value);
setFieldInRecord(allocation, tradingSessionSubID, Record, Value)->
    erlang:setelement(#allocation.tradingSessionSubID, Record, Value);
setFieldInRecord(allocation, priceType, Record, Value)->
    erlang:setelement(#allocation.priceType, Record, Value);
setFieldInRecord(allocation, avgPx, Record, Value)->
    erlang:setelement(#allocation.avgPx, Record, Value);
setFieldInRecord(allocation, currency, Record, Value)->
    erlang:setelement(#allocation.currency, Record, Value);
setFieldInRecord(allocation, avgPrxPrecision, Record, Value)->
    erlang:setelement(#allocation.avgPrxPrecision, Record, Value);
setFieldInRecord(allocation, parties, Record, Value)->
    erlang:setelement(#allocation.parties, Record, Value);
setFieldInRecord(allocation, tradeDate, Record, Value)->
    erlang:setelement(#allocation.tradeDate, Record, Value);
setFieldInRecord(allocation, transactTime, Record, Value)->
    erlang:setelement(#allocation.transactTime, Record, Value);
setFieldInRecord(allocation, settlmntTyp, Record, Value)->
    erlang:setelement(#allocation.settlmntTyp, Record, Value);
setFieldInRecord(allocation, futSettDate, Record, Value)->
    erlang:setelement(#allocation.futSettDate, Record, Value);
setFieldInRecord(allocation, grossTradeAmt, Record, Value)->
    erlang:setelement(#allocation.grossTradeAmt, Record, Value);
setFieldInRecord(allocation, concession, Record, Value)->
    erlang:setelement(#allocation.concession, Record, Value);
setFieldInRecord(allocation, totalTakedown, Record, Value)->
    erlang:setelement(#allocation.totalTakedown, Record, Value);
setFieldInRecord(allocation, netMoney, Record, Value)->
    erlang:setelement(#allocation.netMoney, Record, Value);
setFieldInRecord(allocation, positionEffect, Record, Value)->
    erlang:setelement(#allocation.positionEffect, Record, Value);
setFieldInRecord(allocation, text, Record, Value)->
    erlang:setelement(#allocation.text, Record, Value);
setFieldInRecord(allocation, encodedTextLen, Record, Value)->
    erlang:setelement(#allocation.encodedTextLen, Record, Value);
setFieldInRecord(allocation, encodedText, Record, Value)->
    erlang:setelement(#allocation.encodedText, Record, Value);
setFieldInRecord(allocation, numDaysInterest, Record, Value)->
    erlang:setelement(#allocation.numDaysInterest, Record, Value);
setFieldInRecord(allocation, accruedInterestRate, Record, Value)->
    erlang:setelement(#allocation.accruedInterestRate, Record, Value);
setFieldInRecord(allocation, totalAccruedInterestAmt, Record, Value)->
    erlang:setelement(#allocation.totalAccruedInterestAmt, Record, Value);
setFieldInRecord(allocation, legalConfirm, Record, Value)->
    erlang:setelement(#allocation.legalConfirm, Record, Value);
setFieldInRecord(allocation, rgr_allocation_78, Record, Value)->
   erlang:setelement(#allocation.rgr_allocation_78, Record, Value);
setFieldInRecord(rgr_allocation_78, allocAccount, Record, Value)->
   erlang:setelement(#rgr_allocation_78.allocAccount, Record, Value);
setFieldInRecord(rgr_allocation_78, allocPrice, Record, Value)->
   erlang:setelement(#rgr_allocation_78.allocPrice, Record, Value);
setFieldInRecord(rgr_allocation_78, allocQty, Record, Value)->
   erlang:setelement(#rgr_allocation_78.allocQty, Record, Value);
setFieldInRecord(rgr_allocation_78, individualAllocID, Record, Value)->
   erlang:setelement(#rgr_allocation_78.individualAllocID, Record, Value);
setFieldInRecord(rgr_allocation_78, processCode, Record, Value)->
   erlang:setelement(#rgr_allocation_78.processCode, Record, Value);
setFieldInRecord(rgr_allocation_78, nestedParties, Record, Value)->
   erlang:setelement(#rgr_allocation_78.nestedParties, Record, Value);
setFieldInRecord(rgr_allocation_78, notifyBrokerOfCredit, Record, Value)->
   erlang:setelement(#rgr_allocation_78.notifyBrokerOfCredit, Record, Value);
setFieldInRecord(rgr_allocation_78, allocHandlInst, Record, Value)->
   erlang:setelement(#rgr_allocation_78.allocHandlInst, Record, Value);
setFieldInRecord(rgr_allocation_78, allocText, Record, Value)->
   erlang:setelement(#rgr_allocation_78.allocText, Record, Value);
setFieldInRecord(rgr_allocation_78, encodedAllocTextLen, Record, Value)->
   erlang:setelement(#rgr_allocation_78.encodedAllocTextLen, Record, Value);
setFieldInRecord(rgr_allocation_78, encodedAllocText, Record, Value)->
   erlang:setelement(#rgr_allocation_78.encodedAllocText, Record, Value);
setFieldInRecord(rgr_allocation_78, commissionData, Record, Value)->
   erlang:setelement(#rgr_allocation_78.commissionData, Record, Value);
setFieldInRecord(rgr_allocation_78, allocAvgPx, Record, Value)->
   erlang:setelement(#rgr_allocation_78.allocAvgPx, Record, Value);
setFieldInRecord(rgr_allocation_78, allocNetMoney, Record, Value)->
   erlang:setelement(#rgr_allocation_78.allocNetMoney, Record, Value);
setFieldInRecord(rgr_allocation_78, settlCurrAmt, Record, Value)->
   erlang:setelement(#rgr_allocation_78.settlCurrAmt, Record, Value);
setFieldInRecord(rgr_allocation_78, settlCurrency, Record, Value)->
   erlang:setelement(#rgr_allocation_78.settlCurrency, Record, Value);
setFieldInRecord(rgr_allocation_78, settlCurrFxRate, Record, Value)->
   erlang:setelement(#rgr_allocation_78.settlCurrFxRate, Record, Value);
setFieldInRecord(rgr_allocation_78, settlCurrFxRateCalc, Record, Value)->
   erlang:setelement(#rgr_allocation_78.settlCurrFxRateCalc, Record, Value);
setFieldInRecord(rgr_allocation_78, accruedInterestAmt, Record, Value)->
   erlang:setelement(#rgr_allocation_78.accruedInterestAmt, Record, Value);
setFieldInRecord(rgr_allocation_78, settlInstMode, Record, Value)->
   erlang:setelement(#rgr_allocation_78.settlInstMode, Record, Value);
setFieldInRecord(rgr_allocation_78, rgr_rgr_allocation_78_136, Record, Value)->
   erlang:setelement(#rgr_allocation_78.rgr_rgr_allocation_78_136, Record, Value);
setFieldInRecord(rgr_rgr_allocation_78_136, miscFeeAmt, Record, Value)->
   erlang:setelement(#rgr_rgr_allocation_78_136.miscFeeAmt, Record, Value);
setFieldInRecord(rgr_rgr_allocation_78_136, miscFeeCurr, Record, Value)->
   erlang:setelement(#rgr_rgr_allocation_78_136.miscFeeCurr, Record, Value);
setFieldInRecord(rgr_rgr_allocation_78_136, miscFeeType, Record, Value)->
   erlang:setelement(#rgr_rgr_allocation_78_136.miscFeeType, Record, Value);
setFieldInRecord(allocation, standardTrailer, Record, Value)->
    erlang:setelement(#allocation.standardTrailer, Record, Value);
setFieldInRecord(listCancelRequest, standardHeader, Record, Value)->
    erlang:setelement(#listCancelRequest.standardHeader, Record, Value);
setFieldInRecord(listCancelRequest, listID, Record, Value)->
    erlang:setelement(#listCancelRequest.listID, Record, Value);
setFieldInRecord(listCancelRequest, transactTime, Record, Value)->
    erlang:setelement(#listCancelRequest.transactTime, Record, Value);
setFieldInRecord(listCancelRequest, tradeOriginationDate, Record, Value)->
    erlang:setelement(#listCancelRequest.tradeOriginationDate, Record, Value);
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
setFieldInRecord(rgr_listStatus_73, secondaryClOrdID, Record, Value)->
   erlang:setelement(#rgr_listStatus_73.secondaryClOrdID, Record, Value);
setFieldInRecord(rgr_listStatus_73, cumQty, Record, Value)->
   erlang:setelement(#rgr_listStatus_73.cumQty, Record, Value);
setFieldInRecord(rgr_listStatus_73, ordStatus, Record, Value)->
   erlang:setelement(#rgr_listStatus_73.ordStatus, Record, Value);
setFieldInRecord(rgr_listStatus_73, workingIndicator, Record, Value)->
   erlang:setelement(#rgr_listStatus_73.workingIndicator, Record, Value);
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
setFieldInRecord(allocationAck, standardHeader, Record, Value)->
    erlang:setelement(#allocationAck.standardHeader, Record, Value);
setFieldInRecord(allocationAck, parties, Record, Value)->
    erlang:setelement(#allocationAck.parties, Record, Value);
setFieldInRecord(allocationAck, allocID, Record, Value)->
    erlang:setelement(#allocationAck.allocID, Record, Value);
setFieldInRecord(allocationAck, tradeDate, Record, Value)->
    erlang:setelement(#allocationAck.tradeDate, Record, Value);
setFieldInRecord(allocationAck, transactTime, Record, Value)->
    erlang:setelement(#allocationAck.transactTime, Record, Value);
setFieldInRecord(allocationAck, allocStatus, Record, Value)->
    erlang:setelement(#allocationAck.allocStatus, Record, Value);
setFieldInRecord(allocationAck, allocRejCode, Record, Value)->
    erlang:setelement(#allocationAck.allocRejCode, Record, Value);
setFieldInRecord(allocationAck, text, Record, Value)->
    erlang:setelement(#allocationAck.text, Record, Value);
setFieldInRecord(allocationAck, encodedTextLen, Record, Value)->
    erlang:setelement(#allocationAck.encodedTextLen, Record, Value);
setFieldInRecord(allocationAck, encodedText, Record, Value)->
    erlang:setelement(#allocationAck.encodedText, Record, Value);
setFieldInRecord(allocationAck, legalConfirm, Record, Value)->
    erlang:setelement(#allocationAck.legalConfirm, Record, Value);
setFieldInRecord(allocationAck, standardTrailer, Record, Value)->
    erlang:setelement(#allocationAck.standardTrailer, Record, Value);
setFieldInRecord(dontKnowTrade, standardHeader, Record, Value)->
    erlang:setelement(#dontKnowTrade.standardHeader, Record, Value);
setFieldInRecord(dontKnowTrade, orderID, Record, Value)->
    erlang:setelement(#dontKnowTrade.orderID, Record, Value);
setFieldInRecord(dontKnowTrade, execID, Record, Value)->
    erlang:setelement(#dontKnowTrade.execID, Record, Value);
setFieldInRecord(dontKnowTrade, dKReason, Record, Value)->
    erlang:setelement(#dontKnowTrade.dKReason, Record, Value);
setFieldInRecord(dontKnowTrade, instrument, Record, Value)->
    erlang:setelement(#dontKnowTrade.instrument, Record, Value);
setFieldInRecord(dontKnowTrade, side, Record, Value)->
    erlang:setelement(#dontKnowTrade.side, Record, Value);
setFieldInRecord(dontKnowTrade, orderQtyData, Record, Value)->
    erlang:setelement(#dontKnowTrade.orderQtyData, Record, Value);
setFieldInRecord(dontKnowTrade, lastQty, Record, Value)->
    erlang:setelement(#dontKnowTrade.lastQty, Record, Value);
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
setFieldInRecord(quoteRequest, rFQReqID, Record, Value)->
    erlang:setelement(#quoteRequest.rFQReqID, Record, Value);
setFieldInRecord(quoteRequest, rgr_quoteRequest_146, Record, Value)->
   erlang:setelement(#quoteRequest.rgr_quoteRequest_146, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, instrument, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.instrument, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, prevClosePx, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.prevClosePx, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, quoteRequestType, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.quoteRequestType, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, quoteType, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.quoteType, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.tradingSessionID, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.tradingSessionSubID, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, tradeOriginationDate, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.tradeOriginationDate, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, stipulations, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.stipulations, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, side, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.side, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, quantityType, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.quantityType, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, orderQty, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.orderQty, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, cashOrderQty, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.cashOrderQty, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, settlmntTyp, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.settlmntTyp, Record, Value);
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
setFieldInRecord(rgr_quoteRequest_146, spreadOrBenchmarkCurveData, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.spreadOrBenchmarkCurveData, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, priceType, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.priceType, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, price, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.price, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, price2, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.price2, Record, Value);
setFieldInRecord(rgr_quoteRequest_146, yieldData, Record, Value)->
   erlang:setelement(#rgr_quoteRequest_146.yieldData, Record, Value);
setFieldInRecord(quoteRequest, text, Record, Value)->
    erlang:setelement(#quoteRequest.text, Record, Value);
setFieldInRecord(quoteRequest, encodedTextLen, Record, Value)->
    erlang:setelement(#quoteRequest.encodedTextLen, Record, Value);
setFieldInRecord(quoteRequest, encodedText, Record, Value)->
    erlang:setelement(#quoteRequest.encodedText, Record, Value);
setFieldInRecord(quoteRequest, standardTrailer, Record, Value)->
    erlang:setelement(#quoteRequest.standardTrailer, Record, Value);
setFieldInRecord(quote, standardHeader, Record, Value)->
    erlang:setelement(#quote.standardHeader, Record, Value);
setFieldInRecord(quote, quoteReqID, Record, Value)->
    erlang:setelement(#quote.quoteReqID, Record, Value);
setFieldInRecord(quote, quoteID, Record, Value)->
    erlang:setelement(#quote.quoteID, Record, Value);
setFieldInRecord(quote, quoteType, Record, Value)->
    erlang:setelement(#quote.quoteType, Record, Value);
setFieldInRecord(quote, quoteResponseLevel, Record, Value)->
    erlang:setelement(#quote.quoteResponseLevel, Record, Value);
setFieldInRecord(quote, parties, Record, Value)->
    erlang:setelement(#quote.parties, Record, Value);
setFieldInRecord(quote, account, Record, Value)->
    erlang:setelement(#quote.account, Record, Value);
setFieldInRecord(quote, accountType, Record, Value)->
    erlang:setelement(#quote.accountType, Record, Value);
setFieldInRecord(quote, tradingSessionID, Record, Value)->
    erlang:setelement(#quote.tradingSessionID, Record, Value);
setFieldInRecord(quote, tradingSessionSubID, Record, Value)->
    erlang:setelement(#quote.tradingSessionSubID, Record, Value);
setFieldInRecord(quote, instrument, Record, Value)->
    erlang:setelement(#quote.instrument, Record, Value);
setFieldInRecord(quote, bidPx, Record, Value)->
    erlang:setelement(#quote.bidPx, Record, Value);
setFieldInRecord(quote, offerPx, Record, Value)->
    erlang:setelement(#quote.offerPx, Record, Value);
setFieldInRecord(quote, mktBidPx, Record, Value)->
    erlang:setelement(#quote.mktBidPx, Record, Value);
setFieldInRecord(quote, mktOfferPx, Record, Value)->
    erlang:setelement(#quote.mktOfferPx, Record, Value);
setFieldInRecord(quote, minBidSize, Record, Value)->
    erlang:setelement(#quote.minBidSize, Record, Value);
setFieldInRecord(quote, bidSize, Record, Value)->
    erlang:setelement(#quote.bidSize, Record, Value);
setFieldInRecord(quote, minOfferSize, Record, Value)->
    erlang:setelement(#quote.minOfferSize, Record, Value);
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
setFieldInRecord(quote, midPx, Record, Value)->
    erlang:setelement(#quote.midPx, Record, Value);
setFieldInRecord(quote, bidYield, Record, Value)->
    erlang:setelement(#quote.bidYield, Record, Value);
setFieldInRecord(quote, midYield, Record, Value)->
    erlang:setelement(#quote.midYield, Record, Value);
setFieldInRecord(quote, offerYield, Record, Value)->
    erlang:setelement(#quote.offerYield, Record, Value);
setFieldInRecord(quote, transactTime, Record, Value)->
    erlang:setelement(#quote.transactTime, Record, Value);
setFieldInRecord(quote, settlmntTyp, Record, Value)->
    erlang:setelement(#quote.settlmntTyp, Record, Value);
setFieldInRecord(quote, futSettDate, Record, Value)->
    erlang:setelement(#quote.futSettDate, Record, Value);
setFieldInRecord(quote, ordType, Record, Value)->
    erlang:setelement(#quote.ordType, Record, Value);
setFieldInRecord(quote, futSettDate2, Record, Value)->
    erlang:setelement(#quote.futSettDate2, Record, Value);
setFieldInRecord(quote, orderQty2, Record, Value)->
    erlang:setelement(#quote.orderQty2, Record, Value);
setFieldInRecord(quote, bidForwardPoints2, Record, Value)->
    erlang:setelement(#quote.bidForwardPoints2, Record, Value);
setFieldInRecord(quote, offerForwardPoints2, Record, Value)->
    erlang:setelement(#quote.offerForwardPoints2, Record, Value);
setFieldInRecord(quote, currency, Record, Value)->
    erlang:setelement(#quote.currency, Record, Value);
setFieldInRecord(quote, settlCurrBidFxRate, Record, Value)->
    erlang:setelement(#quote.settlCurrBidFxRate, Record, Value);
setFieldInRecord(quote, settlCurrOfferFxRate, Record, Value)->
    erlang:setelement(#quote.settlCurrOfferFxRate, Record, Value);
setFieldInRecord(quote, settlCurrFxRateCalc, Record, Value)->
    erlang:setelement(#quote.settlCurrFxRateCalc, Record, Value);
setFieldInRecord(quote, commission, Record, Value)->
    erlang:setelement(#quote.commission, Record, Value);
setFieldInRecord(quote, commType, Record, Value)->
    erlang:setelement(#quote.commType, Record, Value);
setFieldInRecord(quote, custOrderCapacity, Record, Value)->
    erlang:setelement(#quote.custOrderCapacity, Record, Value);
setFieldInRecord(quote, exDestination, Record, Value)->
    erlang:setelement(#quote.exDestination, Record, Value);
setFieldInRecord(quote, text, Record, Value)->
    erlang:setelement(#quote.text, Record, Value);
setFieldInRecord(quote, encodedTextLen, Record, Value)->
    erlang:setelement(#quote.encodedTextLen, Record, Value);
setFieldInRecord(quote, encodedText, Record, Value)->
    erlang:setelement(#quote.encodedText, Record, Value);
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
setFieldInRecord(settlementInstructions, individualAllocID, Record, Value)->
    erlang:setelement(#settlementInstructions.individualAllocID, Record, Value);
setFieldInRecord(settlementInstructions, clOrdID, Record, Value)->
    erlang:setelement(#settlementInstructions.clOrdID, Record, Value);
setFieldInRecord(settlementInstructions, tradeDate, Record, Value)->
    erlang:setelement(#settlementInstructions.tradeDate, Record, Value);
setFieldInRecord(settlementInstructions, allocID, Record, Value)->
    erlang:setelement(#settlementInstructions.allocID, Record, Value);
setFieldInRecord(settlementInstructions, lastMkt, Record, Value)->
    erlang:setelement(#settlementInstructions.lastMkt, Record, Value);
setFieldInRecord(settlementInstructions, tradingSessionID, Record, Value)->
    erlang:setelement(#settlementInstructions.tradingSessionID, Record, Value);
setFieldInRecord(settlementInstructions, tradingSessionSubID, Record, Value)->
    erlang:setelement(#settlementInstructions.tradingSessionSubID, Record, Value);
setFieldInRecord(settlementInstructions, side, Record, Value)->
    erlang:setelement(#settlementInstructions.side, Record, Value);
setFieldInRecord(settlementInstructions, securityType, Record, Value)->
    erlang:setelement(#settlementInstructions.securityType, Record, Value);
setFieldInRecord(settlementInstructions, effectiveTime, Record, Value)->
    erlang:setelement(#settlementInstructions.effectiveTime, Record, Value);
setFieldInRecord(settlementInstructions, transactTime, Record, Value)->
    erlang:setelement(#settlementInstructions.transactTime, Record, Value);
setFieldInRecord(settlementInstructions, parties, Record, Value)->
    erlang:setelement(#settlementInstructions.parties, Record, Value);
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
setFieldInRecord(settlementInstructions, paymentMethod, Record, Value)->
    erlang:setelement(#settlementInstructions.paymentMethod, Record, Value);
setFieldInRecord(settlementInstructions, paymentRef, Record, Value)->
    erlang:setelement(#settlementInstructions.paymentRef, Record, Value);
setFieldInRecord(settlementInstructions, cardHolderName, Record, Value)->
    erlang:setelement(#settlementInstructions.cardHolderName, Record, Value);
setFieldInRecord(settlementInstructions, cardNumber, Record, Value)->
    erlang:setelement(#settlementInstructions.cardNumber, Record, Value);
setFieldInRecord(settlementInstructions, cardStartDate, Record, Value)->
    erlang:setelement(#settlementInstructions.cardStartDate, Record, Value);
setFieldInRecord(settlementInstructions, cardExpDate, Record, Value)->
    erlang:setelement(#settlementInstructions.cardExpDate, Record, Value);
setFieldInRecord(settlementInstructions, cardIssNo, Record, Value)->
    erlang:setelement(#settlementInstructions.cardIssNo, Record, Value);
setFieldInRecord(settlementInstructions, paymentDate, Record, Value)->
    erlang:setelement(#settlementInstructions.paymentDate, Record, Value);
setFieldInRecord(settlementInstructions, paymentRemitterID, Record, Value)->
    erlang:setelement(#settlementInstructions.paymentRemitterID, Record, Value);
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
setFieldInRecord(marketDataRequest, openCloseSettleFlag, Record, Value)->
    erlang:setelement(#marketDataRequest.openCloseSettleFlag, Record, Value);
setFieldInRecord(marketDataRequest, scope, Record, Value)->
    erlang:setelement(#marketDataRequest.scope, Record, Value);
setFieldInRecord(marketDataRequest, mDImplicitDelete, Record, Value)->
    erlang:setelement(#marketDataRequest.mDImplicitDelete, Record, Value);
setFieldInRecord(marketDataRequest, rgr_marketDataRequest_267, Record, Value)->
   erlang:setelement(#marketDataRequest.rgr_marketDataRequest_267, Record, Value);
setFieldInRecord(rgr_marketDataRequest_267, mDEntryType, Record, Value)->
   erlang:setelement(#rgr_marketDataRequest_267.mDEntryType, Record, Value);
setFieldInRecord(marketDataRequest, rgr_marketDataRequest_146, Record, Value)->
   erlang:setelement(#marketDataRequest.rgr_marketDataRequest_146, Record, Value);
setFieldInRecord(rgr_marketDataRequest_146, instrument, Record, Value)->
   erlang:setelement(#rgr_marketDataRequest_146.instrument, Record, Value);
setFieldInRecord(marketDataRequest, rgr_marketDataRequest_386, Record, Value)->
   erlang:setelement(#marketDataRequest.rgr_marketDataRequest_386, Record, Value);
setFieldInRecord(rgr_marketDataRequest_386, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_marketDataRequest_386.tradingSessionID, Record, Value);
setFieldInRecord(rgr_marketDataRequest_386, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_marketDataRequest_386.tradingSessionSubID, Record, Value);
setFieldInRecord(marketDataRequest, standardTrailer, Record, Value)->
    erlang:setelement(#marketDataRequest.standardTrailer, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, standardHeader, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.standardHeader, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, mDReqID, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.mDReqID, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, instrument, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.instrument, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, financialStatus, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.financialStatus, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, corporateAction, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.corporateAction, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, totalVolumeTraded, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.totalVolumeTraded, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, totalVolumeTradedDate, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.totalVolumeTradedDate, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, totalVolumeTradedTime, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.totalVolumeTradedTime, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, netChgPrevDay, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.netChgPrevDay, Record, Value);
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
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.tradingSessionSubID, Record, Value);
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
setFieldInRecord(rgr_marketDataSnapshotFullRefresh_268, scope, Record, Value)->
   erlang:setelement(#rgr_marketDataSnapshotFullRefresh_268.scope, Record, Value);
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
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, instrument, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.instrument, Record, Value);
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
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.tradingSessionSubID, Record, Value);
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
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, scope, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.scope, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, totalVolumeTraded, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.totalVolumeTraded, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, totalVolumeTradedDate, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.totalVolumeTradedDate, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, totalVolumeTradedTime, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.totalVolumeTradedTime, Record, Value);
setFieldInRecord(rgr_marketDataIncrementalRefresh_268, netChgPrevDay, Record, Value)->
   erlang:setelement(#rgr_marketDataIncrementalRefresh_268.netChgPrevDay, Record, Value);
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
setFieldInRecord(quoteCancel, parties, Record, Value)->
    erlang:setelement(#quoteCancel.parties, Record, Value);
setFieldInRecord(quoteCancel, account, Record, Value)->
    erlang:setelement(#quoteCancel.account, Record, Value);
setFieldInRecord(quoteCancel, accountType, Record, Value)->
    erlang:setelement(#quoteCancel.accountType, Record, Value);
setFieldInRecord(quoteCancel, tradingSessionID, Record, Value)->
    erlang:setelement(#quoteCancel.tradingSessionID, Record, Value);
setFieldInRecord(quoteCancel, tradingSessionSubID, Record, Value)->
    erlang:setelement(#quoteCancel.tradingSessionSubID, Record, Value);
setFieldInRecord(quoteCancel, rgr_quoteCancel_295, Record, Value)->
   erlang:setelement(#quoteCancel.rgr_quoteCancel_295, Record, Value);
setFieldInRecord(rgr_quoteCancel_295, instrument, Record, Value)->
   erlang:setelement(#rgr_quoteCancel_295.instrument, Record, Value);
setFieldInRecord(quoteCancel, standardTrailer, Record, Value)->
    erlang:setelement(#quoteCancel.standardTrailer, Record, Value);
setFieldInRecord(quoteStatusRequest, standardHeader, Record, Value)->
    erlang:setelement(#quoteStatusRequest.standardHeader, Record, Value);
setFieldInRecord(quoteStatusRequest, quoteStatusReqID, Record, Value)->
    erlang:setelement(#quoteStatusRequest.quoteStatusReqID, Record, Value);
setFieldInRecord(quoteStatusRequest, quoteID, Record, Value)->
    erlang:setelement(#quoteStatusRequest.quoteID, Record, Value);
setFieldInRecord(quoteStatusRequest, instrument, Record, Value)->
    erlang:setelement(#quoteStatusRequest.instrument, Record, Value);
setFieldInRecord(quoteStatusRequest, parties, Record, Value)->
    erlang:setelement(#quoteStatusRequest.parties, Record, Value);
setFieldInRecord(quoteStatusRequest, account, Record, Value)->
    erlang:setelement(#quoteStatusRequest.account, Record, Value);
setFieldInRecord(quoteStatusRequest, accountType, Record, Value)->
    erlang:setelement(#quoteStatusRequest.accountType, Record, Value);
setFieldInRecord(quoteStatusRequest, tradingSessionID, Record, Value)->
    erlang:setelement(#quoteStatusRequest.tradingSessionID, Record, Value);
setFieldInRecord(quoteStatusRequest, tradingSessionSubID, Record, Value)->
    erlang:setelement(#quoteStatusRequest.tradingSessionSubID, Record, Value);
setFieldInRecord(quoteStatusRequest, subscriptionRequestType, Record, Value)->
    erlang:setelement(#quoteStatusRequest.subscriptionRequestType, Record, Value);
setFieldInRecord(quoteStatusRequest, standardTrailer, Record, Value)->
    erlang:setelement(#quoteStatusRequest.standardTrailer, Record, Value);
setFieldInRecord(massQuoteAcknowledgement, standardHeader, Record, Value)->
    erlang:setelement(#massQuoteAcknowledgement.standardHeader, Record, Value);
setFieldInRecord(massQuoteAcknowledgement, quoteReqID, Record, Value)->
    erlang:setelement(#massQuoteAcknowledgement.quoteReqID, Record, Value);
setFieldInRecord(massQuoteAcknowledgement, quoteID, Record, Value)->
    erlang:setelement(#massQuoteAcknowledgement.quoteID, Record, Value);
setFieldInRecord(massQuoteAcknowledgement, quoteStatus, Record, Value)->
    erlang:setelement(#massQuoteAcknowledgement.quoteStatus, Record, Value);
setFieldInRecord(massQuoteAcknowledgement, quoteRejectReason, Record, Value)->
    erlang:setelement(#massQuoteAcknowledgement.quoteRejectReason, Record, Value);
setFieldInRecord(massQuoteAcknowledgement, quoteResponseLevel, Record, Value)->
    erlang:setelement(#massQuoteAcknowledgement.quoteResponseLevel, Record, Value);
setFieldInRecord(massQuoteAcknowledgement, quoteType, Record, Value)->
    erlang:setelement(#massQuoteAcknowledgement.quoteType, Record, Value);
setFieldInRecord(massQuoteAcknowledgement, parties, Record, Value)->
    erlang:setelement(#massQuoteAcknowledgement.parties, Record, Value);
setFieldInRecord(massQuoteAcknowledgement, account, Record, Value)->
    erlang:setelement(#massQuoteAcknowledgement.account, Record, Value);
setFieldInRecord(massQuoteAcknowledgement, accountType, Record, Value)->
    erlang:setelement(#massQuoteAcknowledgement.accountType, Record, Value);
setFieldInRecord(massQuoteAcknowledgement, text, Record, Value)->
    erlang:setelement(#massQuoteAcknowledgement.text, Record, Value);
setFieldInRecord(massQuoteAcknowledgement, rgr_massQuoteAcknowledgement_296, Record, Value)->
   erlang:setelement(#massQuoteAcknowledgement.rgr_massQuoteAcknowledgement_296, Record, Value);
setFieldInRecord(rgr_massQuoteAcknowledgement_296, quoteSetID, Record, Value)->
   erlang:setelement(#rgr_massQuoteAcknowledgement_296.quoteSetID, Record, Value);
setFieldInRecord(rgr_massQuoteAcknowledgement_296, underlyingInstrument, Record, Value)->
   erlang:setelement(#rgr_massQuoteAcknowledgement_296.underlyingInstrument, Record, Value);
setFieldInRecord(rgr_massQuoteAcknowledgement_296, totQuoteEntries, Record, Value)->
   erlang:setelement(#rgr_massQuoteAcknowledgement_296.totQuoteEntries, Record, Value);
setFieldInRecord(rgr_massQuoteAcknowledgement_296, rgr_rgr_massQuoteAcknowledgement_296_295, Record, Value)->
   erlang:setelement(#rgr_massQuoteAcknowledgement_296.rgr_rgr_massQuoteAcknowledgement_296_295, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, quoteEntryID, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.quoteEntryID, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, instrument, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.instrument, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, bidPx, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.bidPx, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, offerPx, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.offerPx, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, bidSize, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.bidSize, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, offerSize, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.offerSize, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, validUntilTime, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.validUntilTime, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, bidSpotRate, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.bidSpotRate, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, offerSpotRate, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.offerSpotRate, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, bidForwardPoints, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.bidForwardPoints, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, offerForwardPoints, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.offerForwardPoints, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, midPx, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.midPx, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, bidYield, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.bidYield, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, midYield, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.midYield, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, offerYield, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.offerYield, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, transactTime, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.transactTime, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.tradingSessionID, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.tradingSessionSubID, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, futSettDate, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.futSettDate, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, ordType, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.ordType, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, futSettDate2, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.futSettDate2, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, orderQty2, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.orderQty2, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, bidForwardPoints2, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.bidForwardPoints2, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, offerForwardPoints2, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.offerForwardPoints2, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, currency, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.currency, Record, Value);
setFieldInRecord(rgr_rgr_massQuoteAcknowledgement_296_295, quoteEntryRejectReason, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuoteAcknowledgement_296_295.quoteEntryRejectReason, Record, Value);
setFieldInRecord(massQuoteAcknowledgement, standardTrailer, Record, Value)->
    erlang:setelement(#massQuoteAcknowledgement.standardTrailer, Record, Value);
setFieldInRecord(securityDefinitionRequest, standardHeader, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.standardHeader, Record, Value);
setFieldInRecord(securityDefinitionRequest, securityReqID, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.securityReqID, Record, Value);
setFieldInRecord(securityDefinitionRequest, securityRequestType, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.securityRequestType, Record, Value);
setFieldInRecord(securityDefinitionRequest, instrument, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.instrument, Record, Value);
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
setFieldInRecord(securityDefinitionRequest, tradingSessionSubID, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.tradingSessionSubID, Record, Value);
setFieldInRecord(securityDefinitionRequest, rgr_securityDefinitionRequest_555, Record, Value)->
   erlang:setelement(#securityDefinitionRequest.rgr_securityDefinitionRequest_555, Record, Value);
setFieldInRecord(rgr_securityDefinitionRequest_555, instrumentLeg, Record, Value)->
   erlang:setelement(#rgr_securityDefinitionRequest_555.instrumentLeg, Record, Value);
setFieldInRecord(rgr_securityDefinitionRequest_555, legCurrency, Record, Value)->
   erlang:setelement(#rgr_securityDefinitionRequest_555.legCurrency, Record, Value);
setFieldInRecord(securityDefinitionRequest, subscriptionRequestType, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.subscriptionRequestType, Record, Value);
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
setFieldInRecord(securityDefinition, instrument, Record, Value)->
    erlang:setelement(#securityDefinition.instrument, Record, Value);
setFieldInRecord(securityDefinition, currency, Record, Value)->
    erlang:setelement(#securityDefinition.currency, Record, Value);
setFieldInRecord(securityDefinition, tradingSessionID, Record, Value)->
    erlang:setelement(#securityDefinition.tradingSessionID, Record, Value);
setFieldInRecord(securityDefinition, tradingSessionSubID, Record, Value)->
    erlang:setelement(#securityDefinition.tradingSessionSubID, Record, Value);
setFieldInRecord(securityDefinition, text, Record, Value)->
    erlang:setelement(#securityDefinition.text, Record, Value);
setFieldInRecord(securityDefinition, encodedTextLen, Record, Value)->
    erlang:setelement(#securityDefinition.encodedTextLen, Record, Value);
setFieldInRecord(securityDefinition, encodedText, Record, Value)->
    erlang:setelement(#securityDefinition.encodedText, Record, Value);
setFieldInRecord(securityDefinition, rgr_securityDefinition_555, Record, Value)->
   erlang:setelement(#securityDefinition.rgr_securityDefinition_555, Record, Value);
setFieldInRecord(rgr_securityDefinition_555, instrumentLeg, Record, Value)->
   erlang:setelement(#rgr_securityDefinition_555.instrumentLeg, Record, Value);
setFieldInRecord(rgr_securityDefinition_555, legCurrency, Record, Value)->
   erlang:setelement(#rgr_securityDefinition_555.legCurrency, Record, Value);
setFieldInRecord(securityDefinition, roundLot, Record, Value)->
    erlang:setelement(#securityDefinition.roundLot, Record, Value);
setFieldInRecord(securityDefinition, minTradeVol, Record, Value)->
    erlang:setelement(#securityDefinition.minTradeVol, Record, Value);
setFieldInRecord(securityDefinition, standardTrailer, Record, Value)->
    erlang:setelement(#securityDefinition.standardTrailer, Record, Value);
setFieldInRecord(securityStatusRequest, standardHeader, Record, Value)->
    erlang:setelement(#securityStatusRequest.standardHeader, Record, Value);
setFieldInRecord(securityStatusRequest, securityStatusReqID, Record, Value)->
    erlang:setelement(#securityStatusRequest.securityStatusReqID, Record, Value);
setFieldInRecord(securityStatusRequest, instrument, Record, Value)->
    erlang:setelement(#securityStatusRequest.instrument, Record, Value);
setFieldInRecord(securityStatusRequest, currency, Record, Value)->
    erlang:setelement(#securityStatusRequest.currency, Record, Value);
setFieldInRecord(securityStatusRequest, subscriptionRequestType, Record, Value)->
    erlang:setelement(#securityStatusRequest.subscriptionRequestType, Record, Value);
setFieldInRecord(securityStatusRequest, tradingSessionID, Record, Value)->
    erlang:setelement(#securityStatusRequest.tradingSessionID, Record, Value);
setFieldInRecord(securityStatusRequest, tradingSessionSubID, Record, Value)->
    erlang:setelement(#securityStatusRequest.tradingSessionSubID, Record, Value);
setFieldInRecord(securityStatusRequest, standardTrailer, Record, Value)->
    erlang:setelement(#securityStatusRequest.standardTrailer, Record, Value);
setFieldInRecord(securityStatus, standardHeader, Record, Value)->
    erlang:setelement(#securityStatus.standardHeader, Record, Value);
setFieldInRecord(securityStatus, securityStatusReqID, Record, Value)->
    erlang:setelement(#securityStatus.securityStatusReqID, Record, Value);
setFieldInRecord(securityStatus, instrument, Record, Value)->
    erlang:setelement(#securityStatus.instrument, Record, Value);
setFieldInRecord(securityStatus, currency, Record, Value)->
    erlang:setelement(#securityStatus.currency, Record, Value);
setFieldInRecord(securityStatus, tradingSessionID, Record, Value)->
    erlang:setelement(#securityStatus.tradingSessionID, Record, Value);
setFieldInRecord(securityStatus, tradingSessionSubID, Record, Value)->
    erlang:setelement(#securityStatus.tradingSessionSubID, Record, Value);
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
setFieldInRecord(securityStatus, text, Record, Value)->
    erlang:setelement(#securityStatus.text, Record, Value);
setFieldInRecord(securityStatus, encodedTextLen, Record, Value)->
    erlang:setelement(#securityStatus.encodedTextLen, Record, Value);
setFieldInRecord(securityStatus, encodedText, Record, Value)->
    erlang:setelement(#securityStatus.encodedText, Record, Value);
setFieldInRecord(securityStatus, standardTrailer, Record, Value)->
    erlang:setelement(#securityStatus.standardTrailer, Record, Value);
setFieldInRecord(tradingSessionStatusRequest, standardHeader, Record, Value)->
    erlang:setelement(#tradingSessionStatusRequest.standardHeader, Record, Value);
setFieldInRecord(tradingSessionStatusRequest, tradSesReqID, Record, Value)->
    erlang:setelement(#tradingSessionStatusRequest.tradSesReqID, Record, Value);
setFieldInRecord(tradingSessionStatusRequest, tradingSessionID, Record, Value)->
    erlang:setelement(#tradingSessionStatusRequest.tradingSessionID, Record, Value);
setFieldInRecord(tradingSessionStatusRequest, tradingSessionSubID, Record, Value)->
    erlang:setelement(#tradingSessionStatusRequest.tradingSessionSubID, Record, Value);
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
setFieldInRecord(tradingSessionStatus, tradingSessionSubID, Record, Value)->
    erlang:setelement(#tradingSessionStatus.tradingSessionSubID, Record, Value);
setFieldInRecord(tradingSessionStatus, tradSesMethod, Record, Value)->
    erlang:setelement(#tradingSessionStatus.tradSesMethod, Record, Value);
setFieldInRecord(tradingSessionStatus, tradSesMode, Record, Value)->
    erlang:setelement(#tradingSessionStatus.tradSesMode, Record, Value);
setFieldInRecord(tradingSessionStatus, unsolicitedIndicator, Record, Value)->
    erlang:setelement(#tradingSessionStatus.unsolicitedIndicator, Record, Value);
setFieldInRecord(tradingSessionStatus, tradSesStatus, Record, Value)->
    erlang:setelement(#tradingSessionStatus.tradSesStatus, Record, Value);
setFieldInRecord(tradingSessionStatus, tradSesStatusRejReason, Record, Value)->
    erlang:setelement(#tradingSessionStatus.tradSesStatusRejReason, Record, Value);
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
setFieldInRecord(massQuote, quoteType, Record, Value)->
    erlang:setelement(#massQuote.quoteType, Record, Value);
setFieldInRecord(massQuote, quoteResponseLevel, Record, Value)->
    erlang:setelement(#massQuote.quoteResponseLevel, Record, Value);
setFieldInRecord(massQuote, parties, Record, Value)->
    erlang:setelement(#massQuote.parties, Record, Value);
setFieldInRecord(massQuote, account, Record, Value)->
    erlang:setelement(#massQuote.account, Record, Value);
setFieldInRecord(massQuote, accountType, Record, Value)->
    erlang:setelement(#massQuote.accountType, Record, Value);
setFieldInRecord(massQuote, defBidSize, Record, Value)->
    erlang:setelement(#massQuote.defBidSize, Record, Value);
setFieldInRecord(massQuote, defOfferSize, Record, Value)->
    erlang:setelement(#massQuote.defOfferSize, Record, Value);
setFieldInRecord(massQuote, rgr_massQuote_296, Record, Value)->
   erlang:setelement(#massQuote.rgr_massQuote_296, Record, Value);
setFieldInRecord(rgr_massQuote_296, quoteSetID, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.quoteSetID, Record, Value);
setFieldInRecord(rgr_massQuote_296, underlyingInstrument, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.underlyingInstrument, Record, Value);
setFieldInRecord(rgr_massQuote_296, quoteSetValidUntilTime, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.quoteSetValidUntilTime, Record, Value);
setFieldInRecord(rgr_massQuote_296, totQuoteEntries, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.totQuoteEntries, Record, Value);
setFieldInRecord(rgr_massQuote_296, rgr_rgr_massQuote_296_295, Record, Value)->
   erlang:setelement(#rgr_massQuote_296.rgr_rgr_massQuote_296_295, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, quoteEntryID, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.quoteEntryID, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, instrument, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.instrument, Record, Value);
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
setFieldInRecord(rgr_rgr_massQuote_296_295, midPx, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.midPx, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, bidYield, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.bidYield, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, midYield, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.midYield, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, offerYield, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.offerYield, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, transactTime, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.transactTime, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.tradingSessionID, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.tradingSessionSubID, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, futSettDate, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.futSettDate, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, ordType, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.ordType, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, futSettDate2, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.futSettDate2, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, orderQty2, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.orderQty2, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, bidForwardPoints2, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.bidForwardPoints2, Record, Value);
setFieldInRecord(rgr_rgr_massQuote_296_295, offerForwardPoints2, Record, Value)->
   erlang:setelement(#rgr_rgr_massQuote_296_295.offerForwardPoints2, Record, Value);
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
setFieldInRecord(rgr_bidRequest_420, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_bidRequest_420.tradingSessionSubID, Record, Value);
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
setFieldInRecord(rgr_bidResponse_420, commissionData, Record, Value)->
   erlang:setelement(#rgr_bidResponse_420.commissionData, Record, Value);
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
setFieldInRecord(rgr_bidResponse_420, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_bidResponse_420.tradingSessionSubID, Record, Value);
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
setFieldInRecord(rgr_listStrikePrice_428, instrument, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.instrument, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, prevClosePx, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.prevClosePx, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, clOrdID, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.clOrdID, Record, Value);
setFieldInRecord(rgr_listStrikePrice_428, secondaryClOrdID, Record, Value)->
   erlang:setelement(#rgr_listStrikePrice_428.secondaryClOrdID, Record, Value);
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
setFieldInRecord(xMLnonFIX, standardHeader, Record, Value)->
    erlang:setelement(#xMLnonFIX.standardHeader, Record, Value);
setFieldInRecord(xMLnonFIX, standardTrailer, Record, Value)->
    erlang:setelement(#xMLnonFIX.standardTrailer, Record, Value);
setFieldInRecord(registrationInstructions, standardHeader, Record, Value)->
    erlang:setelement(#registrationInstructions.standardHeader, Record, Value);
setFieldInRecord(registrationInstructions, registID, Record, Value)->
    erlang:setelement(#registrationInstructions.registID, Record, Value);
setFieldInRecord(registrationInstructions, registTransType, Record, Value)->
    erlang:setelement(#registrationInstructions.registTransType, Record, Value);
setFieldInRecord(registrationInstructions, registRefID, Record, Value)->
    erlang:setelement(#registrationInstructions.registRefID, Record, Value);
setFieldInRecord(registrationInstructions, clOrdID, Record, Value)->
    erlang:setelement(#registrationInstructions.clOrdID, Record, Value);
setFieldInRecord(registrationInstructions, parties, Record, Value)->
    erlang:setelement(#registrationInstructions.parties, Record, Value);
setFieldInRecord(registrationInstructions, account, Record, Value)->
    erlang:setelement(#registrationInstructions.account, Record, Value);
setFieldInRecord(registrationInstructions, registAcctType, Record, Value)->
    erlang:setelement(#registrationInstructions.registAcctType, Record, Value);
setFieldInRecord(registrationInstructions, taxAdvantageType, Record, Value)->
    erlang:setelement(#registrationInstructions.taxAdvantageType, Record, Value);
setFieldInRecord(registrationInstructions, ownershipType, Record, Value)->
    erlang:setelement(#registrationInstructions.ownershipType, Record, Value);
setFieldInRecord(registrationInstructions, rgr_registrationInstructions_473, Record, Value)->
   erlang:setelement(#registrationInstructions.rgr_registrationInstructions_473, Record, Value);
setFieldInRecord(rgr_registrationInstructions_473, registDetls, Record, Value)->
   erlang:setelement(#rgr_registrationInstructions_473.registDetls, Record, Value);
setFieldInRecord(rgr_registrationInstructions_473, registEmail, Record, Value)->
   erlang:setelement(#rgr_registrationInstructions_473.registEmail, Record, Value);
setFieldInRecord(rgr_registrationInstructions_473, mailingDtls, Record, Value)->
   erlang:setelement(#rgr_registrationInstructions_473.mailingDtls, Record, Value);
setFieldInRecord(rgr_registrationInstructions_473, mailingInst, Record, Value)->
   erlang:setelement(#rgr_registrationInstructions_473.mailingInst, Record, Value);
setFieldInRecord(rgr_registrationInstructions_473, nestedParties, Record, Value)->
   erlang:setelement(#rgr_registrationInstructions_473.nestedParties, Record, Value);
setFieldInRecord(rgr_registrationInstructions_473, ownerType, Record, Value)->
   erlang:setelement(#rgr_registrationInstructions_473.ownerType, Record, Value);
setFieldInRecord(rgr_registrationInstructions_473, dateOfBirth, Record, Value)->
   erlang:setelement(#rgr_registrationInstructions_473.dateOfBirth, Record, Value);
setFieldInRecord(rgr_registrationInstructions_473, investorCountryOfResidence, Record, Value)->
   erlang:setelement(#rgr_registrationInstructions_473.investorCountryOfResidence, Record, Value);
setFieldInRecord(registrationInstructions, rgr_registrationInstructions_510, Record, Value)->
   erlang:setelement(#registrationInstructions.rgr_registrationInstructions_510, Record, Value);
setFieldInRecord(rgr_registrationInstructions_510, distribPaymentMethod, Record, Value)->
   erlang:setelement(#rgr_registrationInstructions_510.distribPaymentMethod, Record, Value);
setFieldInRecord(rgr_registrationInstructions_510, distribPercentage, Record, Value)->
   erlang:setelement(#rgr_registrationInstructions_510.distribPercentage, Record, Value);
setFieldInRecord(rgr_registrationInstructions_510, cashDistribCurr, Record, Value)->
   erlang:setelement(#rgr_registrationInstructions_510.cashDistribCurr, Record, Value);
setFieldInRecord(rgr_registrationInstructions_510, cashDistribAgentName, Record, Value)->
   erlang:setelement(#rgr_registrationInstructions_510.cashDistribAgentName, Record, Value);
setFieldInRecord(rgr_registrationInstructions_510, cashDistribAgentCode, Record, Value)->
   erlang:setelement(#rgr_registrationInstructions_510.cashDistribAgentCode, Record, Value);
setFieldInRecord(rgr_registrationInstructions_510, cashDistribAgentAcctNumber, Record, Value)->
   erlang:setelement(#rgr_registrationInstructions_510.cashDistribAgentAcctNumber, Record, Value);
setFieldInRecord(rgr_registrationInstructions_510, cashDistribPayRef, Record, Value)->
   erlang:setelement(#rgr_registrationInstructions_510.cashDistribPayRef, Record, Value);
setFieldInRecord(registrationInstructions, standardTrailer, Record, Value)->
    erlang:setelement(#registrationInstructions.standardTrailer, Record, Value);
setFieldInRecord(registrationInstructionsResponse, standardHeader, Record, Value)->
    erlang:setelement(#registrationInstructionsResponse.standardHeader, Record, Value);
setFieldInRecord(registrationInstructionsResponse, registID, Record, Value)->
    erlang:setelement(#registrationInstructionsResponse.registID, Record, Value);
setFieldInRecord(registrationInstructionsResponse, registTransType, Record, Value)->
    erlang:setelement(#registrationInstructionsResponse.registTransType, Record, Value);
setFieldInRecord(registrationInstructionsResponse, registRefID, Record, Value)->
    erlang:setelement(#registrationInstructionsResponse.registRefID, Record, Value);
setFieldInRecord(registrationInstructionsResponse, clOrdID, Record, Value)->
    erlang:setelement(#registrationInstructionsResponse.clOrdID, Record, Value);
setFieldInRecord(registrationInstructionsResponse, parties, Record, Value)->
    erlang:setelement(#registrationInstructionsResponse.parties, Record, Value);
setFieldInRecord(registrationInstructionsResponse, account, Record, Value)->
    erlang:setelement(#registrationInstructionsResponse.account, Record, Value);
setFieldInRecord(registrationInstructionsResponse, registStatus, Record, Value)->
    erlang:setelement(#registrationInstructionsResponse.registStatus, Record, Value);
setFieldInRecord(registrationInstructionsResponse, registRejReasonCode, Record, Value)->
    erlang:setelement(#registrationInstructionsResponse.registRejReasonCode, Record, Value);
setFieldInRecord(registrationInstructionsResponse, registRejReasonText, Record, Value)->
    erlang:setelement(#registrationInstructionsResponse.registRejReasonText, Record, Value);
setFieldInRecord(registrationInstructionsResponse, standardTrailer, Record, Value)->
    erlang:setelement(#registrationInstructionsResponse.standardTrailer, Record, Value);
setFieldInRecord(orderMassCancelRequest, standardHeader, Record, Value)->
    erlang:setelement(#orderMassCancelRequest.standardHeader, Record, Value);
setFieldInRecord(orderMassCancelRequest, clOrdID, Record, Value)->
    erlang:setelement(#orderMassCancelRequest.clOrdID, Record, Value);
setFieldInRecord(orderMassCancelRequest, secondaryClOrdID, Record, Value)->
    erlang:setelement(#orderMassCancelRequest.secondaryClOrdID, Record, Value);
setFieldInRecord(orderMassCancelRequest, massCancelRequestType, Record, Value)->
    erlang:setelement(#orderMassCancelRequest.massCancelRequestType, Record, Value);
setFieldInRecord(orderMassCancelRequest, tradingSessionID, Record, Value)->
    erlang:setelement(#orderMassCancelRequest.tradingSessionID, Record, Value);
setFieldInRecord(orderMassCancelRequest, tradingSessionSubID, Record, Value)->
    erlang:setelement(#orderMassCancelRequest.tradingSessionSubID, Record, Value);
setFieldInRecord(orderMassCancelRequest, instrument, Record, Value)->
    erlang:setelement(#orderMassCancelRequest.instrument, Record, Value);
setFieldInRecord(orderMassCancelRequest, underlyingInstrument, Record, Value)->
    erlang:setelement(#orderMassCancelRequest.underlyingInstrument, Record, Value);
setFieldInRecord(orderMassCancelRequest, side, Record, Value)->
    erlang:setelement(#orderMassCancelRequest.side, Record, Value);
setFieldInRecord(orderMassCancelRequest, transactTime, Record, Value)->
    erlang:setelement(#orderMassCancelRequest.transactTime, Record, Value);
setFieldInRecord(orderMassCancelRequest, text, Record, Value)->
    erlang:setelement(#orderMassCancelRequest.text, Record, Value);
setFieldInRecord(orderMassCancelRequest, encodedTextLen, Record, Value)->
    erlang:setelement(#orderMassCancelRequest.encodedTextLen, Record, Value);
setFieldInRecord(orderMassCancelRequest, encodedText, Record, Value)->
    erlang:setelement(#orderMassCancelRequest.encodedText, Record, Value);
setFieldInRecord(orderMassCancelRequest, standardTrailer, Record, Value)->
    erlang:setelement(#orderMassCancelRequest.standardTrailer, Record, Value);
setFieldInRecord(orderMassCancelReport, standardHeader, Record, Value)->
    erlang:setelement(#orderMassCancelReport.standardHeader, Record, Value);
setFieldInRecord(orderMassCancelReport, clOrdID, Record, Value)->
    erlang:setelement(#orderMassCancelReport.clOrdID, Record, Value);
setFieldInRecord(orderMassCancelReport, secondaryClOrdID, Record, Value)->
    erlang:setelement(#orderMassCancelReport.secondaryClOrdID, Record, Value);
setFieldInRecord(orderMassCancelReport, orderID, Record, Value)->
    erlang:setelement(#orderMassCancelReport.orderID, Record, Value);
setFieldInRecord(orderMassCancelReport, secondaryOrderID, Record, Value)->
    erlang:setelement(#orderMassCancelReport.secondaryOrderID, Record, Value);
setFieldInRecord(orderMassCancelReport, massCancelRequestType, Record, Value)->
    erlang:setelement(#orderMassCancelReport.massCancelRequestType, Record, Value);
setFieldInRecord(orderMassCancelReport, massCancelResponse, Record, Value)->
    erlang:setelement(#orderMassCancelReport.massCancelResponse, Record, Value);
setFieldInRecord(orderMassCancelReport, massCancelRejectReason, Record, Value)->
    erlang:setelement(#orderMassCancelReport.massCancelRejectReason, Record, Value);
setFieldInRecord(orderMassCancelReport, totalAffectedOrders, Record, Value)->
    erlang:setelement(#orderMassCancelReport.totalAffectedOrders, Record, Value);
setFieldInRecord(orderMassCancelReport, rgr_orderMassCancelReport_534, Record, Value)->
   erlang:setelement(#orderMassCancelReport.rgr_orderMassCancelReport_534, Record, Value);
setFieldInRecord(rgr_orderMassCancelReport_534, origClOrdID, Record, Value)->
   erlang:setelement(#rgr_orderMassCancelReport_534.origClOrdID, Record, Value);
setFieldInRecord(rgr_orderMassCancelReport_534, affectedOrderID, Record, Value)->
   erlang:setelement(#rgr_orderMassCancelReport_534.affectedOrderID, Record, Value);
setFieldInRecord(rgr_orderMassCancelReport_534, affectedSecondaryOrderID, Record, Value)->
   erlang:setelement(#rgr_orderMassCancelReport_534.affectedSecondaryOrderID, Record, Value);
setFieldInRecord(orderMassCancelReport, tradingSessionID, Record, Value)->
    erlang:setelement(#orderMassCancelReport.tradingSessionID, Record, Value);
setFieldInRecord(orderMassCancelReport, tradingSessionSubID, Record, Value)->
    erlang:setelement(#orderMassCancelReport.tradingSessionSubID, Record, Value);
setFieldInRecord(orderMassCancelReport, instrument, Record, Value)->
    erlang:setelement(#orderMassCancelReport.instrument, Record, Value);
setFieldInRecord(orderMassCancelReport, underlyingInstrument, Record, Value)->
    erlang:setelement(#orderMassCancelReport.underlyingInstrument, Record, Value);
setFieldInRecord(orderMassCancelReport, side, Record, Value)->
    erlang:setelement(#orderMassCancelReport.side, Record, Value);
setFieldInRecord(orderMassCancelReport, transactTime, Record, Value)->
    erlang:setelement(#orderMassCancelReport.transactTime, Record, Value);
setFieldInRecord(orderMassCancelReport, text, Record, Value)->
    erlang:setelement(#orderMassCancelReport.text, Record, Value);
setFieldInRecord(orderMassCancelReport, encodedTextLen, Record, Value)->
    erlang:setelement(#orderMassCancelReport.encodedTextLen, Record, Value);
setFieldInRecord(orderMassCancelReport, encodedText, Record, Value)->
    erlang:setelement(#orderMassCancelReport.encodedText, Record, Value);
setFieldInRecord(orderMassCancelReport, standardTrailer, Record, Value)->
    erlang:setelement(#orderMassCancelReport.standardTrailer, Record, Value);
setFieldInRecord(newOrderCross, standardHeader, Record, Value)->
    erlang:setelement(#newOrderCross.standardHeader, Record, Value);
setFieldInRecord(newOrderCross, crossID, Record, Value)->
    erlang:setelement(#newOrderCross.crossID, Record, Value);
setFieldInRecord(newOrderCross, crossType, Record, Value)->
    erlang:setelement(#newOrderCross.crossType, Record, Value);
setFieldInRecord(newOrderCross, crossPrioritization, Record, Value)->
    erlang:setelement(#newOrderCross.crossPrioritization, Record, Value);
setFieldInRecord(newOrderCross, rgr_newOrderCross_552, Record, Value)->
   erlang:setelement(#newOrderCross.rgr_newOrderCross_552, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, side, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.side, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, clOrdID, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.clOrdID, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, secondaryClOrdID, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.secondaryClOrdID, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, clOrdLinkID, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.clOrdLinkID, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, parties, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.parties, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, tradeOriginationDate, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.tradeOriginationDate, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, account, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.account, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, accountType, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.accountType, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, dayBookingInst, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.dayBookingInst, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, bookingUnit, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.bookingUnit, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, preallocMethod, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.preallocMethod, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, rgr_rgr_newOrderCross_552_78, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.rgr_rgr_newOrderCross_552_78, Record, Value);
setFieldInRecord(rgr_rgr_newOrderCross_552_78, allocAccount, Record, Value)->
   erlang:setelement(#rgr_rgr_newOrderCross_552_78.allocAccount, Record, Value);
setFieldInRecord(rgr_rgr_newOrderCross_552_78, individualAllocID, Record, Value)->
   erlang:setelement(#rgr_rgr_newOrderCross_552_78.individualAllocID, Record, Value);
setFieldInRecord(rgr_rgr_newOrderCross_552_78, nestedParties, Record, Value)->
   erlang:setelement(#rgr_rgr_newOrderCross_552_78.nestedParties, Record, Value);
setFieldInRecord(rgr_rgr_newOrderCross_552_78, allocQty, Record, Value)->
   erlang:setelement(#rgr_rgr_newOrderCross_552_78.allocQty, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, quantityType, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.quantityType, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, orderQtyData, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.orderQtyData, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, commissionData, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.commissionData, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, orderCapacity, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.orderCapacity, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, orderRestrictions, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.orderRestrictions, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, custOrderCapacity, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.custOrderCapacity, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, forexReq, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.forexReq, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, settlCurrency, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.settlCurrency, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, text, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.text, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.encodedTextLen, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, encodedText, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.encodedText, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, positionEffect, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.positionEffect, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, coveredOrUncovered, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.coveredOrUncovered, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, cashMargin, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.cashMargin, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, clearingFeeIndicator, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.clearingFeeIndicator, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, solicitedFlag, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.solicitedFlag, Record, Value);
setFieldInRecord(rgr_newOrderCross_552, sideComplianceID, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_552.sideComplianceID, Record, Value);
setFieldInRecord(newOrderCross, instrument, Record, Value)->
    erlang:setelement(#newOrderCross.instrument, Record, Value);
setFieldInRecord(newOrderCross, settlmntTyp, Record, Value)->
    erlang:setelement(#newOrderCross.settlmntTyp, Record, Value);
setFieldInRecord(newOrderCross, futSettDate, Record, Value)->
    erlang:setelement(#newOrderCross.futSettDate, Record, Value);
setFieldInRecord(newOrderCross, handlInst, Record, Value)->
    erlang:setelement(#newOrderCross.handlInst, Record, Value);
setFieldInRecord(newOrderCross, execInst, Record, Value)->
    erlang:setelement(#newOrderCross.execInst, Record, Value);
setFieldInRecord(newOrderCross, minQty, Record, Value)->
    erlang:setelement(#newOrderCross.minQty, Record, Value);
setFieldInRecord(newOrderCross, maxFloor, Record, Value)->
    erlang:setelement(#newOrderCross.maxFloor, Record, Value);
setFieldInRecord(newOrderCross, exDestination, Record, Value)->
    erlang:setelement(#newOrderCross.exDestination, Record, Value);
setFieldInRecord(newOrderCross, rgr_newOrderCross_386, Record, Value)->
   erlang:setelement(#newOrderCross.rgr_newOrderCross_386, Record, Value);
setFieldInRecord(rgr_newOrderCross_386, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_386.tradingSessionID, Record, Value);
setFieldInRecord(rgr_newOrderCross_386, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_newOrderCross_386.tradingSessionSubID, Record, Value);
setFieldInRecord(newOrderCross, processCode, Record, Value)->
    erlang:setelement(#newOrderCross.processCode, Record, Value);
setFieldInRecord(newOrderCross, prevClosePx, Record, Value)->
    erlang:setelement(#newOrderCross.prevClosePx, Record, Value);
setFieldInRecord(newOrderCross, locateReqd, Record, Value)->
    erlang:setelement(#newOrderCross.locateReqd, Record, Value);
setFieldInRecord(newOrderCross, transactTime, Record, Value)->
    erlang:setelement(#newOrderCross.transactTime, Record, Value);
setFieldInRecord(newOrderCross, stipulations, Record, Value)->
    erlang:setelement(#newOrderCross.stipulations, Record, Value);
setFieldInRecord(newOrderCross, ordType, Record, Value)->
    erlang:setelement(#newOrderCross.ordType, Record, Value);
setFieldInRecord(newOrderCross, priceType, Record, Value)->
    erlang:setelement(#newOrderCross.priceType, Record, Value);
setFieldInRecord(newOrderCross, price, Record, Value)->
    erlang:setelement(#newOrderCross.price, Record, Value);
setFieldInRecord(newOrderCross, stopPx, Record, Value)->
    erlang:setelement(#newOrderCross.stopPx, Record, Value);
setFieldInRecord(newOrderCross, spreadOrBenchmarkCurveData, Record, Value)->
    erlang:setelement(#newOrderCross.spreadOrBenchmarkCurveData, Record, Value);
setFieldInRecord(newOrderCross, yieldData, Record, Value)->
    erlang:setelement(#newOrderCross.yieldData, Record, Value);
setFieldInRecord(newOrderCross, currency, Record, Value)->
    erlang:setelement(#newOrderCross.currency, Record, Value);
setFieldInRecord(newOrderCross, complianceID, Record, Value)->
    erlang:setelement(#newOrderCross.complianceID, Record, Value);
setFieldInRecord(newOrderCross, iOIid, Record, Value)->
    erlang:setelement(#newOrderCross.iOIid, Record, Value);
setFieldInRecord(newOrderCross, quoteID, Record, Value)->
    erlang:setelement(#newOrderCross.quoteID, Record, Value);
setFieldInRecord(newOrderCross, timeInForce, Record, Value)->
    erlang:setelement(#newOrderCross.timeInForce, Record, Value);
setFieldInRecord(newOrderCross, effectiveTime, Record, Value)->
    erlang:setelement(#newOrderCross.effectiveTime, Record, Value);
setFieldInRecord(newOrderCross, expireDate, Record, Value)->
    erlang:setelement(#newOrderCross.expireDate, Record, Value);
setFieldInRecord(newOrderCross, expireTime, Record, Value)->
    erlang:setelement(#newOrderCross.expireTime, Record, Value);
setFieldInRecord(newOrderCross, gTBookingInst, Record, Value)->
    erlang:setelement(#newOrderCross.gTBookingInst, Record, Value);
setFieldInRecord(newOrderCross, maxShow, Record, Value)->
    erlang:setelement(#newOrderCross.maxShow, Record, Value);
setFieldInRecord(newOrderCross, pegDifference, Record, Value)->
    erlang:setelement(#newOrderCross.pegDifference, Record, Value);
setFieldInRecord(newOrderCross, discretionInst, Record, Value)->
    erlang:setelement(#newOrderCross.discretionInst, Record, Value);
setFieldInRecord(newOrderCross, discretionOffset, Record, Value)->
    erlang:setelement(#newOrderCross.discretionOffset, Record, Value);
setFieldInRecord(newOrderCross, cancellationRights, Record, Value)->
    erlang:setelement(#newOrderCross.cancellationRights, Record, Value);
setFieldInRecord(newOrderCross, moneyLaunderingStatus, Record, Value)->
    erlang:setelement(#newOrderCross.moneyLaunderingStatus, Record, Value);
setFieldInRecord(newOrderCross, registID, Record, Value)->
    erlang:setelement(#newOrderCross.registID, Record, Value);
setFieldInRecord(newOrderCross, designation, Record, Value)->
    erlang:setelement(#newOrderCross.designation, Record, Value);
setFieldInRecord(newOrderCross, accruedInterestRate, Record, Value)->
    erlang:setelement(#newOrderCross.accruedInterestRate, Record, Value);
setFieldInRecord(newOrderCross, accruedInterestAmt, Record, Value)->
    erlang:setelement(#newOrderCross.accruedInterestAmt, Record, Value);
setFieldInRecord(newOrderCross, netMoney, Record, Value)->
    erlang:setelement(#newOrderCross.netMoney, Record, Value);
setFieldInRecord(newOrderCross, standardTrailer, Record, Value)->
    erlang:setelement(#newOrderCross.standardTrailer, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, standardHeader, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.standardHeader, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, orderID, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.orderID, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, crossID, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.crossID, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, origCrossID, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.origCrossID, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, crossType, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.crossType, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, crossPrioritization, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.crossPrioritization, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, rgr_crossOrderCancelReplaceRequest_552, Record, Value)->
   erlang:setelement(#crossOrderCancelReplaceRequest.rgr_crossOrderCancelReplaceRequest_552, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, side, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.side, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, origClOrdID, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.origClOrdID, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, clOrdID, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.clOrdID, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, secondaryClOrdID, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.secondaryClOrdID, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, clOrdLinkID, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.clOrdLinkID, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, origOrdModTime, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.origOrdModTime, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, parties, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.parties, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, tradeOriginationDate, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.tradeOriginationDate, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, account, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.account, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, accountType, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.accountType, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, dayBookingInst, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.dayBookingInst, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, bookingUnit, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.bookingUnit, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, preallocMethod, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.preallocMethod, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, rgr_rgr_crossOrderCancelReplaceRequest_552_78, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.rgr_rgr_crossOrderCancelReplaceRequest_552_78, Record, Value);
setFieldInRecord(rgr_rgr_crossOrderCancelReplaceRequest_552_78, allocAccount, Record, Value)->
   erlang:setelement(#rgr_rgr_crossOrderCancelReplaceRequest_552_78.allocAccount, Record, Value);
setFieldInRecord(rgr_rgr_crossOrderCancelReplaceRequest_552_78, individualAllocID, Record, Value)->
   erlang:setelement(#rgr_rgr_crossOrderCancelReplaceRequest_552_78.individualAllocID, Record, Value);
setFieldInRecord(rgr_rgr_crossOrderCancelReplaceRequest_552_78, nestedParties, Record, Value)->
   erlang:setelement(#rgr_rgr_crossOrderCancelReplaceRequest_552_78.nestedParties, Record, Value);
setFieldInRecord(rgr_rgr_crossOrderCancelReplaceRequest_552_78, allocQty, Record, Value)->
   erlang:setelement(#rgr_rgr_crossOrderCancelReplaceRequest_552_78.allocQty, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, quantityType, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.quantityType, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, orderQtyData, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.orderQtyData, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, commissionData, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.commissionData, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, orderCapacity, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.orderCapacity, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, orderRestrictions, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.orderRestrictions, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, custOrderCapacity, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.custOrderCapacity, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, forexReq, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.forexReq, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, settlCurrency, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.settlCurrency, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, text, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.text, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.encodedTextLen, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, encodedText, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.encodedText, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, positionEffect, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.positionEffect, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, coveredOrUncovered, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.coveredOrUncovered, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, cashMargin, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.cashMargin, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, clearingFeeIndicator, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.clearingFeeIndicator, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, solicitedFlag, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.solicitedFlag, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_552, sideComplianceID, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_552.sideComplianceID, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, instrument, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.instrument, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, settlmntTyp, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.settlmntTyp, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, futSettDate, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.futSettDate, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, handlInst, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.handlInst, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, execInst, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.execInst, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, minQty, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.minQty, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, maxFloor, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.maxFloor, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, exDestination, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.exDestination, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, rgr_crossOrderCancelReplaceRequest_386, Record, Value)->
   erlang:setelement(#crossOrderCancelReplaceRequest.rgr_crossOrderCancelReplaceRequest_386, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_386, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_386.tradingSessionID, Record, Value);
setFieldInRecord(rgr_crossOrderCancelReplaceRequest_386, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelReplaceRequest_386.tradingSessionSubID, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, processCode, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.processCode, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, prevClosePx, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.prevClosePx, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, locateReqd, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.locateReqd, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, transactTime, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.transactTime, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, stipulations, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.stipulations, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, ordType, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.ordType, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, priceType, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.priceType, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, price, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.price, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, stopPx, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.stopPx, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, spreadOrBenchmarkCurveData, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.spreadOrBenchmarkCurveData, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, yieldData, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.yieldData, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, currency, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.currency, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, complianceID, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.complianceID, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, iOIid, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.iOIid, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, quoteID, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.quoteID, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, timeInForce, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.timeInForce, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, effectiveTime, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.effectiveTime, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, expireDate, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.expireDate, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, expireTime, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.expireTime, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, gTBookingInst, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.gTBookingInst, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, maxShow, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.maxShow, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, pegDifference, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.pegDifference, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, discretionInst, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.discretionInst, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, discretionOffset, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.discretionOffset, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, cancellationRights, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.cancellationRights, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, moneyLaunderingStatus, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.moneyLaunderingStatus, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, registID, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.registID, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, designation, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.designation, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, accruedInterestRate, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.accruedInterestRate, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, accruedInterestAmt, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.accruedInterestAmt, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, netMoney, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.netMoney, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, standardTrailer, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.standardTrailer, Record, Value);
setFieldInRecord(crossOrderCancelRequest, standardHeader, Record, Value)->
    erlang:setelement(#crossOrderCancelRequest.standardHeader, Record, Value);
setFieldInRecord(crossOrderCancelRequest, orderID, Record, Value)->
    erlang:setelement(#crossOrderCancelRequest.orderID, Record, Value);
setFieldInRecord(crossOrderCancelRequest, crossID, Record, Value)->
    erlang:setelement(#crossOrderCancelRequest.crossID, Record, Value);
setFieldInRecord(crossOrderCancelRequest, origCrossID, Record, Value)->
    erlang:setelement(#crossOrderCancelRequest.origCrossID, Record, Value);
setFieldInRecord(crossOrderCancelRequest, crossType, Record, Value)->
    erlang:setelement(#crossOrderCancelRequest.crossType, Record, Value);
setFieldInRecord(crossOrderCancelRequest, crossPrioritization, Record, Value)->
    erlang:setelement(#crossOrderCancelRequest.crossPrioritization, Record, Value);
setFieldInRecord(crossOrderCancelRequest, rgr_crossOrderCancelRequest_552, Record, Value)->
   erlang:setelement(#crossOrderCancelRequest.rgr_crossOrderCancelRequest_552, Record, Value);
setFieldInRecord(rgr_crossOrderCancelRequest_552, side, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelRequest_552.side, Record, Value);
setFieldInRecord(rgr_crossOrderCancelRequest_552, origClOrdID, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelRequest_552.origClOrdID, Record, Value);
setFieldInRecord(rgr_crossOrderCancelRequest_552, clOrdID, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelRequest_552.clOrdID, Record, Value);
setFieldInRecord(rgr_crossOrderCancelRequest_552, secondaryClOrdID, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelRequest_552.secondaryClOrdID, Record, Value);
setFieldInRecord(rgr_crossOrderCancelRequest_552, clOrdLinkID, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelRequest_552.clOrdLinkID, Record, Value);
setFieldInRecord(rgr_crossOrderCancelRequest_552, origOrdModTime, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelRequest_552.origOrdModTime, Record, Value);
setFieldInRecord(rgr_crossOrderCancelRequest_552, parties, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelRequest_552.parties, Record, Value);
setFieldInRecord(rgr_crossOrderCancelRequest_552, tradeOriginationDate, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelRequest_552.tradeOriginationDate, Record, Value);
setFieldInRecord(rgr_crossOrderCancelRequest_552, orderQtyData, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelRequest_552.orderQtyData, Record, Value);
setFieldInRecord(rgr_crossOrderCancelRequest_552, complianceID, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelRequest_552.complianceID, Record, Value);
setFieldInRecord(rgr_crossOrderCancelRequest_552, text, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelRequest_552.text, Record, Value);
setFieldInRecord(rgr_crossOrderCancelRequest_552, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelRequest_552.encodedTextLen, Record, Value);
setFieldInRecord(rgr_crossOrderCancelRequest_552, encodedText, Record, Value)->
   erlang:setelement(#rgr_crossOrderCancelRequest_552.encodedText, Record, Value);
setFieldInRecord(crossOrderCancelRequest, instrument, Record, Value)->
    erlang:setelement(#crossOrderCancelRequest.instrument, Record, Value);
setFieldInRecord(crossOrderCancelRequest, transactTime, Record, Value)->
    erlang:setelement(#crossOrderCancelRequest.transactTime, Record, Value);
setFieldInRecord(crossOrderCancelRequest, standardTrailer, Record, Value)->
    erlang:setelement(#crossOrderCancelRequest.standardTrailer, Record, Value);
setFieldInRecord(securityTypeRequest, standardHeader, Record, Value)->
    erlang:setelement(#securityTypeRequest.standardHeader, Record, Value);
setFieldInRecord(securityTypeRequest, securityReqID, Record, Value)->
    erlang:setelement(#securityTypeRequest.securityReqID, Record, Value);
setFieldInRecord(securityTypeRequest, text, Record, Value)->
    erlang:setelement(#securityTypeRequest.text, Record, Value);
setFieldInRecord(securityTypeRequest, encodedTextLen, Record, Value)->
    erlang:setelement(#securityTypeRequest.encodedTextLen, Record, Value);
setFieldInRecord(securityTypeRequest, encodedText, Record, Value)->
    erlang:setelement(#securityTypeRequest.encodedText, Record, Value);
setFieldInRecord(securityTypeRequest, tradingSessionID, Record, Value)->
    erlang:setelement(#securityTypeRequest.tradingSessionID, Record, Value);
setFieldInRecord(securityTypeRequest, tradingSessionSubID, Record, Value)->
    erlang:setelement(#securityTypeRequest.tradingSessionSubID, Record, Value);
setFieldInRecord(securityTypeRequest, standardTrailer, Record, Value)->
    erlang:setelement(#securityTypeRequest.standardTrailer, Record, Value);
setFieldInRecord(securityTypes, standardHeader, Record, Value)->
    erlang:setelement(#securityTypes.standardHeader, Record, Value);
setFieldInRecord(securityTypes, securityReqID, Record, Value)->
    erlang:setelement(#securityTypes.securityReqID, Record, Value);
setFieldInRecord(securityTypes, securityResponseID, Record, Value)->
    erlang:setelement(#securityTypes.securityResponseID, Record, Value);
setFieldInRecord(securityTypes, securityResponseType, Record, Value)->
    erlang:setelement(#securityTypes.securityResponseType, Record, Value);
setFieldInRecord(securityTypes, totalNumSecurityTypes, Record, Value)->
    erlang:setelement(#securityTypes.totalNumSecurityTypes, Record, Value);
setFieldInRecord(securityTypes, rgr_securityTypes_558, Record, Value)->
   erlang:setelement(#securityTypes.rgr_securityTypes_558, Record, Value);
setFieldInRecord(rgr_securityTypes_558, securityType, Record, Value)->
   erlang:setelement(#rgr_securityTypes_558.securityType, Record, Value);
setFieldInRecord(rgr_securityTypes_558, produkt, Record, Value)->
   erlang:setelement(#rgr_securityTypes_558.produkt, Record, Value);
setFieldInRecord(rgr_securityTypes_558, cFICode, Record, Value)->
   erlang:setelement(#rgr_securityTypes_558.cFICode, Record, Value);
setFieldInRecord(securityTypes, text, Record, Value)->
    erlang:setelement(#securityTypes.text, Record, Value);
setFieldInRecord(securityTypes, encodedTextLen, Record, Value)->
    erlang:setelement(#securityTypes.encodedTextLen, Record, Value);
setFieldInRecord(securityTypes, encodedText, Record, Value)->
    erlang:setelement(#securityTypes.encodedText, Record, Value);
setFieldInRecord(securityTypes, tradingSessionID, Record, Value)->
    erlang:setelement(#securityTypes.tradingSessionID, Record, Value);
setFieldInRecord(securityTypes, tradingSessionSubID, Record, Value)->
    erlang:setelement(#securityTypes.tradingSessionSubID, Record, Value);
setFieldInRecord(securityTypes, subscriptionRequestType, Record, Value)->
    erlang:setelement(#securityTypes.subscriptionRequestType, Record, Value);
setFieldInRecord(securityTypes, standardTrailer, Record, Value)->
    erlang:setelement(#securityTypes.standardTrailer, Record, Value);
setFieldInRecord(securityListRequest, standardHeader, Record, Value)->
    erlang:setelement(#securityListRequest.standardHeader, Record, Value);
setFieldInRecord(securityListRequest, securityReqID, Record, Value)->
    erlang:setelement(#securityListRequest.securityReqID, Record, Value);
setFieldInRecord(securityListRequest, securityListRequestType, Record, Value)->
    erlang:setelement(#securityListRequest.securityListRequestType, Record, Value);
setFieldInRecord(securityListRequest, instrument, Record, Value)->
    erlang:setelement(#securityListRequest.instrument, Record, Value);
setFieldInRecord(securityListRequest, currency, Record, Value)->
    erlang:setelement(#securityListRequest.currency, Record, Value);
setFieldInRecord(securityListRequest, text, Record, Value)->
    erlang:setelement(#securityListRequest.text, Record, Value);
setFieldInRecord(securityListRequest, encodedTextLen, Record, Value)->
    erlang:setelement(#securityListRequest.encodedTextLen, Record, Value);
setFieldInRecord(securityListRequest, encodedText, Record, Value)->
    erlang:setelement(#securityListRequest.encodedText, Record, Value);
setFieldInRecord(securityListRequest, tradingSessionID, Record, Value)->
    erlang:setelement(#securityListRequest.tradingSessionID, Record, Value);
setFieldInRecord(securityListRequest, tradingSessionSubID, Record, Value)->
    erlang:setelement(#securityListRequest.tradingSessionSubID, Record, Value);
setFieldInRecord(securityListRequest, subscriptionRequestType, Record, Value)->
    erlang:setelement(#securityListRequest.subscriptionRequestType, Record, Value);
setFieldInRecord(securityListRequest, standardTrailer, Record, Value)->
    erlang:setelement(#securityListRequest.standardTrailer, Record, Value);
setFieldInRecord(securityList, standardHeader, Record, Value)->
    erlang:setelement(#securityList.standardHeader, Record, Value);
setFieldInRecord(securityList, securityReqID, Record, Value)->
    erlang:setelement(#securityList.securityReqID, Record, Value);
setFieldInRecord(securityList, securityResponseID, Record, Value)->
    erlang:setelement(#securityList.securityResponseID, Record, Value);
setFieldInRecord(securityList, securityRequestResult, Record, Value)->
    erlang:setelement(#securityList.securityRequestResult, Record, Value);
setFieldInRecord(securityList, totalNumSecurities, Record, Value)->
    erlang:setelement(#securityList.totalNumSecurities, Record, Value);
setFieldInRecord(securityList, rgr_securityList_146, Record, Value)->
   erlang:setelement(#securityList.rgr_securityList_146, Record, Value);
setFieldInRecord(rgr_securityList_146, instrument, Record, Value)->
   erlang:setelement(#rgr_securityList_146.instrument, Record, Value);
setFieldInRecord(rgr_securityList_146, currency, Record, Value)->
   erlang:setelement(#rgr_securityList_146.currency, Record, Value);
setFieldInRecord(rgr_securityList_146, rgr_rgr_securityList_146_555, Record, Value)->
   erlang:setelement(#rgr_securityList_146.rgr_rgr_securityList_146_555, Record, Value);
setFieldInRecord(rgr_rgr_securityList_146_555, instrumentLeg, Record, Value)->
   erlang:setelement(#rgr_rgr_securityList_146_555.instrumentLeg, Record, Value);
setFieldInRecord(rgr_rgr_securityList_146_555, legCurrency, Record, Value)->
   erlang:setelement(#rgr_rgr_securityList_146_555.legCurrency, Record, Value);
setFieldInRecord(rgr_securityList_146, roundLot, Record, Value)->
   erlang:setelement(#rgr_securityList_146.roundLot, Record, Value);
setFieldInRecord(rgr_securityList_146, minTradeVol, Record, Value)->
   erlang:setelement(#rgr_securityList_146.minTradeVol, Record, Value);
setFieldInRecord(rgr_securityList_146, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_securityList_146.tradingSessionID, Record, Value);
setFieldInRecord(rgr_securityList_146, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_securityList_146.tradingSessionSubID, Record, Value);
setFieldInRecord(rgr_securityList_146, text, Record, Value)->
   erlang:setelement(#rgr_securityList_146.text, Record, Value);
setFieldInRecord(rgr_securityList_146, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_securityList_146.encodedTextLen, Record, Value);
setFieldInRecord(rgr_securityList_146, encodedText, Record, Value)->
   erlang:setelement(#rgr_securityList_146.encodedText, Record, Value);
setFieldInRecord(securityList, standardTrailer, Record, Value)->
    erlang:setelement(#securityList.standardTrailer, Record, Value);
setFieldInRecord(derivativeSecurityListRequest, standardHeader, Record, Value)->
    erlang:setelement(#derivativeSecurityListRequest.standardHeader, Record, Value);
setFieldInRecord(derivativeSecurityListRequest, securityReqID, Record, Value)->
    erlang:setelement(#derivativeSecurityListRequest.securityReqID, Record, Value);
setFieldInRecord(derivativeSecurityListRequest, securityListRequestType, Record, Value)->
    erlang:setelement(#derivativeSecurityListRequest.securityListRequestType, Record, Value);
setFieldInRecord(derivativeSecurityListRequest, underlyingInstrument, Record, Value)->
    erlang:setelement(#derivativeSecurityListRequest.underlyingInstrument, Record, Value);
setFieldInRecord(derivativeSecurityListRequest, currency, Record, Value)->
    erlang:setelement(#derivativeSecurityListRequest.currency, Record, Value);
setFieldInRecord(derivativeSecurityListRequest, text, Record, Value)->
    erlang:setelement(#derivativeSecurityListRequest.text, Record, Value);
setFieldInRecord(derivativeSecurityListRequest, encodedTextLen, Record, Value)->
    erlang:setelement(#derivativeSecurityListRequest.encodedTextLen, Record, Value);
setFieldInRecord(derivativeSecurityListRequest, encodedText, Record, Value)->
    erlang:setelement(#derivativeSecurityListRequest.encodedText, Record, Value);
setFieldInRecord(derivativeSecurityListRequest, tradingSessionID, Record, Value)->
    erlang:setelement(#derivativeSecurityListRequest.tradingSessionID, Record, Value);
setFieldInRecord(derivativeSecurityListRequest, tradingSessionSubID, Record, Value)->
    erlang:setelement(#derivativeSecurityListRequest.tradingSessionSubID, Record, Value);
setFieldInRecord(derivativeSecurityListRequest, subscriptionRequestType, Record, Value)->
    erlang:setelement(#derivativeSecurityListRequest.subscriptionRequestType, Record, Value);
setFieldInRecord(derivativeSecurityListRequest, standardTrailer, Record, Value)->
    erlang:setelement(#derivativeSecurityListRequest.standardTrailer, Record, Value);
setFieldInRecord(derivativeSecurityList, standardHeader, Record, Value)->
    erlang:setelement(#derivativeSecurityList.standardHeader, Record, Value);
setFieldInRecord(derivativeSecurityList, securityReqID, Record, Value)->
    erlang:setelement(#derivativeSecurityList.securityReqID, Record, Value);
setFieldInRecord(derivativeSecurityList, securityResponseID, Record, Value)->
    erlang:setelement(#derivativeSecurityList.securityResponseID, Record, Value);
setFieldInRecord(derivativeSecurityList, securityRequestResult, Record, Value)->
    erlang:setelement(#derivativeSecurityList.securityRequestResult, Record, Value);
setFieldInRecord(derivativeSecurityList, underlyingInstrument, Record, Value)->
    erlang:setelement(#derivativeSecurityList.underlyingInstrument, Record, Value);
setFieldInRecord(derivativeSecurityList, totalNumSecurities, Record, Value)->
    erlang:setelement(#derivativeSecurityList.totalNumSecurities, Record, Value);
setFieldInRecord(derivativeSecurityList, rgr_derivativeSecurityList_146, Record, Value)->
   erlang:setelement(#derivativeSecurityList.rgr_derivativeSecurityList_146, Record, Value);
setFieldInRecord(rgr_derivativeSecurityList_146, instrument, Record, Value)->
   erlang:setelement(#rgr_derivativeSecurityList_146.instrument, Record, Value);
setFieldInRecord(rgr_derivativeSecurityList_146, currency, Record, Value)->
   erlang:setelement(#rgr_derivativeSecurityList_146.currency, Record, Value);
setFieldInRecord(rgr_derivativeSecurityList_146, rgr_rgr_derivativeSecurityList_146_555, Record, Value)->
   erlang:setelement(#rgr_derivativeSecurityList_146.rgr_rgr_derivativeSecurityList_146_555, Record, Value);
setFieldInRecord(rgr_rgr_derivativeSecurityList_146_555, instrumentLeg, Record, Value)->
   erlang:setelement(#rgr_rgr_derivativeSecurityList_146_555.instrumentLeg, Record, Value);
setFieldInRecord(rgr_rgr_derivativeSecurityList_146_555, legCurrency, Record, Value)->
   erlang:setelement(#rgr_rgr_derivativeSecurityList_146_555.legCurrency, Record, Value);
setFieldInRecord(rgr_derivativeSecurityList_146, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_derivativeSecurityList_146.tradingSessionID, Record, Value);
setFieldInRecord(rgr_derivativeSecurityList_146, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_derivativeSecurityList_146.tradingSessionSubID, Record, Value);
setFieldInRecord(rgr_derivativeSecurityList_146, text, Record, Value)->
   erlang:setelement(#rgr_derivativeSecurityList_146.text, Record, Value);
setFieldInRecord(rgr_derivativeSecurityList_146, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_derivativeSecurityList_146.encodedTextLen, Record, Value);
setFieldInRecord(rgr_derivativeSecurityList_146, encodedText, Record, Value)->
   erlang:setelement(#rgr_derivativeSecurityList_146.encodedText, Record, Value);
setFieldInRecord(derivativeSecurityList, standardTrailer, Record, Value)->
    erlang:setelement(#derivativeSecurityList.standardTrailer, Record, Value);
setFieldInRecord(newOrderMultileg, standardHeader, Record, Value)->
    erlang:setelement(#newOrderMultileg.standardHeader, Record, Value);
setFieldInRecord(newOrderMultileg, clOrdID, Record, Value)->
    erlang:setelement(#newOrderMultileg.clOrdID, Record, Value);
setFieldInRecord(newOrderMultileg, secondaryClOrdID, Record, Value)->
    erlang:setelement(#newOrderMultileg.secondaryClOrdID, Record, Value);
setFieldInRecord(newOrderMultileg, clOrdLinkID, Record, Value)->
    erlang:setelement(#newOrderMultileg.clOrdLinkID, Record, Value);
setFieldInRecord(newOrderMultileg, parties, Record, Value)->
    erlang:setelement(#newOrderMultileg.parties, Record, Value);
setFieldInRecord(newOrderMultileg, account, Record, Value)->
    erlang:setelement(#newOrderMultileg.account, Record, Value);
setFieldInRecord(newOrderMultileg, accountType, Record, Value)->
    erlang:setelement(#newOrderMultileg.accountType, Record, Value);
setFieldInRecord(newOrderMultileg, dayBookingInst, Record, Value)->
    erlang:setelement(#newOrderMultileg.dayBookingInst, Record, Value);
setFieldInRecord(newOrderMultileg, bookingUnit, Record, Value)->
    erlang:setelement(#newOrderMultileg.bookingUnit, Record, Value);
setFieldInRecord(newOrderMultileg, preallocMethod, Record, Value)->
    erlang:setelement(#newOrderMultileg.preallocMethod, Record, Value);
setFieldInRecord(newOrderMultileg, rgr_newOrderMultileg_78, Record, Value)->
   erlang:setelement(#newOrderMultileg.rgr_newOrderMultileg_78, Record, Value);
setFieldInRecord(rgr_newOrderMultileg_78, allocAccount, Record, Value)->
   erlang:setelement(#rgr_newOrderMultileg_78.allocAccount, Record, Value);
setFieldInRecord(rgr_newOrderMultileg_78, individualAllocID, Record, Value)->
   erlang:setelement(#rgr_newOrderMultileg_78.individualAllocID, Record, Value);
setFieldInRecord(rgr_newOrderMultileg_78, allocQty, Record, Value)->
   erlang:setelement(#rgr_newOrderMultileg_78.allocQty, Record, Value);
setFieldInRecord(newOrderMultileg, settlmntTyp, Record, Value)->
    erlang:setelement(#newOrderMultileg.settlmntTyp, Record, Value);
setFieldInRecord(newOrderMultileg, futSettDate, Record, Value)->
    erlang:setelement(#newOrderMultileg.futSettDate, Record, Value);
setFieldInRecord(newOrderMultileg, cashMargin, Record, Value)->
    erlang:setelement(#newOrderMultileg.cashMargin, Record, Value);
setFieldInRecord(newOrderMultileg, clearingFeeIndicator, Record, Value)->
    erlang:setelement(#newOrderMultileg.clearingFeeIndicator, Record, Value);
setFieldInRecord(newOrderMultileg, handlInst, Record, Value)->
    erlang:setelement(#newOrderMultileg.handlInst, Record, Value);
setFieldInRecord(newOrderMultileg, execInst, Record, Value)->
    erlang:setelement(#newOrderMultileg.execInst, Record, Value);
setFieldInRecord(newOrderMultileg, minQty, Record, Value)->
    erlang:setelement(#newOrderMultileg.minQty, Record, Value);
setFieldInRecord(newOrderMultileg, maxFloor, Record, Value)->
    erlang:setelement(#newOrderMultileg.maxFloor, Record, Value);
setFieldInRecord(newOrderMultileg, exDestination, Record, Value)->
    erlang:setelement(#newOrderMultileg.exDestination, Record, Value);
setFieldInRecord(newOrderMultileg, rgr_newOrderMultileg_386, Record, Value)->
   erlang:setelement(#newOrderMultileg.rgr_newOrderMultileg_386, Record, Value);
setFieldInRecord(rgr_newOrderMultileg_386, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_newOrderMultileg_386.tradingSessionID, Record, Value);
setFieldInRecord(rgr_newOrderMultileg_386, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_newOrderMultileg_386.tradingSessionSubID, Record, Value);
setFieldInRecord(newOrderMultileg, processCode, Record, Value)->
    erlang:setelement(#newOrderMultileg.processCode, Record, Value);
setFieldInRecord(newOrderMultileg, side, Record, Value)->
    erlang:setelement(#newOrderMultileg.side, Record, Value);
setFieldInRecord(newOrderMultileg, instrument, Record, Value)->
    erlang:setelement(#newOrderMultileg.instrument, Record, Value);
setFieldInRecord(newOrderMultileg, prevClosePx, Record, Value)->
    erlang:setelement(#newOrderMultileg.prevClosePx, Record, Value);
setFieldInRecord(newOrderMultileg, rgr_newOrderMultileg_555, Record, Value)->
   erlang:setelement(#newOrderMultileg.rgr_newOrderMultileg_555, Record, Value);
setFieldInRecord(rgr_newOrderMultileg_555, instrumentLeg, Record, Value)->
   erlang:setelement(#rgr_newOrderMultileg_555.instrumentLeg, Record, Value);
setFieldInRecord(rgr_newOrderMultileg_555, legPositionEffect, Record, Value)->
   erlang:setelement(#rgr_newOrderMultileg_555.legPositionEffect, Record, Value);
setFieldInRecord(rgr_newOrderMultileg_555, legCoveredOrUncovered, Record, Value)->
   erlang:setelement(#rgr_newOrderMultileg_555.legCoveredOrUncovered, Record, Value);
setFieldInRecord(rgr_newOrderMultileg_555, nestedParties, Record, Value)->
   erlang:setelement(#rgr_newOrderMultileg_555.nestedParties, Record, Value);
setFieldInRecord(rgr_newOrderMultileg_555, legRefID, Record, Value)->
   erlang:setelement(#rgr_newOrderMultileg_555.legRefID, Record, Value);
setFieldInRecord(rgr_newOrderMultileg_555, legPrice, Record, Value)->
   erlang:setelement(#rgr_newOrderMultileg_555.legPrice, Record, Value);
setFieldInRecord(rgr_newOrderMultileg_555, legSettlmntTyp, Record, Value)->
   erlang:setelement(#rgr_newOrderMultileg_555.legSettlmntTyp, Record, Value);
setFieldInRecord(rgr_newOrderMultileg_555, legFutSettDate, Record, Value)->
   erlang:setelement(#rgr_newOrderMultileg_555.legFutSettDate, Record, Value);
setFieldInRecord(newOrderMultileg, locateReqd, Record, Value)->
    erlang:setelement(#newOrderMultileg.locateReqd, Record, Value);
setFieldInRecord(newOrderMultileg, transactTime, Record, Value)->
    erlang:setelement(#newOrderMultileg.transactTime, Record, Value);
setFieldInRecord(newOrderMultileg, quantityType, Record, Value)->
    erlang:setelement(#newOrderMultileg.quantityType, Record, Value);
setFieldInRecord(newOrderMultileg, orderQtyData, Record, Value)->
    erlang:setelement(#newOrderMultileg.orderQtyData, Record, Value);
setFieldInRecord(newOrderMultileg, ordType, Record, Value)->
    erlang:setelement(#newOrderMultileg.ordType, Record, Value);
setFieldInRecord(newOrderMultileg, priceType, Record, Value)->
    erlang:setelement(#newOrderMultileg.priceType, Record, Value);
setFieldInRecord(newOrderMultileg, price, Record, Value)->
    erlang:setelement(#newOrderMultileg.price, Record, Value);
setFieldInRecord(newOrderMultileg, stopPx, Record, Value)->
    erlang:setelement(#newOrderMultileg.stopPx, Record, Value);
setFieldInRecord(newOrderMultileg, currency, Record, Value)->
    erlang:setelement(#newOrderMultileg.currency, Record, Value);
setFieldInRecord(newOrderMultileg, complianceID, Record, Value)->
    erlang:setelement(#newOrderMultileg.complianceID, Record, Value);
setFieldInRecord(newOrderMultileg, solicitedFlag, Record, Value)->
    erlang:setelement(#newOrderMultileg.solicitedFlag, Record, Value);
setFieldInRecord(newOrderMultileg, iOIid, Record, Value)->
    erlang:setelement(#newOrderMultileg.iOIid, Record, Value);
setFieldInRecord(newOrderMultileg, quoteID, Record, Value)->
    erlang:setelement(#newOrderMultileg.quoteID, Record, Value);
setFieldInRecord(newOrderMultileg, timeInForce, Record, Value)->
    erlang:setelement(#newOrderMultileg.timeInForce, Record, Value);
setFieldInRecord(newOrderMultileg, effectiveTime, Record, Value)->
    erlang:setelement(#newOrderMultileg.effectiveTime, Record, Value);
setFieldInRecord(newOrderMultileg, expireDate, Record, Value)->
    erlang:setelement(#newOrderMultileg.expireDate, Record, Value);
setFieldInRecord(newOrderMultileg, expireTime, Record, Value)->
    erlang:setelement(#newOrderMultileg.expireTime, Record, Value);
setFieldInRecord(newOrderMultileg, gTBookingInst, Record, Value)->
    erlang:setelement(#newOrderMultileg.gTBookingInst, Record, Value);
setFieldInRecord(newOrderMultileg, commissionData, Record, Value)->
    erlang:setelement(#newOrderMultileg.commissionData, Record, Value);
setFieldInRecord(newOrderMultileg, orderCapacity, Record, Value)->
    erlang:setelement(#newOrderMultileg.orderCapacity, Record, Value);
setFieldInRecord(newOrderMultileg, orderRestrictions, Record, Value)->
    erlang:setelement(#newOrderMultileg.orderRestrictions, Record, Value);
setFieldInRecord(newOrderMultileg, custOrderCapacity, Record, Value)->
    erlang:setelement(#newOrderMultileg.custOrderCapacity, Record, Value);
setFieldInRecord(newOrderMultileg, forexReq, Record, Value)->
    erlang:setelement(#newOrderMultileg.forexReq, Record, Value);
setFieldInRecord(newOrderMultileg, settlCurrency, Record, Value)->
    erlang:setelement(#newOrderMultileg.settlCurrency, Record, Value);
setFieldInRecord(newOrderMultileg, text, Record, Value)->
    erlang:setelement(#newOrderMultileg.text, Record, Value);
setFieldInRecord(newOrderMultileg, encodedTextLen, Record, Value)->
    erlang:setelement(#newOrderMultileg.encodedTextLen, Record, Value);
setFieldInRecord(newOrderMultileg, encodedText, Record, Value)->
    erlang:setelement(#newOrderMultileg.encodedText, Record, Value);
setFieldInRecord(newOrderMultileg, positionEffect, Record, Value)->
    erlang:setelement(#newOrderMultileg.positionEffect, Record, Value);
setFieldInRecord(newOrderMultileg, coveredOrUncovered, Record, Value)->
    erlang:setelement(#newOrderMultileg.coveredOrUncovered, Record, Value);
setFieldInRecord(newOrderMultileg, maxShow, Record, Value)->
    erlang:setelement(#newOrderMultileg.maxShow, Record, Value);
setFieldInRecord(newOrderMultileg, pegDifference, Record, Value)->
    erlang:setelement(#newOrderMultileg.pegDifference, Record, Value);
setFieldInRecord(newOrderMultileg, discretionInst, Record, Value)->
    erlang:setelement(#newOrderMultileg.discretionInst, Record, Value);
setFieldInRecord(newOrderMultileg, discretionOffset, Record, Value)->
    erlang:setelement(#newOrderMultileg.discretionOffset, Record, Value);
setFieldInRecord(newOrderMultileg, cancellationRights, Record, Value)->
    erlang:setelement(#newOrderMultileg.cancellationRights, Record, Value);
setFieldInRecord(newOrderMultileg, moneyLaunderingStatus, Record, Value)->
    erlang:setelement(#newOrderMultileg.moneyLaunderingStatus, Record, Value);
setFieldInRecord(newOrderMultileg, registID, Record, Value)->
    erlang:setelement(#newOrderMultileg.registID, Record, Value);
setFieldInRecord(newOrderMultileg, designation, Record, Value)->
    erlang:setelement(#newOrderMultileg.designation, Record, Value);
setFieldInRecord(newOrderMultileg, multiLegRptTypeReq, Record, Value)->
    erlang:setelement(#newOrderMultileg.multiLegRptTypeReq, Record, Value);
setFieldInRecord(newOrderMultileg, netMoney, Record, Value)->
    erlang:setelement(#newOrderMultileg.netMoney, Record, Value);
setFieldInRecord(newOrderMultileg, standardTrailer, Record, Value)->
    erlang:setelement(#newOrderMultileg.standardTrailer, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, standardHeader, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.standardHeader, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, orderID, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.orderID, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, origClOrdID, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.origClOrdID, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, clOrdID, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.clOrdID, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, secondaryClOrdID, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.secondaryClOrdID, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, clOrdLinkID, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.clOrdLinkID, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, origOrdModTime, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.origOrdModTime, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, parties, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.parties, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, account, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.account, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, accountType, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.accountType, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, dayBookingInst, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.dayBookingInst, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, bookingUnit, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.bookingUnit, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, preallocMethod, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.preallocMethod, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, rgr_multilegOrderCancelReplaceRequest_78, Record, Value)->
   erlang:setelement(#multilegOrderCancelReplaceRequest.rgr_multilegOrderCancelReplaceRequest_78, Record, Value);
setFieldInRecord(rgr_multilegOrderCancelReplaceRequest_78, allocAccount, Record, Value)->
   erlang:setelement(#rgr_multilegOrderCancelReplaceRequest_78.allocAccount, Record, Value);
setFieldInRecord(rgr_multilegOrderCancelReplaceRequest_78, individualAllocID, Record, Value)->
   erlang:setelement(#rgr_multilegOrderCancelReplaceRequest_78.individualAllocID, Record, Value);
setFieldInRecord(rgr_multilegOrderCancelReplaceRequest_78, allocQty, Record, Value)->
   erlang:setelement(#rgr_multilegOrderCancelReplaceRequest_78.allocQty, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, settlmntTyp, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.settlmntTyp, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, futSettDate, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.futSettDate, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, cashMargin, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.cashMargin, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, clearingFeeIndicator, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.clearingFeeIndicator, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, handlInst, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.handlInst, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, execInst, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.execInst, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, minQty, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.minQty, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, maxFloor, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.maxFloor, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, exDestination, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.exDestination, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, rgr_multilegOrderCancelReplaceRequest_386, Record, Value)->
   erlang:setelement(#multilegOrderCancelReplaceRequest.rgr_multilegOrderCancelReplaceRequest_386, Record, Value);
setFieldInRecord(rgr_multilegOrderCancelReplaceRequest_386, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_multilegOrderCancelReplaceRequest_386.tradingSessionID, Record, Value);
setFieldInRecord(rgr_multilegOrderCancelReplaceRequest_386, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_multilegOrderCancelReplaceRequest_386.tradingSessionSubID, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, processCode, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.processCode, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, side, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.side, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, instrument, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.instrument, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, prevClosePx, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.prevClosePx, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, rgr_multilegOrderCancelReplaceRequest_555, Record, Value)->
   erlang:setelement(#multilegOrderCancelReplaceRequest.rgr_multilegOrderCancelReplaceRequest_555, Record, Value);
setFieldInRecord(rgr_multilegOrderCancelReplaceRequest_555, instrumentLeg, Record, Value)->
   erlang:setelement(#rgr_multilegOrderCancelReplaceRequest_555.instrumentLeg, Record, Value);
setFieldInRecord(rgr_multilegOrderCancelReplaceRequest_555, legPositionEffect, Record, Value)->
   erlang:setelement(#rgr_multilegOrderCancelReplaceRequest_555.legPositionEffect, Record, Value);
setFieldInRecord(rgr_multilegOrderCancelReplaceRequest_555, legCoveredOrUncovered, Record, Value)->
   erlang:setelement(#rgr_multilegOrderCancelReplaceRequest_555.legCoveredOrUncovered, Record, Value);
setFieldInRecord(rgr_multilegOrderCancelReplaceRequest_555, nestedParties, Record, Value)->
   erlang:setelement(#rgr_multilegOrderCancelReplaceRequest_555.nestedParties, Record, Value);
setFieldInRecord(rgr_multilegOrderCancelReplaceRequest_555, legRefID, Record, Value)->
   erlang:setelement(#rgr_multilegOrderCancelReplaceRequest_555.legRefID, Record, Value);
setFieldInRecord(rgr_multilegOrderCancelReplaceRequest_555, legPrice, Record, Value)->
   erlang:setelement(#rgr_multilegOrderCancelReplaceRequest_555.legPrice, Record, Value);
setFieldInRecord(rgr_multilegOrderCancelReplaceRequest_555, legSettlmntTyp, Record, Value)->
   erlang:setelement(#rgr_multilegOrderCancelReplaceRequest_555.legSettlmntTyp, Record, Value);
setFieldInRecord(rgr_multilegOrderCancelReplaceRequest_555, legFutSettDate, Record, Value)->
   erlang:setelement(#rgr_multilegOrderCancelReplaceRequest_555.legFutSettDate, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, locateReqd, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.locateReqd, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, transactTime, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.transactTime, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, quantityType, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.quantityType, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, orderQtyData, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.orderQtyData, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, ordType, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.ordType, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, priceType, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.priceType, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, price, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.price, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, stopPx, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.stopPx, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, currency, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.currency, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, complianceID, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.complianceID, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, solicitedFlag, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.solicitedFlag, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, iOIid, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.iOIid, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, quoteID, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.quoteID, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, timeInForce, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.timeInForce, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, effectiveTime, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.effectiveTime, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, expireDate, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.expireDate, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, expireTime, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.expireTime, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, gTBookingInst, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.gTBookingInst, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, commissionData, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.commissionData, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, orderCapacity, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.orderCapacity, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, orderRestrictions, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.orderRestrictions, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, custOrderCapacity, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.custOrderCapacity, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, forexReq, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.forexReq, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, settlCurrency, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.settlCurrency, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, text, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.text, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, encodedTextLen, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.encodedTextLen, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, encodedText, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.encodedText, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, positionEffect, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.positionEffect, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, coveredOrUncovered, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.coveredOrUncovered, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, maxShow, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.maxShow, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, pegDifference, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.pegDifference, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, discretionInst, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.discretionInst, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, discretionOffset, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.discretionOffset, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, cancellationRights, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.cancellationRights, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, moneyLaunderingStatus, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.moneyLaunderingStatus, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, registID, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.registID, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, designation, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.designation, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, multiLegRptTypeReq, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.multiLegRptTypeReq, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, netMoney, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.netMoney, Record, Value);
setFieldInRecord(multilegOrderCancelReplaceRequest, standardTrailer, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplaceRequest.standardTrailer, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, standardHeader, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.standardHeader, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, tradeRequestID, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.tradeRequestID, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, tradeRequestType, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.tradeRequestType, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, subscriptionRequestType, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.subscriptionRequestType, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, execID, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.execID, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, orderID, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.orderID, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, clOrdID, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.clOrdID, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, matchStatus, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.matchStatus, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, parties, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.parties, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, instrument, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.instrument, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, rgr_tradeCaptureReportRequest_580, Record, Value)->
   erlang:setelement(#tradeCaptureReportRequest.rgr_tradeCaptureReportRequest_580, Record, Value);
setFieldInRecord(rgr_tradeCaptureReportRequest_580, tradeDate, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReportRequest_580.tradeDate, Record, Value);
setFieldInRecord(rgr_tradeCaptureReportRequest_580, transactTime, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReportRequest_580.transactTime, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, side, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.side, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, text, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.text, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, encodedTextLen, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.encodedTextLen, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, encodedText, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.encodedText, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, tradeInputSource, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.tradeInputSource, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, tradeInputDevice, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.tradeInputDevice, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, standardTrailer, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.standardTrailer, Record, Value);
setFieldInRecord(tradeCaptureReport, standardHeader, Record, Value)->
    erlang:setelement(#tradeCaptureReport.standardHeader, Record, Value);
setFieldInRecord(tradeCaptureReport, tradeReportID, Record, Value)->
    erlang:setelement(#tradeCaptureReport.tradeReportID, Record, Value);
setFieldInRecord(tradeCaptureReport, tradeReportTransType, Record, Value)->
    erlang:setelement(#tradeCaptureReport.tradeReportTransType, Record, Value);
setFieldInRecord(tradeCaptureReport, tradeRequestID, Record, Value)->
    erlang:setelement(#tradeCaptureReport.tradeRequestID, Record, Value);
setFieldInRecord(tradeCaptureReport, execType, Record, Value)->
    erlang:setelement(#tradeCaptureReport.execType, Record, Value);
setFieldInRecord(tradeCaptureReport, tradeReportRefID, Record, Value)->
    erlang:setelement(#tradeCaptureReport.tradeReportRefID, Record, Value);
setFieldInRecord(tradeCaptureReport, execID, Record, Value)->
    erlang:setelement(#tradeCaptureReport.execID, Record, Value);
setFieldInRecord(tradeCaptureReport, secondaryExecID, Record, Value)->
    erlang:setelement(#tradeCaptureReport.secondaryExecID, Record, Value);
setFieldInRecord(tradeCaptureReport, execRestatementReason, Record, Value)->
    erlang:setelement(#tradeCaptureReport.execRestatementReason, Record, Value);
setFieldInRecord(tradeCaptureReport, previouslyReported, Record, Value)->
    erlang:setelement(#tradeCaptureReport.previouslyReported, Record, Value);
setFieldInRecord(tradeCaptureReport, instrument, Record, Value)->
    erlang:setelement(#tradeCaptureReport.instrument, Record, Value);
setFieldInRecord(tradeCaptureReport, orderQtyData, Record, Value)->
    erlang:setelement(#tradeCaptureReport.orderQtyData, Record, Value);
setFieldInRecord(tradeCaptureReport, lastQty, Record, Value)->
    erlang:setelement(#tradeCaptureReport.lastQty, Record, Value);
setFieldInRecord(tradeCaptureReport, lastPx, Record, Value)->
    erlang:setelement(#tradeCaptureReport.lastPx, Record, Value);
setFieldInRecord(tradeCaptureReport, lastSpotRate, Record, Value)->
    erlang:setelement(#tradeCaptureReport.lastSpotRate, Record, Value);
setFieldInRecord(tradeCaptureReport, lastForwardPoints, Record, Value)->
    erlang:setelement(#tradeCaptureReport.lastForwardPoints, Record, Value);
setFieldInRecord(tradeCaptureReport, lastMkt, Record, Value)->
    erlang:setelement(#tradeCaptureReport.lastMkt, Record, Value);
setFieldInRecord(tradeCaptureReport, tradeDate, Record, Value)->
    erlang:setelement(#tradeCaptureReport.tradeDate, Record, Value);
setFieldInRecord(tradeCaptureReport, transactTime, Record, Value)->
    erlang:setelement(#tradeCaptureReport.transactTime, Record, Value);
setFieldInRecord(tradeCaptureReport, settlmntTyp, Record, Value)->
    erlang:setelement(#tradeCaptureReport.settlmntTyp, Record, Value);
setFieldInRecord(tradeCaptureReport, futSettDate, Record, Value)->
    erlang:setelement(#tradeCaptureReport.futSettDate, Record, Value);
setFieldInRecord(tradeCaptureReport, matchStatus, Record, Value)->
    erlang:setelement(#tradeCaptureReport.matchStatus, Record, Value);
setFieldInRecord(tradeCaptureReport, matchType, Record, Value)->
    erlang:setelement(#tradeCaptureReport.matchType, Record, Value);
setFieldInRecord(tradeCaptureReport, rgr_tradeCaptureReport_552, Record, Value)->
   erlang:setelement(#tradeCaptureReport.rgr_tradeCaptureReport_552, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, side, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.side, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, orderID, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.orderID, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, secondaryOrderID, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.secondaryOrderID, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, clOrdID, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.clOrdID, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, parties, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.parties, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, account, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.account, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, accountType, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.accountType, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, processCode, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.processCode, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, oddLot, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.oddLot, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, rgr_rgr_tradeCaptureReport_552_576, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.rgr_rgr_tradeCaptureReport_552_576, Record, Value);
setFieldInRecord(rgr_rgr_tradeCaptureReport_552_576, clearingInstruction, Record, Value)->
   erlang:setelement(#rgr_rgr_tradeCaptureReport_552_576.clearingInstruction, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, clearingFeeIndicator, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.clearingFeeIndicator, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, tradeInputSource, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.tradeInputSource, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, tradeInputDevice, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.tradeInputDevice, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, currency, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.currency, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, complianceID, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.complianceID, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, solicitedFlag, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.solicitedFlag, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, orderCapacity, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.orderCapacity, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, orderRestrictions, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.orderRestrictions, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, custOrderCapacity, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.custOrderCapacity, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, transBkdTime, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.transBkdTime, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.tradingSessionID, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.tradingSessionSubID, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, commissionData, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.commissionData, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, grossTradeAmt, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.grossTradeAmt, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, numDaysInterest, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.numDaysInterest, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, exDate, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.exDate, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, accruedInterestRate, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.accruedInterestRate, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, accruedInterestAmt, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.accruedInterestAmt, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, concession, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.concession, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, totalTakedown, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.totalTakedown, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, netMoney, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.netMoney, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, settlCurrAmt, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.settlCurrAmt, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, settlCurrency, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.settlCurrency, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, settlCurrFxRate, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.settlCurrFxRate, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, settlCurrFxRateCalc, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.settlCurrFxRateCalc, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, positionEffect, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.positionEffect, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, text, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.text, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.encodedTextLen, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, encodedText, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.encodedText, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, multiLegReportingType, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.multiLegReportingType, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, rgr_rgr_tradeCaptureReport_552_518, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.rgr_rgr_tradeCaptureReport_552_518, Record, Value);
setFieldInRecord(rgr_rgr_tradeCaptureReport_552_518, contAmtType, Record, Value)->
   erlang:setelement(#rgr_rgr_tradeCaptureReport_552_518.contAmtType, Record, Value);
setFieldInRecord(rgr_rgr_tradeCaptureReport_552_518, contAmtValue, Record, Value)->
   erlang:setelement(#rgr_rgr_tradeCaptureReport_552_518.contAmtValue, Record, Value);
setFieldInRecord(rgr_rgr_tradeCaptureReport_552_518, contAmtCurr, Record, Value)->
   erlang:setelement(#rgr_rgr_tradeCaptureReport_552_518.contAmtCurr, Record, Value);
setFieldInRecord(rgr_tradeCaptureReport_552, rgr_rgr_tradeCaptureReport_552_136, Record, Value)->
   erlang:setelement(#rgr_tradeCaptureReport_552.rgr_rgr_tradeCaptureReport_552_136, Record, Value);
setFieldInRecord(rgr_rgr_tradeCaptureReport_552_136, miscFeeAmt, Record, Value)->
   erlang:setelement(#rgr_rgr_tradeCaptureReport_552_136.miscFeeAmt, Record, Value);
setFieldInRecord(rgr_rgr_tradeCaptureReport_552_136, miscFeeCurr, Record, Value)->
   erlang:setelement(#rgr_rgr_tradeCaptureReport_552_136.miscFeeCurr, Record, Value);
setFieldInRecord(rgr_rgr_tradeCaptureReport_552_136, miscFeeType, Record, Value)->
   erlang:setelement(#rgr_rgr_tradeCaptureReport_552_136.miscFeeType, Record, Value);
setFieldInRecord(tradeCaptureReport, standardTrailer, Record, Value)->
    erlang:setelement(#tradeCaptureReport.standardTrailer, Record, Value);
setFieldInRecord(orderMassStatusRequest, standardHeader, Record, Value)->
    erlang:setelement(#orderMassStatusRequest.standardHeader, Record, Value);
setFieldInRecord(orderMassStatusRequest, massStatusReqID, Record, Value)->
    erlang:setelement(#orderMassStatusRequest.massStatusReqID, Record, Value);
setFieldInRecord(orderMassStatusRequest, massStatusReqType, Record, Value)->
    erlang:setelement(#orderMassStatusRequest.massStatusReqType, Record, Value);
setFieldInRecord(orderMassStatusRequest, parties, Record, Value)->
    erlang:setelement(#orderMassStatusRequest.parties, Record, Value);
setFieldInRecord(orderMassStatusRequest, account, Record, Value)->
    erlang:setelement(#orderMassStatusRequest.account, Record, Value);
setFieldInRecord(orderMassStatusRequest, tradingSessionID, Record, Value)->
    erlang:setelement(#orderMassStatusRequest.tradingSessionID, Record, Value);
setFieldInRecord(orderMassStatusRequest, tradingSessionSubID, Record, Value)->
    erlang:setelement(#orderMassStatusRequest.tradingSessionSubID, Record, Value);
setFieldInRecord(orderMassStatusRequest, instrument, Record, Value)->
    erlang:setelement(#orderMassStatusRequest.instrument, Record, Value);
setFieldInRecord(orderMassStatusRequest, underlyingInstrument, Record, Value)->
    erlang:setelement(#orderMassStatusRequest.underlyingInstrument, Record, Value);
setFieldInRecord(orderMassStatusRequest, side, Record, Value)->
    erlang:setelement(#orderMassStatusRequest.side, Record, Value);
setFieldInRecord(orderMassStatusRequest, standardTrailer, Record, Value)->
    erlang:setelement(#orderMassStatusRequest.standardTrailer, Record, Value);
setFieldInRecord(quoteRequestReject, standardHeader, Record, Value)->
    erlang:setelement(#quoteRequestReject.standardHeader, Record, Value);
setFieldInRecord(quoteRequestReject, quoteReqID, Record, Value)->
    erlang:setelement(#quoteRequestReject.quoteReqID, Record, Value);
setFieldInRecord(quoteRequestReject, rFQReqID, Record, Value)->
    erlang:setelement(#quoteRequestReject.rFQReqID, Record, Value);
setFieldInRecord(quoteRequestReject, quoteRequestRejectReason, Record, Value)->
    erlang:setelement(#quoteRequestReject.quoteRequestRejectReason, Record, Value);
setFieldInRecord(quoteRequestReject, rgr_quoteRequestReject_146, Record, Value)->
   erlang:setelement(#quoteRequestReject.rgr_quoteRequestReject_146, Record, Value);
setFieldInRecord(rgr_quoteRequestReject_146, instrument, Record, Value)->
   erlang:setelement(#rgr_quoteRequestReject_146.instrument, Record, Value);
setFieldInRecord(rgr_quoteRequestReject_146, prevClosePx, Record, Value)->
   erlang:setelement(#rgr_quoteRequestReject_146.prevClosePx, Record, Value);
setFieldInRecord(rgr_quoteRequestReject_146, quoteRequestType, Record, Value)->
   erlang:setelement(#rgr_quoteRequestReject_146.quoteRequestType, Record, Value);
setFieldInRecord(rgr_quoteRequestReject_146, quoteType, Record, Value)->
   erlang:setelement(#rgr_quoteRequestReject_146.quoteType, Record, Value);
setFieldInRecord(rgr_quoteRequestReject_146, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_quoteRequestReject_146.tradingSessionID, Record, Value);
setFieldInRecord(rgr_quoteRequestReject_146, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_quoteRequestReject_146.tradingSessionSubID, Record, Value);
setFieldInRecord(rgr_quoteRequestReject_146, tradeOriginationDate, Record, Value)->
   erlang:setelement(#rgr_quoteRequestReject_146.tradeOriginationDate, Record, Value);
setFieldInRecord(rgr_quoteRequestReject_146, stipulations, Record, Value)->
   erlang:setelement(#rgr_quoteRequestReject_146.stipulations, Record, Value);
setFieldInRecord(rgr_quoteRequestReject_146, side, Record, Value)->
   erlang:setelement(#rgr_quoteRequestReject_146.side, Record, Value);
setFieldInRecord(rgr_quoteRequestReject_146, quantityType, Record, Value)->
   erlang:setelement(#rgr_quoteRequestReject_146.quantityType, Record, Value);
setFieldInRecord(rgr_quoteRequestReject_146, orderQty, Record, Value)->
   erlang:setelement(#rgr_quoteRequestReject_146.orderQty, Record, Value);
setFieldInRecord(rgr_quoteRequestReject_146, cashOrderQty, Record, Value)->
   erlang:setelement(#rgr_quoteRequestReject_146.cashOrderQty, Record, Value);
setFieldInRecord(rgr_quoteRequestReject_146, settlmntTyp, Record, Value)->
   erlang:setelement(#rgr_quoteRequestReject_146.settlmntTyp, Record, Value);
setFieldInRecord(rgr_quoteRequestReject_146, futSettDate, Record, Value)->
   erlang:setelement(#rgr_quoteRequestReject_146.futSettDate, Record, Value);
setFieldInRecord(rgr_quoteRequestReject_146, ordType, Record, Value)->
   erlang:setelement(#rgr_quoteRequestReject_146.ordType, Record, Value);
setFieldInRecord(rgr_quoteRequestReject_146, futSettDate2, Record, Value)->
   erlang:setelement(#rgr_quoteRequestReject_146.futSettDate2, Record, Value);
setFieldInRecord(rgr_quoteRequestReject_146, orderQty2, Record, Value)->
   erlang:setelement(#rgr_quoteRequestReject_146.orderQty2, Record, Value);
setFieldInRecord(rgr_quoteRequestReject_146, expireTime, Record, Value)->
   erlang:setelement(#rgr_quoteRequestReject_146.expireTime, Record, Value);
setFieldInRecord(rgr_quoteRequestReject_146, transactTime, Record, Value)->
   erlang:setelement(#rgr_quoteRequestReject_146.transactTime, Record, Value);
setFieldInRecord(rgr_quoteRequestReject_146, currency, Record, Value)->
   erlang:setelement(#rgr_quoteRequestReject_146.currency, Record, Value);
setFieldInRecord(rgr_quoteRequestReject_146, spreadOrBenchmarkCurveData, Record, Value)->
   erlang:setelement(#rgr_quoteRequestReject_146.spreadOrBenchmarkCurveData, Record, Value);
setFieldInRecord(rgr_quoteRequestReject_146, priceType, Record, Value)->
   erlang:setelement(#rgr_quoteRequestReject_146.priceType, Record, Value);
setFieldInRecord(rgr_quoteRequestReject_146, price, Record, Value)->
   erlang:setelement(#rgr_quoteRequestReject_146.price, Record, Value);
setFieldInRecord(rgr_quoteRequestReject_146, price2, Record, Value)->
   erlang:setelement(#rgr_quoteRequestReject_146.price2, Record, Value);
setFieldInRecord(rgr_quoteRequestReject_146, yieldData, Record, Value)->
   erlang:setelement(#rgr_quoteRequestReject_146.yieldData, Record, Value);
setFieldInRecord(quoteRequestReject, text, Record, Value)->
    erlang:setelement(#quoteRequestReject.text, Record, Value);
setFieldInRecord(quoteRequestReject, encodedTextLen, Record, Value)->
    erlang:setelement(#quoteRequestReject.encodedTextLen, Record, Value);
setFieldInRecord(quoteRequestReject, encodedText, Record, Value)->
    erlang:setelement(#quoteRequestReject.encodedText, Record, Value);
setFieldInRecord(quoteRequestReject, standardTrailer, Record, Value)->
    erlang:setelement(#quoteRequestReject.standardTrailer, Record, Value);
setFieldInRecord(rFQRequest, standardHeader, Record, Value)->
    erlang:setelement(#rFQRequest.standardHeader, Record, Value);
setFieldInRecord(rFQRequest, rFQReqID, Record, Value)->
    erlang:setelement(#rFQRequest.rFQReqID, Record, Value);
setFieldInRecord(rFQRequest, rgr_rFQRequest_146, Record, Value)->
   erlang:setelement(#rFQRequest.rgr_rFQRequest_146, Record, Value);
setFieldInRecord(rgr_rFQRequest_146, instrument, Record, Value)->
   erlang:setelement(#rgr_rFQRequest_146.instrument, Record, Value);
setFieldInRecord(rgr_rFQRequest_146, prevClosePx, Record, Value)->
   erlang:setelement(#rgr_rFQRequest_146.prevClosePx, Record, Value);
setFieldInRecord(rgr_rFQRequest_146, quoteRequestType, Record, Value)->
   erlang:setelement(#rgr_rFQRequest_146.quoteRequestType, Record, Value);
setFieldInRecord(rgr_rFQRequest_146, quoteType, Record, Value)->
   erlang:setelement(#rgr_rFQRequest_146.quoteType, Record, Value);
setFieldInRecord(rgr_rFQRequest_146, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_rFQRequest_146.tradingSessionID, Record, Value);
setFieldInRecord(rgr_rFQRequest_146, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_rFQRequest_146.tradingSessionSubID, Record, Value);
setFieldInRecord(rFQRequest, subscriptionRequestType, Record, Value)->
    erlang:setelement(#rFQRequest.subscriptionRequestType, Record, Value);
setFieldInRecord(rFQRequest, standardTrailer, Record, Value)->
    erlang:setelement(#rFQRequest.standardTrailer, Record, Value);
setFieldInRecord(quoteStatusReport, standardHeader, Record, Value)->
    erlang:setelement(#quoteStatusReport.standardHeader, Record, Value);
setFieldInRecord(quoteStatusReport, quoteStatusReqID, Record, Value)->
    erlang:setelement(#quoteStatusReport.quoteStatusReqID, Record, Value);
setFieldInRecord(quoteStatusReport, quoteReqID, Record, Value)->
    erlang:setelement(#quoteStatusReport.quoteReqID, Record, Value);
setFieldInRecord(quoteStatusReport, quoteID, Record, Value)->
    erlang:setelement(#quoteStatusReport.quoteID, Record, Value);
setFieldInRecord(quoteStatusReport, quoteType, Record, Value)->
    erlang:setelement(#quoteStatusReport.quoteType, Record, Value);
setFieldInRecord(quoteStatusReport, parties, Record, Value)->
    erlang:setelement(#quoteStatusReport.parties, Record, Value);
setFieldInRecord(quoteStatusReport, account, Record, Value)->
    erlang:setelement(#quoteStatusReport.account, Record, Value);
setFieldInRecord(quoteStatusReport, accountType, Record, Value)->
    erlang:setelement(#quoteStatusReport.accountType, Record, Value);
setFieldInRecord(quoteStatusReport, tradingSessionID, Record, Value)->
    erlang:setelement(#quoteStatusReport.tradingSessionID, Record, Value);
setFieldInRecord(quoteStatusReport, tradingSessionSubID, Record, Value)->
    erlang:setelement(#quoteStatusReport.tradingSessionSubID, Record, Value);
setFieldInRecord(quoteStatusReport, instrument, Record, Value)->
    erlang:setelement(#quoteStatusReport.instrument, Record, Value);
setFieldInRecord(quoteStatusReport, bidPx, Record, Value)->
    erlang:setelement(#quoteStatusReport.bidPx, Record, Value);
setFieldInRecord(quoteStatusReport, offerPx, Record, Value)->
    erlang:setelement(#quoteStatusReport.offerPx, Record, Value);
setFieldInRecord(quoteStatusReport, mktBidPx, Record, Value)->
    erlang:setelement(#quoteStatusReport.mktBidPx, Record, Value);
setFieldInRecord(quoteStatusReport, mktOfferPx, Record, Value)->
    erlang:setelement(#quoteStatusReport.mktOfferPx, Record, Value);
setFieldInRecord(quoteStatusReport, minBidSize, Record, Value)->
    erlang:setelement(#quoteStatusReport.minBidSize, Record, Value);
setFieldInRecord(quoteStatusReport, bidSize, Record, Value)->
    erlang:setelement(#quoteStatusReport.bidSize, Record, Value);
setFieldInRecord(quoteStatusReport, minOfferSize, Record, Value)->
    erlang:setelement(#quoteStatusReport.minOfferSize, Record, Value);
setFieldInRecord(quoteStatusReport, offerSize, Record, Value)->
    erlang:setelement(#quoteStatusReport.offerSize, Record, Value);
setFieldInRecord(quoteStatusReport, validUntilTime, Record, Value)->
    erlang:setelement(#quoteStatusReport.validUntilTime, Record, Value);
setFieldInRecord(quoteStatusReport, bidSpotRate, Record, Value)->
    erlang:setelement(#quoteStatusReport.bidSpotRate, Record, Value);
setFieldInRecord(quoteStatusReport, offerSpotRate, Record, Value)->
    erlang:setelement(#quoteStatusReport.offerSpotRate, Record, Value);
setFieldInRecord(quoteStatusReport, bidForwardPoints, Record, Value)->
    erlang:setelement(#quoteStatusReport.bidForwardPoints, Record, Value);
setFieldInRecord(quoteStatusReport, offerForwardPoints, Record, Value)->
    erlang:setelement(#quoteStatusReport.offerForwardPoints, Record, Value);
setFieldInRecord(quoteStatusReport, midPx, Record, Value)->
    erlang:setelement(#quoteStatusReport.midPx, Record, Value);
setFieldInRecord(quoteStatusReport, bidYield, Record, Value)->
    erlang:setelement(#quoteStatusReport.bidYield, Record, Value);
setFieldInRecord(quoteStatusReport, midYield, Record, Value)->
    erlang:setelement(#quoteStatusReport.midYield, Record, Value);
setFieldInRecord(quoteStatusReport, offerYield, Record, Value)->
    erlang:setelement(#quoteStatusReport.offerYield, Record, Value);
setFieldInRecord(quoteStatusReport, transactTime, Record, Value)->
    erlang:setelement(#quoteStatusReport.transactTime, Record, Value);
setFieldInRecord(quoteStatusReport, futSettDate, Record, Value)->
    erlang:setelement(#quoteStatusReport.futSettDate, Record, Value);
setFieldInRecord(quoteStatusReport, ordType, Record, Value)->
    erlang:setelement(#quoteStatusReport.ordType, Record, Value);
setFieldInRecord(quoteStatusReport, futSettDate2, Record, Value)->
    erlang:setelement(#quoteStatusReport.futSettDate2, Record, Value);
setFieldInRecord(quoteStatusReport, orderQty2, Record, Value)->
    erlang:setelement(#quoteStatusReport.orderQty2, Record, Value);
setFieldInRecord(quoteStatusReport, bidForwardPoints2, Record, Value)->
    erlang:setelement(#quoteStatusReport.bidForwardPoints2, Record, Value);
setFieldInRecord(quoteStatusReport, offerForwardPoints2, Record, Value)->
    erlang:setelement(#quoteStatusReport.offerForwardPoints2, Record, Value);
setFieldInRecord(quoteStatusReport, currency, Record, Value)->
    erlang:setelement(#quoteStatusReport.currency, Record, Value);
setFieldInRecord(quoteStatusReport, settlCurrBidFxRate, Record, Value)->
    erlang:setelement(#quoteStatusReport.settlCurrBidFxRate, Record, Value);
setFieldInRecord(quoteStatusReport, settlCurrOfferFxRate, Record, Value)->
    erlang:setelement(#quoteStatusReport.settlCurrOfferFxRate, Record, Value);
setFieldInRecord(quoteStatusReport, settlCurrFxRateCalc, Record, Value)->
    erlang:setelement(#quoteStatusReport.settlCurrFxRateCalc, Record, Value);
setFieldInRecord(quoteStatusReport, commission, Record, Value)->
    erlang:setelement(#quoteStatusReport.commission, Record, Value);
setFieldInRecord(quoteStatusReport, commType, Record, Value)->
    erlang:setelement(#quoteStatusReport.commType, Record, Value);
setFieldInRecord(quoteStatusReport, custOrderCapacity, Record, Value)->
    erlang:setelement(#quoteStatusReport.custOrderCapacity, Record, Value);
setFieldInRecord(quoteStatusReport, exDestination, Record, Value)->
    erlang:setelement(#quoteStatusReport.exDestination, Record, Value);
setFieldInRecord(quoteStatusReport, quoteStatus, Record, Value)->
    erlang:setelement(#quoteStatusReport.quoteStatus, Record, Value);
setFieldInRecord(quoteStatusReport, standardTrailer, Record, Value)->
    erlang:setelement(#quoteStatusReport.standardTrailer, Record, Value);
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
    newOrderSingle;
getMessageName(<<"E">>) -> 
    newOrderList;
getMessageName(<<"F">>) -> 
    orderCancelRequest;
getMessageName(<<"G">>) -> 
    orderCancelReplaceRequest;
getMessageName(<<"H">>) -> 
    orderStatusRequest;
getMessageName(<<"J">>) -> 
    allocation;
getMessageName(<<"K">>) -> 
    listCancelRequest;
getMessageName(<<"L">>) -> 
    listExecute;
getMessageName(<<"M">>) -> 
    listStatusRequest;
getMessageName(<<"N">>) -> 
    listStatus;
getMessageName(<<"P">>) -> 
    allocationAck;
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
    massQuoteAcknowledgement;
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
getMessageName(<<"n">>) -> 
    xMLnonFIX;
getMessageName(<<"o">>) -> 
    registrationInstructions;
getMessageName(<<"p">>) -> 
    registrationInstructionsResponse;
getMessageName(<<"q">>) -> 
    orderMassCancelRequest;
getMessageName(<<"r">>) -> 
    orderMassCancelReport;
getMessageName(<<"s">>) -> 
    newOrderCross;
getMessageName(<<"t">>) -> 
    crossOrderCancelReplaceRequest;
getMessageName(<<"u">>) -> 
    crossOrderCancelRequest;
getMessageName(<<"v">>) -> 
    securityTypeRequest;
getMessageName(<<"w">>) -> 
    securityTypes;
getMessageName(<<"x">>) -> 
    securityListRequest;
getMessageName(<<"y">>) -> 
    securityList;
getMessageName(<<"z">>) -> 
    derivativeSecurityListRequest;
getMessageName(<<"AA">>) -> 
    derivativeSecurityList;
getMessageName(<<"AB">>) -> 
    newOrderMultileg;
getMessageName(<<"AC">>) -> 
    multilegOrderCancelReplaceRequest;
getMessageName(<<"AD">>) -> 
    tradeCaptureReportRequest;
getMessageName(<<"AE">>) -> 
    tradeCaptureReport;
getMessageName(<<"AF">>) -> 
    orderMassStatusRequest;
getMessageName(<<"AG">>) -> 
    quoteRequestReject;
getMessageName(<<"AH">>) -> 
    rFQRequest;
getMessageName(<<"AI">>) -> 
    quoteStatusReport;
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
getFieldName(<<"21">>) ->
    handlInst;
getFieldName(<<"22">>) ->
    securityIDSource;
getFieldName(<<"23">>) ->
    iOIid;
getFieldName(<<"25">>) ->
    iOIQltyInd;
getFieldName(<<"26">>) ->
    iOIRefID;
getFieldName(<<"27">>) ->
    iOIQty;
getFieldName(<<"28">>) ->
    iOITransType;
getFieldName(<<"29">>) ->
    lastCapacity;
getFieldName(<<"30">>) ->
    lastMkt;
getFieldName(<<"31">>) ->
    lastPx;
getFieldName(<<"32">>) ->
    lastQty;
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
    quantity;
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
getFieldName(<<"77">>) ->
    positionEffect;
getFieldName(<<"78">>) ->
    noAllocs;
getFieldName(<<"79">>) ->
    allocAccount;
getFieldName(<<"80">>) ->
    allocQty;
getFieldName(<<"81">>) ->
    processCode;
getFieldName(<<"82">>) ->
    noRpts;
getFieldName(<<"83">>) ->
    rptSeq;
getFieldName(<<"84">>) ->
    cxlQty;
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
getFieldName(<<"106">>) ->
    issuer;
getFieldName(<<"107">>) ->
    securityDesc;
getFieldName(<<"108">>) ->
    heartBtInt;
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
getFieldName(<<"202">>) ->
    strikePrice;
getFieldName(<<"203">>) ->
    coveredOrUncovered;
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
    spread;
getFieldName(<<"219">>) ->
    benchmark;
getFieldName(<<"220">>) ->
    benchmarkCurveCurrency;
getFieldName(<<"221">>) ->
    benchmarkCurveName;
getFieldName(<<"222">>) ->
    benchmarkCurvePoint;
getFieldName(<<"223">>) ->
    couponRate;
getFieldName(<<"224">>) ->
    couponPaymentDate;
getFieldName(<<"225">>) ->
    issueDate;
getFieldName(<<"226">>) ->
    repurchaseTerm;
getFieldName(<<"227">>) ->
    repurchaseRate;
getFieldName(<<"228">>) ->
    factor;
getFieldName(<<"229">>) ->
    tradeOriginationDate;
getFieldName(<<"230">>) ->
    exDate;
getFieldName(<<"231">>) ->
    contractMultiplier;
getFieldName(<<"232">>) ->
    noStipulations;
getFieldName(<<"233">>) ->
    stipulationType;
getFieldName(<<"234">>) ->
    stipulationValue;
getFieldName(<<"235">>) ->
    yieldType;
getFieldName(<<"236">>) ->
    yield;
getFieldName(<<"237">>) ->
    totalTakedown;
getFieldName(<<"238">>) ->
    concession;
getFieldName(<<"239">>) ->
    repoCollateralSecurityType;
getFieldName(<<"240">>) ->
    redemptionDate;
getFieldName(<<"241">>) ->
    underlyingCouponPaymentDate;
getFieldName(<<"242">>) ->
    underlyingIssueDate;
getFieldName(<<"243">>) ->
    underlyingRepoCollateralSecurityType;
getFieldName(<<"244">>) ->
    underlyingRepurchaseTerm;
getFieldName(<<"245">>) ->
    underlyingRepurchaseRate;
getFieldName(<<"246">>) ->
    underlyingFactor;
getFieldName(<<"247">>) ->
    underlyingRedemptionDate;
getFieldName(<<"248">>) ->
    legCouponPaymentDate;
getFieldName(<<"249">>) ->
    legIssueDate;
getFieldName(<<"250">>) ->
    legRepoCollateralSecurityType;
getFieldName(<<"251">>) ->
    legRepurchaseTerm;
getFieldName(<<"252">>) ->
    legRepurchaseRate;
getFieldName(<<"253">>) ->
    legFactor;
getFieldName(<<"254">>) ->
    legRedemptionDate;
getFieldName(<<"255">>) ->
    creditRating;
getFieldName(<<"256">>) ->
    underlyingCreditRating;
getFieldName(<<"257">>) ->
    legCreditRating;
getFieldName(<<"258">>) ->
    tradedFlatSwitch;
getFieldName(<<"259">>) ->
    basisFeatureDate;
getFieldName(<<"260">>) ->
    basisFeaturePrice;
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
    quoteStatus;
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
    underlyingSecurityIDSource;
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
getFieldName(<<"315">>) ->
    underlyingPutOrCall;
getFieldName(<<"316">>) ->
    underlyingStrikePrice;
getFieldName(<<"317">>) ->
    underlyingOptAttribute;
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
getFieldName(<<"447">>) ->
    partyIDSource;
getFieldName(<<"448">>) ->
    partyID;
getFieldName(<<"449">>) ->
    totalVolumeTradedDate;
getFieldName(<<"450">>) ->
    totalVolumeTradedTime;
getFieldName(<<"451">>) ->
    netChgPrevDay;
getFieldName(<<"452">>) ->
    partyRole;
getFieldName(<<"453">>) ->
    noPartyIDs;
getFieldName(<<"454">>) ->
    noSecurityAltID;
getFieldName(<<"455">>) ->
    securityAltID;
getFieldName(<<"456">>) ->
    securityAltIDSource;
getFieldName(<<"457">>) ->
    noUnderlyingSecurityAltID;
getFieldName(<<"458">>) ->
    underlyingSecurityAltID;
getFieldName(<<"459">>) ->
    underlyingSecurityAltIDSource;
getFieldName(<<"460">>) ->
    produkt;
getFieldName(<<"461">>) ->
    cFICode;
getFieldName(<<"462">>) ->
    underlyingProduct;
getFieldName(<<"463">>) ->
    underlyingCFICode;
getFieldName(<<"464">>) ->
    testMessageIndicator;
getFieldName(<<"465">>) ->
    quantityType;
getFieldName(<<"466">>) ->
    bookingRefID;
getFieldName(<<"467">>) ->
    individualAllocID;
getFieldName(<<"468">>) ->
    roundingDirection;
getFieldName(<<"469">>) ->
    roundingModulus;
getFieldName(<<"470">>) ->
    countryOfIssue;
getFieldName(<<"471">>) ->
    stateOrProvinceOfIssue;
getFieldName(<<"472">>) ->
    localeOfIssue;
getFieldName(<<"473">>) ->
    noRegistDtls;
getFieldName(<<"474">>) ->
    mailingDtls;
getFieldName(<<"475">>) ->
    investorCountryOfResidence;
getFieldName(<<"476">>) ->
    paymentRef;
getFieldName(<<"477">>) ->
    distribPaymentMethod;
getFieldName(<<"478">>) ->
    cashDistribCurr;
getFieldName(<<"479">>) ->
    commCurrency;
getFieldName(<<"480">>) ->
    cancellationRights;
getFieldName(<<"481">>) ->
    moneyLaunderingStatus;
getFieldName(<<"482">>) ->
    mailingInst;
getFieldName(<<"483">>) ->
    transBkdTime;
getFieldName(<<"484">>) ->
    execPriceType;
getFieldName(<<"485">>) ->
    execPriceAdjustment;
getFieldName(<<"486">>) ->
    dateOfBirth;
getFieldName(<<"487">>) ->
    tradeReportTransType;
getFieldName(<<"488">>) ->
    cardHolderName;
getFieldName(<<"489">>) ->
    cardNumber;
getFieldName(<<"490">>) ->
    cardExpDate;
getFieldName(<<"491">>) ->
    cardIssNo;
getFieldName(<<"492">>) ->
    paymentMethod;
getFieldName(<<"493">>) ->
    registAcctType;
getFieldName(<<"494">>) ->
    designation;
getFieldName(<<"495">>) ->
    taxAdvantageType;
getFieldName(<<"496">>) ->
    registRejReasonText;
getFieldName(<<"497">>) ->
    fundRenewWaiv;
getFieldName(<<"498">>) ->
    cashDistribAgentName;
getFieldName(<<"499">>) ->
    cashDistribAgentCode;
getFieldName(<<"500">>) ->
    cashDistribAgentAcctNumber;
getFieldName(<<"501">>) ->
    cashDistribPayRef;
getFieldName(<<"503">>) ->
    cardStartDate;
getFieldName(<<"504">>) ->
    paymentDate;
getFieldName(<<"505">>) ->
    paymentRemitterID;
getFieldName(<<"506">>) ->
    registStatus;
getFieldName(<<"507">>) ->
    registRejReasonCode;
getFieldName(<<"508">>) ->
    registRefID;
getFieldName(<<"509">>) ->
    registDetls;
getFieldName(<<"510">>) ->
    noDistribInsts;
getFieldName(<<"511">>) ->
    registEmail;
getFieldName(<<"512">>) ->
    distribPercentage;
getFieldName(<<"513">>) ->
    registID;
getFieldName(<<"514">>) ->
    registTransType;
getFieldName(<<"515">>) ->
    execValuationPoint;
getFieldName(<<"516">>) ->
    orderPercent;
getFieldName(<<"517">>) ->
    ownershipType;
getFieldName(<<"518">>) ->
    noContAmts;
getFieldName(<<"519">>) ->
    contAmtType;
getFieldName(<<"520">>) ->
    contAmtValue;
getFieldName(<<"521">>) ->
    contAmtCurr;
getFieldName(<<"522">>) ->
    ownerType;
getFieldName(<<"523">>) ->
    partySubID;
getFieldName(<<"524">>) ->
    nestedPartyID;
getFieldName(<<"525">>) ->
    nestedPartyIDSource;
getFieldName(<<"526">>) ->
    secondaryClOrdID;
getFieldName(<<"527">>) ->
    secondaryExecID;
getFieldName(<<"528">>) ->
    orderCapacity;
getFieldName(<<"529">>) ->
    orderRestrictions;
getFieldName(<<"530">>) ->
    massCancelRequestType;
getFieldName(<<"531">>) ->
    massCancelResponse;
getFieldName(<<"532">>) ->
    massCancelRejectReason;
getFieldName(<<"533">>) ->
    totalAffectedOrders;
getFieldName(<<"534">>) ->
    noAffectedOrders;
getFieldName(<<"535">>) ->
    affectedOrderID;
getFieldName(<<"536">>) ->
    affectedSecondaryOrderID;
getFieldName(<<"537">>) ->
    quoteType;
getFieldName(<<"538">>) ->
    nestedPartyRole;
getFieldName(<<"539">>) ->
    noNestedPartyIDs;
getFieldName(<<"540">>) ->
    totalAccruedInterestAmt;
getFieldName(<<"541">>) ->
    maturityDate;
getFieldName(<<"542">>) ->
    underlyingMaturityDate;
getFieldName(<<"543">>) ->
    instrRegistry;
getFieldName(<<"544">>) ->
    cashMargin;
getFieldName(<<"545">>) ->
    nestedPartySubID;
getFieldName(<<"546">>) ->
    scope;
getFieldName(<<"547">>) ->
    mDImplicitDelete;
getFieldName(<<"548">>) ->
    crossID;
getFieldName(<<"549">>) ->
    crossType;
getFieldName(<<"550">>) ->
    crossPrioritization;
getFieldName(<<"551">>) ->
    origCrossID;
getFieldName(<<"552">>) ->
    noSides;
getFieldName(<<"553">>) ->
    username;
getFieldName(<<"554">>) ->
    password;
getFieldName(<<"555">>) ->
    noLegs;
getFieldName(<<"556">>) ->
    legCurrency;
getFieldName(<<"557">>) ->
    totalNumSecurityTypes;
getFieldName(<<"558">>) ->
    noSecurityTypes;
getFieldName(<<"559">>) ->
    securityListRequestType;
getFieldName(<<"560">>) ->
    securityRequestResult;
getFieldName(<<"561">>) ->
    roundLot;
getFieldName(<<"562">>) ->
    minTradeVol;
getFieldName(<<"563">>) ->
    multiLegRptTypeReq;
getFieldName(<<"564">>) ->
    legPositionEffect;
getFieldName(<<"565">>) ->
    legCoveredOrUncovered;
getFieldName(<<"566">>) ->
    legPrice;
getFieldName(<<"567">>) ->
    tradSesStatusRejReason;
getFieldName(<<"568">>) ->
    tradeRequestID;
getFieldName(<<"569">>) ->
    tradeRequestType;
getFieldName(<<"570">>) ->
    previouslyReported;
getFieldName(<<"571">>) ->
    tradeReportID;
getFieldName(<<"572">>) ->
    tradeReportRefID;
getFieldName(<<"573">>) ->
    matchStatus;
getFieldName(<<"574">>) ->
    matchType;
getFieldName(<<"575">>) ->
    oddLot;
getFieldName(<<"576">>) ->
    noClearingInstructions;
getFieldName(<<"577">>) ->
    clearingInstruction;
getFieldName(<<"578">>) ->
    tradeInputSource;
getFieldName(<<"579">>) ->
    tradeInputDevice;
getFieldName(<<"580">>) ->
    noDates;
getFieldName(<<"581">>) ->
    accountType;
getFieldName(<<"582">>) ->
    custOrderCapacity;
getFieldName(<<"583">>) ->
    clOrdLinkID;
getFieldName(<<"584">>) ->
    massStatusReqID;
getFieldName(<<"585">>) ->
    massStatusReqType;
getFieldName(<<"586">>) ->
    origOrdModTime;
getFieldName(<<"587">>) ->
    legSettlmntTyp;
getFieldName(<<"588">>) ->
    legFutSettDate;
getFieldName(<<"589">>) ->
    dayBookingInst;
getFieldName(<<"590">>) ->
    bookingUnit;
getFieldName(<<"591">>) ->
    preallocMethod;
getFieldName(<<"592">>) ->
    underlyingCountryOfIssue;
getFieldName(<<"593">>) ->
    underlyingStateOrProvinceOfIssue;
getFieldName(<<"594">>) ->
    underlyingLocaleOfIssue;
getFieldName(<<"595">>) ->
    underlyingInstrRegistry;
getFieldName(<<"596">>) ->
    legCountryOfIssue;
getFieldName(<<"597">>) ->
    legStateOrProvinceOfIssue;
getFieldName(<<"598">>) ->
    legLocaleOfIssue;
getFieldName(<<"599">>) ->
    legInstrRegistry;
getFieldName(<<"600">>) ->
    legSymbol;
getFieldName(<<"601">>) ->
    legSymbolSfx;
getFieldName(<<"602">>) ->
    legSecurityID;
getFieldName(<<"603">>) ->
    legSecurityIDSource;
getFieldName(<<"604">>) ->
    noLegSecurityAltID;
getFieldName(<<"605">>) ->
    legSecurityAltID;
getFieldName(<<"606">>) ->
    legSecurityAltIDSource;
getFieldName(<<"607">>) ->
    legProduct;
getFieldName(<<"608">>) ->
    legCFICode;
getFieldName(<<"609">>) ->
    legSecurityType;
getFieldName(<<"610">>) ->
    legMaturityMonthYear;
getFieldName(<<"611">>) ->
    legMaturityDate;
getFieldName(<<"612">>) ->
    legStrikePrice;
getFieldName(<<"613">>) ->
    legOptAttribute;
getFieldName(<<"614">>) ->
    legContractMultiplier;
getFieldName(<<"615">>) ->
    legCouponRate;
getFieldName(<<"616">>) ->
    legSecurityExchange;
getFieldName(<<"617">>) ->
    legIssuer;
getFieldName(<<"618">>) ->
    encodedLegIssuerLen;
getFieldName(<<"619">>) ->
    encodedLegIssuer;
getFieldName(<<"620">>) ->
    legSecurityDesc;
getFieldName(<<"621">>) ->
    encodedLegSecurityDescLen;
getFieldName(<<"622">>) ->
    encodedLegSecurityDesc;
getFieldName(<<"623">>) ->
    legRatioQty;
getFieldName(<<"624">>) ->
    legSide;
getFieldName(<<"625">>) ->
    tradingSessionSubID;
getFieldName(<<"626">>) ->
    allocType;
getFieldName(<<"627">>) ->
    noHops;
getFieldName(<<"628">>) ->
    hopCompID;
getFieldName(<<"629">>) ->
    hopSendingTime;
getFieldName(<<"630">>) ->
    hopRefID;
getFieldName(<<"631">>) ->
    midPx;
getFieldName(<<"632">>) ->
    bidYield;
getFieldName(<<"633">>) ->
    midYield;
getFieldName(<<"634">>) ->
    offerYield;
getFieldName(<<"635">>) ->
    clearingFeeIndicator;
getFieldName(<<"636">>) ->
    workingIndicator;
getFieldName(<<"637">>) ->
    legLastPx;
getFieldName(<<"638">>) ->
    priorityIndicator;
getFieldName(<<"639">>) ->
    priceImprovement;
getFieldName(<<"640">>) ->
    price2;
getFieldName(<<"641">>) ->
    lastForwardPoints2;
getFieldName(<<"642">>) ->
    bidForwardPoints2;
getFieldName(<<"643">>) ->
    offerForwardPoints2;
getFieldName(<<"644">>) ->
    rFQReqID;
getFieldName(<<"645">>) ->
    mktBidPx;
getFieldName(<<"646">>) ->
    mktOfferPx;
getFieldName(<<"647">>) ->
    minBidSize;
getFieldName(<<"648">>) ->
    minOfferSize;
getFieldName(<<"649">>) ->
    quoteStatusReqID;
getFieldName(<<"650">>) ->
    legalConfirm;
getFieldName(<<"651">>) ->
    underlyingLastPx;
getFieldName(<<"652">>) ->
    underlyingLastQty;
getFieldName(<<"654">>) ->
    legRefID;
getFieldName(<<"655">>) ->
    contraLegRefID;
getFieldName(<<"656">>) ->
    settlCurrBidFxRate;
getFieldName(<<"657">>) ->
    settlCurrOfferFxRate;
getFieldName(<<"658">>) ->
    quoteRequestRejectReason;
getFieldName(<<"659">>) ->
    sideComplianceID;
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
getTagId(handlInst) ->
    <<"21">>;
getTagId(securityIDSource) ->
    <<"22">>;
getTagId(iOIid) ->
    <<"23">>;
getTagId(iOIQltyInd) ->
    <<"25">>;
getTagId(iOIRefID) ->
    <<"26">>;
getTagId(iOIQty) ->
    <<"27">>;
getTagId(iOITransType) ->
    <<"28">>;
getTagId(lastCapacity) ->
    <<"29">>;
getTagId(lastMkt) ->
    <<"30">>;
getTagId(lastPx) ->
    <<"31">>;
getTagId(lastQty) ->
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
getTagId(quantity) ->
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
getTagId(positionEffect) ->
    <<"77">>;
getTagId(noAllocs) ->
    <<"78">>;
getTagId(allocAccount) ->
    <<"79">>;
getTagId(allocQty) ->
    <<"80">>;
getTagId(processCode) ->
    <<"81">>;
getTagId(noRpts) ->
    <<"82">>;
getTagId(rptSeq) ->
    <<"83">>;
getTagId(cxlQty) ->
    <<"84">>;
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
getTagId(issuer) ->
    <<"106">>;
getTagId(securityDesc) ->
    <<"107">>;
getTagId(heartBtInt) ->
    <<"108">>;
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
getTagId(strikePrice) ->
    <<"202">>;
getTagId(coveredOrUncovered) ->
    <<"203">>;
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
getTagId(spread) ->
    <<"218">>;
getTagId(benchmark) ->
    <<"219">>;
getTagId(benchmarkCurveCurrency) ->
    <<"220">>;
getTagId(benchmarkCurveName) ->
    <<"221">>;
getTagId(benchmarkCurvePoint) ->
    <<"222">>;
getTagId(couponRate) ->
    <<"223">>;
getTagId(couponPaymentDate) ->
    <<"224">>;
getTagId(issueDate) ->
    <<"225">>;
getTagId(repurchaseTerm) ->
    <<"226">>;
getTagId(repurchaseRate) ->
    <<"227">>;
getTagId(factor) ->
    <<"228">>;
getTagId(tradeOriginationDate) ->
    <<"229">>;
getTagId(exDate) ->
    <<"230">>;
getTagId(contractMultiplier) ->
    <<"231">>;
getTagId(noStipulations) ->
    <<"232">>;
getTagId(stipulationType) ->
    <<"233">>;
getTagId(stipulationValue) ->
    <<"234">>;
getTagId(yieldType) ->
    <<"235">>;
getTagId(yield) ->
    <<"236">>;
getTagId(totalTakedown) ->
    <<"237">>;
getTagId(concession) ->
    <<"238">>;
getTagId(repoCollateralSecurityType) ->
    <<"239">>;
getTagId(redemptionDate) ->
    <<"240">>;
getTagId(underlyingCouponPaymentDate) ->
    <<"241">>;
getTagId(underlyingIssueDate) ->
    <<"242">>;
getTagId(underlyingRepoCollateralSecurityType) ->
    <<"243">>;
getTagId(underlyingRepurchaseTerm) ->
    <<"244">>;
getTagId(underlyingRepurchaseRate) ->
    <<"245">>;
getTagId(underlyingFactor) ->
    <<"246">>;
getTagId(underlyingRedemptionDate) ->
    <<"247">>;
getTagId(legCouponPaymentDate) ->
    <<"248">>;
getTagId(legIssueDate) ->
    <<"249">>;
getTagId(legRepoCollateralSecurityType) ->
    <<"250">>;
getTagId(legRepurchaseTerm) ->
    <<"251">>;
getTagId(legRepurchaseRate) ->
    <<"252">>;
getTagId(legFactor) ->
    <<"253">>;
getTagId(legRedemptionDate) ->
    <<"254">>;
getTagId(creditRating) ->
    <<"255">>;
getTagId(underlyingCreditRating) ->
    <<"256">>;
getTagId(legCreditRating) ->
    <<"257">>;
getTagId(tradedFlatSwitch) ->
    <<"258">>;
getTagId(basisFeatureDate) ->
    <<"259">>;
getTagId(basisFeaturePrice) ->
    <<"260">>;
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
getTagId(quoteStatus) ->
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
getTagId(underlyingSecurityIDSource) ->
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
getTagId(underlyingPutOrCall) ->
    <<"315">>;
getTagId(underlyingStrikePrice) ->
    <<"316">>;
getTagId(underlyingOptAttribute) ->
    <<"317">>;
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
getTagId(partyIDSource) ->
    <<"447">>;
getTagId(partyID) ->
    <<"448">>;
getTagId(totalVolumeTradedDate) ->
    <<"449">>;
getTagId(totalVolumeTradedTime) ->
    <<"450">>;
getTagId(netChgPrevDay) ->
    <<"451">>;
getTagId(partyRole) ->
    <<"452">>;
getTagId(noPartyIDs) ->
    <<"453">>;
getTagId(noSecurityAltID) ->
    <<"454">>;
getTagId(securityAltID) ->
    <<"455">>;
getTagId(securityAltIDSource) ->
    <<"456">>;
getTagId(noUnderlyingSecurityAltID) ->
    <<"457">>;
getTagId(underlyingSecurityAltID) ->
    <<"458">>;
getTagId(underlyingSecurityAltIDSource) ->
    <<"459">>;
getTagId(produkt) ->
    <<"460">>;
getTagId(cFICode) ->
    <<"461">>;
getTagId(underlyingProduct) ->
    <<"462">>;
getTagId(underlyingCFICode) ->
    <<"463">>;
getTagId(testMessageIndicator) ->
    <<"464">>;
getTagId(quantityType) ->
    <<"465">>;
getTagId(bookingRefID) ->
    <<"466">>;
getTagId(individualAllocID) ->
    <<"467">>;
getTagId(roundingDirection) ->
    <<"468">>;
getTagId(roundingModulus) ->
    <<"469">>;
getTagId(countryOfIssue) ->
    <<"470">>;
getTagId(stateOrProvinceOfIssue) ->
    <<"471">>;
getTagId(localeOfIssue) ->
    <<"472">>;
getTagId(noRegistDtls) ->
    <<"473">>;
getTagId(mailingDtls) ->
    <<"474">>;
getTagId(investorCountryOfResidence) ->
    <<"475">>;
getTagId(paymentRef) ->
    <<"476">>;
getTagId(distribPaymentMethod) ->
    <<"477">>;
getTagId(cashDistribCurr) ->
    <<"478">>;
getTagId(commCurrency) ->
    <<"479">>;
getTagId(cancellationRights) ->
    <<"480">>;
getTagId(moneyLaunderingStatus) ->
    <<"481">>;
getTagId(mailingInst) ->
    <<"482">>;
getTagId(transBkdTime) ->
    <<"483">>;
getTagId(execPriceType) ->
    <<"484">>;
getTagId(execPriceAdjustment) ->
    <<"485">>;
getTagId(dateOfBirth) ->
    <<"486">>;
getTagId(tradeReportTransType) ->
    <<"487">>;
getTagId(cardHolderName) ->
    <<"488">>;
getTagId(cardNumber) ->
    <<"489">>;
getTagId(cardExpDate) ->
    <<"490">>;
getTagId(cardIssNo) ->
    <<"491">>;
getTagId(paymentMethod) ->
    <<"492">>;
getTagId(registAcctType) ->
    <<"493">>;
getTagId(designation) ->
    <<"494">>;
getTagId(taxAdvantageType) ->
    <<"495">>;
getTagId(registRejReasonText) ->
    <<"496">>;
getTagId(fundRenewWaiv) ->
    <<"497">>;
getTagId(cashDistribAgentName) ->
    <<"498">>;
getTagId(cashDistribAgentCode) ->
    <<"499">>;
getTagId(cashDistribAgentAcctNumber) ->
    <<"500">>;
getTagId(cashDistribPayRef) ->
    <<"501">>;
getTagId(cardStartDate) ->
    <<"503">>;
getTagId(paymentDate) ->
    <<"504">>;
getTagId(paymentRemitterID) ->
    <<"505">>;
getTagId(registStatus) ->
    <<"506">>;
getTagId(registRejReasonCode) ->
    <<"507">>;
getTagId(registRefID) ->
    <<"508">>;
getTagId(registDetls) ->
    <<"509">>;
getTagId(noDistribInsts) ->
    <<"510">>;
getTagId(registEmail) ->
    <<"511">>;
getTagId(distribPercentage) ->
    <<"512">>;
getTagId(registID) ->
    <<"513">>;
getTagId(registTransType) ->
    <<"514">>;
getTagId(execValuationPoint) ->
    <<"515">>;
getTagId(orderPercent) ->
    <<"516">>;
getTagId(ownershipType) ->
    <<"517">>;
getTagId(noContAmts) ->
    <<"518">>;
getTagId(contAmtType) ->
    <<"519">>;
getTagId(contAmtValue) ->
    <<"520">>;
getTagId(contAmtCurr) ->
    <<"521">>;
getTagId(ownerType) ->
    <<"522">>;
getTagId(partySubID) ->
    <<"523">>;
getTagId(nestedPartyID) ->
    <<"524">>;
getTagId(nestedPartyIDSource) ->
    <<"525">>;
getTagId(secondaryClOrdID) ->
    <<"526">>;
getTagId(secondaryExecID) ->
    <<"527">>;
getTagId(orderCapacity) ->
    <<"528">>;
getTagId(orderRestrictions) ->
    <<"529">>;
getTagId(massCancelRequestType) ->
    <<"530">>;
getTagId(massCancelResponse) ->
    <<"531">>;
getTagId(massCancelRejectReason) ->
    <<"532">>;
getTagId(totalAffectedOrders) ->
    <<"533">>;
getTagId(noAffectedOrders) ->
    <<"534">>;
getTagId(affectedOrderID) ->
    <<"535">>;
getTagId(affectedSecondaryOrderID) ->
    <<"536">>;
getTagId(quoteType) ->
    <<"537">>;
getTagId(nestedPartyRole) ->
    <<"538">>;
getTagId(noNestedPartyIDs) ->
    <<"539">>;
getTagId(totalAccruedInterestAmt) ->
    <<"540">>;
getTagId(maturityDate) ->
    <<"541">>;
getTagId(underlyingMaturityDate) ->
    <<"542">>;
getTagId(instrRegistry) ->
    <<"543">>;
getTagId(cashMargin) ->
    <<"544">>;
getTagId(nestedPartySubID) ->
    <<"545">>;
getTagId(scope) ->
    <<"546">>;
getTagId(mDImplicitDelete) ->
    <<"547">>;
getTagId(crossID) ->
    <<"548">>;
getTagId(crossType) ->
    <<"549">>;
getTagId(crossPrioritization) ->
    <<"550">>;
getTagId(origCrossID) ->
    <<"551">>;
getTagId(noSides) ->
    <<"552">>;
getTagId(username) ->
    <<"553">>;
getTagId(password) ->
    <<"554">>;
getTagId(noLegs) ->
    <<"555">>;
getTagId(legCurrency) ->
    <<"556">>;
getTagId(totalNumSecurityTypes) ->
    <<"557">>;
getTagId(noSecurityTypes) ->
    <<"558">>;
getTagId(securityListRequestType) ->
    <<"559">>;
getTagId(securityRequestResult) ->
    <<"560">>;
getTagId(roundLot) ->
    <<"561">>;
getTagId(minTradeVol) ->
    <<"562">>;
getTagId(multiLegRptTypeReq) ->
    <<"563">>;
getTagId(legPositionEffect) ->
    <<"564">>;
getTagId(legCoveredOrUncovered) ->
    <<"565">>;
getTagId(legPrice) ->
    <<"566">>;
getTagId(tradSesStatusRejReason) ->
    <<"567">>;
getTagId(tradeRequestID) ->
    <<"568">>;
getTagId(tradeRequestType) ->
    <<"569">>;
getTagId(previouslyReported) ->
    <<"570">>;
getTagId(tradeReportID) ->
    <<"571">>;
getTagId(tradeReportRefID) ->
    <<"572">>;
getTagId(matchStatus) ->
    <<"573">>;
getTagId(matchType) ->
    <<"574">>;
getTagId(oddLot) ->
    <<"575">>;
getTagId(noClearingInstructions) ->
    <<"576">>;
getTagId(clearingInstruction) ->
    <<"577">>;
getTagId(tradeInputSource) ->
    <<"578">>;
getTagId(tradeInputDevice) ->
    <<"579">>;
getTagId(noDates) ->
    <<"580">>;
getTagId(accountType) ->
    <<"581">>;
getTagId(custOrderCapacity) ->
    <<"582">>;
getTagId(clOrdLinkID) ->
    <<"583">>;
getTagId(massStatusReqID) ->
    <<"584">>;
getTagId(massStatusReqType) ->
    <<"585">>;
getTagId(origOrdModTime) ->
    <<"586">>;
getTagId(legSettlmntTyp) ->
    <<"587">>;
getTagId(legFutSettDate) ->
    <<"588">>;
getTagId(dayBookingInst) ->
    <<"589">>;
getTagId(bookingUnit) ->
    <<"590">>;
getTagId(preallocMethod) ->
    <<"591">>;
getTagId(underlyingCountryOfIssue) ->
    <<"592">>;
getTagId(underlyingStateOrProvinceOfIssue) ->
    <<"593">>;
getTagId(underlyingLocaleOfIssue) ->
    <<"594">>;
getTagId(underlyingInstrRegistry) ->
    <<"595">>;
getTagId(legCountryOfIssue) ->
    <<"596">>;
getTagId(legStateOrProvinceOfIssue) ->
    <<"597">>;
getTagId(legLocaleOfIssue) ->
    <<"598">>;
getTagId(legInstrRegistry) ->
    <<"599">>;
getTagId(legSymbol) ->
    <<"600">>;
getTagId(legSymbolSfx) ->
    <<"601">>;
getTagId(legSecurityID) ->
    <<"602">>;
getTagId(legSecurityIDSource) ->
    <<"603">>;
getTagId(noLegSecurityAltID) ->
    <<"604">>;
getTagId(legSecurityAltID) ->
    <<"605">>;
getTagId(legSecurityAltIDSource) ->
    <<"606">>;
getTagId(legProduct) ->
    <<"607">>;
getTagId(legCFICode) ->
    <<"608">>;
getTagId(legSecurityType) ->
    <<"609">>;
getTagId(legMaturityMonthYear) ->
    <<"610">>;
getTagId(legMaturityDate) ->
    <<"611">>;
getTagId(legStrikePrice) ->
    <<"612">>;
getTagId(legOptAttribute) ->
    <<"613">>;
getTagId(legContractMultiplier) ->
    <<"614">>;
getTagId(legCouponRate) ->
    <<"615">>;
getTagId(legSecurityExchange) ->
    <<"616">>;
getTagId(legIssuer) ->
    <<"617">>;
getTagId(encodedLegIssuerLen) ->
    <<"618">>;
getTagId(encodedLegIssuer) ->
    <<"619">>;
getTagId(legSecurityDesc) ->
    <<"620">>;
getTagId(encodedLegSecurityDescLen) ->
    <<"621">>;
getTagId(encodedLegSecurityDesc) ->
    <<"622">>;
getTagId(legRatioQty) ->
    <<"623">>;
getTagId(legSide) ->
    <<"624">>;
getTagId(tradingSessionSubID) ->
    <<"625">>;
getTagId(allocType) ->
    <<"626">>;
getTagId(noHops) ->
    <<"627">>;
getTagId(hopCompID) ->
    <<"628">>;
getTagId(hopSendingTime) ->
    <<"629">>;
getTagId(hopRefID) ->
    <<"630">>;
getTagId(midPx) ->
    <<"631">>;
getTagId(bidYield) ->
    <<"632">>;
getTagId(midYield) ->
    <<"633">>;
getTagId(offerYield) ->
    <<"634">>;
getTagId(clearingFeeIndicator) ->
    <<"635">>;
getTagId(workingIndicator) ->
    <<"636">>;
getTagId(legLastPx) ->
    <<"637">>;
getTagId(priorityIndicator) ->
    <<"638">>;
getTagId(priceImprovement) ->
    <<"639">>;
getTagId(price2) ->
    <<"640">>;
getTagId(lastForwardPoints2) ->
    <<"641">>;
getTagId(bidForwardPoints2) ->
    <<"642">>;
getTagId(offerForwardPoints2) ->
    <<"643">>;
getTagId(rFQReqID) ->
    <<"644">>;
getTagId(mktBidPx) ->
    <<"645">>;
getTagId(mktOfferPx) ->
    <<"646">>;
getTagId(minBidSize) ->
    <<"647">>;
getTagId(minOfferSize) ->
    <<"648">>;
getTagId(quoteStatusReqID) ->
    <<"649">>;
getTagId(legalConfirm) ->
    <<"650">>;
getTagId(underlyingLastPx) ->
    <<"651">>;
getTagId(underlyingLastQty) ->
    <<"652">>;
getTagId(legRefID) ->
    <<"654">>;
getTagId(contraLegRefID) ->
    <<"655">>;
getTagId(settlCurrBidFxRate) ->
    <<"656">>;
getTagId(settlCurrOfferFxRate) ->
    <<"657">>;
getTagId(quoteRequestRejectReason) ->
    <<"658">>;
getTagId(sideComplianceID) ->
    <<"659">>;
getTagId(_Name) ->
    error.
reconvert(advSide, buy) -> 
    <<"B">>;
reconvert(advSide, sell) -> 
    <<"S">>;
reconvert(advSide, cross) -> 
    <<"X">>;
reconvert(advSide, trade) -> 
    <<"T">>;
reconvert(advTransType, new) -> 
    <<"N">>;
reconvert(advTransType, cancel) -> 
    <<"C">>;
reconvert(advTransType, replace) -> 
    <<"R">>;
reconvert(beginSeqNo, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(bodyLength, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(commType, pointsPerBondOrContract) -> 
    <<"6">>;
reconvert(commType, perUnit) -> 
    <<"1">>;
reconvert(commType, percent) -> 
    <<"2">>;
reconvert(commType, absolute) -> 
    <<"3">>;
reconvert(commType, percentageWaivedEnhancedUnits) -> 
    <<"5">>;
reconvert(commType, percentageWaivedCashDiscount) -> 
    <<"4">>;
reconvert(endSeqNo, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(execInst, tryToStop) -> 
    <<"Y">>;
reconvert(execInst, midPricePeg) -> 
    <<"M">>;
reconvert(execInst, marketPeg) -> 
    <<"P">>;
reconvert(execInst, cancelOnSystemFailure) -> 
    <<"Q">>;
reconvert(execInst, primaryPeg) -> 
    <<"R">>;
reconvert(execInst, suspend) -> 
    <<"S">>;
reconvert(execInst, customerDisplayInstruction) -> 
    <<"U">>;
reconvert(execInst, netting) -> 
    <<"V">>;
reconvert(execInst, pegToVWAP) -> 
    <<"W">>;
reconvert(execInst, tradeAlong) -> 
    <<"X">>;
reconvert(execInst, percentOfVolume) -> 
    <<"D">>;
reconvert(execInst, stayOnOfferSide) -> 
    <<"0">>;
reconvert(execInst, work) -> 
    <<"2">>;
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
reconvert(execInst, openingPeg) -> 
    <<"O">>;
reconvert(execInst, callFirst) -> 
    <<"C">>;
reconvert(execInst, nonNegotiable) -> 
    <<"N">>;
reconvert(execInst, doNotIncrease) -> 
    <<"E">>;
reconvert(execInst, doNotReduce) -> 
    <<"F">>;
reconvert(execInst, allOrNone) -> 
    <<"G">>;
reconvert(execInst, reinstateOnSystemFailure) -> 
    <<"H">>;
reconvert(execInst, institutionsOnly) -> 
    <<"I">>;
reconvert(execInst, reinstateOnTradingHalt) -> 
    <<"J">>;
reconvert(execInst, cancelOnTradingHalt) -> 
    <<"K">>;
reconvert(execInst, lastPeg) -> 
    <<"L">>;
reconvert(execInst, goAlong) -> 
    <<"3">>;
reconvert(execInst, oKToCross) -> 
    <<"B">>;
reconvert(execInst, notHeld) -> 
    <<"1">>;
reconvert(handlInst, automatedExecutionNoIntervention) -> 
    <<"1">>;
reconvert(handlInst, automatedExecutionInterventionOK) -> 
    <<"2">>;
reconvert(handlInst, manualOrder) -> 
    <<"3">>;
reconvert(securityIDSource, sicovam) -> 
    <<"E">>;
reconvert(securityIDSource, sEDOL) -> 
    <<"2">>;
reconvert(securityIDSource, cUSIP) -> 
    <<"1">>;
reconvert(securityIDSource, qUIK) -> 
    <<"3">>;
reconvert(securityIDSource, belgian) -> 
    <<"F">>;
reconvert(securityIDSource, valoren) -> 
    <<"D">>;
reconvert(securityIDSource, dutch) -> 
    <<"C">>;
reconvert(securityIDSource, wertpapier) -> 
    <<"B">>;
reconvert(securityIDSource, bloombergSymbol) -> 
    <<"A">>;
reconvert(securityIDSource, consolidatedTapeAssociation) -> 
    <<"9">>;
reconvert(securityIDSource, exchangeSymbol) -> 
    <<"8">>;
reconvert(securityIDSource, iSOCountryCode) -> 
    <<"7">>;
reconvert(securityIDSource, iSOCurrencyCode) -> 
    <<"6">>;
reconvert(securityIDSource, rICCode) -> 
    <<"5">>;
reconvert(securityIDSource, iSINNumber) -> 
    <<"4">>;
reconvert(securityIDSource, common) -> 
    <<"G">>;
reconvert(iOIQltyInd, medium) -> 
    <<"M">>;
reconvert(iOIQltyInd, high) -> 
    <<"H">>;
reconvert(iOIQltyInd, low) -> 
    <<"L">>;
reconvert(iOIQty, large) -> 
    <<"L">>;
reconvert(iOIQty, medium) -> 
    <<"M">>;
reconvert(iOIQty, small) -> 
    <<"S">>;
reconvert(iOITransType, cancel) -> 
    <<"C">>;
reconvert(iOITransType, new) -> 
    <<"N">>;
reconvert(iOITransType, replace) -> 
    <<"R">>;
reconvert(lastCapacity, principal) -> 
    <<"4">>;
reconvert(lastCapacity, crossAsPrincipal) -> 
    <<"3">>;
reconvert(lastCapacity, agent) -> 
    <<"1">>;
reconvert(lastCapacity, crossAsAgent) -> 
    <<"2">>;
reconvert(linesOfText, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(msgSeqNum, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
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
reconvert(msgType, quoteStatusRequest) -> 
    <<"a">>;
reconvert(msgType, logon) -> 
    <<"A">>;
reconvert(msgType, derivativeSecurityList) -> 
    <<"AA">>;
reconvert(msgType, newOrderMultileg) -> 
    <<"AB">>;
reconvert(msgType, multilegOrderCancelReplace) -> 
    <<"AC">>;
reconvert(msgType, tradeCaptureReportRequest) -> 
    <<"AD">>;
reconvert(msgType, tradeCaptureReport) -> 
    <<"AE">>;
reconvert(msgType, orderMassStatusRequest) -> 
    <<"AF">>;
reconvert(msgType, quoteRequestReject) -> 
    <<"AG">>;
reconvert(msgType, rFQRequest) -> 
    <<"AH">>;
reconvert(msgType, quoteStatusReport) -> 
    <<"AI">>;
reconvert(msgType, massQuoteAcknowledgement) -> 
    <<"b">>;
reconvert(msgType, news) -> 
    <<"B">>;
reconvert(msgType, securityDefinitionRequest) -> 
    <<"c">>;
reconvert(msgType, email) -> 
    <<"C">>;
reconvert(msgType, securityDefinition) -> 
    <<"d">>;
reconvert(msgType, newOrderSingle) -> 
    <<"D">>;
reconvert(msgType, securityStatusRequest) -> 
    <<"e">>;
reconvert(msgType, newOrderList) -> 
    <<"E">>;
reconvert(msgType, securityStatus) -> 
    <<"f">>;
reconvert(msgType, orderCancelRequest) -> 
    <<"F">>;
reconvert(msgType, orderCancelReplaceRequest) -> 
    <<"G">>;
reconvert(msgType, tradingSessionStatusRequest) -> 
    <<"g">>;
reconvert(msgType, tradingSessionStatus) -> 
    <<"h">>;
reconvert(msgType, orderStatusRequest) -> 
    <<"H">>;
reconvert(msgType, massQuote) -> 
    <<"i">>;
reconvert(msgType, businessMessageReject) -> 
    <<"j">>;
reconvert(msgType, allocationInstruction) -> 
    <<"J">>;
reconvert(msgType, listCancelRequest) -> 
    <<"K">>;
reconvert(msgType, bidRequest) -> 
    <<"k">>;
reconvert(msgType, bidResponse) -> 
    <<"l">>;
reconvert(msgType, listExecute) -> 
    <<"L">>;
reconvert(msgType, listStrikePrice) -> 
    <<"m">>;
reconvert(msgType, listStatusRequest) -> 
    <<"M">>;
reconvert(msgType, listStatus) -> 
    <<"N">>;
reconvert(msgType, xMLNonFIX) -> 
    <<"n">>;
reconvert(msgType, registrationInstructions) -> 
    <<"o">>;
reconvert(msgType, allocationInstructionAck) -> 
    <<"P">>;
reconvert(msgType, registrationInstructionsResponse) -> 
    <<"p">>;
reconvert(msgType, orderMassCancelRequest) -> 
    <<"q">>;
reconvert(msgType, dontKnowTrade) -> 
    <<"Q">>;
reconvert(msgType, orderMassCancelReport) -> 
    <<"r">>;
reconvert(msgType, quoteRequest) -> 
    <<"R">>;
reconvert(msgType, newOrderCross) -> 
    <<"s">>;
reconvert(msgType, quote) -> 
    <<"S">>;
reconvert(msgType, crossOrderCancelReplaceRequest) -> 
    <<"t">>;
reconvert(msgType, settlementInstructions) -> 
    <<"T">>;
reconvert(msgType, crossOrderCancelRequest) -> 
    <<"u">>;
reconvert(msgType, securityTypeRequest) -> 
    <<"v">>;
reconvert(msgType, marketDataRequest) -> 
    <<"V">>;
reconvert(msgType, securityTypes) -> 
    <<"w">>;
reconvert(msgType, marketDataSnapshotFullRefresh) -> 
    <<"W">>;
reconvert(msgType, securityListRequest) -> 
    <<"x">>;
reconvert(msgType, marketDataIncrementalRefresh) -> 
    <<"X">>;
reconvert(msgType, securityList) -> 
    <<"y">>;
reconvert(msgType, marketDataRequestReject) -> 
    <<"Y">>;
reconvert(msgType, derivativeSecurityListRequest) -> 
    <<"z">>;
reconvert(msgType, quoteCancel) -> 
    <<"Z">>;
reconvert(newSeqNo, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(ordStatus, new) -> 
    <<"0">>;
reconvert(ordStatus, partiallyFilled) -> 
    <<"1">>;
reconvert(ordStatus, replaced) -> 
    <<"5">>;
reconvert(ordStatus, filled) -> 
    <<"2">>;
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
reconvert(ordStatus, doneForDay) -> 
    <<"3">>;
reconvert(ordStatus, canceled) -> 
    <<"4">>;
reconvert(ordType, previouslyQuoted) -> 
    <<"D">>;
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
reconvert(ordType, market) -> 
    <<"1">>;
reconvert(ordType, forexMarket) -> 
    <<"C">>;
reconvert(ordType, forexLimit) -> 
    <<"F">>;
reconvert(ordType, previouslyIndicated) -> 
    <<"E">>;
reconvert(ordType, forexSwap) -> 
    <<"G">>;
reconvert(ordType, funari) -> 
    <<"I">>;
reconvert(ordType, marketIfTouched) -> 
    <<"J">>;
reconvert(ordType, marketWithLeftOverAsLimit) -> 
    <<"K">>;
reconvert(ordType, previousFundValuationPoint) -> 
    <<"L">>;
reconvert(ordType, nextFundValuationPoint) -> 
    <<"M">>;
reconvert(ordType, pegged) -> 
    <<"P">>;
reconvert(ordType, limitOnClose) -> 
    <<"B">>;
reconvert(ordType, forexPreviouslyQuoted) -> 
    <<"H">>;
reconvert(possDupFlag, originalTransmission) -> 
    <<"N">>;
reconvert(possDupFlag, possibleDuplicate) -> 
    <<"Y">>;
reconvert(refSeqNum, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(rule80A, agentForOtherMember) -> 
    <<"N">>;
reconvert(rule80A, shortExemptTransactionAType) -> 
    <<"B">>;
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
reconvert(rule80A, programOrderOtherMember) -> 
    <<"M">>;
reconvert(rule80A, agencySingleOrder) -> 
    <<"A">>;
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
reconvert(rule80A, shortExemptTransactionMemberAffliated) -> 
    <<"L">>;
reconvert(rule80A, proprietaryNonAlgo) -> 
    <<"C">>;
reconvert(side, sellShortExempt) -> 
    <<"6">>;
reconvert(side, asDefined) -> 
    <<"B">>;
reconvert(side, opposite) -> 
    <<"C">>;
reconvert(side, cross) -> 
    <<"8">>;
reconvert(side, crossShort) -> 
    <<"9">>;
reconvert(side, buy) -> 
    <<"1">>;
reconvert(side, sell) -> 
    <<"2">>;
reconvert(side, buyMinus) -> 
    <<"3">>;
reconvert(side, sellPlus) -> 
    <<"4">>;
reconvert(side, crossShortExempt) -> 
    <<"A">>;
reconvert(side, sellShort) -> 
    <<"5">>;
reconvert(side, undisclosed) -> 
    <<"7">>;
reconvert(timeInForce, atTheClose) -> 
    <<"7">>;
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
reconvert(urgency, flash) -> 
    <<"1">>;
reconvert(urgency, background) -> 
    <<"2">>;
reconvert(urgency, normal) -> 
    <<"0">>;
reconvert(settlmntTyp, tPlus4) -> 
    <<"5">>;
reconvert(settlmntTyp, t1) -> 
    <<"A">>;
reconvert(settlmntTyp, future) -> 
    <<"6">>;
reconvert(settlmntTyp, tPlus2) -> 
    <<"3">>;
reconvert(settlmntTyp, nextDay) -> 
    <<"2">>;
reconvert(settlmntTyp, sellersOption) -> 
    <<"8">>;
reconvert(settlmntTyp, cash) -> 
    <<"1">>;
reconvert(settlmntTyp, whenAndIfIssued) -> 
    <<"7">>;
reconvert(settlmntTyp, regular) -> 
    <<"0">>;
reconvert(settlmntTyp, tPlus5) -> 
    <<"9">>;
reconvert(settlmntTyp, tPlus3) -> 
    <<"4">>;
reconvert(listSeqNo, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(totNoOrders, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(allocTransType, calculatedWithoutPreliminary) -> 
    <<"5">>;
reconvert(allocTransType, calculated) -> 
    <<"4">>;
reconvert(allocTransType, preliminary) -> 
    <<"3">>;
reconvert(allocTransType, cancel) -> 
    <<"2">>;
reconvert(allocTransType, replace) -> 
    <<"1">>;
reconvert(allocTransType, new) -> 
    <<"0">>;
reconvert(noOrders, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(avgPrxPrecision, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(positionEffect, fIFO) -> 
    <<"F">>;
reconvert(positionEffect, rolled) -> 
    <<"R">>;
reconvert(positionEffect, close) -> 
    <<"C">>;
reconvert(positionEffect, open) -> 
    <<"O">>;
reconvert(noAllocs, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(processCode, planSponsor) -> 
    <<"6">>;
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
reconvert(noRpts, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(rptSeq, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(allocStatus, blockLevelReject) -> 
    <<"1">>;
reconvert(allocStatus, accountLevelReject) -> 
    <<"2">>;
reconvert(allocStatus, received) -> 
    <<"3">>;
reconvert(allocStatus, accepted) -> 
    <<"0">>;
reconvert(allocRejCode, unknownAccount) -> 
    <<"0">>;
reconvert(allocRejCode, unknownListID) -> 
    <<"6">>;
reconvert(allocRejCode, unknownExecutingBrokerMnemonic) -> 
    <<"3">>;
reconvert(allocRejCode, unknownOrderID) -> 
    <<"5">>;
reconvert(allocRejCode, otherSeeText) -> 
    <<"7">>;
reconvert(allocRejCode, commissionDifference) -> 
    <<"4">>;
reconvert(allocRejCode, incorrectQuantity) -> 
    <<"1">>;
reconvert(allocRejCode, incorrectAveragegPrice) -> 
    <<"2">>;
reconvert(secureDataLen, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(signatureLength, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(emailType, new) -> 
    <<"0">>;
reconvert(emailType, reply) -> 
    <<"1">>;
reconvert(emailType, adminReply) -> 
    <<"2">>;
reconvert(rawDataLength, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(possResend, originalTransmission) -> 
    <<"N">>;
reconvert(possResend, possibleResend) -> 
    <<"Y">>;
reconvert(encryptMethod, dES) -> 
    <<"2">>;
reconvert(encryptMethod, pEM) -> 
    <<"6">>;
reconvert(encryptMethod, pGPDESMD5) -> 
    <<"5">>;
reconvert(encryptMethod, pKCSDES) -> 
    <<"3">>;
reconvert(encryptMethod, none) -> 
    <<"0">>;
reconvert(encryptMethod, pKCS) -> 
    <<"1">>;
reconvert(encryptMethod, pGPDES) -> 
    <<"4">>;
reconvert(cxlRejReason, unknownOrder) -> 
    <<"1">>;
reconvert(cxlRejReason, tooLateToCancel) -> 
    <<"0">>;
reconvert(cxlRejReason, duplicateClOrdID) -> 
    <<"6">>;
reconvert(cxlRejReason, origOrdModTime) -> 
    <<"5">>;
reconvert(cxlRejReason, unableToProcessOrderMassCancelRequest) -> 
    <<"4">>;
reconvert(cxlRejReason, orderAlreadyInPendingStatus) -> 
    <<"3">>;
reconvert(cxlRejReason, brokerCredit) -> 
    <<"2">>;
reconvert(ordRejReason, exchangeClosed) -> 
    <<"2">>;
reconvert(ordRejReason, unknownSymbol) -> 
    <<"1">>;
reconvert(ordRejReason, orderExceedsLimit) -> 
    <<"3">>;
reconvert(ordRejReason, tooLateToEnter) -> 
    <<"4">>;
reconvert(ordRejReason, unknownOrder) -> 
    <<"5">>;
reconvert(ordRejReason, duplicateOfAVerballyCommunicatedOrder) -> 
    <<"7">>;
reconvert(ordRejReason, tradeAlongRequired) -> 
    <<"9">>;
reconvert(ordRejReason, invalidInvestorID) -> 
    <<"10">>;
reconvert(ordRejReason, duplicateOrder) -> 
    <<"6">>;
reconvert(ordRejReason, unsupportedOrderCharacteristic) -> 
    <<"11">>;
reconvert(ordRejReason, surveillenceOption) -> 
    <<"12">>;
reconvert(ordRejReason, brokerCredit) -> 
    <<"0">>;
reconvert(ordRejReason, staleOrder) -> 
    <<"8">>;
reconvert(iOIQualifier, atTheOpen) -> 
    <<"O">>;
reconvert(iOIQualifier, crossingOpportunity) -> 
    <<"X">>;
reconvert(iOIQualifier, indication) -> 
    <<"W">>;
reconvert(iOIQualifier, versus) -> 
    <<"V">>;
reconvert(iOIQualifier, throughTheDay) -> 
    <<"T">>;
reconvert(iOIQualifier, portfolioShown) -> 
    <<"S">>;
reconvert(iOIQualifier, readyToTrade) -> 
    <<"R">>;
reconvert(iOIQualifier, allOrNone) -> 
    <<"A">>;
reconvert(iOIQualifier, takingAPosition) -> 
    <<"P">>;
reconvert(iOIQualifier, moreBehind) -> 
    <<"M">>;
reconvert(iOIQualifier, limit) -> 
    <<"L">>;
reconvert(iOIQualifier, inTouchWith) -> 
    <<"I">>;
reconvert(iOIQualifier, vWAP) -> 
    <<"D">>;
reconvert(iOIQualifier, atTheClose) -> 
    <<"C">>;
reconvert(iOIQualifier, marketOnClose) -> 
    <<"B">>;
reconvert(iOIQualifier, atTheMarket) -> 
    <<"Q">>;
reconvert(iOIQualifier, atTheMidpoint) -> 
    <<"Y">>;
reconvert(iOIQualifier, preOpen) -> 
    <<"Z">>;
reconvert(heartBtInt, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(reportToExch, receiverReports) -> 
    <<"Y">>;
reconvert(reportToExch, senderReports) -> 
    <<"N">>;
reconvert(locateReqd, yes) -> 
    <<"Y">>;
reconvert(locateReqd, no) -> 
    <<"N">>;
reconvert(forexReq, executeForexAfterSecurityTrade) -> 
    <<"Y">>;
reconvert(forexReq, doNotExecuteForexAfterSecurityTrade) -> 
    <<"N">>;
reconvert(gapFillFlag, gapFillMessage) -> 
    <<"Y">>;
reconvert(gapFillFlag, sequenceReset) -> 
    <<"N">>;
reconvert(noExecs, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
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
reconvert(dKReason, unknownSymbol) -> 
    <<"A">>;
reconvert(iOINaturalFlag, natural) -> 
    <<"Y">>;
reconvert(iOINaturalFlag, notNatural) -> 
    <<"N">>;
reconvert(noMiscFees, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
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
reconvert(miscFeeType, regulatory) -> 
    <<"1">>;
reconvert(miscFeeType, tax) -> 
    <<"2">>;
reconvert(resetSeqNumFlag, yes) -> 
    <<"Y">>;
reconvert(resetSeqNumFlag, no) -> 
    <<"N">>;
reconvert(noRelatedSym, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(execType, pendingCancel) -> 
    <<"6">>;
reconvert(execType, new) -> 
    <<"0">>;
reconvert(execType, partialFill) -> 
    <<"1">>;
reconvert(execType, fill) -> 
    <<"2">>;
reconvert(execType, canceled) -> 
    <<"4">>;
reconvert(execType, replaced) -> 
    <<"5">>;
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
reconvert(execType, trade) -> 
    <<"F">>;
reconvert(execType, tradeCorrect) -> 
    <<"G">>;
reconvert(execType, tradeCancel) -> 
    <<"H">>;
reconvert(execType, orderStatus) -> 
    <<"I">>;
reconvert(execType, doneForDay) -> 
    <<"3">>;
reconvert(execType, stopped) -> 
    <<"7">>;
reconvert(settlCurrFxRateCalc, divide) -> 
    <<"D">>;
reconvert(settlCurrFxRateCalc, multiply) -> 
    <<"M">>;
reconvert(numDaysInterest, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(settlInstMode, default) -> 
    <<"0">>;
reconvert(settlInstMode, specificOrderForASingleAccount) -> 
    <<"4">>;
reconvert(settlInstMode, specificAllocationAccountStanding) -> 
    <<"3">>;
reconvert(settlInstMode, standingInstructionsProvided) -> 
    <<"1">>;
reconvert(settlInstMode, specificAllocationAccountOverriding) -> 
    <<"2">>;
reconvert(settlInstTransType, new) -> 
    <<"N">>;
reconvert(settlInstTransType, replace) -> 
    <<"R">>;
reconvert(settlInstTransType, cancel) -> 
    <<"C">>;
reconvert(settlInstSource, institution) -> 
    <<"2">>;
reconvert(settlInstSource, investor) -> 
    <<"3">>;
reconvert(settlInstSource, brokerCredit) -> 
    <<"1">>;
reconvert(securityType, commercialPaper) -> 
    <<"CP">>;
reconvert(securityType, variableRateDemandNote) -> 
    <<"VRDN">>;
reconvert(securityType, plazosFijos) -> 
    <<"PZFJ">>;
reconvert(securityType, promissoryNote) -> 
    <<"PN">>;
reconvert(securityType, overnight) -> 
    <<"ONITE">>;
reconvert(securityType, mediumTermNotes) -> 
    <<"MTN">>;
reconvert(securityType, taxExemptCommercialPaper) -> 
    <<"TECP">>;
reconvert(securityType, amended) -> 
    <<"AMENDED">>;
reconvert(securityType, bridgeLoan) -> 
    <<"BRIDGE">>;
reconvert(securityType, letterOfCredit) -> 
    <<"LOFC">>;
reconvert(securityType, swingLineFacility) -> 
    <<"SWING">>;
reconvert(securityType, debtorInPossession) -> 
    <<"DINP">>;
reconvert(securityType, defaulted) -> 
    <<"DEFLTED">>;
reconvert(securityType, withdrawn) -> 
    <<"WITHDRN">>;
reconvert(securityType, liquidityNote) -> 
    <<"LQN">>;
reconvert(securityType, matured) -> 
    <<"MATURED">>;
reconvert(securityType, depositNotes) -> 
    <<"DN">>;
reconvert(securityType, retired) -> 
    <<"RETIRED">>;
reconvert(securityType, bankersAcceptance) -> 
    <<"BA">>;
reconvert(securityType, bankNotes) -> 
    <<"BN">>;
reconvert(securityType, billOfExchanges) -> 
    <<"BOX">>;
reconvert(securityType, certificateOfDeposit) -> 
    <<"CD">>;
reconvert(securityType, callLoans) -> 
    <<"CL">>;
reconvert(securityType, replaced) -> 
    <<"REPLACD">>;
reconvert(securityType, mandatoryTender) -> 
    <<"MT">>;
reconvert(securityType, revolver) -> 
    <<"RVLVTRM">>;
reconvert(securityType, mortgagePrivatePlacement) -> 
    <<"MPP">>;
reconvert(securityType, shortTermLoanNote) -> 
    <<"STN">>;
reconvert(securityType, miscellaneousPassThrough) -> 
    <<"MPT">>;
reconvert(securityType, toBeAnnounced) -> 
    <<"TBA">>;
reconvert(securityType, otherAnticipationNotes) -> 
    <<"AN">>;
reconvert(securityType, mortgageInterestOnly) -> 
    <<"MIO">>;
reconvert(securityType, certificateOfParticipation) -> 
    <<"COFP">>;
reconvert(securityType, mortgageBackedSecurities) -> 
    <<"MBS">>;
reconvert(securityType, revenueBonds) -> 
    <<"REV">>;
reconvert(securityType, specialAssessment) -> 
    <<"SPCLA">>;
reconvert(securityType, specialObligation) -> 
    <<"SPCLO">>;
reconvert(securityType, specialTax) -> 
    <<"SPCLT">>;
reconvert(securityType, taxAnticipationNote) -> 
    <<"TAN">>;
reconvert(securityType, taxAllocation) -> 
    <<"TAXA">>;
reconvert(securityType, certificateOfObligation) -> 
    <<"COFO">>;
reconvert(securityType, timeDeposit) -> 
    <<"TD">>;
reconvert(securityType, generalObligationBonds) -> 
    <<"GO">>;
reconvert(securityType, wildcard) -> 
    <<"?">>;
reconvert(securityType, warrant) -> 
    <<"WAR">>;
reconvert(securityType, mutualFund) -> 
    <<"MF">>;
reconvert(securityType, multilegInstrument) -> 
    <<"MLEG">>;
reconvert(securityType, taxRevenueAnticipationNote) -> 
    <<"TRAN">>;
reconvert(securityType, mortgagePrincipalOnly) -> 
    <<"MPO">>;
reconvert(securityType, repurchaseAgreement) -> 
    <<"RP">>;
reconvert(securityType, noSecurityType) -> 
    <<"NONE">>;
reconvert(securityType, extendedCommNote) -> 
    <<"XCN">>;
reconvert(securityType, agencyPools) -> 
    <<"POOL">>;
reconvert(securityType, assetBackedSecurities) -> 
    <<"ABS">>;
reconvert(securityType, corp) -> 
    <<"CMBS">>;
reconvert(securityType, collateralizedMortgageObligation) -> 
    <<"CMO">>;
reconvert(securityType, iOETTEMortgage) -> 
    <<"IET">>;
reconvert(securityType, reverseRepurchaseAgreement) -> 
    <<"RVRP">>;
reconvert(securityType, foreignExchangeContract) -> 
    <<"FOR">>;
reconvert(securityType, revenueAnticipationNote) -> 
    <<"RAN">>;
reconvert(securityType, revolverLoan) -> 
    <<"RVLV">>;
reconvert(securityType, federalAgencyCoupon) -> 
    <<"FAC">>;
reconvert(securityType, federalAgencyDiscountNote) -> 
    <<"FADN">>;
reconvert(securityType, privateExportFunding) -> 
    <<"PEF">>;
reconvert(securityType, corporateBond) -> 
    <<"CORP">>;
reconvert(securityType, corporatePrivatePlacement) -> 
    <<"CPP">>;
reconvert(securityType, convertibleBond) -> 
    <<"CB">>;
reconvert(securityType, dualCurrency) -> 
    <<"DUAL">>;
reconvert(securityType, indexedLinked) -> 
    <<"XLINKD">>;
reconvert(securityType, yankeeCorporateBond) -> 
    <<"YANK">>;
reconvert(securityType, commonStock) -> 
    <<"CS">>;
reconvert(securityType, preferredStock) -> 
    <<"PS">>;
reconvert(securityType, bradyBond) -> 
    <<"BRADY">>;
reconvert(securityType, uSTreasuryBond) -> 
    <<"TBOND">>;
reconvert(securityType, interestStripFromAnyBondOrNote) -> 
    <<"TINT">>;
reconvert(securityType, treasuryInflationProtectedSecurities) -> 
    <<"TIPS">>;
reconvert(securityType, principalStripOfACallableBondOrNote) -> 
    <<"TCAL">>;
reconvert(securityType, principalStripFromANonCallableBondOrNote) -> 
    <<"TPRN">>;
reconvert(securityType, uSTreasuryNoteOld) -> 
    <<"UST">>;
reconvert(securityType, uSTreasuryBillOld) -> 
    <<"USTB">>;
reconvert(securityType, termLoan) -> 
    <<"TERM">>;
reconvert(securityType, structuredNotes) -> 
    <<"STRUCT">>;
reconvert(standInstDbType, other) -> 
    <<"0">>;
reconvert(standInstDbType, dTCSID) -> 
    <<"1">>;
reconvert(standInstDbType, aGlobalCustodian) -> 
    <<"3">>;
reconvert(standInstDbType, thomsonALERT) -> 
    <<"2">>;
reconvert(settlDeliveryType, free) -> 
    <<"1">>;
reconvert(settlDeliveryType, versus) -> 
    <<"0">>;
reconvert(allocLinkType, fXNetting) -> 
    <<"0">>;
reconvert(allocLinkType, fXSwap) -> 
    <<"1">>;
reconvert(noIOIQualifiers, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(coveredOrUncovered, uncovered) -> 
    <<"1">>;
reconvert(coveredOrUncovered, covered) -> 
    <<"0">>;
reconvert(notifyBrokerOfCredit, detailsShouldNotBeCommunicated) -> 
    <<"N">>;
reconvert(notifyBrokerOfCredit, detailsShouldBeCommunicated) -> 
    <<"Y">>;
reconvert(allocHandlInst, forwardAndMatch) -> 
    <<"3">>;
reconvert(allocHandlInst, forward) -> 
    <<"2">>;
reconvert(allocHandlInst, match) -> 
    <<"1">>;
reconvert(xmlDataLen, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(noRoutingIDs, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(routingType, targetFirm) -> 
    <<"1">>;
reconvert(routingType, targetList) -> 
    <<"2">>;
reconvert(routingType, blockFirm) -> 
    <<"3">>;
reconvert(routingType, blockList) -> 
    <<"4">>;
reconvert(benchmark, oLD10) -> 
    <<"5">>;
reconvert(benchmark, cURVE) -> 
    <<"1">>;
reconvert(benchmark, fiveYR) -> 
    <<"2">>;
reconvert(benchmark, tenYR) -> 
    <<"4">>;
reconvert(benchmark, thirtyYR) -> 
    <<"6">>;
reconvert(benchmark, oLD30) -> 
    <<"7">>;
reconvert(benchmark, threeMOLIBOR) -> 
    <<"8">>;
reconvert(benchmark, sixMOLIBOR) -> 
    <<"9">>;
reconvert(benchmark, oLD5) -> 
    <<"3">>;
reconvert(benchmarkCurveName, sWAP) -> 
    <<"SWAP">>;
reconvert(benchmarkCurveName, lIBID) -> 
    <<"LIBID">>;
reconvert(benchmarkCurveName, oTHER) -> 
    <<"OTHER">>;
reconvert(benchmarkCurveName, treasury) -> 
    <<"Treasury">>;
reconvert(benchmarkCurveName, euribor) -> 
    <<"Euribor">>;
reconvert(benchmarkCurveName, pfandbriefe) -> 
    <<"Pfandbriefe">>;
reconvert(benchmarkCurveName, futureSWAP) -> 
    <<"FutureSWAP">>;
reconvert(benchmarkCurveName, muniAAA) -> 
    <<"MuniAAA">>;
reconvert(benchmarkCurveName, lIBOR) -> 
    <<"LIBOR">>;
reconvert(repurchaseTerm, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(noStipulations, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(stipulationType, absolutePrepaymentSpeed) -> 
    <<"ABS">>;
reconvert(stipulationType, weightedAverageLoanAge) -> 
    <<"WALA">>;
reconvert(stipulationType, weightedAverageMaturity) -> 
    <<"WAM">>;
reconvert(stipulationType, constantPrepaymentRate) -> 
    <<"CPR">>;
reconvert(stipulationType, finalCPROfHomeEquityPrepaymentCurve) -> 
    <<"HEP">>;
reconvert(stipulationType, weightedAverageLifeCoupon) -> 
    <<"WAL">>;
reconvert(stipulationType, percentOfManufacturedHousingPrepaymentCurve) -> 
    <<"MHP">>;
reconvert(stipulationType, singleMonthlyMortality) -> 
    <<"SMM">>;
reconvert(stipulationType, monthlyPrepaymentRate) -> 
    <<"MPR">>;
reconvert(stipulationType, percentOfBMAPrepaymentCurve) -> 
    <<"PSA">>;
reconvert(stipulationType, percentOfProspectusPrepaymentCurve) -> 
    <<"PPC">>;
reconvert(stipulationType, constantPrepaymentPenalty) -> 
    <<"CPP">>;
reconvert(stipulationType, lotVariance) -> 
    <<"LOTVAR">>;
reconvert(stipulationType, constantPrepaymentYield) -> 
    <<"CPY">>;
reconvert(stipulationType, weightedAverageCoupon) -> 
    <<"WAC">>;
reconvert(stipulationType, issueDate) -> 
    <<"ISSUE">>;
reconvert(stipulationType, maturityYearAndMonth) -> 
    <<"MAT">>;
reconvert(stipulationType, numberOfPieces) -> 
    <<"PIECES">>;
reconvert(stipulationType, poolsMaximum) -> 
    <<"PMAX">>;
reconvert(stipulationType, poolsPerMillion) -> 
    <<"PPM">>;
reconvert(stipulationType, poolsPerLot) -> 
    <<"PPL">>;
reconvert(stipulationType, poolsPerTrade) -> 
    <<"PPT">>;
reconvert(stipulationType, productionYear) -> 
    <<"PROD">>;
reconvert(stipulationType, tradeVariance) -> 
    <<"TRDVAR">>;
reconvert(stipulationType, geographics) -> 
    <<"GEOG">>;
reconvert(yieldType, trueYield) -> 
    <<"TRUE">>;
reconvert(yieldType, previousCloseYield) -> 
    <<"PREVCLOSE">>;
reconvert(yieldType, yieldToLongestAverage) -> 
    <<"LONGEST">>;
reconvert(yieldType, yieldToLongestAverageLife) -> 
    <<"LONGAVGLIFE">>;
reconvert(yieldType, yieldToMaturity) -> 
    <<"MATURITY">>;
reconvert(yieldType, markToMarketYield) -> 
    <<"MARK">>;
reconvert(yieldType, openAverageYield) -> 
    <<"OPENAVG">>;
reconvert(yieldType, yieldToNextPut) -> 
    <<"PUT">>;
reconvert(yieldType, proceedsYield) -> 
    <<"PROCEEDS">>;
reconvert(yieldType, semiAnnualYield) -> 
    <<"SEMIANNUAL">>;
reconvert(yieldType, yieldToShortestAverageLife) -> 
    <<"SHORTAVGLIFE">>;
reconvert(yieldType, yieldToShortestAverage) -> 
    <<"SHORTEST">>;
reconvert(yieldType, simpleYield) -> 
    <<"SIMPLE">>;
reconvert(yieldType, yieldToTenderDate) -> 
    <<"TENDER">>;
reconvert(yieldType, yieldValueOf32nds) -> 
    <<"VALUE1/32">>;
reconvert(yieldType, yieldToWorst) -> 
    <<"WORST">>;
reconvert(yieldType, taxEquivalentYield) -> 
    <<"TAXEQUIV">>;
reconvert(yieldType, annualYield) -> 
    <<"ANNUAL">>;
reconvert(yieldType, closingYieldMostRecentYear) -> 
    <<"LASTYEAR">>;
reconvert(yieldType, yieldToNextRefund) -> 
    <<"NEXTREFUND">>;
reconvert(yieldType, afterTaxYield) -> 
    <<"AFTERTAX">>;
reconvert(yieldType, yieldAtIssue) -> 
    <<"ATISSUE">>;
reconvert(yieldType, yieldToAverageLife) -> 
    <<"AVGLIFE">>;
reconvert(yieldType, yieldToAverageMaturity) -> 
    <<"AVGMATURITY">>;
reconvert(yieldType, bookYield) -> 
    <<"BOOK">>;
reconvert(yieldType, yieldToNextCall) -> 
    <<"CALL">>;
reconvert(yieldType, yieldChangeSinceClose) -> 
    <<"CHANGE">>;
reconvert(yieldType, compoundYield) -> 
    <<"COMPOUND">>;
reconvert(yieldType, currentYield) -> 
    <<"CURRENT">>;
reconvert(yieldType, trueGrossYield) -> 
    <<"GROSS">>;
reconvert(yieldType, gvntEquivalentYield) -> 
    <<"GOVTEQUIV">>;
reconvert(yieldType, yieldWithInflationAssumption) -> 
    <<"INFLATION">>;
reconvert(yieldType, inverseFloaterBondYield) -> 
    <<"INVERSEFLOATER">>;
reconvert(yieldType, closingYieldMostRecentQuarter) -> 
    <<"LASTQUARTER">>;
reconvert(yieldType, mostRecentClosingYield) -> 
    <<"LASTCLOSE">>;
reconvert(yieldType, closingYieldMostRecentMonth) -> 
    <<"LASTMONTH">>;
reconvert(yieldType, closingYield) -> 
    <<"CLOSE">>;
reconvert(underlyingRepurchaseTerm, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(legRepurchaseTerm, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(tradedFlatSwitch, notTradedFlat) -> 
    <<"N">>;
reconvert(tradedFlatSwitch, tradedFlat) -> 
    <<"Y">>;
reconvert(subscriptionRequestType, snapshotAndUpdates) -> 
    <<"1">>;
reconvert(subscriptionRequestType, disablePreviousSnapshot) -> 
    <<"2">>;
reconvert(subscriptionRequestType, snapshot) -> 
    <<"0">>;
reconvert(marketDepth, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(mDUpdateType, fullRefresh) -> 
    <<"0">>;
reconvert(mDUpdateType, incrementalRefresh) -> 
    <<"1">>;
reconvert(aggregatedBook, bookEntriesToBeAggregated) -> 
    <<"Y">>;
reconvert(aggregatedBook, bookEntriesShouldNotBeAggregated) -> 
    <<"N">>;
reconvert(noMDEntryTypes, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(noMDEntries, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(mDEntryType, tradingSessionHighPrice) -> 
    <<"7">>;
reconvert(mDEntryType, offer) -> 
    <<"1">>;
reconvert(mDEntryType, imbalance) -> 
    <<"A">>;
reconvert(mDEntryType, tradingSessionVWAPPrice) -> 
    <<"9">>;
reconvert(mDEntryType, tradingSessionLowPrice) -> 
    <<"8">>;
reconvert(mDEntryType, closingPrice) -> 
    <<"5">>;
reconvert(mDEntryType, openingPrice) -> 
    <<"4">>;
reconvert(mDEntryType, bid) -> 
    <<"0">>;
reconvert(mDEntryType, trade) -> 
    <<"2">>;
reconvert(mDEntryType, indexValue) -> 
    <<"3">>;
reconvert(mDEntryType, settlementPrice) -> 
    <<"6">>;
reconvert(tickDirection, plusTick) -> 
    <<"0">>;
reconvert(tickDirection, zeroPlusTick) -> 
    <<"1">>;
reconvert(tickDirection, minusTick) -> 
    <<"2">>;
reconvert(tickDirection, zeroMinusTick) -> 
    <<"3">>;
reconvert(quoteCondition, locked) -> 
    <<"E">>;
reconvert(quoteCondition, nonFirm) -> 
    <<"I">>;
reconvert(quoteCondition, fastTrading) -> 
    <<"H">>;
reconvert(quoteCondition, crossed) -> 
    <<"F">>;
reconvert(quoteCondition, consolidatedBest) -> 
    <<"D">>;
reconvert(quoteCondition, exchangeBest) -> 
    <<"C">>;
reconvert(quoteCondition, closed) -> 
    <<"B">>;
reconvert(quoteCondition, open) -> 
    <<"A">>;
reconvert(quoteCondition, depth) -> 
    <<"G">>;
reconvert(tradeCondition, nextDayTrade) -> 
    <<"J">>;
reconvert(tradeCondition, opened) -> 
    <<"K">>;
reconvert(tradeCondition, seller) -> 
    <<"L">>;
reconvert(tradeCondition, averagePriceTrade) -> 
    <<"B">>;
reconvert(tradeCondition, sold) -> 
    <<"M">>;
reconvert(tradeCondition, rule155Trade) -> 
    <<"H">>;
reconvert(tradeCondition, stoppedStock) -> 
    <<"N">>;
reconvert(tradeCondition, imbalanceMoreBuyers) -> 
    <<"P">>;
reconvert(tradeCondition, imbalanceMoreSellers) -> 
    <<"Q">>;
reconvert(tradeCondition, openingPrice) -> 
    <<"R">>;
reconvert(tradeCondition, soldLast) -> 
    <<"I">>;
reconvert(tradeCondition, cash) -> 
    <<"A">>;
reconvert(tradeCondition, cashTrade) -> 
    <<"C">>;
reconvert(tradeCondition, opening) -> 
    <<"E">>;
reconvert(tradeCondition, intradayTradeDetail) -> 
    <<"F">>;
reconvert(tradeCondition, rule127Trade) -> 
    <<"G">>;
reconvert(tradeCondition, nextDay) -> 
    <<"D">>;
reconvert(mDUpdateAction, new) -> 
    <<"0">>;
reconvert(mDUpdateAction, change) -> 
    <<"1">>;
reconvert(mDUpdateAction, delete) -> 
    <<"2">>;
reconvert(mDReqRejReason, unsupportedAggregatedBook) -> 
    <<"7">>;
reconvert(mDReqRejReason, duplicateMDReqID) -> 
    <<"1">>;
reconvert(mDReqRejReason, unsupportedMDImplicitDelete) -> 
    <<"C">>;
reconvert(mDReqRejReason, unsupportedOpenCloseSettleFlag) -> 
    <<"B">>;
reconvert(mDReqRejReason, unsupportedScope) -> 
    <<"A">>;
reconvert(mDReqRejReason, unsupportedTradingSessionID) -> 
    <<"9">>;
reconvert(mDReqRejReason, unsupportedMDEntryType) -> 
    <<"8">>;
reconvert(mDReqRejReason, unsupportedMDUpdateType) -> 
    <<"6">>;
reconvert(mDReqRejReason, unsupportedMarketDepth) -> 
    <<"5">>;
reconvert(mDReqRejReason, unsupportedSubscriptionRequestType) -> 
    <<"4">>;
reconvert(mDReqRejReason, insufficientBandwidth) -> 
    <<"2">>;
reconvert(mDReqRejReason, unknownSymbol) -> 
    <<"0">>;
reconvert(mDReqRejReason, insufficientPermissions) -> 
    <<"3">>;
reconvert(deleteReason, cancellation) -> 
    <<"0">>;
reconvert(deleteReason, error) -> 
    <<"1">>;
reconvert(openCloseSettleFlag, sessionOpen) -> 
    <<"1">>;
reconvert(openCloseSettleFlag, deliverySettlementEntry) -> 
    <<"2">>;
reconvert(openCloseSettleFlag, expectedEntry) -> 
    <<"3">>;
reconvert(openCloseSettleFlag, entryFromPreviousBusinessDay) -> 
    <<"4">>;
reconvert(openCloseSettleFlag, dailyOpen) -> 
    <<"0">>;
reconvert(sellerDays, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(mDEntryPositionNo, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(financialStatus, bankrupt) -> 
    <<"1">>;
reconvert(financialStatus, pendingDelisting) -> 
    <<"2">>;
reconvert(corporateAction, exDistribution) -> 
    <<"B">>;
reconvert(corporateAction, exInterest) -> 
    <<"E">>;
reconvert(corporateAction, exRights) -> 
    <<"C">>;
reconvert(corporateAction, exDividend) -> 
    <<"A">>;
reconvert(corporateAction, new) -> 
    <<"D">>;
reconvert(noQuoteEntries, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(noQuoteSets, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(quoteStatus, removedFromMarket) -> 
    <<"6">>;
reconvert(quoteStatus, cancelForSymbol) -> 
    <<"1">>;
reconvert(quoteStatus, pending) -> 
    <<"10">>;
reconvert(quoteStatus, quoteNotFound) -> 
    <<"9">>;
reconvert(quoteStatus, queryqueryFix) -> 
    <<"8">>;
reconvert(quoteStatus, expired) -> 
    <<"7">>;
reconvert(quoteStatus, rejected) -> 
    <<"5">>;
reconvert(quoteStatus, canceledAll) -> 
    <<"4">>;
reconvert(quoteStatus, canceledForUnderlying) -> 
    <<"3">>;
reconvert(quoteStatus, canceledForSecurityType) -> 
    <<"2">>;
reconvert(quoteStatus, accepted) -> 
    <<"0">>;
reconvert(quoteCancelType, cancelAllQuotes) -> 
    <<"4">>;
reconvert(quoteCancelType, cancelForSecurityType) -> 
    <<"2">>;
reconvert(quoteCancelType, cancelForOneOrMoreSecurities) -> 
    <<"1">>;
reconvert(quoteCancelType, cancelForUnderlyingSecurity) -> 
    <<"3">>;
reconvert(quoteRejectReason, notAuthorizedToQuoteSecurity) -> 
    <<"9">>;
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
reconvert(quoteResponseLevel, acknowledgeOnlyNegativeOrErroneousQuotes) -> 
    <<"1">>;
reconvert(quoteResponseLevel, noAcknowledgement) -> 
    <<"0">>;
reconvert(quoteResponseLevel, acknowledgeEachQuoteMessage) -> 
    <<"2">>;
reconvert(quoteRequestType, automatic) -> 
    <<"2">>;
reconvert(quoteRequestType, manual) -> 
    <<"1">>;
reconvert(totQuoteEntries, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(underlyingPutOrCall, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(securityRequestType, requestSecurityIdentityAndSpecifications) -> 
    <<"0">>;
reconvert(securityRequestType, requestSecurityIdentityForSpecifications) -> 
    <<"1">>;
reconvert(securityRequestType, requestListSecurityTypes) -> 
    <<"2">>;
reconvert(securityRequestType, requestListSecurities) -> 
    <<"3">>;
reconvert(securityResponseType, rejectSecurityProposal) -> 
    <<"5">>;
reconvert(securityResponseType, acceptAsIs) -> 
    <<"1">>;
reconvert(securityResponseType, cannotMatchSelectionCriteria) -> 
    <<"6">>;
reconvert(securityResponseType, acceptWithRevisions) -> 
    <<"2">>;
reconvert(securityResponseType, listOfSecuritiesReturnedPerRequest) -> 
    <<"4">>;
reconvert(securityResponseType, listOfSecurityTypesReturnedPerRequest) -> 
    <<"3">>;
reconvert(unsolicitedIndicator, messageIsBeingSentUnsolicited) -> 
    <<"Y">>;
reconvert(unsolicitedIndicator, messageIsBeingSentAsAResultOfAPriorRequest) -> 
    <<"N">>;
reconvert(securityTradingStatus, unknownOrInvalid) -> 
    <<"20">>;
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
reconvert(securityTradingStatus, notTradedOnThisMarket) -> 
    <<"19">>;
reconvert(securityTradingStatus, openingRotation) -> 
    <<"22">>;
reconvert(securityTradingStatus, preOpen) -> 
    <<"21">>;
reconvert(securityTradingStatus, noMarketImbalance) -> 
    <<"12">>;
reconvert(securityTradingStatus, notAvailableForTrading) -> 
    <<"18">>;
reconvert(securityTradingStatus, marketOnCloseImbalanceSell) -> 
    <<"10">>;
reconvert(securityTradingStatus, marketOnCloseImbalanceBuy) -> 
    <<"9">>;
reconvert(securityTradingStatus, marketImbalanceSell) -> 
    <<"8">>;
reconvert(securityTradingStatus, marketImbalanceBuy) -> 
    <<"7">>;
reconvert(securityTradingStatus, tradingRangeIndication) -> 
    <<"6">>;
reconvert(securityTradingStatus, priceIndication) -> 
    <<"5">>;
reconvert(securityTradingStatus, noOpen) -> 
    <<"4">>;
reconvert(securityTradingStatus, resume) -> 
    <<"3">>;
reconvert(securityTradingStatus, openingDelay) -> 
    <<"1">>;
reconvert(securityTradingStatus, tradingHalt) -> 
    <<"2">>;
reconvert(securityTradingStatus, fastMarket) -> 
    <<"23">>;
reconvert(haltReason, equipmentChangeover) -> 
    <<"X">>;
reconvert(haltReason, additionalInformation) -> 
    <<"M">>;
reconvert(haltReason, orderInflux) -> 
    <<"E">>;
reconvert(haltReason, newsPending) -> 
    <<"P">>;
reconvert(haltReason, orderImbalance) -> 
    <<"I">>;
reconvert(haltReason, newsDissemination) -> 
    <<"D">>;
reconvert(inViewOfCommon, haltWasDueToCommonStockBeingHalted) -> 
    <<"Y">>;
reconvert(inViewOfCommon, haltWasNotRelatedToAHaltOfTheCommonStock) -> 
    <<"N">>;
reconvert(dueToRelated, relatedToSecurityHalt) -> 
    <<"Y">>;
reconvert(dueToRelated, notRelatedToSecurityHalt) -> 
    <<"N">>;
reconvert(adjustment, cancel) -> 
    <<"1">>;
reconvert(adjustment, error) -> 
    <<"2">>;
reconvert(adjustment, correction) -> 
    <<"3">>;
reconvert(tradSesMethod, twoParty) -> 
    <<"3">>;
reconvert(tradSesMethod, electronic) -> 
    <<"1">>;
reconvert(tradSesMethod, openOutcry) -> 
    <<"2">>;
reconvert(tradSesMode, production) -> 
    <<"3">>;
reconvert(tradSesMode, testing) -> 
    <<"1">>;
reconvert(tradSesMode, simulated) -> 
    <<"2">>;
reconvert(tradSesStatus, preClose) -> 
    <<"5">>;
reconvert(tradSesStatus, requestRejected) -> 
    <<"6">>;
reconvert(tradSesStatus, preOpen) -> 
    <<"4">>;
reconvert(tradSesStatus, closed) -> 
    <<"3">>;
reconvert(tradSesStatus, open) -> 
    <<"2">>;
reconvert(tradSesStatus, halted) -> 
    <<"1">>;
reconvert(tradSesStatus, unknown) -> 
    <<"0">>;
reconvert(numberOfOrders, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(messageEncoding, uTF8) -> 
    <<"UTF-8">>;
reconvert(messageEncoding, iSO2022JP) -> 
    <<"ISO-2022-JP">>;
reconvert(messageEncoding, eUCJP) -> 
    <<"EUC-JP">>;
reconvert(messageEncoding, shiftJIS) -> 
    <<"Shift_JIS">>;
reconvert(encodedIssuerLen, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(encodedSecurityDescLen, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(encodedListExecInstLen, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(encodedTextLen, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(encodedSubjectLen, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(encodedHeadlineLen, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(encodedAllocTextLen, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(encodedUnderlyingIssuerLen, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(encodedUnderlyingSecurityDescLen, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(quoteEntryRejectReason, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(lastMsgSeqNumProcessed, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(refTagID, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(sessionRejectReason, xMLValidationError) -> 
    <<"12">>;
reconvert(sessionRejectReason, non) -> 
    <<"17">>;
reconvert(sessionRejectReason, incorrectNumInGroupCountForRepeatingGroup) -> 
    <<"16">>;
reconvert(sessionRejectReason, repeatingGroupFieldsOutOfOrder) -> 
    <<"15">>;
reconvert(sessionRejectReason, tagSpecifiedOutOfRequiredOrder) -> 
    <<"14">>;
reconvert(sessionRejectReason, invalidMsgType) -> 
    <<"11">>;
reconvert(sessionRejectReason, invalidTagNumber) -> 
    <<"0">>;
reconvert(sessionRejectReason, compIDProblem) -> 
    <<"9">>;
reconvert(sessionRejectReason, signatureProblem) -> 
    <<"8">>;
reconvert(sessionRejectReason, decryptionProblem) -> 
    <<"7">>;
reconvert(sessionRejectReason, incorrectDataFormatForValue) -> 
    <<"6">>;
reconvert(sessionRejectReason, valueIsIncorrect) -> 
    <<"5">>;
reconvert(sessionRejectReason, tagSpecifiedWithoutAValue) -> 
    <<"4">>;
reconvert(sessionRejectReason, undefinedTag) -> 
    <<"3">>;
reconvert(sessionRejectReason, sendingTimeAccuracyProblem) -> 
    <<"10">>;
reconvert(sessionRejectReason, tagAppearsMoreThanOnce) -> 
    <<"13">>;
reconvert(sessionRejectReason, tagNotDefinedForThisMessageType) -> 
    <<"2">>;
reconvert(sessionRejectReason, requiredTagMissing) -> 
    <<"1">>;
reconvert(bidRequestTransType, new) -> 
    <<"N">>;
reconvert(bidRequestTransType, cancel) -> 
    <<"C">>;
reconvert(solicitedFlag, wasNotSolicited) -> 
    <<"N">>;
reconvert(solicitedFlag, wasSolicited) -> 
    <<"Y">>;
reconvert(execRestatementReason, cancelOnSystemFailure) -> 
    <<"7">>;
reconvert(execRestatementReason, gTCorporateAction) -> 
    <<"0">>;
reconvert(execRestatementReason, market) -> 
    <<"8">>;
reconvert(execRestatementReason, cancelOnTradingHalt) -> 
    <<"6">>;
reconvert(execRestatementReason, partialDeclineOfOrderQty) -> 
    <<"5">>;
reconvert(execRestatementReason, brokerOption) -> 
    <<"4">>;
reconvert(execRestatementReason, repricingOfOrder) -> 
    <<"3">>;
reconvert(execRestatementReason, gTRenewal) -> 
    <<"1">>;
reconvert(execRestatementReason, verbalChange) -> 
    <<"2">>;
reconvert(businessRejectReason, unsupportedMessageType) -> 
    <<"3">>;
reconvert(businessRejectReason, deliverToFirmNotAvailableAtThisTime) -> 
    <<"7">>;
reconvert(businessRejectReason, applicationNotAvailable) -> 
    <<"4">>;
reconvert(businessRejectReason, notAuthorized) -> 
    <<"6">>;
reconvert(businessRejectReason, other) -> 
    <<"0">>;
reconvert(businessRejectReason, conditionallyRequiredFieldMissing) -> 
    <<"5">>;
reconvert(businessRejectReason, unknownID) -> 
    <<"1">>;
reconvert(businessRejectReason, unknownSecurity) -> 
    <<"2">>;
reconvert(noContraBrokers, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(maxMessageSize, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(noMsgTypes, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(msgDirection, send) -> 
    <<"S">>;
reconvert(msgDirection, receivereceiveFix) -> 
    <<"R">>;
reconvert(noTradingSessions, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
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
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(bidType, nonDisclosed) -> 
    <<"1">>;
reconvert(bidType, disclosed) -> 
    <<"2">>;
reconvert(bidType, noBiddingProcess) -> 
    <<"3">>;
reconvert(numTickets, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(noBidDescriptors, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(bidDescriptorType, index) -> 
    <<"3">>;
reconvert(bidDescriptorType, countrycountryFix) -> 
    <<"2">>;
reconvert(bidDescriptorType, sector) -> 
    <<"1">>;
reconvert(sideValueInd, sideValue1) -> 
    <<"1">>;
reconvert(sideValueInd, sideValue2) -> 
    <<"2">>;
reconvert(liquidityIndType, normalMarketSize) -> 
    <<"3">>;
reconvert(liquidityIndType, other) -> 
    <<"4">>;
reconvert(liquidityIndType, twentyDayMovingAverage) -> 
    <<"2">>;
reconvert(liquidityIndType, fiveDayMovingAverage) -> 
    <<"1">>;
reconvert(exchangeForPhysical, false) -> 
    <<"N">>;
reconvert(exchangeForPhysical, true) -> 
    <<"Y">>;
reconvert(progRptReqs, realTimeExecutionReports) -> 
    <<"3">>;
reconvert(progRptReqs, sellSideSends) -> 
    <<"2">>;
reconvert(progRptReqs, buySideRequests) -> 
    <<"1">>;
reconvert(progPeriodInterval, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(incTaxInd, gross) -> 
    <<"2">>;
reconvert(incTaxInd, net) -> 
    <<"1">>;
reconvert(numBidders, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(tradeType, vWAPGuarantee) -> 
    <<"G">>;
reconvert(tradeType, agency) -> 
    <<"A">>;
reconvert(tradeType, guaranteedClose) -> 
    <<"J">>;
reconvert(tradeType, riskTrade) -> 
    <<"R">>;
reconvert(basisPxType, vWAPThroughAnAfternoonSession) -> 
    <<"8">>;
reconvert(basisPxType, open) -> 
    <<"D">>;
reconvert(basisPxType, others) -> 
    <<"Z">>;
reconvert(basisPxType, strike) -> 
    <<"C">>;
reconvert(basisPxType, vWAPThroughAnAfternoonSessionExcept) -> 
    <<"B">>;
reconvert(basisPxType, vWAPThroughADayExcept) -> 
    <<"9">>;
reconvert(basisPxType, vWAPThroughAMorningSession) -> 
    <<"7">>;
reconvert(basisPxType, vWAPThroughADay) -> 
    <<"6">>;
reconvert(basisPxType, sQ) -> 
    <<"5">>;
reconvert(basisPxType, currentPrice) -> 
    <<"4">>;
reconvert(basisPxType, closingPrice) -> 
    <<"3">>;
reconvert(basisPxType, closingPriceAtMorningSession) -> 
    <<"2">>;
reconvert(basisPxType, vWAPThroughAMorningSessionExcept) -> 
    <<"A">>;
reconvert(noBidComponents, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(totNoStrikes, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(priceType, fixedAmount) -> 
    <<"3">>;
reconvert(priceType, percentage) -> 
    <<"1">>;
reconvert(priceType, discount) -> 
    <<"4">>;
reconvert(priceType, spread) -> 
    <<"6">>;
reconvert(priceType, tEDPrice) -> 
    <<"7">>;
reconvert(priceType, tEDYield) -> 
    <<"8">>;
reconvert(priceType, premium) -> 
    <<"5">>;
reconvert(priceType, perUnit) -> 
    <<"2">>;
reconvert(gTBookingInst, bookOutAllTradesOnDayOfExecution) -> 
    <<"0">>;
reconvert(gTBookingInst, accumulateUntilVerballlyNotifiedOtherwise) -> 
    <<"2">>;
reconvert(gTBookingInst, accumulateUntilFilledOrExpired) -> 
    <<"1">>;
reconvert(noStrikes, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(listStatusType, alert) -> 
    <<"6">>;
reconvert(listStatusType, execStarted) -> 
    <<"4">>;
reconvert(listStatusType, timed) -> 
    <<"3">>;
reconvert(listStatusType, response) -> 
    <<"2">>;
reconvert(listStatusType, ack) -> 
    <<"1">>;
reconvert(listStatusType, allDone) -> 
    <<"5">>;
reconvert(netGrossInd, net) -> 
    <<"1">>;
reconvert(netGrossInd, gross) -> 
    <<"2">>;
reconvert(listOrderStatus, cancelling) -> 
    <<"4">>;
reconvert(listOrderStatus, executing) -> 
    <<"3">>;
reconvert(listOrderStatus, reject) -> 
    <<"7">>;
reconvert(listOrderStatus, allDone) -> 
    <<"6">>;
reconvert(listOrderStatus, alert) -> 
    <<"5">>;
reconvert(listOrderStatus, receivedForExecution) -> 
    <<"2">>;
reconvert(listOrderStatus, inBiddingProcess) -> 
    <<"1">>;
reconvert(listExecInstType, buyDrivenCashWithdraw) -> 
    <<"5">>;
reconvert(listExecInstType, buyDrivenCashTopUp) -> 
    <<"4">>;
reconvert(listExecInstType, waitForInstruction) -> 
    <<"2">>;
reconvert(listExecInstType, immediate) -> 
    <<"1">>;
reconvert(listExecInstType, sellDriven) -> 
    <<"3">>;
reconvert(cxlRejResponseTo, orderCancel) -> 
    <<"2">>;
reconvert(cxlRejResponseTo, orderCancelRequest) -> 
    <<"1">>;
reconvert(liquidityNumSecurities, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(multiLegReportingType, singleSecurity) -> 
    <<"1">>;
reconvert(multiLegReportingType, individualLegOfAMultiLegSecurity) -> 
    <<"2">>;
reconvert(multiLegReportingType, multiLegSecurity) -> 
    <<"3">>;
reconvert(encodedListStatusTextLen, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(partyIDSource, chineseInvestorID) -> 
    <<"5">>;
reconvert(partyIDSource, uSEmployerOrTaxIDNumber) -> 
    <<"8">>;
reconvert(partyIDSource, australianTaxFileNumber) -> 
    <<"A">>;
reconvert(partyIDSource, australianBusinessNumber) -> 
    <<"9">>;
reconvert(partyIDSource, iSOCountryCode) -> 
    <<"E">>;
reconvert(partyIDSource, bIC) -> 
    <<"B">>;
reconvert(partyIDSource, uSSocialSecurityNumber) -> 
    <<"7">>;
reconvert(partyIDSource, proprietary) -> 
    <<"D">>;
reconvert(partyIDSource, settlementEntityLocation) -> 
    <<"F">>;
reconvert(partyIDSource, koreanInvestorID) -> 
    <<"1">>;
reconvert(partyIDSource, taiwaneseForeignInvestorID) -> 
    <<"2">>;
reconvert(partyIDSource, taiwaneseTradingAcct) -> 
    <<"3">>;
reconvert(partyIDSource, malaysianCentralDepository) -> 
    <<"4">>;
reconvert(partyIDSource, uKNationalInsuranceOrPensionNumber) -> 
    <<"6">>;
reconvert(partyIDSource, generalIdentifier) -> 
    <<"C">>;
reconvert(partyRole, correspondantClearingFirm) -> 
    <<"15">>;
reconvert(partyRole, clientID) -> 
    <<"3">>;
reconvert(partyRole, underlyingContraFirm) -> 
    <<"20">>;
reconvert(partyRole, sponsoringFirm) -> 
    <<"19">>;
reconvert(partyRole, contraClearingFirm) -> 
    <<"18">>;
reconvert(partyRole, contraFirm) -> 
    <<"17">>;
reconvert(partyRole, executingSystem) -> 
    <<"16">>;
reconvert(partyRole, enteringFirm) -> 
    <<"7">>;
reconvert(partyRole, executingFirm) -> 
    <<"1">>;
reconvert(partyRole, brokerOfCredit) -> 
    <<"2">>;
reconvert(partyRole, investorID) -> 
    <<"5">>;
reconvert(partyRole, introducingFirm) -> 
    <<"6">>;
reconvert(partyRole, giveupClearingFirm) -> 
    <<"14">>;
reconvert(partyRole, locate) -> 
    <<"8">>;
reconvert(partyRole, fundManagerClientID) -> 
    <<"9">>;
reconvert(partyRole, settlementLocation) -> 
    <<"10">>;
reconvert(partyRole, orderOriginationTrader) -> 
    <<"11">>;
reconvert(partyRole, executingTrader) -> 
    <<"12">>;
reconvert(partyRole, orderOriginationFirm) -> 
    <<"13">>;
reconvert(partyRole, clearingFirm) -> 
    <<"4">>;
reconvert(noPartyIDs, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(noSecurityAltID, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(noUnderlyingSecurityAltID, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(produkt, lOAN) -> 
    <<"8">>;
reconvert(produkt, oTHER) -> 
    <<"12">>;
reconvert(produkt, mUNICIPAL) -> 
    <<"11">>;
reconvert(produkt, aGENCY) -> 
    <<"1">>;
reconvert(produkt, cORPORATE) -> 
    <<"3">>;
reconvert(produkt, cURRENCY) -> 
    <<"4">>;
reconvert(produkt, cOMMODITY) -> 
    <<"2">>;
reconvert(produkt, gOVERNMENT) -> 
    <<"6">>;
reconvert(produkt, mORTGAGE) -> 
    <<"10">>;
reconvert(produkt, iNDEX) -> 
    <<"7">>;
reconvert(produkt, mONEYMARKET) -> 
    <<"9">>;
reconvert(produkt, eQUITY) -> 
    <<"5">>;
reconvert(underlyingProduct, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(testMessageIndicator, true) -> 
    <<"Y">>;
reconvert(testMessageIndicator, fales) -> 
    <<"N">>;
reconvert(quantityType, cONTRACTS) -> 
    <<"6">>;
reconvert(quantityType, oTHER) -> 
    <<"7">>;
reconvert(quantityType, cURRENCY) -> 
    <<"5">>;
reconvert(quantityType, oRIGINALFACE) -> 
    <<"4">>;
reconvert(quantityType, cURRENTFACE) -> 
    <<"3">>;
reconvert(quantityType, bONDS) -> 
    <<"2">>;
reconvert(quantityType, sHARES) -> 
    <<"1">>;
reconvert(quantityType, pAR) -> 
    <<"8">>;
reconvert(roundingDirection, roundToNearest) -> 
    <<"0">>;
reconvert(roundingDirection, roundDown) -> 
    <<"1">>;
reconvert(roundingDirection, roundUp) -> 
    <<"2">>;
reconvert(noRegistDtls, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(distribPaymentMethod, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(cancellationRights, noWaiverAgreement) -> 
    <<"M">>;
reconvert(cancellationRights, noExecutionOnly) -> 
    <<"N">>;
reconvert(cancellationRights, yes) -> 
    <<"Y">>;
reconvert(cancellationRights, noInstitutional) -> 
    <<"O">>;
reconvert(moneyLaunderingStatus, exemptAuthorised) -> 
    <<"3">>;
reconvert(moneyLaunderingStatus, exemptMoneyType) -> 
    <<"2">>;
reconvert(moneyLaunderingStatus, exemptBelowLimit) -> 
    <<"1">>;
reconvert(moneyLaunderingStatus, passed) -> 
    <<"Y">>;
reconvert(moneyLaunderingStatus, notChecked) -> 
    <<"N">>;
reconvert(execPriceType, singlePrice) -> 
    <<"S">>;
reconvert(execPriceType, offerPriceMinusAdjustmentAmount) -> 
    <<"Q">>;
reconvert(execPriceType, offerPriceMinusAdjustmentPercent) -> 
    <<"P">>;
reconvert(execPriceType, offerPrice) -> 
    <<"O">>;
reconvert(execPriceType, creationPricePlusAdjustmentAmount) -> 
    <<"E">>;
reconvert(execPriceType, creationPricePlusAdjustmentPercent) -> 
    <<"D">>;
reconvert(execPriceType, creationPrice) -> 
    <<"C">>;
reconvert(execPriceType, bidPrice) -> 
    <<"B">>;
reconvert(tradeReportTransType, new) -> 
    <<"N">>;
reconvert(tradeReportTransType, replace) -> 
    <<"R">>;
reconvert(tradeReportTransType, cancel) -> 
    <<"C">>;
reconvert(paymentMethod, bPAY) -> 
    <<"14">>;
reconvert(paymentMethod, aCHCredit) -> 
    <<"13">>;
reconvert(paymentMethod, aCHDebit) -> 
    <<"12">>;
reconvert(paymentMethod, creditCard) -> 
    <<"11">>;
reconvert(paymentMethod, directCredit) -> 
    <<"10">>;
reconvert(paymentMethod, directDebit) -> 
    <<"9">>;
reconvert(paymentMethod, debitCard) -> 
    <<"8">>;
reconvert(paymentMethod, fedWire) -> 
    <<"7">>;
reconvert(paymentMethod, highValueClearingSystem) -> 
    <<"15">>;
reconvert(paymentMethod, euroclear) -> 
    <<"3">>;
reconvert(paymentMethod, telegraphicTransfer) -> 
    <<"6">>;
reconvert(paymentMethod, clearstream) -> 
    <<"4">>;
reconvert(paymentMethod, cREST) -> 
    <<"1">>;
reconvert(paymentMethod, nSCC) -> 
    <<"2">>;
reconvert(paymentMethod, cheque) -> 
    <<"5">>;
reconvert(taxAdvantageType, profitSharingPlan) -> 
    <<"19">>;
reconvert(taxAdvantageType, employerPriorYear) -> 
    <<"11">>;
reconvert(taxAdvantageType, employerCurrentYear) -> 
    <<"12">>;
reconvert(taxAdvantageType, nonFundPrototypeIRA) -> 
    <<"13">>;
reconvert(taxAdvantageType, nonFundQualifiedPlan) -> 
    <<"14">>;
reconvert(taxAdvantageType, definedContributionPlan) -> 
    <<"15">>;
reconvert(taxAdvantageType, employeeCurrentYear) -> 
    <<"10">>;
reconvert(taxAdvantageType, iRARollover) -> 
    <<"17">>;
reconvert(taxAdvantageType, miniInsuranceISA) -> 
    <<"5">>;
reconvert(taxAdvantageType, iRA) -> 
    <<"16">>;
reconvert(taxAdvantageType, employeePriorYear) -> 
    <<"9">>;
reconvert(taxAdvantageType, assetTransfer) -> 
    <<"8">>;
reconvert(taxAdvantageType, selfDirectedIRA) -> 
    <<"21">>;
reconvert(taxAdvantageType, currentYearPayment) -> 
    <<"6">>;
reconvert(taxAdvantageType, uS401K) -> 
    <<"20">>;
reconvert(taxAdvantageType, miniStocksAndSharesISA) -> 
    <<"4">>;
reconvert(taxAdvantageType, miniCashISA) -> 
    <<"3">>;
reconvert(taxAdvantageType, tESSA) -> 
    <<"2">>;
reconvert(taxAdvantageType, maxiISA) -> 
    <<"1">>;
reconvert(taxAdvantageType, none) -> 
    <<"0">>;
reconvert(taxAdvantageType, priorYearPayment) -> 
    <<"7">>;
reconvert(taxAdvantageType, uS457) -> 
    <<"23">>;
reconvert(taxAdvantageType, rothIRAPrototype) -> 
    <<"24">>;
reconvert(taxAdvantageType, rothIRANonPrototype) -> 
    <<"25">>;
reconvert(taxAdvantageType, rothConversionIRAPrototype) -> 
    <<"26">>;
reconvert(taxAdvantageType, rothConversionIRANonPrototype) -> 
    <<"27">>;
reconvert(taxAdvantageType, educationIRAPrototype) -> 
    <<"28">>;
reconvert(taxAdvantageType, educationIRANonPrototype) -> 
    <<"29">>;
reconvert(taxAdvantageType, kEOGH) -> 
    <<"18">>;
reconvert(taxAdvantageType, uS403b) -> 
    <<"22">>;
reconvert(fundRenewWaiv, no) -> 
    <<"N">>;
reconvert(fundRenewWaiv, yes) -> 
    <<"Y">>;
reconvert(registStatus, accepted) -> 
    <<"A">>;
reconvert(registStatus, reminder) -> 
    <<"N">>;
reconvert(registStatus, rejected) -> 
    <<"R">>;
reconvert(registStatus, held) -> 
    <<"H">>;
reconvert(registRejReasonCode, invalidDistribInstns) -> 
    <<"13">>;
reconvert(registRejReasonCode, invalidAgentCode) -> 
    <<"17">>;
reconvert(registRejReasonCode, invalidAccountName) -> 
    <<"16">>;
reconvert(registRejReasonCode, noRegDetails) -> 
    <<"4">>;
reconvert(registRejReasonCode, invalidPaymentMethod) -> 
    <<"15">>;
reconvert(registRejReasonCode, invalidPercentage) -> 
    <<"14">>;
reconvert(registRejReasonCode, invalidOwnershipType) -> 
    <<"3">>;
reconvert(registRejReasonCode, invalidTaxExemptType) -> 
    <<"2">>;
reconvert(registRejReasonCode, invalidCountry) -> 
    <<"12">>;
reconvert(registRejReasonCode, invalidDateOfBirth) -> 
    <<"11">>;
reconvert(registRejReasonCode, invalidInvestorIDSource) -> 
    <<"10">>;
reconvert(registRejReasonCode, invalidInvestorID) -> 
    <<"9">>;
reconvert(registRejReasonCode, invalidMailingInstructions) -> 
    <<"8">>;
reconvert(registRejReasonCode, invalidMailingDetails) -> 
    <<"7">>;
reconvert(registRejReasonCode, invalidRegSeqNo) -> 
    <<"5">>;
reconvert(registRejReasonCode, invalidAccountType) -> 
    <<"1">>;
reconvert(registRejReasonCode, invalidAccountNum) -> 
    <<"18">>;
reconvert(registRejReasonCode, invalidRegDetails) -> 
    <<"6">>;
reconvert(noDistribInsts, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(registTransType, cancel) -> 
    <<"2">>;
reconvert(registTransType, new) -> 
    <<"0">>;
reconvert(registTransType, replace) -> 
    <<"1">>;
reconvert(noContAmts, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(contAmtType, netSettlementAmount) -> 
    <<"15">>;
reconvert(contAmtType, commissionAmount) -> 
    <<"1">>;
reconvert(contAmtType, commissionPercent) -> 
    <<"2">>;
reconvert(contAmtType, initialChargeAmount) -> 
    <<"3">>;
reconvert(contAmtType, initialChargePercent) -> 
    <<"4">>;
reconvert(contAmtType, discountAmount) -> 
    <<"5">>;
reconvert(contAmtType, discountPercent) -> 
    <<"6">>;
reconvert(contAmtType, dilutionLevyAmount) -> 
    <<"7">>;
reconvert(contAmtType, dilutionLevyPercent) -> 
    <<"8">>;
reconvert(contAmtType, exitChargeAmount) -> 
    <<"9">>;
reconvert(contAmtType, exitChargePercent) -> 
    <<"10">>;
reconvert(contAmtType, fundBasedRenewalCommissionPercent) -> 
    <<"11">>;
reconvert(contAmtType, projectedFundValue) -> 
    <<"12">>;
reconvert(contAmtType, fundBasedRenewalCommissionOnFund) -> 
    <<"14">>;
reconvert(contAmtType, fundBasedRenewalCommissionOnOrder) -> 
    <<"13">>;
reconvert(ownerType, companyTrustee) -> 
    <<"5">>;
reconvert(ownerType, nominee) -> 
    <<"13">>;
reconvert(ownerType, corporateBody) -> 
    <<"12">>;
reconvert(ownerType, nonProfitOrganization) -> 
    <<"11">>;
reconvert(ownerType, networkingSubAccount) -> 
    <<"10">>;
reconvert(ownerType, fiduciaries) -> 
    <<"9">>;
reconvert(ownerType, trusts) -> 
    <<"8">>;
reconvert(ownerType, pensionPlan) -> 
    <<"6">>;
reconvert(ownerType, individualTrustee) -> 
    <<"4">>;
reconvert(ownerType, publicCompany) -> 
    <<"2">>;
reconvert(ownerType, privateCompany) -> 
    <<"3">>;
reconvert(ownerType, individualInvestor) -> 
    <<"1">>;
reconvert(ownerType, custodianUnderGiftsToMinorsAct) -> 
    <<"7">>;
reconvert(orderCapacity, risklessPrincipal) -> 
    <<"R">>;
reconvert(orderCapacity, individual) -> 
    <<"I">>;
reconvert(orderCapacity, principal) -> 
    <<"P">>;
reconvert(orderCapacity, agentForOtherMember) -> 
    <<"W">>;
reconvert(orderCapacity, agency) -> 
    <<"A">>;
reconvert(orderCapacity, proprietary) -> 
    <<"G">>;
reconvert(orderRestrictions, foreignEntity) -> 
    <<"7">>;
reconvert(orderRestrictions, risklessArbitrage) -> 
    <<"A">>;
reconvert(orderRestrictions, programTrade) -> 
    <<"1">>;
reconvert(orderRestrictions, externalMarketParticipant) -> 
    <<"8">>;
reconvert(orderRestrictions, actingAsMarketMakerOrSpecialistInUnderlying) -> 
    <<"6">>;
reconvert(orderRestrictions, actingAsMarketMakerOrSpecialistInSecurity) -> 
    <<"5">>;
reconvert(orderRestrictions, nonIndexArbitrage) -> 
    <<"3">>;
reconvert(orderRestrictions, indexArbitrage) -> 
    <<"2">>;
reconvert(orderRestrictions, competingMarketMaker) -> 
    <<"4">>;
reconvert(orderRestrictions, externalInterConnectedMarketLinkage) -> 
    <<"9">>;
reconvert(massCancelRequestType, cancelOrdersForASecurity) -> 
    <<"1">>;
reconvert(massCancelRequestType, cancelAllOrders) -> 
    <<"7">>;
reconvert(massCancelRequestType, cancelOrdersForATradingSession) -> 
    <<"6">>;
reconvert(massCancelRequestType, cancelOrdersForASecurityType) -> 
    <<"5">>;
reconvert(massCancelRequestType, cancelOrdersForACFICode) -> 
    <<"4">>;
reconvert(massCancelRequestType, cancelOrdersForAnUnderlyingSecurity) -> 
    <<"2">>;
reconvert(massCancelRequestType, cancelOrdersForAProduct) -> 
    <<"3">>;
reconvert(massCancelResponse, cancelOrdersForATradingSession) -> 
    <<"6">>;
reconvert(massCancelResponse, cancelRequestRejected) -> 
    <<"0">>;
reconvert(massCancelResponse, cancelAllOrders) -> 
    <<"7">>;
reconvert(massCancelResponse, cancelOrdersForAProduct) -> 
    <<"3">>;
reconvert(massCancelResponse, cancelOrdersForASecurityType) -> 
    <<"5">>;
reconvert(massCancelResponse, cancelOrdersForACFICode) -> 
    <<"4">>;
reconvert(massCancelResponse, cancelOrdersForASecurity) -> 
    <<"1">>;
reconvert(massCancelResponse, cancelOrdersForAnUnderlyingSecurity) -> 
    <<"2">>;
reconvert(massCancelRejectReason, invalidOrUnkownUnderlyingSecurity) -> 
    <<"2">>;
reconvert(massCancelRejectReason, invalidOrUnknownTradingSession) -> 
    <<"6">>;
reconvert(massCancelRejectReason, invalidOrUnknownSecurityType) -> 
    <<"5">>;
reconvert(massCancelRejectReason, invalidOrUnknownProduct) -> 
    <<"3">>;
reconvert(massCancelRejectReason, invalidOrUnknownSecurity) -> 
    <<"1">>;
reconvert(massCancelRejectReason, massCancelNotSupported) -> 
    <<"0">>;
reconvert(massCancelRejectReason, invalidOrUnknownCFICode) -> 
    <<"4">>;
reconvert(totalAffectedOrders, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(noAffectedOrders, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(quoteType, indicative) -> 
    <<"0">>;
reconvert(quoteType, tradeable) -> 
    <<"1">>;
reconvert(quoteType, restrictedTradeable) -> 
    <<"2">>;
reconvert(nestedPartyRole, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(noNestedPartyIDs, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(cashMargin, marginOpen) -> 
    <<"2">>;
reconvert(cashMargin, marginClose) -> 
    <<"3">>;
reconvert(cashMargin, cash) -> 
    <<"1">>;
reconvert(scope, localMarket) -> 
    <<"1">>;
reconvert(scope, national) -> 
    <<"2">>;
reconvert(scope, global) -> 
    <<"3">>;
reconvert(mDImplicitDelete, yes) -> 
    <<"Y">>;
reconvert(mDImplicitDelete, no) -> 
    <<"N">>;
reconvert(crossType, crossAON) -> 
    <<"1">>;
reconvert(crossType, crossIOC) -> 
    <<"2">>;
reconvert(crossType, crossOneSide) -> 
    <<"3">>;
reconvert(crossType, crossSamePrice) -> 
    <<"4">>;
reconvert(crossPrioritization, sellSideIsPrioritized) -> 
    <<"2">>;
reconvert(crossPrioritization, none) -> 
    <<"0">>;
reconvert(crossPrioritization, buySideIsPrioritized) -> 
    <<"1">>;
reconvert(noSides, oneSide) -> 
    <<"1">>;
reconvert(noSides, bothSides) -> 
    <<"2">>;
reconvert(noLegs, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(totalNumSecurityTypes, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(noSecurityTypes, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(securityListRequestType, securityTypeAnd) -> 
    <<"1">>;
reconvert(securityListRequestType, produkt) -> 
    <<"2">>;
reconvert(securityListRequestType, tradingSessionID) -> 
    <<"3">>;
reconvert(securityListRequestType, allSecurities) -> 
    <<"4">>;
reconvert(securityListRequestType, symbol) -> 
    <<"0">>;
reconvert(securityRequestResult, instrumentDataTemporarilyUnavailable) -> 
    <<"4">>;
reconvert(securityRequestResult, validRequest) -> 
    <<"0">>;
reconvert(securityRequestResult, invalidOrUnsupportedRequest) -> 
    <<"1">>;
reconvert(securityRequestResult, requestForInstrumentDataNotSupported) -> 
    <<"5">>;
reconvert(securityRequestResult, notAuthorizedToRetrieveInstrumentData) -> 
    <<"3">>;
reconvert(securityRequestResult, noInstrumentsFound) -> 
    <<"2">>;
reconvert(multiLegRptTypeReq, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(legCoveredOrUncovered, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(tradSesStatusRejReason, unknownOrInvalidTradingSessionID) -> 
    <<"1">>;
reconvert(tradeRequestType, advisoriesThatMatchCriteria) -> 
    <<"4">>;
reconvert(tradeRequestType, unreportedTradesThatMatchCriteria) -> 
    <<"3">>;
reconvert(tradeRequestType, unmatchedTradesThatMatchCriteria) -> 
    <<"2">>;
reconvert(tradeRequestType, matchedTradesMatchingCriteria) -> 
    <<"1">>;
reconvert(tradeRequestType, allTrades) -> 
    <<"0">>;
reconvert(previouslyReported, notReportedToCounterparty) -> 
    <<"N">>;
reconvert(previouslyReported, perviouslyReportedToCounterparty) -> 
    <<"Y">>;
reconvert(matchStatus, compared) -> 
    <<"0">>;
reconvert(matchStatus, uncompared) -> 
    <<"1">>;
reconvert(matchStatus, advisoryOrAlert) -> 
    <<"2">>;
reconvert(matchType, a5ExactMatchSummarizedQuantity) -> 
    <<"S5">>;
reconvert(matchType, exactMatchMinusBadgesTimes) -> 
    <<"M1">>;
reconvert(matchType, aCTM6Match) -> 
    <<"M6">>;
reconvert(matchType, aCTDefaultAfterM2) -> 
    <<"M5">>;
reconvert(matchType, aCTAcceptedTrade) -> 
    <<"M3">>;
reconvert(matchType, a2ExactMatchSummarizedQuantity) -> 
    <<"S2">>;
reconvert(matchType, a3ExactMatchSummarizedQuantity) -> 
    <<"S3">>;
reconvert(matchType, a4ExactMatchSummarizedQuantity) -> 
    <<"S4">>;
reconvert(matchType, summarizedMatchMinusBadgesTimes) -> 
    <<"M2">>;
reconvert(matchType, exactMatchPlus4Badges) -> 
    <<"A2">>;
reconvert(matchType, exactMatchPlus2BadgesExecTime) -> 
    <<"A3">>;
reconvert(matchType, exactMatchPlus2Badges) -> 
    <<"A4">>;
reconvert(matchType, stampedAdvisoriesOrSpecialistAccepts) -> 
    <<"AQ">>;
reconvert(matchType, oCSLockedIn) -> 
    <<"MT">>;
reconvert(matchType, aCTDefaultTrade) -> 
    <<"M4">>;
reconvert(matchType, exactMatchPlus4BadgesExecTime) -> 
    <<"A1">>;
reconvert(matchType, a1ExactMatchSummarizedQuantity) -> 
    <<"S1">>;
reconvert(matchType, exactMatchPlusExecTime) -> 
    <<"A5">>;
reconvert(oddLot, true) -> 
    <<"Y">>;
reconvert(oddLot, false) -> 
    <<"N">>;
reconvert(noClearingInstructions, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(clearingInstruction, manualMode) -> 
    <<"8">>;
reconvert(clearingInstruction, multilateralNetting) -> 
    <<"5">>;
reconvert(clearingInstruction, automaticPostingMode) -> 
    <<"9">>;
reconvert(clearingInstruction, bilateralNettingOnly) -> 
    <<"2">>;
reconvert(clearingInstruction, clearAgainstCentralCounterparty) -> 
    <<"6">>;
reconvert(clearingInstruction, automaticGiveUpMode) -> 
    <<"10">>;
reconvert(clearingInstruction, specialTrade) -> 
    <<"4">>;
reconvert(clearingInstruction, exClearing) -> 
    <<"3">>;
reconvert(clearingInstruction, processNormally) -> 
    <<"0">>;
reconvert(clearingInstruction, excludeFromCentralCounterparty) -> 
    <<"7">>;
reconvert(clearingInstruction, excludeFromAllNetting) -> 
    <<"1">>;
reconvert(noDates, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(accountType, houseTrader) -> 
    <<"3">>;
reconvert(accountType, houseTraderCrossMargined) -> 
    <<"7">>;
reconvert(accountType, carriedNonCustomerSideCrossMargined) -> 
    <<"6">>;
reconvert(accountType, floorTrader) -> 
    <<"4">>;
reconvert(accountType, carriedNonCustomerSide) -> 
    <<"2">>;
reconvert(accountType, carriedCustomerSide) -> 
    <<"1">>;
reconvert(accountType, jointBackOfficeAccount) -> 
    <<"8">>;
reconvert(custOrderCapacity, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(massStatusReqType, statusForOrdersForASecurity) -> 
    <<"1">>;
reconvert(massStatusReqType, statusForOrdersForAnUnderlyingSecurity) -> 
    <<"2">>;
reconvert(massStatusReqType, statusForOrdersForAProduct) -> 
    <<"3">>;
reconvert(massStatusReqType, statusForOrdersForACFICode) -> 
    <<"4">>;
reconvert(massStatusReqType, statusForOrdersForASecurityType) -> 
    <<"5">>;
reconvert(massStatusReqType, statusForOrdersForATradingSession) -> 
    <<"6">>;
reconvert(massStatusReqType, statusForOrdersForAPartyID) -> 
    <<"8">>;
reconvert(massStatusReqType, statusForAllOrders) -> 
    <<"7">>;
reconvert(dayBookingInst, auto) -> 
    <<"0">>;
reconvert(dayBookingInst, speakWithOrderInitiatorBeforeBooking) -> 
    <<"1">>;
reconvert(bookingUnit, aggregatePartialExecutionsOnThisOrder) -> 
    <<"1">>;
reconvert(bookingUnit, aggregateExecutionsForThisSymbol) -> 
    <<"2">>;
reconvert(bookingUnit, eachPartialExecutionIsABookableUnit) -> 
    <<"0">>;
reconvert(preallocMethod, proRata) -> 
    <<"0">>;
reconvert(preallocMethod, doNotProRata) -> 
    <<"1">>;
reconvert(noLegSecurityAltID, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(legProduct, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(encodedLegIssuerLen, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(encodedLegSecurityDescLen, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(allocType, buysideReadyToBook) -> 
    <<"6">>;
reconvert(allocType, preliminary) -> 
    <<"2">>;
reconvert(allocType, sellsideCalculatedUsingPreliminary) -> 
    <<"3">>;
reconvert(allocType, readyToBook) -> 
    <<"5">>;
reconvert(allocType, calculated) -> 
    <<"1">>;
reconvert(allocType, sellsideCalculatedWithoutPreliminary) -> 
    <<"4">>;
reconvert(noHops, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(hopRefID, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(clearingFeeIndicator, firms106HAnd106J) -> 
    <<"H">>;
reconvert(clearingFeeIndicator, fifthYearDelegate) -> 
    <<"5">>;
reconvert(clearingFeeIndicator, fourthYearDelegate) -> 
    <<"4">>;
reconvert(clearingFeeIndicator, thirdYearDelegate) -> 
    <<"3">>;
reconvert(clearingFeeIndicator, secondYearDelegate) -> 
    <<"2">>;
reconvert(clearingFeeIndicator, firstYearDelegate) -> 
    <<"1">>;
reconvert(clearingFeeIndicator, allOtherOwnershipTypes) -> 
    <<"M">>;
reconvert(clearingFeeIndicator, gIM) -> 
    <<"I">>;
reconvert(clearingFeeIndicator, sixthYearDelegate) -> 
    <<"9">>;
reconvert(clearingFeeIndicator, fullAndAssociateMember) -> 
    <<"F">>;
reconvert(clearingFeeIndicator, equityMemberAndClearingMember) -> 
    <<"E">>;
reconvert(clearingFeeIndicator, nonMemberAndCustomer) -> 
    <<"C">>;
reconvert(clearingFeeIndicator, cBOEMember) -> 
    <<"B">>;
reconvert(clearingFeeIndicator, lessee106FEmployees) -> 
    <<"L">>;
reconvert(workingIndicator, notWorking) -> 
    <<"N">>;
reconvert(workingIndicator, working) -> 
    <<"Y">>;
reconvert(priorityIndicator, priorityUnchanged) -> 
    <<"0">>;
reconvert(priorityIndicator, lostPriorityAsResultOfOrderChange) -> 
    <<"1">>;
reconvert(legalConfirm, legalConfirm) -> 
    <<"Y">>;
reconvert(legalConfirm, doesNotConsituteALegalConfirm) -> 
    <<"N">>;
reconvert(quoteRequestRejectReason, unknownSymbol) -> 
    <<"1">>;
reconvert(quoteRequestRejectReason, exchange) -> 
    <<"2">>;
reconvert(quoteRequestRejectReason, quoteRequestExceedsLimit) -> 
    <<"3">>;
reconvert(quoteRequestRejectReason, tooLateToEnter) -> 
    <<"4">>;
reconvert(quoteRequestRejectReason, invalidPrice) -> 
    <<"5">>;
reconvert(quoteRequestRejectReason, notAuthorizedToRequestQuote) -> 
    <<"6">>;
reconvert(_Name, Bin) ->
    Bin.
bin_to_num(Bin) ->
    N = erlang:binary_to_list(Bin),
    case string:to_float(N) of
        {error,no_float} -> erlang:list_to_integer(N);
        {F,_Rest} -> F
    end.
