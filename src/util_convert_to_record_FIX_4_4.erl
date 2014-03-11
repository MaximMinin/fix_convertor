%% This module is automatically generated - do not edit it!!!
%%TODO: funktion to convert date and time types
-module(util_convert_to_record_FIX_4_4).

%%
%% Include files
%%
-include("FIX_4_4.hrl").
    
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
   binary_to_list(Bin);
convert(advRefID, Bin) -> 
   binary_to_list(Bin);
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
convert(commType, <<"4">>) -> 
    percentageWaivedCashDiscount;
convert(commType, <<"5">>) -> 
    percentageWaivedEnhancedUnits;
convert(commType, <<"6">>) -> 
    pointsPerBondOrContract;
convert(cumQty, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(currency, Bin) -> 
   binary_to_list(Bin);
convert(endSeqNo, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(execID, Bin) -> 
   binary_to_list(Bin);
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
convert(execInst, <<"0">>) -> 
    stayOnOfferSide;
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
convert(execInst, <<"M">>) -> 
    midPricePeg;
convert(execInst, <<"N">>) -> 
    nonNegotiable;
convert(execInst, <<"O">>) -> 
    openingPeg;
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
convert(execInst, <<"Y">>) -> 
    tryToStop;
convert(execInst, <<"Z">>) -> 
    cancelIfNotBest;
convert(execInst, <<"a">>) -> 
    trailingStopPeg;
convert(execInst, <<"b">>) -> 
    strictLimit;
convert(execInst, <<"c">>) -> 
    ignorePriceValidityChecks;
convert(execInst, <<"d">>) -> 
    pegToLimitPrice;
convert(execInst, <<"e">>) -> 
    workToTargetStrategy;
convert(execRefID, Bin) -> 
   binary_to_list(Bin);
convert(handlInst, <<"1">>) -> 
    automatedExecutionNoIntervention;
convert(handlInst, <<"2">>) -> 
    automatedExecutionInterventionOK;
convert(handlInst, <<"3">>) -> 
    manualOrder;
convert(securityIDSource, <<"1">>) -> 
    cUSIP;
convert(securityIDSource, <<"2">>) -> 
    sEDOL;
convert(securityIDSource, <<"3">>) -> 
    qUIK;
convert(securityIDSource, <<"4">>) -> 
    iSINNumber;
convert(securityIDSource, <<"5">>) -> 
    rICCode;
convert(securityIDSource, <<"6">>) -> 
    iSOCurrencyCode;
convert(securityIDSource, <<"7">>) -> 
    iSOCountryCode;
convert(securityIDSource, <<"8">>) -> 
    exchangeSymbol;
convert(securityIDSource, <<"9">>) -> 
    consolidatedTapeAssociation;
convert(securityIDSource, <<"A">>) -> 
    bloombergSymbol;
convert(securityIDSource, <<"B">>) -> 
    wertpapier;
convert(securityIDSource, <<"C">>) -> 
    dutch;
convert(securityIDSource, <<"D">>) -> 
    valoren;
convert(securityIDSource, <<"E">>) -> 
    sicovam;
convert(securityIDSource, <<"F">>) -> 
    belgian;
convert(securityIDSource, <<"G">>) -> 
    common;
convert(securityIDSource, <<"H">>) -> 
    clearingHouse;
convert(securityIDSource, <<"I">>) -> 
    iSDAFpMLSpecification;
convert(securityIDSource, <<"J">>) -> 
    optionPriceReportingAuthority;
convert(iOIID, Bin) -> 
   binary_to_list(Bin);
convert(iOIQltyInd, <<"L">>) -> 
    low;
convert(iOIQltyInd, <<"M">>) -> 
    medium;
convert(iOIQltyInd, <<"H">>) -> 
    high;
convert(iOIRefID, Bin) -> 
   binary_to_list(Bin);
convert(iOIQty, <<"S">>) -> 
    small;
convert(iOIQty, <<"M">>) -> 
    medium;
convert(iOIQty, <<"L">>) -> 
    large;
convert(iOITransType, <<"N">>) -> 
    new;
convert(iOITransType, <<"C">>) -> 
    cancel;
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
convert(lastQty, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(noLinesOfText, Bin) -> 
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
    newOrderSingle;
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
    massQuoteAcknowledgement;
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
convert(msgType, <<"n">>) -> 
    xMLnonFIX;
convert(msgType, <<"o">>) -> 
    registrationInstructions;
convert(msgType, <<"p">>) -> 
    registrationInstructionsResponse;
convert(msgType, <<"q">>) -> 
    orderMassCancelRequest;
convert(msgType, <<"r">>) -> 
    orderMassCancelReport;
convert(msgType, <<"s">>) -> 
    newOrderCross;
convert(msgType, <<"t">>) -> 
    crossOrderCancelReplaceRequest;
convert(msgType, <<"u">>) -> 
    crossOrderCancelRequest;
convert(msgType, <<"v">>) -> 
    securityTypeRequest;
convert(msgType, <<"w">>) -> 
    securityTypes;
convert(msgType, <<"x">>) -> 
    securityListRequest;
convert(msgType, <<"y">>) -> 
    securityList;
convert(msgType, <<"z">>) -> 
    derivativeSecurityListRequest;
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
convert(msgType, <<"AJ">>) -> 
    quoteResponse;
convert(msgType, <<"AK">>) -> 
    confirmation;
convert(msgType, <<"AL">>) -> 
    positionMaintenanceRequest;
convert(msgType, <<"AM">>) -> 
    positionMaintenanceReport;
convert(msgType, <<"AN">>) -> 
    requestForPositions;
convert(msgType, <<"AO">>) -> 
    requestForPositionsAck;
convert(msgType, <<"AP">>) -> 
    positionReport;
convert(msgType, <<"AQ">>) -> 
    tradeCaptureReportRequestAck;
convert(msgType, <<"AR">>) -> 
    tradeCaptureReportAck;
convert(msgType, <<"AS">>) -> 
    allocationReport;
convert(msgType, <<"AT">>) -> 
    allocationReportAck;
convert(msgType, <<"AU">>) -> 
    confirmationAck;
convert(msgType, <<"AV">>) -> 
    settlementInstructionRequest;
convert(msgType, <<"AW">>) -> 
    assignmentReport;
convert(msgType, <<"AX">>) -> 
    collateralRequest;
convert(msgType, <<"AY">>) -> 
    collateralAssignment;
convert(msgType, <<"AZ">>) -> 
    collateralResponse;
convert(msgType, <<"BA">>) -> 
    collateralReport;
convert(msgType, <<"BB">>) -> 
    collateralInquiry;
convert(msgType, <<"BC">>) -> 
    networkCounterpartySystemStatusRequest;
convert(msgType, <<"BD">>) -> 
    networkCounterpartySystemStatusResponse;
convert(msgType, <<"BE">>) -> 
    userRequest;
convert(msgType, <<"BF">>) -> 
    userResponse;
convert(msgType, <<"BG">>) -> 
    collateralInquiryAck;
convert(msgType, <<"BH">>) -> 
    confirmationRequest;
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
convert(ordType, <<"6">>) -> 
    withOrWithout;
convert(ordType, <<"7">>) -> 
    limitOrBetter;
convert(ordType, <<"8">>) -> 
    limitWithOrWithout;
convert(ordType, <<"9">>) -> 
    onBasis;
convert(ordType, <<"D">>) -> 
    previouslyQuoted;
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
convert(origClOrdID, Bin) -> 
   binary_to_list(Bin);
convert(origTime, Bin) -> 
    fix_convertor_utils:bin_to_datetime(Bin);
convert(possDupFlag, <<"Y">>) -> 
    possibleDuplicate;
convert(possDupFlag, <<"N">>) -> 
    originalTransmission;
convert(price, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(refSeqNum, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(securityID, Bin) -> 
   binary_to_list(Bin);
convert(senderCompID, Bin) -> 
   binary_to_list(Bin);
convert(senderSubID, Bin) -> 
   binary_to_list(Bin);
convert(sendingTime, Bin) -> 
    fix_convertor_utils:bin_to_datetime(Bin);
convert(quantity, Bin) -> 
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
convert(side, <<"7">>) -> 
    undisclosed;
convert(side, <<"8">>) -> 
    cross;
convert(side, <<"9">>) -> 
    crossShort;
convert(side, <<"A">>) -> 
    crossShortExempt;
convert(side, <<"B">>) -> 
    asDefined;
convert(side, <<"C">>) -> 
    opposite;
convert(side, <<"D">>) -> 
    subscribe;
convert(side, <<"E">>) -> 
    redeem;
convert(side, <<"F">>) -> 
    lend;
convert(side, <<"G">>) -> 
    borrow;
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
convert(timeInForce, <<"7">>) -> 
    atTheClose;
convert(transactTime, Bin) -> 
    fix_convertor_utils:bin_to_datetime(Bin);
convert(urgency, <<"0">>) -> 
    normal;
convert(urgency, <<"1">>) -> 
    flash;
convert(urgency, <<"2">>) -> 
    background;
convert(validUntilTime, Bin) -> 
    fix_convertor_utils:bin_to_datetime(Bin);
convert(settlType, <<"0">>) -> 
    regular;
convert(settlType, <<"1">>) -> 
    cash;
convert(settlType, <<"2">>) -> 
    nextDay;
convert(settlType, <<"3">>) -> 
    tPlus2;
convert(settlType, <<"4">>) -> 
    tPlus3;
convert(settlType, <<"5">>) -> 
    tPlus4;
convert(settlType, <<"6">>) -> 
    future;
convert(settlType, <<"7">>) -> 
    whenAndIfIssued;
convert(settlType, <<"8">>) -> 
    sellersOption;
convert(settlType, <<"9">>) -> 
    tPlus5;
convert(settlDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(symbolSfx, Bin) -> 
   binary_to_list(Bin);
convert(listID, Bin) -> 
   binary_to_list(Bin);
convert(listSeqNo, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(totNoOrders, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
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
convert(refAllocID, Bin) -> 
   binary_to_list(Bin);
convert(noOrders, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(avgPxPrecision, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(tradeDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(positionEffect, <<"O">>) -> 
    open;
convert(positionEffect, <<"C">>) -> 
    close;
convert(positionEffect, <<"R">>) -> 
    rolled;
convert(positionEffect, <<"F">>) -> 
    fIFO;
convert(noAllocs, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(allocAccount, Bin) -> 
   binary_to_list(Bin);
convert(allocQty, Bin) -> 
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
convert(allocStatus, <<"0">>) -> 
    accepted;
convert(allocStatus, <<"1">>) -> 
    blockLevelReject;
convert(allocStatus, <<"2">>) -> 
    accountLevelReject;
convert(allocStatus, <<"3">>) -> 
    received;
convert(allocStatus, <<"4">>) -> 
    incomplete;
convert(allocStatus, <<"5">>) -> 
    rejectedByIntermediary;
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
convert(allocRejCode, <<"8">>) -> 
    incorrectAllocatedQuantity;
convert(allocRejCode, <<"9">>) -> 
    calculationDifference;
convert(allocRejCode, <<"10">>) -> 
    unknownOrStaleExecID;
convert(allocRejCode, <<"11">>) -> 
    mismatchedData;
convert(allocRejCode, <<"12">>) -> 
    unknownClOrdID;
convert(allocRejCode, <<"13">>) -> 
    warehouseRequestRejected;
convert(signature, Bin) -> 
   binary_to_list(Bin);
convert(secureDataLen, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(secureData, Bin) -> 
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
convert(possResend, <<"Y">>) -> 
    possibleResend;
convert(possResend, <<"N">>) -> 
    originalTransmission;
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
convert(cxlRejReason, <<"4">>) -> 
    unableToProcessOrderMassCancelRequest;
convert(cxlRejReason, <<"5">>) -> 
    origOrdModTime;
convert(cxlRejReason, <<"6">>) -> 
    duplicateClOrdID;
convert(cxlRejReason, <<"99">>) -> 
    other;
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
convert(ordRejReason, <<"9">>) -> 
    tradeAlongRequired;
convert(ordRejReason, <<"10">>) -> 
    invalidInvestorID;
convert(ordRejReason, <<"11">>) -> 
    unsupportedOrderCharacteristic;
convert(ordRejReason, <<"13">>) -> 
    incorrectQuantity;
convert(ordRejReason, <<"14">>) -> 
    incorrectAllocatedQuantity;
convert(ordRejReason, <<"15">>) -> 
    unknownAccount;
convert(ordRejReason, <<"99">>) -> 
    other;
convert(iOIQualifier, <<"A">>) -> 
    allOrNone;
convert(iOIQualifier, <<"B">>) -> 
    marketOnClose;
convert(iOIQualifier, <<"C">>) -> 
    atTheClose;
convert(iOIQualifier, <<"D">>) -> 
    vWAP;
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
convert(issuer, Bin) -> 
   binary_to_list(Bin);
convert(securityDesc, Bin) -> 
   binary_to_list(Bin);
convert(heartBtInt, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(minQty, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(maxFloor, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(testReqID, Bin) -> 
   binary_to_list(Bin);
convert(reportToExch, <<"Y">>) -> 
    receiverReports;
convert(reportToExch, <<"N">>) -> 
    senderReports;
convert(locateReqd, <<"Y">>) -> 
    yes;
convert(locateReqd, <<"N">>) -> 
    no;
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
convert(forexReq, <<"Y">>) -> 
    executeForexAfterSecurityTrade;
convert(forexReq, <<"N">>) -> 
    doNotExecuteForexAfterSecurityTrade;
convert(origSendingTime, Bin) -> 
    fix_convertor_utils:bin_to_datetime(Bin);
convert(gapFillFlag, <<"Y">>) -> 
    gapFillMessage;
convert(gapFillFlag, <<"N">>) -> 
    sequenceReset;
convert(noExecs, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(expireTime, Bin) -> 
    fix_convertor_utils:bin_to_datetime(Bin);
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
convert(dKReason, <<"F">>) -> 
    calculationDifference;
convert(dKReason, <<"Z">>) -> 
    other;
convert(deliverToCompID, Bin) -> 
   binary_to_list(Bin);
convert(deliverToSubID, Bin) -> 
   binary_to_list(Bin);
convert(iOINaturalFlag, <<"Y">>) -> 
    natural;
convert(iOINaturalFlag, <<"N">>) -> 
    notNatural;
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
convert(miscFeeType, <<"8">>) -> 
    markup;
convert(miscFeeType, <<"9">>) -> 
    consumptionTax;
convert(miscFeeType, <<"10">>) -> 
    perTransaction;
convert(miscFeeType, <<"11">>) -> 
    conversion;
convert(miscFeeType, <<"12">>) -> 
    agent;
convert(prevClosePx, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(resetSeqNumFlag, <<"Y">>) -> 
    yes;
convert(resetSeqNumFlag, <<"N">>) -> 
    no;
convert(senderLocationID, Bin) -> 
   binary_to_list(Bin);
convert(targetLocationID, Bin) -> 
   binary_to_list(Bin);
convert(onBehalfOfLocationID, Bin) -> 
   binary_to_list(Bin);
convert(deliverToLocationID, Bin) -> 
   binary_to_list(Bin);
convert(noRelatedSym, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(subject, Bin) -> 
   binary_to_list(Bin);
convert(headline, Bin) -> 
   binary_to_list(Bin);
convert(uRLLink, Bin) -> 
   binary_to_list(Bin);
convert(execType, <<"0">>) -> 
    new;
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
convert(execType, <<"F">>) -> 
    trade;
convert(execType, <<"G">>) -> 
    tradeCorrect;
convert(execType, <<"H">>) -> 
    tradeCancel;
convert(execType, <<"I">>) -> 
    orderStatus;
convert(leavesQty, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(cashOrderQty, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(allocAvgPx, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(allocNetMoney, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(settlCurrFxRate, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(settlCurrFxRateCalc, <<"M">>) -> 
    multiply;
convert(settlCurrFxRateCalc, <<"D">>) -> 
    divide;
convert(numDaysInterest, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(accruedInterestRate, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(accruedInterestAmt, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(settlInstMode, <<"1">>) -> 
    standingInstructionsProvided;
convert(settlInstMode, <<"4">>) -> 
    specificOrderForASingleAccount;
convert(settlInstMode, <<"5">>) -> 
    requestReject;
convert(allocText, Bin) -> 
   binary_to_list(Bin);
convert(settlInstID, Bin) -> 
   binary_to_list(Bin);
convert(settlInstTransType, <<"N">>) -> 
    new;
convert(settlInstTransType, <<"C">>) -> 
    cancel;
convert(settlInstTransType, <<"R">>) -> 
    replace;
convert(settlInstTransType, <<"T">>) -> 
    restate;
convert(emailThreadID, Bin) -> 
   binary_to_list(Bin);
convert(settlInstSource, <<"1">>) -> 
    brokerCredit;
convert(settlInstSource, <<"2">>) -> 
    institution;
convert(settlInstSource, <<"3">>) -> 
    investor;
convert(securityType, <<"EUSUPRA">>) -> 
    euroSupranationalCoupons;
convert(securityType, <<"FAC">>) -> 
    federalAgencyCoupon;
convert(securityType, <<"FADN">>) -> 
    federalAgencyDiscountNote;
convert(securityType, <<"PEF">>) -> 
    privateExportFunding;
convert(securityType, <<"SUPRA">>) -> 
    uSDSupranationalCoupons;
convert(securityType, <<"CORP">>) -> 
    corporateBond;
convert(securityType, <<"CPP">>) -> 
    corporatePrivatePlacement;
convert(securityType, <<"CB">>) -> 
    convertibleBond;
convert(securityType, <<"DUAL">>) -> 
    dualCurrency;
convert(securityType, <<"EUCORP">>) -> 
    euroCorporateBond;
convert(securityType, <<"XLINKD">>) -> 
    indexedLinked;
convert(securityType, <<"STRUCT">>) -> 
    structuredNotes;
convert(securityType, <<"YANK">>) -> 
    yankeeCorporateBond;
convert(securityType, <<"FOR">>) -> 
    foreignExchangeContract;
convert(securityType, <<"CS">>) -> 
    commonStock;
convert(securityType, <<"PS">>) -> 
    preferredStock;
convert(securityType, <<"BRADY">>) -> 
    bradyBond;
convert(securityType, <<"EUSOV">>) -> 
    euroSovereigns;
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
convert(securityType, <<"TNOTE">>) -> 
    uSTreasuryNote;
convert(securityType, <<"TBILL">>) -> 
    uSTreasuryBill;
convert(securityType, <<"REPO">>) -> 
    repurchase;
convert(securityType, <<"FORWARD">>) -> 
    forward;
convert(securityType, <<"BUYSELL">>) -> 
    buySellback;
convert(securityType, <<"SECLOAN">>) -> 
    securitiesLoan;
convert(securityType, <<"SECPLEDGE">>) -> 
    securitiesPledge;
convert(securityType, <<"TERM">>) -> 
    termLoan;
convert(securityType, <<"RVLV">>) -> 
    revolverLoan;
convert(securityType, <<"RVLVTRM">>) -> 
    revolver;
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
convert(securityType, <<"REPLACD">>) -> 
    replaced;
convert(securityType, <<"MATURED">>) -> 
    matured;
convert(securityType, <<"AMENDED">>) -> 
    amended;
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
convert(securityType, <<"CP">>) -> 
    commercialPaper;
convert(securityType, <<"DN">>) -> 
    depositNotes;
convert(securityType, <<"EUCD">>) -> 
    euroCertificateOfDeposit;
convert(securityType, <<"EUCP">>) -> 
    euroCommercialPaper;
convert(securityType, <<"LQN">>) -> 
    liquidityNote;
convert(securityType, <<"MTN">>) -> 
    mediumTermNotes;
convert(securityType, <<"ONITE">>) -> 
    overnight;
convert(securityType, <<"PN">>) -> 
    promissoryNote;
convert(securityType, <<"PZFJ">>) -> 
    plazosFijos;
convert(securityType, <<"STN">>) -> 
    shortTermLoanNote;
convert(securityType, <<"TD">>) -> 
    timeDeposit;
convert(securityType, <<"XCN">>) -> 
    extendedCommNote;
convert(securityType, <<"YCD">>) -> 
    yankeeCertificateOfDeposit;
convert(securityType, <<"ABS">>) -> 
    assetBackedSecurities;
convert(securityType, <<"CMBS">>) -> 
    corp;
convert(securityType, <<"CMO">>) -> 
    collateralizedMortgageObligation;
convert(securityType, <<"IET">>) -> 
    iOETTEMortgage;
convert(securityType, <<"MBS">>) -> 
    mortgageBackedSecurities;
convert(securityType, <<"MIO">>) -> 
    mortgageInterestOnly;
convert(securityType, <<"MPO">>) -> 
    mortgagePrincipalOnly;
convert(securityType, <<"MPP">>) -> 
    mortgagePrivatePlacement;
convert(securityType, <<"MPT">>) -> 
    miscellaneousPassThrough;
convert(securityType, <<"PFAND">>) -> 
    pfandbriefe;
convert(securityType, <<"TBA">>) -> 
    toBeAnnounced;
convert(securityType, <<"AN">>) -> 
    otherAnticipationNotes;
convert(securityType, <<"COFO">>) -> 
    certificateOfObligation;
convert(securityType, <<"COFP">>) -> 
    certificateOfParticipation;
convert(securityType, <<"GO">>) -> 
    generalObligationBonds;
convert(securityType, <<"MT">>) -> 
    mandatoryTender;
convert(securityType, <<"RAN">>) -> 
    revenueAnticipationNote;
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
convert(securityType, <<"TECP">>) -> 
    taxExemptCommercialPaper;
convert(securityType, <<"TRAN">>) -> 
    taxRevenueAnticipationNote;
convert(securityType, <<"VRDN">>) -> 
    variableRateDemandNote;
convert(securityType, <<"WAR">>) -> 
    warrant;
convert(securityType, <<"MF">>) -> 
    mutualFund;
convert(securityType, <<"MLEG">>) -> 
    multilegInstrument;
convert(securityType, <<"NONE">>) -> 
    noSecurityType;
convert(securityType, <<"FUT">>) -> 
    future;
convert(securityType, <<"OPT">>) -> 
    option;
convert(effectiveTime, Bin) -> 
    fix_convertor_utils:bin_to_datetime(Bin);
convert(standInstDbType, <<"0">>) -> 
    other;
convert(standInstDbType, <<"1">>) -> 
    dTCSID;
convert(standInstDbType, <<"2">>) -> 
    thomsonALERT;
convert(standInstDbType, <<"3">>) -> 
    aGlobalCustodian;
convert(standInstDbType, <<"4">>) -> 
    accountNet;
convert(standInstDbName, Bin) -> 
   binary_to_list(Bin);
convert(standInstDbID, Bin) -> 
   binary_to_list(Bin);
convert(settlDeliveryType, <<"0">>) -> 
    versus;
convert(settlDeliveryType, <<"1">>) -> 
    free;
convert(settlDeliveryType, <<"2">>) -> 
    triParty;
convert(settlDeliveryType, <<"3">>) -> 
    holdInCustody;
convert(bidSpotRate, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(bidForwardPoints, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(offerSpotRate, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(offerForwardPoints, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(orderQty2, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(settlDate2, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(lastSpotRate, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(lastForwardPoints, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(allocLinkID, Bin) -> 
   binary_to_list(Bin);
convert(allocLinkType, <<"0">>) -> 
    fXNetting;
convert(allocLinkType, <<"1">>) -> 
    fXSwap;
convert(secondaryOrderID, Bin) -> 
   binary_to_list(Bin);
convert(noIOIQualifiers, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(maturityMonthYear, Bin) -> 
    fix_convertor_utils:bin2monthyear(Bin);
convert(putOrCall, <<"0">>) -> 
    put;
convert(putOrCall, <<"1">>) -> 
    call;
convert(strikePrice, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(coveredOrUncovered, <<"0">>) -> 
    covered;
convert(coveredOrUncovered, <<"1">>) -> 
    uncovered;
convert(optAttribute, Bin) -> 
   binary_to_list(Bin);
convert(securityExchange, Bin) -> 
   binary_to_list(Bin);
convert(notifyBrokerOfCredit, <<"Y">>) -> 
    detailsShouldBeCommunicated;
convert(notifyBrokerOfCredit, <<"N">>) -> 
    detailsShouldNotBeCommunicated;
convert(allocHandlInst, <<"1">>) -> 
    match;
convert(allocHandlInst, <<"2">>) -> 
    forward;
convert(allocHandlInst, <<"3">>) -> 
    forwardAndMatch;
convert(maxShow, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(pegOffsetValue, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(xmlDataLen, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(xmlData, Bin) -> 
   binary_to_list(Bin);
convert(settlInstRefID, Bin) -> 
   binary_to_list(Bin);
convert(noRoutingIDs, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
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
convert(spread, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(benchmarkCurveCurrency, Bin) -> 
   binary_to_list(Bin);
convert(benchmarkCurveName, Bin) -> 
   binary_to_list(Bin);
convert(benchmarkCurvePoint, Bin) -> 
   binary_to_list(Bin);
convert(couponRate, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(couponPaymentDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(issueDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(repurchaseTerm, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(repurchaseRate, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(factor, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(tradeOriginationDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(exDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(contractMultiplier, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(noStipulations, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(stipulationType, <<"AMT">>) -> 
    alternativeMinimumTax;
convert(stipulationType, <<"AUTOREINV">>) -> 
    autoReinvestment;
convert(stipulationType, <<"BANKQUAL">>) -> 
    bankQualified;
convert(stipulationType, <<"BGNCON">>) -> 
    bargainConditions;
convert(stipulationType, <<"COUPON">>) -> 
    couponRange;
convert(stipulationType, <<"CURRENCY">>) -> 
    iSOCurrencyCode;
convert(stipulationType, <<"CUSTOMDATE">>) -> 
    customStart;
convert(stipulationType, <<"GEOG">>) -> 
    geographics;
convert(stipulationType, <<"HAIRCUT">>) -> 
    valuationDiscount;
convert(stipulationType, <<"INSURED">>) -> 
    insured;
convert(stipulationType, <<"ISSUE">>) -> 
    issueDate;
convert(stipulationType, <<"ISSUER">>) -> 
    issuer;
convert(stipulationType, <<"ISSUESIZE">>) -> 
    issueSizeRange;
convert(stipulationType, <<"LOOKBACK">>) -> 
    lookbackDays;
convert(stipulationType, <<"LOT">>) -> 
    explicitLotIdentifier;
convert(stipulationType, <<"LOTVAR">>) -> 
    lotVariance;
convert(stipulationType, <<"MAT">>) -> 
    maturityYearAndMonth;
convert(stipulationType, <<"MATURITY">>) -> 
    maturityRange;
convert(stipulationType, <<"MAXSUBS">>) -> 
    maximumSubstitutions;
convert(stipulationType, <<"MINQTY">>) -> 
    minimumQuantity;
convert(stipulationType, <<"MININCR">>) -> 
    minimumIncrement;
convert(stipulationType, <<"MINDNOM">>) -> 
    minimumDenomination;
convert(stipulationType, <<"PAYFREQ">>) -> 
    paymentFrequency;
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
convert(stipulationType, <<"PRICE">>) -> 
    priceRange;
convert(stipulationType, <<"PRICEFREQ">>) -> 
    pricingFrequency;
convert(stipulationType, <<"PROD">>) -> 
    productionYear;
convert(stipulationType, <<"PROTECT">>) -> 
    callProtection;
convert(stipulationType, <<"PURPOSE">>) -> 
    purpose;
convert(stipulationType, <<"PXSOURCE">>) -> 
    benchmarkPriceSource;
convert(stipulationType, <<"RATING">>) -> 
    ratingSourceAndRange;
convert(stipulationType, <<"REDEMPTION">>) -> 
    typeOfRedemption;
convert(stipulationType, <<"RESTRICTED">>) -> 
    restricted;
convert(stipulationType, <<"SECTOR">>) -> 
    marketSector;
convert(stipulationType, <<"SECTYPE">>) -> 
    securityTypeIncludedOrExcluded;
convert(stipulationType, <<"STRUCT">>) -> 
    structure;
convert(stipulationType, <<"SUBSFREQ">>) -> 
    substitutionsFrequency;
convert(stipulationType, <<"SUBSLEFT">>) -> 
    substitutionsLeft;
convert(stipulationType, <<"TEXT">>) -> 
    freeformText;
convert(stipulationType, <<"TRDVAR">>) -> 
    tradeVariance;
convert(stipulationType, <<"WAC">>) -> 
    weightedAverageCoupon;
convert(stipulationType, <<"WAL">>) -> 
    weightedAverageLifeCoupon;
convert(stipulationType, <<"WALA">>) -> 
    weightedAverageLoanAge;
convert(stipulationType, <<"WAM">>) -> 
    weightedAverageMaturity;
convert(stipulationType, <<"WHOLE">>) -> 
    wholePool;
convert(stipulationType, <<"YIELD">>) -> 
    yieldRange;
convert(stipulationValue, Bin) -> 
   binary_to_list(Bin);
convert(yieldType, <<"AFTERTAX">>) -> 
    afterTaxYield;
convert(yieldType, <<"ANNUAL">>) -> 
    annualYield;
convert(yieldType, <<"ATISSUE">>) -> 
    yieldAtIssue;
convert(yieldType, <<"AVGMATURITY">>) -> 
    yieldToAverageMaturity;
convert(yieldType, <<"BOOK">>) -> 
    bookYield;
convert(yieldType, <<"CALL">>) -> 
    yieldToNextCall;
convert(yieldType, <<"CHANGE">>) -> 
    yieldChangeSinceClose;
convert(yieldType, <<"CLOSE">>) -> 
    closingYield;
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
convert(yieldType, <<"LASTCLOSE">>) -> 
    mostRecentClosingYield;
convert(yieldType, <<"LASTMONTH">>) -> 
    closingYieldMostRecentMonth;
convert(yieldType, <<"LASTQUARTER">>) -> 
    closingYieldMostRecentQuarter;
convert(yieldType, <<"LASTYEAR">>) -> 
    closingYieldMostRecentYear;
convert(yieldType, <<"LONGAVGLIFE">>) -> 
    yieldToLongestAverageLife;
convert(yieldType, <<"MARK">>) -> 
    markToMarketYield;
convert(yieldType, <<"MATURITY">>) -> 
    yieldToMaturity;
convert(yieldType, <<"NEXTREFUND">>) -> 
    yieldToNextRefund;
convert(yieldType, <<"OPENAVG">>) -> 
    openAverageYield;
convert(yieldType, <<"PUT">>) -> 
    yieldToNextPut;
convert(yieldType, <<"PREVCLOSE">>) -> 
    previousCloseYield;
convert(yieldType, <<"PROCEEDS">>) -> 
    proceedsYield;
convert(yieldType, <<"SEMIANNUAL">>) -> 
    semiAnnualYield;
convert(yieldType, <<"SHORTAVGLIFE">>) -> 
    yieldToShortestAverageLife;
convert(yieldType, <<"SIMPLE">>) -> 
    simpleYield;
convert(yieldType, <<"TAXEQUIV">>) -> 
    taxEquivalentYield;
convert(yieldType, <<"TENDER">>) -> 
    yieldToTenderDate;
convert(yieldType, <<"TRUE">>) -> 
    trueYield;
convert(yieldType, <<"VALUE1/32">>) -> 
    yieldValueOf132;
convert(yieldType, <<"WORST">>) -> 
    yieldToWorst;
convert(yield, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(totalTakedown, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(concession, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(repoCollateralSecurityType, Bin) -> 
   binary_to_list(Bin);
convert(redemptionDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(underlyingCouponPaymentDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(underlyingIssueDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(underlyingRepoCollateralSecurityType, Bin) -> 
   binary_to_list(Bin);
convert(underlyingRepurchaseTerm, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(underlyingRepurchaseRate, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(underlyingFactor, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(underlyingRedemptionDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(legCouponPaymentDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(legIssueDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(legRepoCollateralSecurityType, Bin) -> 
   binary_to_list(Bin);
convert(legRepurchaseTerm, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(legRepurchaseRate, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(legFactor, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(legRedemptionDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(creditRating, Bin) -> 
   binary_to_list(Bin);
convert(underlyingCreditRating, Bin) -> 
   binary_to_list(Bin);
convert(legCreditRating, Bin) -> 
   binary_to_list(Bin);
convert(tradedFlatSwitch, <<"Y">>) -> 
    tradedFlat;
convert(tradedFlatSwitch, <<"N">>) -> 
    notTradedFlat;
convert(basisFeatureDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(basisFeaturePrice, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(mDReqID, Bin) -> 
   binary_to_list(Bin);
convert(subscriptionRequestType, <<"0">>) -> 
    snapshot;
convert(subscriptionRequestType, <<"1">>) -> 
    snapshotAndUpdates;
convert(subscriptionRequestType, <<"2">>) -> 
    disablePreviousSnapshot;
convert(marketDepth, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(mDUpdateType, <<"0">>) -> 
    fullRefresh;
convert(mDUpdateType, <<"1">>) -> 
    incrementalRefresh;
convert(aggregatedBook, <<"Y">>) -> 
    bookEntriesToBeAggregated;
convert(aggregatedBook, <<"N">>) -> 
    bookEntriesShouldNotBeAggregated;
convert(noMDEntryTypes, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(noMDEntries, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
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
convert(mDEntryType, <<"A">>) -> 
    imbalance;
convert(mDEntryType, <<"B">>) -> 
    tradeVolume;
convert(mDEntryType, <<"C">>) -> 
    openInterest;
convert(mDEntryPx, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(mDEntrySize, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(mDEntryDate, Bin) -> 
    fix_convertor_utils:bin2utcdate(Bin);
convert(mDEntryTime, Bin) -> 
    fix_convertor_utils:bin2utctime(Bin);
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
convert(tradeCondition, <<"P">>) -> 
    imbalanceMoreBuyers;
convert(tradeCondition, <<"Q">>) -> 
    imbalanceMoreSellers;
convert(tradeCondition, <<"R">>) -> 
    openingPrice;
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
convert(mDReqRejReason, <<"9">>) -> 
    unsupportedTradingSessionID;
convert(mDReqRejReason, <<"A">>) -> 
    unsupportedScope;
convert(mDReqRejReason, <<"B">>) -> 
    unsupportedOpenCloseSettleFlag;
convert(mDReqRejReason, <<"C">>) -> 
    unsupportedMDImplicitDelete;
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
convert(openCloseSettlFlag, <<"0">>) -> 
    dailyOpen;
convert(openCloseSettlFlag, <<"1">>) -> 
    sessionOpen;
convert(openCloseSettlFlag, <<"2">>) -> 
    deliverySettlementEntry;
convert(openCloseSettlFlag, <<"3">>) -> 
    expectedEntry;
convert(openCloseSettlFlag, <<"4">>) -> 
    entryFromPreviousBusinessDay;
convert(openCloseSettlFlag, <<"5">>) -> 
    theoreticalPriceValue;
convert(sellerDays, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(mDEntryBuyer, Bin) -> 
   binary_to_list(Bin);
convert(mDEntrySeller, Bin) -> 
   binary_to_list(Bin);
convert(mDEntryPositionNo, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(financialStatus, <<"1">>) -> 
    bankrupt;
convert(financialStatus, <<"2">>) -> 
    pendingDelisting;
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
   fix_convertor_utils:bin_to_num(Bin);
convert(defOfferSize, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(noQuoteEntries, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(noQuoteSets, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(quoteStatus, <<"0">>) -> 
    accepted;
convert(quoteStatus, <<"1">>) -> 
    cancelForSymbol;
convert(quoteStatus, <<"2">>) -> 
    canceledForSecurityType;
convert(quoteStatus, <<"3">>) -> 
    canceledForUnderlying;
convert(quoteStatus, <<"4">>) -> 
    canceledAll;
convert(quoteStatus, <<"5">>) -> 
    rejected;
convert(quoteStatus, <<"6">>) -> 
    removedFromMarket;
convert(quoteStatus, <<"7">>) -> 
    expired;
convert(quoteStatus, <<"8">>) -> 
    queryqueryFix;
convert(quoteStatus, <<"9">>) -> 
    quoteNotFound;
convert(quoteStatus, <<"10">>) -> 
    pending;
convert(quoteStatus, <<"11">>) -> 
    pass;
convert(quoteStatus, <<"12">>) -> 
    lockedMarketWarning;
convert(quoteStatus, <<"13">>) -> 
    crossMarketWarning;
convert(quoteStatus, <<"14">>) -> 
    canceledDueToLockMarket;
convert(quoteStatus, <<"15">>) -> 
    canceledDueToCrossMarket;
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
convert(quoteRejectReason, <<"99">>) -> 
    other;
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
convert(totNoQuoteEntries, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(underlyingSecurityIDSource, Bin) -> 
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
    fix_convertor_utils:bin2monthyear(Bin);
convert(underlyingPutOrCall, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(underlyingStrikePrice, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(underlyingOptAttribute, Bin) -> 
   binary_to_list(Bin);
convert(underlyingCurrency, Bin) -> 
   binary_to_list(Bin);
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
convert(securityResponseType, <<"5">>) -> 
    rejectSecurityProposal;
convert(securityResponseType, <<"6">>) -> 
    cannotMatchSelectionCriteria;
convert(securityStatusReqID, Bin) -> 
   binary_to_list(Bin);
convert(unsolicitedIndicator, <<"Y">>) -> 
    messageIsBeingSentUnsolicited;
convert(unsolicitedIndicator, <<"N">>) -> 
    messageIsBeingSentAsAResultOfAPriorRequest;
convert(securityTradingStatus, <<"1">>) -> 
    openingDelay;
convert(securityTradingStatus, <<"2">>) -> 
    tradingHalt;
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
convert(securityTradingStatus, <<"20">>) -> 
    unknownOrInvalid;
convert(securityTradingStatus, <<"21">>) -> 
    preOpen;
convert(securityTradingStatus, <<"22">>) -> 
    openingRotation;
convert(securityTradingStatus, <<"23">>) -> 
    fastMarket;
convert(haltReason, <<"I">>) -> 
    orderImbalance;
convert(haltReason, <<"X">>) -> 
    equipmentChangeover;
convert(haltReason, <<"P">>) -> 
    newsPending;
convert(haltReason, <<"D">>) -> 
    newsDissemination;
convert(haltReason, <<"E">>) -> 
    orderInflux;
convert(haltReason, <<"M">>) -> 
    additionalInformation;
convert(inViewOfCommon, <<"Y">>) -> 
    haltWasDueToCommonStockBeingHalted;
convert(inViewOfCommon, <<"N">>) -> 
    haltWasNotRelatedToAHaltOfTheCommonStock;
convert(dueToRelated, <<"Y">>) -> 
    relatedToSecurityHalt;
convert(dueToRelated, <<"N">>) -> 
    notRelatedToSecurityHalt;
convert(buyVolume, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(sellVolume, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(highPx, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(lowPx, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
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
convert(tradSesStatus, <<"0">>) -> 
    unknown;
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
convert(tradSesStatus, <<"6">>) -> 
    requestRejected;
convert(tradSesStartTime, Bin) -> 
    fix_convertor_utils:bin_to_datetime(Bin);
convert(tradSesOpenTime, Bin) -> 
    fix_convertor_utils:bin_to_datetime(Bin);
convert(tradSesPreCloseTime, Bin) -> 
    fix_convertor_utils:bin_to_datetime(Bin);
convert(tradSesCloseTime, Bin) -> 
    fix_convertor_utils:bin_to_datetime(Bin);
convert(tradSesEndTime, Bin) -> 
    fix_convertor_utils:bin_to_datetime(Bin);
convert(numberOfOrders, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(messageEncoding, <<"ISO-2022-JP">>) -> 
    iSO2022JP;
convert(messageEncoding, <<"EUC-JP">>) -> 
    eUCJP;
convert(messageEncoding, <<"Shift_JIS">>) -> 
    shiftJIS;
convert(messageEncoding, <<"UTF-8">>) -> 
    uTF8;
convert(encodedIssuerLen, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(encodedIssuer, Bin) -> 
   binary_to_list(Bin);
convert(encodedSecurityDescLen, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(encodedSecurityDesc, Bin) -> 
   binary_to_list(Bin);
convert(encodedListExecInstLen, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(encodedListExecInst, Bin) -> 
   binary_to_list(Bin);
convert(encodedTextLen, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(encodedText, Bin) -> 
   binary_to_list(Bin);
convert(encodedSubjectLen, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(encodedSubject, Bin) -> 
   binary_to_list(Bin);
convert(encodedHeadlineLen, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(encodedHeadline, Bin) -> 
   binary_to_list(Bin);
convert(encodedAllocTextLen, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(encodedAllocText, Bin) -> 
   binary_to_list(Bin);
convert(encodedUnderlyingIssuerLen, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(encodedUnderlyingIssuer, Bin) -> 
   binary_to_list(Bin);
convert(encodedUnderlyingSecurityDescLen, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(encodedUnderlyingSecurityDesc, Bin) -> 
   binary_to_list(Bin);
convert(allocPrice, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(quoteSetValidUntilTime, Bin) -> 
    fix_convertor_utils:bin_to_datetime(Bin);
convert(quoteEntryRejectReason, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(lastMsgSeqNumProcessed, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(refTagID, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(refMsgType, Bin) -> 
   binary_to_list(Bin);
convert(sessionRejectReason, <<"0">>) -> 
    invalidTagNumber;
convert(sessionRejectReason, <<"1">>) -> 
    requiredTagMissing;
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
convert(sessionRejectReason, <<"10">>) -> 
    sendingTimeAccuracyProblem;
convert(sessionRejectReason, <<"11">>) -> 
    invalidMsgType;
convert(sessionRejectReason, <<"12">>) -> 
    xMLValidationError;
convert(sessionRejectReason, <<"13">>) -> 
    tagAppearsMoreThanOnce;
convert(sessionRejectReason, <<"14">>) -> 
    tagSpecifiedOutOfRequiredOrder;
convert(sessionRejectReason, <<"15">>) -> 
    repeatingGroupFieldsOutOfOrder;
convert(sessionRejectReason, <<"16">>) -> 
    incorrectNumInGroupCountForRepeatingGroup;
convert(sessionRejectReason, <<"17">>) -> 
    non;
convert(sessionRejectReason, <<"99">>) -> 
    other;
convert(bidRequestTransType, <<"N">>) -> 
    new;
convert(bidRequestTransType, <<"C">>) -> 
    cancel;
convert(contraBroker, Bin) -> 
   binary_to_list(Bin);
convert(complianceID, Bin) -> 
   binary_to_list(Bin);
convert(solicitedFlag, <<"Y">>) -> 
    wasSolicited;
convert(solicitedFlag, <<"N">>) -> 
    wasNotSolicited;
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
convert(execRestatementReason, <<"6">>) -> 
    cancelOnTradingHalt;
convert(execRestatementReason, <<"7">>) -> 
    cancelOnSystemFailure;
convert(execRestatementReason, <<"8">>) -> 
    market;
convert(execRestatementReason, <<"9">>) -> 
    canceled;
convert(execRestatementReason, <<"10">>) -> 
    warehouseRecap;
convert(execRestatementReason, <<"99">>) -> 
    other;
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
convert(businessRejectReason, <<"6">>) -> 
    notAuthorized;
convert(businessRejectReason, <<"7">>) -> 
    deliverToFirmNotAvailableAtThisTime;
convert(grossTradeAmt, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(noContraBrokers, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(maxMessageSize, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(noMsgTypes, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(msgDirection, <<"S">>) -> 
    send;
convert(msgDirection, <<"R">>) -> 
    receivereceiveFix;
convert(noTradingSessions, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(totalVolumeTraded, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
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
convert(discretionInst, <<"6">>) -> 
    relatedToVWAP;
convert(discretionOffsetValue, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(bidID, Bin) -> 
   binary_to_list(Bin);
convert(clientBidID, Bin) -> 
   binary_to_list(Bin);
convert(listName, Bin) -> 
   binary_to_list(Bin);
convert(totNoRelatedSym, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(bidType, <<"1">>) -> 
    nonDisclosed;
convert(bidType, <<"2">>) -> 
    disclosed;
convert(bidType, <<"3">>) -> 
    noBiddingProcess;
convert(numTickets, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(sideValue1, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(sideValue2, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(noBidDescriptors, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(bidDescriptorType, <<"1">>) -> 
    sector;
convert(bidDescriptorType, <<"2">>) -> 
    countrycountryFix;
convert(bidDescriptorType, <<"3">>) -> 
    index;
convert(bidDescriptor, Bin) -> 
   binary_to_list(Bin);
convert(sideValueInd, <<"1">>) -> 
    sideValue1;
convert(sideValueInd, <<"2">>) -> 
    sideValue2;
convert(liquidityPctLow, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(liquidityPctHigh, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(liquidityValue, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(eFPTrackingError, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(fairValue, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(outsideIndexPct, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(valueOfFutures, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(liquidityIndType, <<"1">>) -> 
    fiveDayMovingAverage;
convert(liquidityIndType, <<"2">>) -> 
    twentyDayMovingAverage;
convert(liquidityIndType, <<"3">>) -> 
    normalMarketSize;
convert(liquidityIndType, <<"4">>) -> 
    other;
convert(wtAverageLiquidity, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(exchangeForPhysical, <<"Y">>) -> 
    true;
convert(exchangeForPhysical, <<"N">>) -> 
    false;
convert(outMainCntryUIndex, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(crossPercent, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(progRptReqs, <<"1">>) -> 
    buySideRequests;
convert(progRptReqs, <<"2">>) -> 
    sellSideSends;
convert(progRptReqs, <<"3">>) -> 
    realTimeExecutionReports;
convert(progPeriodInterval, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(incTaxInd, <<"1">>) -> 
    net;
convert(incTaxInd, <<"2">>) -> 
    gross;
convert(numBidders, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(bidTradeType, <<"R">>) -> 
    riskTrade;
convert(bidTradeType, <<"G">>) -> 
    vWAPGuarantee;
convert(bidTradeType, <<"A">>) -> 
    agency;
convert(bidTradeType, <<"J">>) -> 
    guaranteedClose;
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
   fix_convertor_utils:bin_to_num(Bin);
convert(country, Bin) -> 
   binary_to_list(Bin);
convert(totNoStrikes, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(priceType, <<"1">>) -> 
    percentage;
convert(priceType, <<"2">>) -> 
    perUnit;
convert(priceType, <<"3">>) -> 
    fixedAmount;
convert(priceType, <<"4">>) -> 
    discount;
convert(priceType, <<"5">>) -> 
    premium;
convert(priceType, <<"6">>) -> 
    spread;
convert(priceType, <<"7">>) -> 
    tEDPrice;
convert(priceType, <<"8">>) -> 
    tEDYield;
convert(priceType, <<"9">>) -> 
    yield;
convert(priceType, <<"10">>) -> 
    fixedCabinetTradePrice;
convert(priceType, <<"11">>) -> 
    variableCabinetTradePrice;
convert(dayOrderQty, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(dayCumQty, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(dayAvgPx, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(gTBookingInst, <<"0">>) -> 
    bookOutAllTradesOnDayOfExecution;
convert(gTBookingInst, <<"1">>) -> 
    accumulateUntilFilledOrExpired;
convert(gTBookingInst, <<"2">>) -> 
    accumulateUntilVerballlyNotifiedOtherwise;
convert(noStrikes, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(listStatusType, <<"1">>) -> 
    ack;
convert(listStatusType, <<"2">>) -> 
    response;
convert(listStatusType, <<"3">>) -> 
    timed;
convert(listStatusType, <<"4">>) -> 
    execStarted;
convert(listStatusType, <<"5">>) -> 
    allDone;
convert(listStatusType, <<"6">>) -> 
    alert;
convert(netGrossInd, <<"1">>) -> 
    net;
convert(netGrossInd, <<"2">>) -> 
    gross;
convert(listOrderStatus, <<"1">>) -> 
    inBiddingProcess;
convert(listOrderStatus, <<"2">>) -> 
    receivedForExecution;
convert(listOrderStatus, <<"3">>) -> 
    executing;
convert(listOrderStatus, <<"4">>) -> 
    cancelling;
convert(listOrderStatus, <<"5">>) -> 
    alert;
convert(listOrderStatus, <<"6">>) -> 
    allDone;
convert(listOrderStatus, <<"7">>) -> 
    reject;
convert(expireDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(listExecInstType, <<"1">>) -> 
    immediate;
convert(listExecInstType, <<"2">>) -> 
    waitForInstruction;
convert(listExecInstType, <<"3">>) -> 
    sellDriven;
convert(listExecInstType, <<"4">>) -> 
    buyDrivenCashTopUp;
convert(listExecInstType, <<"5">>) -> 
    buyDrivenCashWithdraw;
convert(cxlRejResponseTo, <<"1">>) -> 
    orderCancelRequest;
convert(cxlRejResponseTo, <<"2">>) -> 
    orderCancel;
convert(underlyingCouponRate, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(underlyingContractMultiplier, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(contraTradeQty, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(contraTradeTime, Bin) -> 
    fix_convertor_utils:bin_to_datetime(Bin);
convert(liquidityNumSecurities, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(multiLegReportingType, <<"1">>) -> 
    singleSecurity;
convert(multiLegReportingType, <<"2">>) -> 
    individualLegOfAMultiLegSecurity;
convert(multiLegReportingType, <<"3">>) -> 
    multiLegSecurity;
convert(strikeTime, Bin) -> 
    fix_convertor_utils:bin_to_datetime(Bin);
convert(listStatusText, Bin) -> 
   binary_to_list(Bin);
convert(encodedListStatusTextLen, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(encodedListStatusText, Bin) -> 
   binary_to_list(Bin);
convert(partyIDSource, <<"B">>) -> 
    bIC;
convert(partyIDSource, <<"C">>) -> 
    generalIdentifier;
convert(partyIDSource, <<"D">>) -> 
    proprietary;
convert(partyIDSource, <<"E">>) -> 
    iSOCountryCode;
convert(partyIDSource, <<"F">>) -> 
    settlementEntityLocation;
convert(partyIDSource, <<"G">>) -> 
    mIC;
convert(partyIDSource, <<"H">>) -> 
    cSDParticipant;
convert(partyIDSource, <<"1">>) -> 
    koreanInvestorID;
convert(partyIDSource, <<"2">>) -> 
    taiwaneseForeignInvestorID;
convert(partyIDSource, <<"3">>) -> 
    taiwaneseTradingAcct;
convert(partyIDSource, <<"4">>) -> 
    malaysianCentralDepository;
convert(partyIDSource, <<"5">>) -> 
    chineseInvestorID;
convert(partyIDSource, <<"6">>) -> 
    uKNationalInsuranceOrPensionNumber;
convert(partyIDSource, <<"7">>) -> 
    uSSocialSecurityNumber;
convert(partyIDSource, <<"8">>) -> 
    uSEmployerOrTaxIDNumber;
convert(partyIDSource, <<"9">>) -> 
    australianBusinessNumber;
convert(partyIDSource, <<"A">>) -> 
    australianTaxFileNumber;
convert(partyIDSource, <<"I">>) -> 
    iSITCAcronym;
convert(partyID, Bin) -> 
   binary_to_list(Bin);
convert(netChgPrevDay, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(partyRole, <<"1">>) -> 
    executingFirm;
convert(partyRole, <<"2">>) -> 
    brokerOfCredit;
convert(partyRole, <<"3">>) -> 
    clientID;
convert(partyRole, <<"4">>) -> 
    clearingFirm;
convert(partyRole, <<"5">>) -> 
    investorID;
convert(partyRole, <<"6">>) -> 
    introducingFirm;
convert(partyRole, <<"7">>) -> 
    enteringFirm;
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
convert(partyRole, <<"14">>) -> 
    giveupClearingFirm;
convert(partyRole, <<"15">>) -> 
    correspondantClearingFirm;
convert(partyRole, <<"16">>) -> 
    executingSystem;
convert(partyRole, <<"17">>) -> 
    contraFirm;
convert(partyRole, <<"18">>) -> 
    contraClearingFirm;
convert(partyRole, <<"19">>) -> 
    sponsoringFirm;
convert(partyRole, <<"20">>) -> 
    underlyingContraFirm;
convert(partyRole, <<"21">>) -> 
    clearingOrganization;
convert(partyRole, <<"22">>) -> 
    exchange;
convert(partyRole, <<"24">>) -> 
    customerAccount;
convert(partyRole, <<"25">>) -> 
    correspondentClearingOrganization;
convert(partyRole, <<"26">>) -> 
    correspondentBroker;
convert(partyRole, <<"27">>) -> 
    buyer;
convert(partyRole, <<"28">>) -> 
    custodian;
convert(partyRole, <<"29">>) -> 
    intermediary;
convert(partyRole, <<"30">>) -> 
    agent;
convert(partyRole, <<"31">>) -> 
    subCustodian;
convert(partyRole, <<"32">>) -> 
    beneficiary;
convert(partyRole, <<"33">>) -> 
    interestedParty;
convert(partyRole, <<"34">>) -> 
    regulatoryBody;
convert(partyRole, <<"35">>) -> 
    liquidityProvider;
convert(partyRole, <<"36">>) -> 
    enteringTrader;
convert(partyRole, <<"37">>) -> 
    contraTrader;
convert(partyRole, <<"38">>) -> 
    positionAccount;
convert(noPartyIDs, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(noSecurityAltID, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(securityAltID, Bin) -> 
   binary_to_list(Bin);
convert(securityAltIDSource, Bin) -> 
   binary_to_list(Bin);
convert(noUnderlyingSecurityAltID, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(underlyingSecurityAltID, Bin) -> 
   binary_to_list(Bin);
convert(underlyingSecurityAltIDSource, Bin) -> 
   binary_to_list(Bin);
convert(produkt, <<"1">>) -> 
    aGENCY;
convert(produkt, <<"2">>) -> 
    cOMMODITY;
convert(produkt, <<"3">>) -> 
    cORPORATE;
convert(produkt, <<"4">>) -> 
    cURRENCY;
convert(produkt, <<"5">>) -> 
    eQUITY;
convert(produkt, <<"6">>) -> 
    gOVERNMENT;
convert(produkt, <<"7">>) -> 
    iNDEX;
convert(produkt, <<"8">>) -> 
    lOAN;
convert(produkt, <<"9">>) -> 
    mONEYMARKET;
convert(produkt, <<"10">>) -> 
    mORTGAGE;
convert(produkt, <<"11">>) -> 
    mUNICIPAL;
convert(produkt, <<"12">>) -> 
    oTHER;
convert(produkt, <<"13">>) -> 
    fINANCING;
convert(cFICode, Bin) -> 
   binary_to_list(Bin);
convert(underlyingProduct, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(underlyingCFICode, Bin) -> 
   binary_to_list(Bin);
convert(testMessageIndicator, <<"Y">>) -> 
    true;
convert(testMessageIndicator, <<"N">>) -> 
    fales;
convert(bookingRefID, Bin) -> 
   binary_to_list(Bin);
convert(individualAllocID, Bin) -> 
   binary_to_list(Bin);
convert(roundingDirection, <<"0">>) -> 
    roundToNearest;
convert(roundingDirection, <<"1">>) -> 
    roundDown;
convert(roundingDirection, <<"2">>) -> 
    roundUp;
convert(roundingModulus, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(countryOfIssue, Bin) -> 
   binary_to_list(Bin);
convert(stateOrProvinceOfIssue, Bin) -> 
   binary_to_list(Bin);
convert(localeOfIssue, Bin) -> 
   binary_to_list(Bin);
convert(noRegistDtls, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(mailingDtls, Bin) -> 
   binary_to_list(Bin);
convert(investorCountryOfResidence, Bin) -> 
   binary_to_list(Bin);
convert(paymentRef, Bin) -> 
   binary_to_list(Bin);
convert(distribPaymentMethod, <<"1">>) -> 
    cREST;
convert(distribPaymentMethod, <<"2">>) -> 
    nSCC;
convert(distribPaymentMethod, <<"3">>) -> 
    euroclear;
convert(distribPaymentMethod, <<"4">>) -> 
    clearstream;
convert(distribPaymentMethod, <<"5">>) -> 
    cheque;
convert(distribPaymentMethod, <<"6">>) -> 
    telegraphicTransfer;
convert(distribPaymentMethod, <<"7">>) -> 
    fedWire;
convert(distribPaymentMethod, <<"8">>) -> 
    directCredit;
convert(distribPaymentMethod, <<"9">>) -> 
    aCHCredit;
convert(distribPaymentMethod, <<"10">>) -> 
    bPAY;
convert(distribPaymentMethod, <<"11">>) -> 
    highValueClearingSystemHVACS;
convert(distribPaymentMethod, <<"12">>) -> 
    reinvestInFund;
convert(cashDistribCurr, Bin) -> 
   binary_to_list(Bin);
convert(commCurrency, Bin) -> 
   binary_to_list(Bin);
convert(cancellationRights, <<"Y">>) -> 
    yes;
convert(cancellationRights, <<"N">>) -> 
    noExecutionOnly;
convert(cancellationRights, <<"M">>) -> 
    noWaiverAgreement;
convert(cancellationRights, <<"O">>) -> 
    noInstitutional;
convert(moneyLaunderingStatus, <<"Y">>) -> 
    passed;
convert(moneyLaunderingStatus, <<"N">>) -> 
    notChecked;
convert(moneyLaunderingStatus, <<"1">>) -> 
    exemptBelowLimit;
convert(moneyLaunderingStatus, <<"2">>) -> 
    exemptMoneyType;
convert(moneyLaunderingStatus, <<"3">>) -> 
    exemptAuthorised;
convert(mailingInst, Bin) -> 
   binary_to_list(Bin);
convert(transBkdTime, Bin) -> 
    fix_convertor_utils:bin_to_datetime(Bin);
convert(execPriceType, <<"B">>) -> 
    bidPrice;
convert(execPriceType, <<"C">>) -> 
    creationPrice;
convert(execPriceType, <<"D">>) -> 
    creationPricePlusAdjustmentPercent;
convert(execPriceType, <<"E">>) -> 
    creationPricePlusAdjustmentAmount;
convert(execPriceType, <<"O">>) -> 
    offerPrice;
convert(execPriceType, <<"P">>) -> 
    offerPriceMinusAdjustmentPercent;
convert(execPriceType, <<"Q">>) -> 
    offerPriceMinusAdjustmentAmount;
convert(execPriceType, <<"S">>) -> 
    singlePrice;
convert(execPriceAdjustment, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(dateOfBirth, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(tradeReportTransType, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(cardHolderName, Bin) -> 
   binary_to_list(Bin);
convert(cardNumber, Bin) -> 
   binary_to_list(Bin);
convert(cardExpDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(cardIssNum, Bin) -> 
   binary_to_list(Bin);
convert(paymentMethod, <<"1">>) -> 
    cREST;
convert(paymentMethod, <<"2">>) -> 
    nSCC;
convert(paymentMethod, <<"3">>) -> 
    euroclear;
convert(paymentMethod, <<"4">>) -> 
    clearstream;
convert(paymentMethod, <<"5">>) -> 
    cheque;
convert(paymentMethod, <<"6">>) -> 
    telegraphicTransfer;
convert(paymentMethod, <<"7">>) -> 
    fedWire;
convert(paymentMethod, <<"8">>) -> 
    debitCard;
convert(paymentMethod, <<"9">>) -> 
    directDebit;
convert(paymentMethod, <<"10">>) -> 
    directCredit;
convert(paymentMethod, <<"11">>) -> 
    creditCard;
convert(paymentMethod, <<"12">>) -> 
    aCHDebit;
convert(paymentMethod, <<"13">>) -> 
    aCHCredit;
convert(paymentMethod, <<"14">>) -> 
    bPAY;
convert(paymentMethod, <<"15">>) -> 
    highValueClearingSystem;
convert(registAcctType, Bin) -> 
   binary_to_list(Bin);
convert(designation, Bin) -> 
   binary_to_list(Bin);
convert(taxAdvantageType, <<"0">>) -> 
    none;
convert(taxAdvantageType, <<"1">>) -> 
    maxiISA;
convert(taxAdvantageType, <<"2">>) -> 
    tESSA;
convert(taxAdvantageType, <<"3">>) -> 
    miniCashISA;
convert(taxAdvantageType, <<"4">>) -> 
    miniStocksAndSharesISA;
convert(taxAdvantageType, <<"5">>) -> 
    miniInsuranceISA;
convert(taxAdvantageType, <<"6">>) -> 
    currentYearPayment;
convert(taxAdvantageType, <<"7">>) -> 
    priorYearPayment;
convert(taxAdvantageType, <<"8">>) -> 
    assetTransfer;
convert(taxAdvantageType, <<"9">>) -> 
    employeePriorYear;
convert(taxAdvantageType, <<"10">>) -> 
    employeeCurrentYear;
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
convert(taxAdvantageType, <<"16">>) -> 
    iRA;
convert(taxAdvantageType, <<"17">>) -> 
    iRARollover;
convert(taxAdvantageType, <<"18">>) -> 
    kEOGH;
convert(taxAdvantageType, <<"19">>) -> 
    profitSharingPlan;
convert(taxAdvantageType, <<"20">>) -> 
    uS401K;
convert(taxAdvantageType, <<"21">>) -> 
    selfDirectedIRA;
convert(taxAdvantageType, <<"22">>) -> 
    uS403b;
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
convert(registRejReasonText, Bin) -> 
   binary_to_list(Bin);
convert(fundRenewWaiv, <<"Y">>) -> 
    yes;
convert(fundRenewWaiv, <<"N">>) -> 
    no;
convert(cashDistribAgentName, Bin) -> 
   binary_to_list(Bin);
convert(cashDistribAgentCode, Bin) -> 
   binary_to_list(Bin);
convert(cashDistribAgentAcctNumber, Bin) -> 
   binary_to_list(Bin);
convert(cashDistribPayRef, Bin) -> 
   binary_to_list(Bin);
convert(cashDistribAgentAcctName, Bin) -> 
   binary_to_list(Bin);
convert(cardStartDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(paymentDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(paymentRemitterID, Bin) -> 
   binary_to_list(Bin);
convert(registStatus, <<"A">>) -> 
    accepted;
convert(registStatus, <<"R">>) -> 
    rejected;
convert(registStatus, <<"H">>) -> 
    held;
convert(registStatus, <<"N">>) -> 
    reminder;
convert(registRejReasonCode, <<"1">>) -> 
    invalidAccountType;
convert(registRejReasonCode, <<"2">>) -> 
    invalidTaxExemptType;
convert(registRejReasonCode, <<"3">>) -> 
    invalidOwnershipType;
convert(registRejReasonCode, <<"4">>) -> 
    noRegDetails;
convert(registRejReasonCode, <<"5">>) -> 
    invalidRegSeqNo;
convert(registRejReasonCode, <<"6">>) -> 
    invalidRegDetails;
convert(registRejReasonCode, <<"7">>) -> 
    invalidMailingDetails;
convert(registRejReasonCode, <<"8">>) -> 
    invalidMailingInstructions;
convert(registRejReasonCode, <<"9">>) -> 
    invalidInvestorID;
convert(registRejReasonCode, <<"10">>) -> 
    invalidInvestorIDSource;
convert(registRejReasonCode, <<"11">>) -> 
    invalidDateOfBirth;
convert(registRejReasonCode, <<"12">>) -> 
    invalidCountry;
convert(registRejReasonCode, <<"13">>) -> 
    invalidDistribInstns;
convert(registRejReasonCode, <<"14">>) -> 
    invalidPercentage;
convert(registRejReasonCode, <<"15">>) -> 
    invalidPaymentMethod;
convert(registRejReasonCode, <<"16">>) -> 
    invalidAccountName;
convert(registRejReasonCode, <<"17">>) -> 
    invalidAgentCode;
convert(registRejReasonCode, <<"18">>) -> 
    invalidAccountNum;
convert(registRejReasonCode, <<"99">>) -> 
    other;
convert(registRefID, Bin) -> 
   binary_to_list(Bin);
convert(registDtls, Bin) -> 
   binary_to_list(Bin);
convert(noDistribInsts, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(registEmail, Bin) -> 
   binary_to_list(Bin);
convert(distribPercentage, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(registID, Bin) -> 
   binary_to_list(Bin);
convert(registTransType, <<"0">>) -> 
    new;
convert(registTransType, <<"1">>) -> 
    replace;
convert(registTransType, <<"2">>) -> 
    cancel;
convert(execValuationPoint, Bin) -> 
    fix_convertor_utils:bin_to_datetime(Bin);
convert(orderPercent, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(ownershipType, <<"J">>) -> 
    jointInvestors;
convert(ownershipType, <<"T">>) -> 
    tenantsInCommon;
convert(ownershipType, <<"2">>) -> 
    jointTrustees;
convert(noContAmts, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
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
convert(contAmtType, <<"13">>) -> 
    fundBasedRenewalCommissionOnOrder;
convert(contAmtType, <<"14">>) -> 
    fundBasedRenewalCommissionOnFund;
convert(contAmtType, <<"15">>) -> 
    netSettlementAmount;
convert(contAmtValue, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(contAmtCurr, Bin) -> 
   binary_to_list(Bin);
convert(ownerType, <<"1">>) -> 
    individualInvestor;
convert(ownerType, <<"2">>) -> 
    publicCompany;
convert(ownerType, <<"3">>) -> 
    privateCompany;
convert(ownerType, <<"4">>) -> 
    individualTrustee;
convert(ownerType, <<"5">>) -> 
    companyTrustee;
convert(ownerType, <<"6">>) -> 
    pensionPlan;
convert(ownerType, <<"7">>) -> 
    custodianUnderGiftsToMinorsAct;
convert(ownerType, <<"8">>) -> 
    trusts;
convert(ownerType, <<"9">>) -> 
    fiduciaries;
convert(ownerType, <<"10">>) -> 
    networkingSubAccount;
convert(ownerType, <<"11">>) -> 
    nonProfitOrganization;
convert(ownerType, <<"12">>) -> 
    corporateBody;
convert(ownerType, <<"13">>) -> 
    nominee;
convert(partySubID, Bin) -> 
   binary_to_list(Bin);
convert(nestedPartyID, Bin) -> 
   binary_to_list(Bin);
convert(nestedPartyIDSource, Bin) -> 
   binary_to_list(Bin);
convert(secondaryClOrdID, Bin) -> 
   binary_to_list(Bin);
convert(secondaryExecID, Bin) -> 
   binary_to_list(Bin);
convert(orderCapacity, <<"A">>) -> 
    agency;
convert(orderCapacity, <<"G">>) -> 
    proprietary;
convert(orderCapacity, <<"I">>) -> 
    individual;
convert(orderCapacity, <<"P">>) -> 
    principal;
convert(orderCapacity, <<"R">>) -> 
    risklessPrincipal;
convert(orderCapacity, <<"W">>) -> 
    agentForOtherMember;
convert(orderRestrictions, <<"1">>) -> 
    programTrade;
convert(orderRestrictions, <<"2">>) -> 
    indexArbitrage;
convert(orderRestrictions, <<"3">>) -> 
    nonIndexArbitrage;
convert(orderRestrictions, <<"4">>) -> 
    competingMarketMaker;
convert(orderRestrictions, <<"5">>) -> 
    actingAsMarketMakerOrSpecialistInSecurity;
convert(orderRestrictions, <<"6">>) -> 
    actingAsMarketMakerOrSpecialistInUnderlying;
convert(orderRestrictions, <<"7">>) -> 
    foreignEntity;
convert(orderRestrictions, <<"8">>) -> 
    externalMarketParticipant;
convert(orderRestrictions, <<"9">>) -> 
    externalInterConnectedMarketLinkage;
convert(orderRestrictions, <<"A">>) -> 
    risklessArbitrage;
convert(massCancelRequestType, <<"1">>) -> 
    cancelOrdersForASecurity;
convert(massCancelRequestType, <<"2">>) -> 
    cancelOrdersForAnUnderlyingSecurity;
convert(massCancelRequestType, <<"3">>) -> 
    cancelOrdersForAProduct;
convert(massCancelRequestType, <<"4">>) -> 
    cancelOrdersForACFICode;
convert(massCancelRequestType, <<"5">>) -> 
    cancelOrdersForASecurityType;
convert(massCancelRequestType, <<"6">>) -> 
    cancelOrdersForATradingSession;
convert(massCancelRequestType, <<"7">>) -> 
    cancelAllOrders;
convert(massCancelResponse, <<"0">>) -> 
    cancelRequestRejected;
convert(massCancelResponse, <<"1">>) -> 
    cancelOrdersForASecurity;
convert(massCancelResponse, <<"2">>) -> 
    cancelOrdersForAnUnderlyingSecurity;
convert(massCancelResponse, <<"3">>) -> 
    cancelOrdersForAProduct;
convert(massCancelResponse, <<"4">>) -> 
    cancelOrdersForACFICode;
convert(massCancelResponse, <<"5">>) -> 
    cancelOrdersForASecurityType;
convert(massCancelResponse, <<"6">>) -> 
    cancelOrdersForATradingSession;
convert(massCancelResponse, <<"7">>) -> 
    cancelAllOrders;
convert(massCancelRejectReason, <<"0">>) -> 
    massCancelNotSupported;
convert(massCancelRejectReason, <<"1">>) -> 
    invalidOrUnknownSecurity;
convert(massCancelRejectReason, <<"2">>) -> 
    invalidOrUnkownUnderlyingSecurity;
convert(massCancelRejectReason, <<"3">>) -> 
    invalidOrUnknownProduct;
convert(massCancelRejectReason, <<"4">>) -> 
    invalidOrUnknownCFICode;
convert(massCancelRejectReason, <<"5">>) -> 
    invalidOrUnknownSecurityType;
convert(massCancelRejectReason, <<"6">>) -> 
    invalidOrUnknownTradingSession;
convert(massCancelRejectReason, <<"99">>) -> 
    other;
convert(totalAffectedOrders, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(noAffectedOrders, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(affectedOrderID, Bin) -> 
   binary_to_list(Bin);
convert(affectedSecondaryOrderID, Bin) -> 
   binary_to_list(Bin);
convert(quoteType, <<"0">>) -> 
    indicative;
convert(quoteType, <<"1">>) -> 
    tradeable;
convert(quoteType, <<"2">>) -> 
    restrictedTradeable;
convert(quoteType, <<"3">>) -> 
    counter;
convert(nestedPartyRole, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(noNestedPartyIDs, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(totalAccruedInterestAmt, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(maturityDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(underlyingMaturityDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(instrRegistry, Bin) -> 
   binary_to_list(Bin);
convert(cashMargin, <<"1">>) -> 
    cash;
convert(cashMargin, <<"2">>) -> 
    marginOpen;
convert(cashMargin, <<"3">>) -> 
    marginClose;
convert(nestedPartySubID, Bin) -> 
   binary_to_list(Bin);
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
convert(crossID, Bin) -> 
   binary_to_list(Bin);
convert(crossType, <<"1">>) -> 
    crossAON;
convert(crossType, <<"2">>) -> 
    crossIOC;
convert(crossType, <<"3">>) -> 
    crossOneSide;
convert(crossType, <<"4">>) -> 
    crossSamePrice;
convert(crossPrioritization, <<"0">>) -> 
    none;
convert(crossPrioritization, <<"1">>) -> 
    buySideIsPrioritized;
convert(crossPrioritization, <<"2">>) -> 
    sellSideIsPrioritized;
convert(origCrossID, Bin) -> 
   binary_to_list(Bin);
convert(noSides, <<"1">>) -> 
    oneSide;
convert(noSides, <<"2">>) -> 
    bothSides;
convert(username, Bin) -> 
   binary_to_list(Bin);
convert(password, Bin) -> 
   binary_to_list(Bin);
convert(noLegs, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(legCurrency, Bin) -> 
   binary_to_list(Bin);
convert(totNoSecurityTypes, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(noSecurityTypes, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(securityListRequestType, <<"0">>) -> 
    symbol;
convert(securityListRequestType, <<"1">>) -> 
    securityTypeAnd;
convert(securityListRequestType, <<"2">>) -> 
    produkt;
convert(securityListRequestType, <<"3">>) -> 
    tradingSessionID;
convert(securityListRequestType, <<"4">>) -> 
    allSecurities;
convert(securityRequestResult, <<"0">>) -> 
    validRequest;
convert(securityRequestResult, <<"1">>) -> 
    invalidOrUnsupportedRequest;
convert(securityRequestResult, <<"2">>) -> 
    noInstrumentsFound;
convert(securityRequestResult, <<"3">>) -> 
    notAuthorizedToRetrieveInstrumentData;
convert(securityRequestResult, <<"4">>) -> 
    instrumentDataTemporarilyUnavailable;
convert(securityRequestResult, <<"5">>) -> 
    requestForInstrumentDataNotSupported;
convert(roundLot, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(minTradeVol, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(multiLegRptTypeReq, <<"0">>) -> 
    reportByMulitlegSecurityOnly;
convert(multiLegRptTypeReq, <<"1">>) -> 
    reportByMultilegSecurityAndInstrumentLegs;
convert(multiLegRptTypeReq, <<"2">>) -> 
    reportByInstrumentLegsOnly;
convert(legPositionEffect, Bin) -> 
   binary_to_list(Bin);
convert(legCoveredOrUncovered, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(legPrice, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(tradSesStatusRejReason, <<"1">>) -> 
    unknownOrInvalidTradingSessionID;
convert(tradSesStatusRejReason, <<"99">>) -> 
    other;
convert(tradeRequestID, Bin) -> 
   binary_to_list(Bin);
convert(tradeRequestType, <<"0">>) -> 
    allTrades;
convert(tradeRequestType, <<"1">>) -> 
    matchedTradesMatchingCriteria;
convert(tradeRequestType, <<"2">>) -> 
    unmatchedTradesThatMatchCriteria;
convert(tradeRequestType, <<"3">>) -> 
    unreportedTradesThatMatchCriteria;
convert(tradeRequestType, <<"4">>) -> 
    advisoriesThatMatchCriteria;
convert(previouslyReported, <<"Y">>) -> 
    perviouslyReportedToCounterparty;
convert(previouslyReported, <<"N">>) -> 
    notReportedToCounterparty;
convert(tradeReportID, Bin) -> 
   binary_to_list(Bin);
convert(tradeReportRefID, Bin) -> 
   binary_to_list(Bin);
convert(matchStatus, <<"0">>) -> 
    compared;
convert(matchStatus, <<"1">>) -> 
    uncompared;
convert(matchStatus, <<"2">>) -> 
    advisoryOrAlert;
convert(matchType, <<"A1">>) -> 
    exactMatchPlus4BadgesExecTime;
convert(matchType, <<"A2">>) -> 
    exactMatchPlus4Badges;
convert(matchType, <<"A3">>) -> 
    exactMatchPlus2BadgesExecTime;
convert(matchType, <<"A4">>) -> 
    exactMatchPlus2Badges;
convert(matchType, <<"A5">>) -> 
    exactMatchPlusExecTime;
convert(matchType, <<"AQ">>) -> 
    stampedAdvisoriesOrSpecialistAccepts;
convert(matchType, <<"S1">>) -> 
    a1ExactMatchSummarizedQuantity;
convert(matchType, <<"S2">>) -> 
    a2ExactMatchSummarizedQuantity;
convert(matchType, <<"S3">>) -> 
    a3ExactMatchSummarizedQuantity;
convert(matchType, <<"S4">>) -> 
    a4ExactMatchSummarizedQuantity;
convert(matchType, <<"S5">>) -> 
    a5ExactMatchSummarizedQuantity;
convert(matchType, <<"M1">>) -> 
    exactMatchMinusBadgesTimes;
convert(matchType, <<"M2">>) -> 
    summarizedMatchMinusBadgesTimes;
convert(matchType, <<"MT">>) -> 
    oCSLockedIn;
convert(matchType, <<"M3">>) -> 
    aCTAcceptedTrade;
convert(matchType, <<"M4">>) -> 
    aCTDefaultTrade;
convert(matchType, <<"M5">>) -> 
    aCTDefaultAfterM2;
convert(matchType, <<"M6">>) -> 
    aCTM6Match;
convert(oddLot, <<"Y">>) -> 
    treatAsOddLot;
convert(oddLot, <<"N">>) -> 
    treatAsRoundLot;
convert(noClearingInstructions, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(clearingInstruction, <<"0">>) -> 
    processNormally;
convert(clearingInstruction, <<"1">>) -> 
    excludeFromAllNetting;
convert(clearingInstruction, <<"2">>) -> 
    bilateralNettingOnly;
convert(clearingInstruction, <<"3">>) -> 
    exClearing;
convert(clearingInstruction, <<"4">>) -> 
    specialTrade;
convert(clearingInstruction, <<"5">>) -> 
    multilateralNetting;
convert(clearingInstruction, <<"6">>) -> 
    clearAgainstCentralCounterparty;
convert(clearingInstruction, <<"7">>) -> 
    excludeFromCentralCounterparty;
convert(clearingInstruction, <<"8">>) -> 
    manualMode;
convert(clearingInstruction, <<"9">>) -> 
    automaticPostingMode;
convert(clearingInstruction, <<"10">>) -> 
    automaticGiveUpMode;
convert(clearingInstruction, <<"11">>) -> 
    qualifiedServiceRepresentativeQSR;
convert(clearingInstruction, <<"12">>) -> 
    customerTrade;
convert(clearingInstruction, <<"13">>) -> 
    selfClearing;
convert(tradeInputSource, Bin) -> 
   binary_to_list(Bin);
convert(tradeInputDevice, Bin) -> 
   binary_to_list(Bin);
convert(noDates, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(accountType, <<"1">>) -> 
    carriedCustomerSide;
convert(accountType, <<"2">>) -> 
    carriedNonCustomerSide;
convert(accountType, <<"3">>) -> 
    houseTrader;
convert(accountType, <<"4">>) -> 
    floorTrader;
convert(accountType, <<"6">>) -> 
    carriedNonCustomerSideCrossMargined;
convert(accountType, <<"7">>) -> 
    houseTraderCrossMargined;
convert(accountType, <<"8">>) -> 
    jointBackOfficeAccount;
convert(custOrderCapacity, <<"1">>) -> 
    memberTradingForTheirOwnAccount;
convert(custOrderCapacity, <<"2">>) -> 
    clearingFirmTradingForItsProprietaryAccount;
convert(custOrderCapacity, <<"3">>) -> 
    memberTradingForAnotherMember;
convert(custOrderCapacity, <<"4">>) -> 
    allOther;
convert(clOrdLinkID, Bin) -> 
   binary_to_list(Bin);
convert(massStatusReqID, Bin) -> 
   binary_to_list(Bin);
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
convert(massStatusReqType, <<"7">>) -> 
    statusForAllOrders;
convert(massStatusReqType, <<"8">>) -> 
    statusForOrdersForAPartyID;
convert(origOrdModTime, Bin) -> 
    fix_convertor_utils:bin_to_datetime(Bin);
convert(legSettlType, Bin) -> 
   binary_to_list(Bin);
convert(legSettlDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(dayBookingInst, <<"0">>) -> 
    auto;
convert(dayBookingInst, <<"1">>) -> 
    speakWithOrderInitiatorBeforeBooking;
convert(dayBookingInst, <<"2">>) -> 
    accumulate;
convert(bookingUnit, <<"0">>) -> 
    eachPartialExecutionIsABookableUnit;
convert(bookingUnit, <<"1">>) -> 
    aggregatePartialExecutionsOnThisOrder;
convert(bookingUnit, <<"2">>) -> 
    aggregateExecutionsForThisSymbol;
convert(preallocMethod, <<"0">>) -> 
    proRata;
convert(preallocMethod, <<"1">>) -> 
    doNotProRata;
convert(underlyingCountryOfIssue, Bin) -> 
   binary_to_list(Bin);
convert(underlyingStateOrProvinceOfIssue, Bin) -> 
   binary_to_list(Bin);
convert(underlyingLocaleOfIssue, Bin) -> 
   binary_to_list(Bin);
convert(underlyingInstrRegistry, Bin) -> 
   binary_to_list(Bin);
convert(legCountryOfIssue, Bin) -> 
   binary_to_list(Bin);
convert(legStateOrProvinceOfIssue, Bin) -> 
   binary_to_list(Bin);
convert(legLocaleOfIssue, Bin) -> 
   binary_to_list(Bin);
convert(legInstrRegistry, Bin) -> 
   binary_to_list(Bin);
convert(legSymbol, Bin) -> 
   binary_to_list(Bin);
convert(legSymbolSfx, Bin) -> 
   binary_to_list(Bin);
convert(legSecurityID, Bin) -> 
   binary_to_list(Bin);
convert(legSecurityIDSource, Bin) -> 
   binary_to_list(Bin);
convert(noLegSecurityAltID, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(legSecurityAltID, Bin) -> 
   binary_to_list(Bin);
convert(legSecurityAltIDSource, Bin) -> 
   binary_to_list(Bin);
convert(legProduct, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(legCFICode, Bin) -> 
   binary_to_list(Bin);
convert(legSecurityType, Bin) -> 
   binary_to_list(Bin);
convert(legMaturityMonthYear, Bin) -> 
    fix_convertor_utils:bin2monthyear(Bin);
convert(legMaturityDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(legStrikePrice, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(legOptAttribute, Bin) -> 
   binary_to_list(Bin);
convert(legContractMultiplier, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(legCouponRate, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(legSecurityExchange, Bin) -> 
   binary_to_list(Bin);
convert(legIssuer, Bin) -> 
   binary_to_list(Bin);
convert(encodedLegIssuerLen, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(encodedLegIssuer, Bin) -> 
   binary_to_list(Bin);
convert(legSecurityDesc, Bin) -> 
   binary_to_list(Bin);
convert(encodedLegSecurityDescLen, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(encodedLegSecurityDesc, Bin) -> 
   binary_to_list(Bin);
convert(legRatioQty, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(legSide, Bin) -> 
   binary_to_list(Bin);
convert(tradingSessionSubID, Bin) -> 
   binary_to_list(Bin);
convert(allocType, <<"1">>) -> 
    calculated;
convert(allocType, <<"2">>) -> 
    preliminary;
convert(allocType, <<"5">>) -> 
    readyToBook;
convert(allocType, <<"7">>) -> 
    warehouseInstruction;
convert(allocType, <<"8">>) -> 
    requestToIntermediary;
convert(noHops, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(hopCompID, Bin) -> 
   binary_to_list(Bin);
convert(hopSendingTime, Bin) -> 
    fix_convertor_utils:bin_to_datetime(Bin);
convert(hopRefID, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(midPx, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(bidYield, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(midYield, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(offerYield, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(clearingFeeIndicator, <<"B">>) -> 
    cBOEMember;
convert(clearingFeeIndicator, <<"C">>) -> 
    nonMemberAndCustomer;
convert(clearingFeeIndicator, <<"E">>) -> 
    equityMemberAndClearingMember;
convert(clearingFeeIndicator, <<"F">>) -> 
    fullAndAssociateMember;
convert(clearingFeeIndicator, <<"H">>) -> 
    firms106HAnd106J;
convert(clearingFeeIndicator, <<"I">>) -> 
    gIM;
convert(clearingFeeIndicator, <<"L">>) -> 
    lessee106FEmployees;
convert(clearingFeeIndicator, <<"M">>) -> 
    allOtherOwnershipTypes;
convert(clearingFeeIndicator, <<"1">>) -> 
    firstYearDelegate;
convert(clearingFeeIndicator, <<"2">>) -> 
    secondYearDelegate;
convert(clearingFeeIndicator, <<"3">>) -> 
    thirdYearDelegate;
convert(clearingFeeIndicator, <<"4">>) -> 
    fourthYearDelegate;
convert(clearingFeeIndicator, <<"5">>) -> 
    fifthYearDelegate;
convert(clearingFeeIndicator, <<"9">>) -> 
    sixthYearDelegate;
convert(workingIndicator, <<"Y">>) -> 
    working;
convert(workingIndicator, <<"N">>) -> 
    notWorking;
convert(legLastPx, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(priorityIndicator, <<"0">>) -> 
    priorityUnchanged;
convert(priorityIndicator, <<"1">>) -> 
    lostPriorityAsResultOfOrderChange;
convert(priceImprovement, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(price2, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(lastForwardPoints2, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(bidForwardPoints2, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(offerForwardPoints2, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(rFQReqID, Bin) -> 
   binary_to_list(Bin);
convert(mktBidPx, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(mktOfferPx, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(minBidSize, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(minOfferSize, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(quoteStatusReqID, Bin) -> 
   binary_to_list(Bin);
convert(legalConfirm, <<"Y">>) -> 
    legalConfirmTrue;
convert(legalConfirm, <<"N">>) -> 
    doesNotConsituteALegalConfirm;
convert(underlyingLastPx, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(underlyingLastQty, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(legRefID, Bin) -> 
   binary_to_list(Bin);
convert(contraLegRefID, Bin) -> 
   binary_to_list(Bin);
convert(settlCurrBidFxRate, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(settlCurrOfferFxRate, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
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
convert(quoteRequestRejectReason, <<"7">>) -> 
    noMatchForInquiry;
convert(quoteRequestRejectReason, <<"8">>) -> 
    noMarketForInstrument;
convert(quoteRequestRejectReason, <<"9">>) -> 
    noInventory;
convert(quoteRequestRejectReason, <<"10">>) -> 
    pass;
convert(quoteRequestRejectReason, <<"99">>) -> 
    other;
convert(sideComplianceID, Bin) -> 
   binary_to_list(Bin);
convert(acctIDSource, <<"1">>) -> 
    bIC;
convert(acctIDSource, <<"2">>) -> 
    sIDCode;
convert(acctIDSource, <<"3">>) -> 
    tFM;
convert(acctIDSource, <<"4">>) -> 
    oMGEO;
convert(acctIDSource, <<"5">>) -> 
    dTCCCode;
convert(acctIDSource, <<"99">>) -> 
    other;
convert(allocAcctIDSource, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(benchmarkPrice, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(benchmarkPriceType, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(confirmID, Bin) -> 
   binary_to_list(Bin);
convert(confirmStatus, <<"1">>) -> 
    received;
convert(confirmStatus, <<"2">>) -> 
    mismatchedAccount;
convert(confirmStatus, <<"3">>) -> 
    missingSettlementInstructions;
convert(confirmStatus, <<"4">>) -> 
    confirmed;
convert(confirmStatus, <<"5">>) -> 
    requestRejected;
convert(confirmTransType, <<"0">>) -> 
    new;
convert(confirmTransType, <<"1">>) -> 
    replace;
convert(confirmTransType, <<"2">>) -> 
    cancel;
convert(contractSettlMonth, Bin) -> 
    fix_convertor_utils:bin2monthyear(Bin);
convert(deliveryForm, <<"1">>) -> 
    bookEntry;
convert(deliveryForm, <<"2">>) -> 
    bearer;
convert(lastParPx, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(noLegAllocs, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(legAllocAccount, Bin) -> 
   binary_to_list(Bin);
convert(legIndividualAllocID, Bin) -> 
   binary_to_list(Bin);
convert(legAllocQty, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(legAllocAcctIDSource, Bin) -> 
   binary_to_list(Bin);
convert(legSettlCurrency, Bin) -> 
   binary_to_list(Bin);
convert(legBenchmarkCurveCurrency, Bin) -> 
   binary_to_list(Bin);
convert(legBenchmarkCurveName, Bin) -> 
   binary_to_list(Bin);
convert(legBenchmarkCurvePoint, Bin) -> 
   binary_to_list(Bin);
convert(legBenchmarkPrice, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(legBenchmarkPriceType, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(legBidPx, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(legIOIQty, Bin) -> 
   binary_to_list(Bin);
convert(noLegStipulations, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(legOfferPx, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(legPriceType, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(legQty, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(legStipulationType, Bin) -> 
   binary_to_list(Bin);
convert(legStipulationValue, Bin) -> 
   binary_to_list(Bin);
convert(legSwapType, <<"1">>) -> 
    parForPar;
convert(legSwapType, <<"2">>) -> 
    modifiedDuration;
convert(legSwapType, <<"4">>) -> 
    risk;
convert(legSwapType, <<"5">>) -> 
    proceeds;
convert(pool, Bin) -> 
   binary_to_list(Bin);
convert(quotePriceType, <<"1">>) -> 
    percent;
convert(quotePriceType, <<"2">>) -> 
    perShare;
convert(quotePriceType, <<"3">>) -> 
    fixedAmount;
convert(quotePriceType, <<"4">>) -> 
    discount;
convert(quotePriceType, <<"5">>) -> 
    premium;
convert(quotePriceType, <<"6">>) -> 
    spread;
convert(quotePriceType, <<"7">>) -> 
    tEDPrice;
convert(quotePriceType, <<"8">>) -> 
    tEDYield;
convert(quotePriceType, <<"9">>) -> 
    yieldSpread;
convert(quotePriceType, <<"10">>) -> 
    yield;
convert(quoteRespID, Bin) -> 
   binary_to_list(Bin);
convert(quoteRespType, <<"1">>) -> 
    hit;
convert(quoteRespType, <<"2">>) -> 
    counter;
convert(quoteRespType, <<"3">>) -> 
    expired;
convert(quoteRespType, <<"4">>) -> 
    cover;
convert(quoteRespType, <<"5">>) -> 
    doneAway;
convert(quoteRespType, <<"6">>) -> 
    pass;
convert(quoteQualifier, Bin) -> 
   binary_to_list(Bin);
convert(yieldRedemptionDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(yieldRedemptionPrice, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(yieldRedemptionPriceType, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(benchmarkSecurityID, Bin) -> 
   binary_to_list(Bin);
convert(reversalIndicator, <<"Y">>) -> 
    true;
convert(reversalIndicator, <<"N">>) -> 
    false;
convert(yieldCalcDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(noPositions, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(posType, <<"TQ">>) -> 
    transactionQuantity;
convert(posType, <<"IAS">>) -> 
    intraSpreadQty;
convert(posType, <<"IES">>) -> 
    interSpreadQty;
convert(posType, <<"FIN">>) -> 
    endOfDayQty;
convert(posType, <<"SOD">>) -> 
    startOfDayQty;
convert(posType, <<"EX">>) -> 
    optionExerciseQty;
convert(posType, <<"AS">>) -> 
    optionAssignment;
convert(posType, <<"TX">>) -> 
    transactionFromExercise;
convert(posType, <<"TA">>) -> 
    transactionFromAssignment;
convert(posType, <<"PIT">>) -> 
    pitTradeQty;
convert(posType, <<"TRF">>) -> 
    transferTradeQty;
convert(posType, <<"ETR">>) -> 
    electronicTradeQty;
convert(posType, <<"ALC">>) -> 
    allocationTradeQty;
convert(posType, <<"PA">>) -> 
    adjustmentQty;
convert(posType, <<"ASF">>) -> 
    asOfTradeQty;
convert(posType, <<"DLV">>) -> 
    deliveryQty;
convert(posType, <<"TOT">>) -> 
    totalTransactionQty;
convert(posType, <<"XM">>) -> 
    crossMarginQty;
convert(posType, <<"SPL">>) -> 
    integralSplit;
convert(longQty, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(shortQty, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(posQtyStatus, <<"0">>) -> 
    submitted;
convert(posQtyStatus, <<"1">>) -> 
    accepted;
convert(posQtyStatus, <<"2">>) -> 
    rejected;
convert(posAmtType, <<"FMTM">>) -> 
    finalMarkToMarketAmount;
convert(posAmtType, <<"IMTM">>) -> 
    incrementalMarkToMarketAmount;
convert(posAmtType, <<"TVAR">>) -> 
    tradeVariationAmount;
convert(posAmtType, <<"SMTM">>) -> 
    startOfDayMarkToMarketAmount;
convert(posAmtType, <<"PREM">>) -> 
    premiumAmount;
convert(posAmtType, <<"CRES">>) -> 
    cashResidualAmount;
convert(posAmtType, <<"CASH">>) -> 
    cashAmount;
convert(posAmtType, <<"VADJ">>) -> 
    valueAdjustedAmount;
convert(posAmt, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(posTransType, <<"1">>) -> 
    exercise;
convert(posTransType, <<"2">>) -> 
    doNotExercise;
convert(posTransType, <<"3">>) -> 
    positionAdjustment;
convert(posTransType, <<"4">>) -> 
    positionChangeSubmission;
convert(posTransType, <<"5">>) -> 
    pledge;
convert(posReqID, Bin) -> 
   binary_to_list(Bin);
convert(noUnderlyings, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(posMaintAction, <<"1">>) -> 
    new;
convert(posMaintAction, <<"2">>) -> 
    replace;
convert(posMaintAction, <<"3">>) -> 
    cancel;
convert(origPosReqRefID, Bin) -> 
   binary_to_list(Bin);
convert(posMaintRptRefID, Bin) -> 
   binary_to_list(Bin);
convert(clearingBusinessDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(settlSessID, <<"ITD">>) -> 
    intraday;
convert(settlSessID, <<"RTH">>) -> 
    regularTradingHours;
convert(settlSessID, <<"ETH">>) -> 
    electronicTradingHours;
convert(settlSessSubID, Bin) -> 
   binary_to_list(Bin);
convert(adjustmentType, <<"0">>) -> 
    processRequestAsMarginDisposition;
convert(adjustmentType, <<"1">>) -> 
    deltaPlus;
convert(adjustmentType, <<"2">>) -> 
    deltaMinus;
convert(adjustmentType, <<"3">>) -> 
    final;
convert(contraryInstructionIndicator, <<"Y">>) -> 
    true;
convert(contraryInstructionIndicator, <<"N">>) -> 
    false;
convert(priorSpreadIndicator, <<"Y">>) -> 
    true;
convert(priorSpreadIndicator, <<"N">>) -> 
    false;
convert(posMaintRptID, Bin) -> 
   binary_to_list(Bin);
convert(posMaintStatus, <<"0">>) -> 
    accepted;
convert(posMaintStatus, <<"1">>) -> 
    acceptedWithWarnings;
convert(posMaintStatus, <<"2">>) -> 
    rejected;
convert(posMaintStatus, <<"3">>) -> 
    completed;
convert(posMaintStatus, <<"4">>) -> 
    completedWithWarnings;
convert(posMaintResult, <<"0">>) -> 
    successfulCompletion;
convert(posMaintResult, <<"1">>) -> 
    rejected;
convert(posMaintResult, <<"99">>) -> 
    other;
convert(posReqType, <<"0">>) -> 
    positions;
convert(posReqType, <<"1">>) -> 
    trades;
convert(posReqType, <<"2">>) -> 
    exercises;
convert(posReqType, <<"3">>) -> 
    assignments;
convert(responseTransportType, <<"0">>) -> 
    inband;
convert(responseTransportType, <<"1">>) -> 
    outOfBand;
convert(responseDestination, Bin) -> 
   binary_to_list(Bin);
convert(totalNumPosReports, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(posReqResult, <<"0">>) -> 
    validRequest;
convert(posReqResult, <<"1">>) -> 
    invalidOrUnsupportedRequest;
convert(posReqResult, <<"2">>) -> 
    noPositionsFoundThatMatchCriteria;
convert(posReqResult, <<"3">>) -> 
    notAuthorizedToRequestPositions;
convert(posReqResult, <<"4">>) -> 
    requestForPositionNotSupported;
convert(posReqResult, <<"99">>) -> 
    other;
convert(posReqStatus, <<"0">>) -> 
    completed;
convert(posReqStatus, <<"1">>) -> 
    completedWithWarnings;
convert(posReqStatus, <<"2">>) -> 
    rejected;
convert(settlPrice, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(settlPriceType, <<"1">>) -> 
    final;
convert(settlPriceType, <<"2">>) -> 
    theoretical;
convert(underlyingSettlPrice, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(underlyingSettlPriceType, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(priorSettlPrice, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(noQuoteQualifiers, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(allocSettlCurrency, Bin) -> 
   binary_to_list(Bin);
convert(allocSettlCurrAmt, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(interestAtMaturity, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(legDatedDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(legPool, Bin) -> 
   binary_to_list(Bin);
convert(allocInterestAtMaturity, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(allocAccruedInterestAmt, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(deliveryDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(assignmentMethod, <<"R">>) -> 
    random;
convert(assignmentMethod, <<"P">>) -> 
    proRata;
convert(assignmentUnit, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(openInterest, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(exerciseMethod, <<"A">>) -> 
    automatic;
convert(exerciseMethod, <<"M">>) -> 
    manual;
convert(totNumTradeReports, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(tradeRequestResult, <<"0">>) -> 
    successful;
convert(tradeRequestResult, <<"1">>) -> 
    invalidOrUnknownInstrument;
convert(tradeRequestResult, <<"2">>) -> 
    invalidTypeOfTradeRequested;
convert(tradeRequestResult, <<"3">>) -> 
    invalidParties;
convert(tradeRequestResult, <<"4">>) -> 
    invalidTransportTypeRequested;
convert(tradeRequestResult, <<"5">>) -> 
    invalidDestinationRequested;
convert(tradeRequestResult, <<"8">>) -> 
    tradeRequestTypeNotSupported;
convert(tradeRequestResult, <<"9">>) -> 
    notAuthorized;
convert(tradeRequestResult, <<"99">>) -> 
    other;
convert(tradeRequestStatus, <<"0">>) -> 
    accepted;
convert(tradeRequestStatus, <<"1">>) -> 
    completed;
convert(tradeRequestStatus, <<"2">>) -> 
    rejected;
convert(tradeReportRejectReason, <<"0">>) -> 
    successful;
convert(tradeReportRejectReason, <<"1">>) -> 
    invalidPartyOnformation;
convert(tradeReportRejectReason, <<"2">>) -> 
    unknownInstrument;
convert(tradeReportRejectReason, <<"3">>) -> 
    unauthorizedToReportTrades;
convert(tradeReportRejectReason, <<"4">>) -> 
    invalidTradeType;
convert(tradeReportRejectReason, <<"99">>) -> 
    other;
convert(sideMultiLegReportingType, <<"1">>) -> 
    singleSecurity;
convert(sideMultiLegReportingType, <<"2">>) -> 
    individualLegOfAMultilegSecurity;
convert(sideMultiLegReportingType, <<"3">>) -> 
    multilegSecurity;
convert(noPosAmt, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(autoAcceptIndicator, <<"Y">>) -> 
    true;
convert(autoAcceptIndicator, <<"N">>) -> 
    false;
convert(allocReportID, Bin) -> 
   binary_to_list(Bin);
convert(noNested2PartyIDs, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(nested2PartyID, Bin) -> 
   binary_to_list(Bin);
convert(nested2PartyIDSource, Bin) -> 
   binary_to_list(Bin);
convert(nested2PartyRole, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(nested2PartySubID, Bin) -> 
   binary_to_list(Bin);
convert(benchmarkSecurityIDSource, Bin) -> 
   binary_to_list(Bin);
convert(securitySubType, Bin) -> 
   binary_to_list(Bin);
convert(underlyingSecuritySubType, Bin) -> 
   binary_to_list(Bin);
convert(legSecuritySubType, Bin) -> 
   binary_to_list(Bin);
convert(allowableOneSidednessPct, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(allowableOneSidednessValue, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(allowableOneSidednessCurr, Bin) -> 
   binary_to_list(Bin);
convert(noTrdRegTimestamps, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(trdRegTimestamp, Bin) -> 
    fix_convertor_utils:bin_to_datetime(Bin);
convert(trdRegTimestampType, <<"1">>) -> 
    executionTime;
convert(trdRegTimestampType, <<"2">>) -> 
    timeIn;
convert(trdRegTimestampType, <<"3">>) -> 
    timeOut;
convert(trdRegTimestampType, <<"4">>) -> 
    brokerReceipt;
convert(trdRegTimestampType, <<"5">>) -> 
    brokerExecution;
convert(trdRegTimestampOrigin, Bin) -> 
   binary_to_list(Bin);
convert(confirmRefID, Bin) -> 
   binary_to_list(Bin);
convert(confirmType, <<"1">>) -> 
    status;
convert(confirmType, <<"2">>) -> 
    confirmation;
convert(confirmType, <<"3">>) -> 
    confirmationRequestRejected;
convert(confirmRejReason, <<"1">>) -> 
    mismatchedAccount;
convert(confirmRejReason, <<"2">>) -> 
    missingSettlementInstructions;
convert(confirmRejReason, <<"99">>) -> 
    other;
convert(bookingType, <<"0">>) -> 
    regularBooking;
convert(bookingType, <<"1">>) -> 
    cFD;
convert(bookingType, <<"2">>) -> 
    totalReturnSwap;
convert(individualAllocRejCode, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(settlInstMsgID, Bin) -> 
   binary_to_list(Bin);
convert(noSettlInst, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(lastUpdateTime, Bin) -> 
    fix_convertor_utils:bin_to_datetime(Bin);
convert(allocSettlInstType, <<"0">>) -> 
    useDefaultInstructions;
convert(allocSettlInstType, <<"1">>) -> 
    deriveFromParametersProvided;
convert(allocSettlInstType, <<"2">>) -> 
    fullDetailsProvided;
convert(allocSettlInstType, <<"3">>) -> 
    sSIDBIDsProvided;
convert(allocSettlInstType, <<"4">>) -> 
    phoneForInstructions;
convert(noSettlPartyIDs, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(settlPartyID, Bin) -> 
   binary_to_list(Bin);
convert(settlPartyIDSource, Bin) -> 
   binary_to_list(Bin);
convert(settlPartyRole, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(settlPartySubID, Bin) -> 
   binary_to_list(Bin);
convert(settlPartySubIDType, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(dlvyInstType, <<"S">>) -> 
    securities;
convert(dlvyInstType, <<"C">>) -> 
    cash;
convert(terminationType, <<"1">>) -> 
    overnight;
convert(terminationType, <<"2">>) -> 
    term;
convert(terminationType, <<"3">>) -> 
    flexible;
convert(terminationType, <<"4">>) -> 
    open;
convert(nextExpectedMsgSeqNum, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(ordStatusReqID, Bin) -> 
   binary_to_list(Bin);
convert(settlInstReqID, Bin) -> 
   binary_to_list(Bin);
convert(settlInstReqRejCode, <<"0">>) -> 
    unableToProcessRequest;
convert(settlInstReqRejCode, <<"1">>) -> 
    unknownAccount;
convert(settlInstReqRejCode, <<"2">>) -> 
    noMatchingSettlementInstructionsFound;
convert(settlInstReqRejCode, <<"99">>) -> 
    other;
convert(secondaryAllocID, Bin) -> 
   binary_to_list(Bin);
convert(allocReportType, <<"3">>) -> 
    sellsideCalculatedUsingPreliminary;
convert(allocReportType, <<"4">>) -> 
    sellsideCalculatedWithoutPreliminary;
convert(allocReportType, <<"5">>) -> 
    warehouseRecap;
convert(allocReportType, <<"8">>) -> 
    requestToIntermediary;
convert(allocReportRefID, Bin) -> 
   binary_to_list(Bin);
convert(allocCancReplaceReason, <<"1">>) -> 
    originalDetailsIncomplete;
convert(allocCancReplaceReason, <<"2">>) -> 
    changeInUnderlyingOrderDetails;
convert(allocCancReplaceReason, <<"99">>) -> 
    other;
convert(copyMsgIndicator, <<"Y">>) -> 
    true;
convert(copyMsgIndicator, <<"N">>) -> 
    false;
convert(allocAccountType, <<"1">>) -> 
    carriedCustomerSide;
convert(allocAccountType, <<"2">>) -> 
    carriedNonCustomerSide;
convert(allocAccountType, <<"3">>) -> 
    houseTrader;
convert(allocAccountType, <<"4">>) -> 
    floorTrader;
convert(allocAccountType, <<"6">>) -> 
    carriedNonCustomerSideCrossMargined;
convert(allocAccountType, <<"7">>) -> 
    houseTraderCrossMargined;
convert(allocAccountType, <<"8">>) -> 
    jointBackOfficeAccount;
convert(orderAvgPx, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(orderBookingQty, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(noSettlPartySubIDs, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(noPartySubIDs, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(partySubIDType, <<"1">>) -> 
    firm;
convert(partySubIDType, <<"2">>) -> 
    person;
convert(partySubIDType, <<"3">>) -> 
    system;
convert(partySubIDType, <<"4">>) -> 
    application;
convert(partySubIDType, <<"5">>) -> 
    fullLegalNameOfFirm;
convert(partySubIDType, <<"6">>) -> 
    postalAddress;
convert(partySubIDType, <<"7">>) -> 
    phoneNumber;
convert(partySubIDType, <<"8">>) -> 
    emailAddress;
convert(partySubIDType, <<"9">>) -> 
    contactName;
convert(partySubIDType, <<"10">>) -> 
    securitiesAccountNumber;
convert(partySubIDType, <<"11">>) -> 
    registrationNumber;
convert(partySubIDType, <<"12">>) -> 
    registeredAddressForConfirmation;
convert(partySubIDType, <<"13">>) -> 
    regulatoryStatus;
convert(partySubIDType, <<"14">>) -> 
    registrationName;
convert(partySubIDType, <<"15">>) -> 
    cashAccountNumber;
convert(partySubIDType, <<"16">>) -> 
    bIC;
convert(partySubIDType, <<"17">>) -> 
    cSDParticipantMemberCode;
convert(partySubIDType, <<"18">>) -> 
    registeredAddress;
convert(partySubIDType, <<"19">>) -> 
    fundAccountName;
convert(partySubIDType, <<"20">>) -> 
    telexNumber;
convert(partySubIDType, <<"21">>) -> 
    faxNumber;
convert(partySubIDType, <<"22">>) -> 
    securitiesAccountName;
convert(partySubIDType, <<"23">>) -> 
    cashAccountName;
convert(partySubIDType, <<"24">>) -> 
    department;
convert(partySubIDType, <<"25">>) -> 
    locationDesk;
convert(partySubIDType, <<"26">>) -> 
    positionAccountType;
convert(noNestedPartySubIDs, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(nestedPartySubIDType, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(noNested2PartySubIDs, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(nested2PartySubIDType, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(allocIntermedReqType, <<"1">>) -> 
    pendingAccept;
convert(allocIntermedReqType, <<"2">>) -> 
    pendingRelease;
convert(allocIntermedReqType, <<"3">>) -> 
    pendingReversal;
convert(allocIntermedReqType, <<"4">>) -> 
    accept;
convert(allocIntermedReqType, <<"5">>) -> 
    blockLevelReject;
convert(allocIntermedReqType, <<"6">>) -> 
    accountLevelReject;
convert(underlyingPx, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(priceDelta, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(applQueueMax, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(applQueueDepth, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(applQueueResolution, <<"0">>) -> 
    noActionTaken;
convert(applQueueResolution, <<"1">>) -> 
    queueFlushed;
convert(applQueueResolution, <<"2">>) -> 
    overlayLast;
convert(applQueueResolution, <<"3">>) -> 
    endSession;
convert(applQueueAction, <<"0">>) -> 
    noActionTaken;
convert(applQueueAction, <<"1">>) -> 
    queueFlushed;
convert(applQueueAction, <<"2">>) -> 
    overlayLast;
convert(applQueueAction, <<"3">>) -> 
    endSession;
convert(noAltMDSource, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(altMDSourceID, Bin) -> 
   binary_to_list(Bin);
convert(secondaryTradeReportID, Bin) -> 
   binary_to_list(Bin);
convert(avgPxIndicator, <<"0">>) -> 
    noAveragePricing;
convert(avgPxIndicator, <<"1">>) -> 
    trade;
convert(avgPxIndicator, <<"2">>) -> 
    lastTrade;
convert(tradeLinkID, Bin) -> 
   binary_to_list(Bin);
convert(orderInputDevice, Bin) -> 
   binary_to_list(Bin);
convert(underlyingTradingSessionID, Bin) -> 
   binary_to_list(Bin);
convert(underlyingTradingSessionSubID, Bin) -> 
   binary_to_list(Bin);
convert(tradeLegRefID, Bin) -> 
   binary_to_list(Bin);
convert(exchangeRule, Bin) -> 
   binary_to_list(Bin);
convert(tradeAllocIndicator, <<"0">>) -> 
    allocationNotRequired;
convert(tradeAllocIndicator, <<"1">>) -> 
    allocationRequired;
convert(tradeAllocIndicator, <<"2">>) -> 
    useAllocationProvidedWithTheTrade;
convert(expirationCycle, <<"0">>) -> 
    expireOnTradingSessionClose;
convert(expirationCycle, <<"1">>) -> 
    expireOnTradingSessionOpen;
convert(trdType, <<"0">>) -> 
    regularTrade;
convert(trdType, <<"1">>) -> 
    blockTrade;
convert(trdType, <<"2">>) -> 
    eFP;
convert(trdType, <<"3">>) -> 
    transfer;
convert(trdType, <<"4">>) -> 
    lateTrade;
convert(trdType, <<"5">>) -> 
    tTrade;
convert(trdType, <<"6">>) -> 
    weightedAveragePriceTrade;
convert(trdType, <<"7">>) -> 
    bunchedTrade;
convert(trdType, <<"8">>) -> 
    lateBunchedTrade;
convert(trdType, <<"9">>) -> 
    priorReferencePriceTrade;
convert(trdType, <<"10">>) -> 
    afterHoursTrade;
convert(trdSubType, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(transferReason, Bin) -> 
   binary_to_list(Bin);
convert(totNumAssignmentReports, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(asgnRptID, Bin) -> 
   binary_to_list(Bin);
convert(thresholdAmount, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(pegMoveType, <<"0">>) -> 
    floating;
convert(pegMoveType, <<"1">>) -> 
    fixed;
convert(pegOffsetType, <<"0">>) -> 
    pricepriceFix;
convert(pegOffsetType, <<"1">>) -> 
    basisPoints;
convert(pegOffsetType, <<"2">>) -> 
    ticks;
convert(pegOffsetType, <<"3">>) -> 
    priceTier;
convert(pegLimitType, <<"0">>) -> 
    orBetter;
convert(pegLimitType, <<"1">>) -> 
    strict;
convert(pegLimitType, <<"2">>) -> 
    orWorse;
convert(pegRoundDirection, <<"1">>) -> 
    moreAggressive;
convert(pegRoundDirection, <<"2">>) -> 
    morePassive;
convert(peggedPrice, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(pegScope, <<"1">>) -> 
    local;
convert(pegScope, <<"2">>) -> 
    national;
convert(pegScope, <<"3">>) -> 
    global;
convert(pegScope, <<"4">>) -> 
    nationalExcludingLocal;
convert(discretionMoveType, <<"0">>) -> 
    floating;
convert(discretionMoveType, <<"1">>) -> 
    fixed;
convert(discretionOffsetType, <<"0">>) -> 
    pricepriceFix;
convert(discretionOffsetType, <<"1">>) -> 
    basisPoints;
convert(discretionOffsetType, <<"2">>) -> 
    ticks;
convert(discretionOffsetType, <<"3">>) -> 
    priceTier;
convert(discretionLimitType, <<"0">>) -> 
    orBetter;
convert(discretionLimitType, <<"1">>) -> 
    strict;
convert(discretionLimitType, <<"2">>) -> 
    orWorse;
convert(discretionRoundDirection, <<"1">>) -> 
    moreAggressive;
convert(discretionRoundDirection, <<"2">>) -> 
    morePassive;
convert(discretionPrice, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(discretionScope, <<"1">>) -> 
    local;
convert(discretionScope, <<"2">>) -> 
    national;
convert(discretionScope, <<"3">>) -> 
    global;
convert(discretionScope, <<"4">>) -> 
    nationalExcludingLocal;
convert(targetStrategy, <<"1">>) -> 
    vWAP;
convert(targetStrategy, <<"2">>) -> 
    participate;
convert(targetStrategy, <<"3">>) -> 
    mininizeMarketImpact;
convert(targetStrategyParameters, Bin) -> 
   binary_to_list(Bin);
convert(participationRate, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(targetStrategyPerformance, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(lastLiquidityInd, <<"1">>) -> 
    addedLiquidity;
convert(lastLiquidityInd, <<"2">>) -> 
    removedLiquidity;
convert(lastLiquidityInd, <<"3">>) -> 
    liquidityRoutedOut;
convert(publishTrdIndicator, <<"Y">>) -> 
    reportTrade;
convert(publishTrdIndicator, <<"N">>) -> 
    doNotReportTrade;
convert(shortSaleReason, <<"0">>) -> 
    dealerSoldShort;
convert(shortSaleReason, <<"1">>) -> 
    dealerSoldShortExempt;
convert(shortSaleReason, <<"2">>) -> 
    sellingCustomerSoldShort;
convert(shortSaleReason, <<"3">>) -> 
    sellingCustomerSoldShortExempt;
convert(shortSaleReason, <<"4">>) -> 
    qualifiedServiceRepresentative;
convert(shortSaleReason, <<"5">>) -> 
    qSROrAGUContraSideSoldShortExempt;
convert(qtyType, <<"0">>) -> 
    units;
convert(qtyType, <<"1">>) -> 
    contracts;
convert(secondaryTrdType, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(tradeReportType, <<"0">>) -> 
    submit;
convert(tradeReportType, <<"1">>) -> 
    alleged;
convert(tradeReportType, <<"2">>) -> 
    accept;
convert(tradeReportType, <<"3">>) -> 
    decline;
convert(tradeReportType, <<"4">>) -> 
    addendum;
convert(tradeReportType, <<"5">>) -> 
    no;
convert(tradeReportType, <<"6">>) -> 
    tradeReportCancel;
convert(tradeReportType, <<"7">>) -> 
    lockedIn;
convert(allocNoOrdersType, <<"0">>) -> 
    notSpecified;
convert(allocNoOrdersType, <<"1">>) -> 
    explicitListProvided;
convert(sharedCommission, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(confirmReqID, Bin) -> 
   binary_to_list(Bin);
convert(avgParPx, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(reportedPx, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(noCapacities, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(orderCapacityQty, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(noEvents, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(eventType, <<"1">>) -> 
    put;
convert(eventType, <<"2">>) -> 
    call;
convert(eventType, <<"3">>) -> 
    tender;
convert(eventType, <<"4">>) -> 
    sinkingFundCall;
convert(eventType, <<"99">>) -> 
    other;
convert(eventDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(eventPx, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(eventText, Bin) -> 
   binary_to_list(Bin);
convert(pctAtRisk, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(noInstrAttrib, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(instrAttribType, <<"1">>) -> 
    flat;
convert(instrAttribType, <<"2">>) -> 
    zeroCoupon;
convert(instrAttribType, <<"3">>) -> 
    interestBearing;
convert(instrAttribType, <<"4">>) -> 
    noPeriodicPayments;
convert(instrAttribType, <<"5">>) -> 
    variableRate;
convert(instrAttribType, <<"6">>) -> 
    lessFeeForPut;
convert(instrAttribType, <<"7">>) -> 
    steppedCoupon;
convert(instrAttribType, <<"8">>) -> 
    couponPeriod;
convert(instrAttribType, <<"9">>) -> 
    whenwhenFix;
convert(instrAttribType, <<"10">>) -> 
    originalIssueDiscount;
convert(instrAttribType, <<"11">>) -> 
    callable;
convert(instrAttribType, <<"12">>) -> 
    escrowedToMaturity;
convert(instrAttribType, <<"13">>) -> 
    escrowedToRedemptionDate;
convert(instrAttribType, <<"14">>) -> 
    preRefunded;
convert(instrAttribType, <<"15">>) -> 
    inDefault;
convert(instrAttribType, <<"16">>) -> 
    unrated;
convert(instrAttribType, <<"17">>) -> 
    taxable;
convert(instrAttribType, <<"18">>) -> 
    indexed;
convert(instrAttribType, <<"19">>) -> 
    subjectToAlternativeMinimumTax;
convert(instrAttribType, <<"20">>) -> 
    originalIssueDiscountPrice;
convert(instrAttribType, <<"21">>) -> 
    callableBelowMaturityValue;
convert(instrAttribType, <<"22">>) -> 
    callableWithoutNotice;
convert(instrAttribType, <<"99">>) -> 
    text;
convert(instrAttribValue, Bin) -> 
   binary_to_list(Bin);
convert(datedDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(interestAccrualDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(cPProgram, <<"1">>) -> 
    program3a3;
convert(cPProgram, <<"2">>) -> 
    program42;
convert(cPProgram, <<"99">>) -> 
    other;
convert(cPRegType, Bin) -> 
   binary_to_list(Bin);
convert(underlyingCPProgram, Bin) -> 
   binary_to_list(Bin);
convert(underlyingCPRegType, Bin) -> 
   binary_to_list(Bin);
convert(underlyingQty, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(trdMatchID, Bin) -> 
   binary_to_list(Bin);
convert(secondaryTradeReportRefID, Bin) -> 
   binary_to_list(Bin);
convert(underlyingDirtyPrice, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(underlyingEndPrice, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(underlyingStartValue, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(underlyingCurrentValue, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(underlyingEndValue, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(noUnderlyingStips, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(underlyingStipType, Bin) -> 
   binary_to_list(Bin);
convert(underlyingStipValue, Bin) -> 
   binary_to_list(Bin);
convert(maturityNetMoney, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(miscFeeBasis, <<"0">>) -> 
    absolute;
convert(miscFeeBasis, <<"1">>) -> 
    perUnit;
convert(miscFeeBasis, <<"2">>) -> 
    percentage;
convert(totNoAllocs, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(lastFragment, <<"Y">>) -> 
    lastMessage;
convert(lastFragment, <<"N">>) -> 
    notLastMessage;
convert(collReqID, Bin) -> 
   binary_to_list(Bin);
convert(collAsgnReason, <<"0">>) -> 
    initial;
convert(collAsgnReason, <<"1">>) -> 
    scheduled;
convert(collAsgnReason, <<"2">>) -> 
    timeWarning;
convert(collAsgnReason, <<"3">>) -> 
    marginDeficiency;
convert(collAsgnReason, <<"4">>) -> 
    marginExcess;
convert(collAsgnReason, <<"5">>) -> 
    forwardCollateralDemand;
convert(collAsgnReason, <<"6">>) -> 
    eventOfDefault;
convert(collAsgnReason, <<"7">>) -> 
    adverseTaxEvent;
convert(collInquiryQualifier, <<"0">>) -> 
    tradeDate;
convert(collInquiryQualifier, <<"1">>) -> 
    gCInstrument;
convert(collInquiryQualifier, <<"2">>) -> 
    collateralInstrument;
convert(collInquiryQualifier, <<"3">>) -> 
    substitutionEligible;
convert(collInquiryQualifier, <<"4">>) -> 
    notAssigned;
convert(collInquiryQualifier, <<"5">>) -> 
    partiallyAssigned;
convert(collInquiryQualifier, <<"6">>) -> 
    fullyAssigned;
convert(collInquiryQualifier, <<"7">>) -> 
    outstandingTrades;
convert(noTrades, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(marginRatio, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(marginExcess, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(totalNetValue, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(cashOutstanding, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(collAsgnID, Bin) -> 
   binary_to_list(Bin);
convert(collAsgnTransType, <<"0">>) -> 
    new;
convert(collAsgnTransType, <<"1">>) -> 
    replace;
convert(collAsgnTransType, <<"2">>) -> 
    cancel;
convert(collAsgnTransType, <<"3">>) -> 
    release;
convert(collAsgnTransType, <<"4">>) -> 
    reverse;
convert(collRespID, Bin) -> 
   binary_to_list(Bin);
convert(collAsgnRespType, <<"0">>) -> 
    received;
convert(collAsgnRespType, <<"1">>) -> 
    accepted;
convert(collAsgnRespType, <<"2">>) -> 
    declined;
convert(collAsgnRespType, <<"3">>) -> 
    rejected;
convert(collAsgnRejectReason, <<"0">>) -> 
    unknownDeal;
convert(collAsgnRejectReason, <<"1">>) -> 
    unknownOrInvalidInstrument;
convert(collAsgnRejectReason, <<"2">>) -> 
    unauthorizedTransaction;
convert(collAsgnRejectReason, <<"3">>) -> 
    insufficientCollateral;
convert(collAsgnRejectReason, <<"4">>) -> 
    invalidTypeOfCollateral;
convert(collAsgnRejectReason, <<"5">>) -> 
    excessiveSubstitution;
convert(collAsgnRejectReason, <<"99">>) -> 
    other;
convert(collAsgnRefID, Bin) -> 
   binary_to_list(Bin);
convert(collRptID, Bin) -> 
   binary_to_list(Bin);
convert(collInquiryID, Bin) -> 
   binary_to_list(Bin);
convert(collStatus, <<"0">>) -> 
    unassigned;
convert(collStatus, <<"1">>) -> 
    partiallyAssigned;
convert(collStatus, <<"2">>) -> 
    assignmentProposed;
convert(collStatus, <<"3">>) -> 
    assigned;
convert(collStatus, <<"4">>) -> 
    challenged;
convert(totNumReports, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(lastRptRequested, <<"Y">>) -> 
    true;
convert(lastRptRequested, <<"N">>) -> 
    false;
convert(agreementDesc, Bin) -> 
   binary_to_list(Bin);
convert(agreementID, Bin) -> 
   binary_to_list(Bin);
convert(agreementDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(startDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(endDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(agreementCurrency, Bin) -> 
   binary_to_list(Bin);
convert(deliveryType, <<"0">>) -> 
    versusPayment;
convert(deliveryType, <<"1">>) -> 
    free;
convert(deliveryType, <<"2">>) -> 
    triParty;
convert(deliveryType, <<"3">>) -> 
    holdInCustody;
convert(endAccruedInterestAmt, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(startCash, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(endCash, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(userRequestID, Bin) -> 
   binary_to_list(Bin);
convert(userRequestType, <<"1">>) -> 
    logOnUser;
convert(userRequestType, <<"2">>) -> 
    logOffUser;
convert(userRequestType, <<"3">>) -> 
    changePasswordForUser;
convert(userRequestType, <<"4">>) -> 
    requestIndividualUserStatus;
convert(newPassword, Bin) -> 
   binary_to_list(Bin);
convert(userStatus, <<"1">>) -> 
    loggedIn;
convert(userStatus, <<"2">>) -> 
    notLoggedIn;
convert(userStatus, <<"3">>) -> 
    userNotRecognised;
convert(userStatus, <<"4">>) -> 
    passwordIncorrect;
convert(userStatus, <<"5">>) -> 
    passwordChanged;
convert(userStatus, <<"6">>) -> 
    other;
convert(userStatusText, Bin) -> 
   binary_to_list(Bin);
convert(statusValue, <<"1">>) -> 
    connected;
convert(statusValue, <<"2">>) -> 
    notConnectedUnexpected;
convert(statusValue, <<"3">>) -> 
    notConnectedExpected;
convert(statusValue, <<"4">>) -> 
    inProcess;
convert(statusText, Bin) -> 
   binary_to_list(Bin);
convert(refCompID, Bin) -> 
   binary_to_list(Bin);
convert(refSubID, Bin) -> 
   binary_to_list(Bin);
convert(networkResponseID, Bin) -> 
   binary_to_list(Bin);
convert(networkRequestID, Bin) -> 
   binary_to_list(Bin);
convert(lastNetworkResponseID, Bin) -> 
   binary_to_list(Bin);
convert(networkRequestType, <<"1">>) -> 
    snapshot;
convert(networkRequestType, <<"2">>) -> 
    subscribe;
convert(networkRequestType, <<"4">>) -> 
    stopSubscribing;
convert(networkRequestType, <<"8">>) -> 
    levelOfDetail;
convert(noCompIDs, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(networkStatusResponseType, <<"1">>) -> 
    full;
convert(networkStatusResponseType, <<"2">>) -> 
    incrementalUpdate;
convert(noCollInquiryQualifier, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(trdRptStatus, <<"0">>) -> 
    accepted;
convert(trdRptStatus, <<"1">>) -> 
    rejected;
convert(affirmStatus, <<"1">>) -> 
    received;
convert(affirmStatus, <<"2">>) -> 
    confirmRejected;
convert(affirmStatus, <<"3">>) -> 
    affirmed;
convert(underlyingStrikeCurrency, Bin) -> 
   binary_to_list(Bin);
convert(legStrikeCurrency, Bin) -> 
   binary_to_list(Bin);
convert(timeBracket, Bin) -> 
   binary_to_list(Bin);
convert(collAction, <<"0">>) -> 
    retain;
convert(collAction, <<"1">>) -> 
    add;
convert(collAction, <<"2">>) -> 
    remove;
convert(collInquiryStatus, <<"0">>) -> 
    accepted;
convert(collInquiryStatus, <<"1">>) -> 
    acceptedWithWarnings;
convert(collInquiryStatus, <<"2">>) -> 
    completed;
convert(collInquiryStatus, <<"3">>) -> 
    completedWithWarnings;
convert(collInquiryStatus, <<"4">>) -> 
    rejected;
convert(collInquiryResult, <<"0">>) -> 
    successful;
convert(collInquiryResult, <<"1">>) -> 
    invalidOrUnknownInstrument;
convert(collInquiryResult, <<"2">>) -> 
    invalidOrUnknownCollateralType;
convert(collInquiryResult, <<"3">>) -> 
    invalidParties;
convert(collInquiryResult, <<"4">>) -> 
    invalidTransportTypeRequested;
convert(collInquiryResult, <<"5">>) -> 
    invalidDestinationRequested;
convert(collInquiryResult, <<"6">>) -> 
    noCollateralFoundForTheTradeSpecified;
convert(collInquiryResult, <<"7">>) -> 
    noCollateralFoundForTheOrderSpecified;
convert(collInquiryResult, <<"8">>) -> 
    collateralInquiryTypeNotSupported;
convert(collInquiryResult, <<"9">>) -> 
    unauthorizedForCollateralInquiry;
convert(collInquiryResult, <<"99">>) -> 
    other;
convert(strikeCurrency, Bin) -> 
   binary_to_list(Bin);
convert(noNested3PartyIDs, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(nested3PartyID, Bin) -> 
   binary_to_list(Bin);
convert(nested3PartyIDSource, Bin) -> 
   binary_to_list(Bin);
convert(nested3PartyRole, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(noNested3PartySubIDs, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(nested3PartySubID, Bin) -> 
   binary_to_list(Bin);
convert(nested3PartySubIDType, Bin) -> 
   fix_convertor_utils:bin_to_num(Bin);
convert(legContractSettlMonth, Bin) -> 
    fix_convertor_utils:bin2monthyear(Bin);
convert(legInterestAccrualDate, Bin) -> 
    fix_convertor_utils:bin2localmktdate(Bin);
convert(_Name, Bin) ->
    Bin.
get_record_def(commissionData) -> 
    [commissionData, commission, commType, commCurrency, fundRenewWaiv];
get_record_def(discretionInstructions) -> 
    [discretionInstructions, discretionInst, discretionOffsetValue, discretionMoveType, discretionOffsetType, discretionLimitType, discretionRoundDirection, discretionScope];
get_record_def(financingDetails) -> 
    [financingDetails, agreementDesc, agreementID, agreementDate, agreementCurrency, terminationType, startDate, endDate, deliveryType, marginRatio];
get_record_def(legBenchmarkCurveData) -> 
    [legBenchmarkCurveData, legBenchmarkCurveCurrency, legBenchmarkCurveName, legBenchmarkCurvePoint, legBenchmarkPrice, legBenchmarkPriceType];
get_record_def(rgr_legStipulations_683) -> 
    [rgr_legStipulations_683, legStipulationType, legStipulationValue];
get_record_def(legStipulations) -> 
    [legStipulations, [[rgr_legStipulations_683]]];
get_record_def(orderQtyData) -> 
    [orderQtyData, orderQty, cashOrderQty, orderPercent, roundingDirection, roundingModulus];
get_record_def(pegInstructions) -> 
    [pegInstructions, pegOffsetValue, pegMoveType, pegOffsetType, pegLimitType, pegRoundDirection, pegScope];
get_record_def(rgr_positionAmountData_753) -> 
    [rgr_positionAmountData_753, posAmtType, posAmt];
get_record_def(positionAmountData) -> 
    [positionAmountData, [[rgr_positionAmountData_753]]];
get_record_def(spreadOrBenchmarkCurveData) -> 
    [spreadOrBenchmarkCurveData, spread, benchmarkCurveCurrency, benchmarkCurveName, benchmarkCurvePoint, benchmarkPrice, benchmarkPriceType, benchmarkSecurityID, benchmarkSecurityIDSource];
get_record_def(rgr_stipulations_232) -> 
    [rgr_stipulations_232, stipulationType, stipulationValue];
get_record_def(stipulations) -> 
    [stipulations, [[rgr_stipulations_232]]];
get_record_def(rgr_trdRegTimestamps_768) -> 
    [rgr_trdRegTimestamps_768, trdRegTimestamp, trdRegTimestampType, trdRegTimestampOrigin];
get_record_def(trdRegTimestamps) -> 
    [trdRegTimestamps, [[rgr_trdRegTimestamps_768]]];
get_record_def(yieldData) -> 
    [yieldData, yieldType, yield, yieldCalcDate, yieldRedemptionDate, yieldRedemptionPrice, yieldRedemptionPriceType];
get_record_def(rgr_underlyingStipulations_887) -> 
    [rgr_underlyingStipulations_887, underlyingStipType, underlyingStipValue];
get_record_def(underlyingStipulations) -> 
    [underlyingStipulations, [[rgr_underlyingStipulations_887]]];
get_record_def(standardTrailer) -> 
    [standardTrailer, signatureLength, signature, checkSum];
get_record_def(rgr_affectedOrdGrp_534) -> 
    [rgr_affectedOrdGrp_534, origClOrdID, affectedOrderID, affectedSecondaryOrderID];
get_record_def(affectedOrdGrp) -> 
    [affectedOrdGrp, [[rgr_affectedOrdGrp_534]]];
get_record_def(rgr_allocAckGrp_78) -> 
    [rgr_allocAckGrp_78, allocAccount, allocAcctIDSource, allocPrice, individualAllocID, individualAllocRejCode, allocText, encodedAllocTextLen, encodedAllocText];
get_record_def(allocAckGrp) -> 
    [allocAckGrp, [[rgr_allocAckGrp_78]]];
get_record_def(rgr_bidCompReqGrp_420) -> 
    [rgr_bidCompReqGrp_420, listID, side, tradingSessionID, tradingSessionSubID, netGrossInd, settlType, settlDate, account, acctIDSource];
get_record_def(bidCompReqGrp) -> 
    [bidCompReqGrp, [[rgr_bidCompReqGrp_420]]];
get_record_def(rgr_bidDescReqGrp_398) -> 
    [rgr_bidDescReqGrp_398, bidDescriptorType, bidDescriptor, sideValueInd, liquidityValue, liquidityNumSecurities, liquidityPctLow, liquidityPctHigh, eFPTrackingError, fairValue, outsideIndexPct, valueOfFutures];
get_record_def(bidDescReqGrp) -> 
    [bidDescReqGrp, [[rgr_bidDescReqGrp_398]]];
get_record_def(rgr_clrInstGrp_576) -> 
    [rgr_clrInstGrp_576, clearingInstruction];
get_record_def(clrInstGrp) -> 
    [clrInstGrp, [[rgr_clrInstGrp_576]]];
get_record_def(rgr_collInqQualGrp_938) -> 
    [rgr_collInqQualGrp_938, collInquiryQualifier];
get_record_def(collInqQualGrp) -> 
    [collInqQualGrp, [[rgr_collInqQualGrp_938]]];
get_record_def(rgr_compIDReqGrp_936) -> 
    [rgr_compIDReqGrp_936, refCompID, refSubID, locationID, deskID];
get_record_def(compIDReqGrp) -> 
    [compIDReqGrp, [[rgr_compIDReqGrp_936]]];
get_record_def(rgr_compIDStatGrp_936) -> 
    [rgr_compIDStatGrp_936, refCompID, refSubID, locationID, deskID, statusValue, statusText];
get_record_def(compIDStatGrp) -> 
    [compIDStatGrp, [[rgr_compIDStatGrp_936]]];
get_record_def(rgr_contAmtGrp_518) -> 
    [rgr_contAmtGrp_518, contAmtType, contAmtValue, contAmtCurr];
get_record_def(contAmtGrp) -> 
    [contAmtGrp, [[rgr_contAmtGrp_518]]];
get_record_def(rgr_contraGrp_382) -> 
    [rgr_contraGrp_382, contraBroker, contraTrader, contraTradeQty, contraTradeTime, contraLegRefID];
get_record_def(contraGrp) -> 
    [contraGrp, [[rgr_contraGrp_382]]];
get_record_def(rgr_cpctyConfGrp_862) -> 
    [rgr_cpctyConfGrp_862, orderCapacity, orderRestrictions, orderCapacityQty];
get_record_def(cpctyConfGrp) -> 
    [cpctyConfGrp, [[rgr_cpctyConfGrp_862]]];
get_record_def(rgr_execAllocGrp_124) -> 
    [rgr_execAllocGrp_124, lastQty, execID, secondaryExecID, lastPx, lastParPx, lastCapacity];
get_record_def(execAllocGrp) -> 
    [execAllocGrp, [[rgr_execAllocGrp_124]]];
get_record_def(rgr_execCollGrp_124) -> 
    [rgr_execCollGrp_124, execID];
get_record_def(execCollGrp) -> 
    [execCollGrp, [[rgr_execCollGrp_124]]];
get_record_def(rgr_execsGrp_124) -> 
    [rgr_execsGrp_124, execID];
get_record_def(execsGrp) -> 
    [execsGrp, [[rgr_execsGrp_124]]];
get_record_def(rgr_iOIQualGrp_199) -> 
    [rgr_iOIQualGrp_199, iOIQualifier];
get_record_def(iOIQualGrp) -> 
    [iOIQualGrp, [[rgr_iOIQualGrp_199]]];
get_record_def(rgr_linesOfTextGrp_33) -> 
    [rgr_linesOfTextGrp_33, text, encodedTextLen, encodedText];
get_record_def(linesOfTextGrp) -> 
    [linesOfTextGrp, [[rgr_linesOfTextGrp_33]]];
get_record_def(rgr_mDFullGrp_268) -> 
    [rgr_mDFullGrp_268, mDEntryType, mDEntryPx, currency, mDEntrySize, mDEntryDate, mDEntryTime, tickDirection, mDMkt, tradingSessionID, tradingSessionSubID, quoteCondition, tradeCondition, mDEntryOriginator, locationID, deskID, openCloseSettlFlag, timeInForce, expireDate, expireTime, minQty, execInst, sellerDays, orderID, quoteEntryID, mDEntryBuyer, mDEntrySeller, numberOfOrders, mDEntryPositionNo, scope, priceDelta, text, encodedTextLen, encodedText];
get_record_def(mDFullGrp) -> 
    [mDFullGrp, [[rgr_mDFullGrp_268]]];
get_record_def(rgr_mDReqGrp_267) -> 
    [rgr_mDReqGrp_267, mDEntryType];
get_record_def(mDReqGrp) -> 
    [mDReqGrp, [[rgr_mDReqGrp_267]]];
get_record_def(rgr_mDRjctGrp_816) -> 
    [rgr_mDRjctGrp_816, altMDSourceID];
get_record_def(mDRjctGrp) -> 
    [mDRjctGrp, [[rgr_mDRjctGrp_816]]];
get_record_def(rgr_miscFeesGrp_136) -> 
    [rgr_miscFeesGrp_136, miscFeeAmt, miscFeeCurr, miscFeeType, miscFeeBasis];
get_record_def(miscFeesGrp) -> 
    [miscFeesGrp, [[rgr_miscFeesGrp_136]]];
get_record_def(rgr_ordListStatGrp_73) -> 
    [rgr_ordListStatGrp_73, clOrdID, secondaryClOrdID, cumQty, ordStatus, workingIndicator, leavesQty, cxlQty, avgPx, ordRejReason, text, encodedTextLen, encodedText];
get_record_def(ordListStatGrp) -> 
    [ordListStatGrp, [[rgr_ordListStatGrp_73]]];
get_record_def(rgr_quotQualGrp_735) -> 
    [rgr_quotQualGrp_735, quoteQualifier];
get_record_def(quotQualGrp) -> 
    [quotQualGrp, [[rgr_quotQualGrp_735]]];
get_record_def(rgr_rgstDistInstGrp_510) -> 
    [rgr_rgstDistInstGrp_510, distribPaymentMethod, distribPercentage, cashDistribCurr, cashDistribAgentName, cashDistribAgentCode, cashDistribAgentAcctNumber, cashDistribPayRef, cashDistribAgentAcctName];
get_record_def(rgstDistInstGrp) -> 
    [rgstDistInstGrp, [[rgr_rgstDistInstGrp_510]]];
get_record_def(rgr_routingGrp_215) -> 
    [rgr_routingGrp_215, routingType, routingID];
get_record_def(routingGrp) -> 
    [routingGrp, [[rgr_routingGrp_215]]];
get_record_def(rgr_secTypesGrp_558) -> 
    [rgr_secTypesGrp_558, securityType, securitySubType, produkt, cFICode];
get_record_def(secTypesGrp) -> 
    [secTypesGrp, [[rgr_secTypesGrp_558]]];
get_record_def(rgr_trdCollGrp_897) -> 
    [rgr_trdCollGrp_897, tradeReportID, secondaryTradeReportID];
get_record_def(trdCollGrp) -> 
    [trdCollGrp, [[rgr_trdCollGrp_897]]];
get_record_def(rgr_trdgSesGrp_386) -> 
    [rgr_trdgSesGrp_386, tradingSessionID, tradingSessionSubID];
get_record_def(trdgSesGrp) -> 
    [trdgSesGrp, [[rgr_trdgSesGrp_386]]];
get_record_def(rgr_trdCapDtGrp_580) -> 
    [rgr_trdCapDtGrp_580, tradeDate, transactTime];
get_record_def(trdCapDtGrp) -> 
    [trdCapDtGrp, [[rgr_trdCapDtGrp_580]]];
get_record_def(rgr_evntGrp_864) -> 
    [rgr_evntGrp_864, eventType, eventDate, eventPx, eventText];
get_record_def(evntGrp) -> 
    [evntGrp, [[rgr_evntGrp_864]]];
get_record_def(rgr_secAltIDGrp_454) -> 
    [rgr_secAltIDGrp_454, securityAltID, securityAltIDSource];
get_record_def(secAltIDGrp) -> 
    [secAltIDGrp, [[rgr_secAltIDGrp_454]]];
get_record_def(rgr_legSecAltIDGrp_604) -> 
    [rgr_legSecAltIDGrp_604, legSecurityAltID, legSecurityAltIDSource];
get_record_def(legSecAltIDGrp) -> 
    [legSecAltIDGrp, [[rgr_legSecAltIDGrp_604]]];
get_record_def(rgr_undSecAltIDGrp_457) -> 
    [rgr_undSecAltIDGrp_457, underlyingSecurityAltID, underlyingSecurityAltIDSource];
get_record_def(undSecAltIDGrp) -> 
    [undSecAltIDGrp, [[rgr_undSecAltIDGrp_457]]];
get_record_def(rgr_attrbGrp_870) -> 
    [rgr_attrbGrp_870, instrAttribType, instrAttribValue];
get_record_def(attrbGrp) -> 
    [attrbGrp, [[rgr_attrbGrp_870]]];
get_record_def(rgr_settlPtysSubGrp_801) -> 
    [rgr_settlPtysSubGrp_801, settlPartySubID, settlPartySubIDType];
get_record_def(settlPtysSubGrp) -> 
    [settlPtysSubGrp, [[rgr_settlPtysSubGrp_801]]];
get_record_def(rgr_ptysSubGrp_802) -> 
    [rgr_ptysSubGrp_802, partySubID, partySubIDType];
get_record_def(ptysSubGrp) -> 
    [ptysSubGrp, [[rgr_ptysSubGrp_802]]];
get_record_def(rgr_nstdPtysSubGrp_804) -> 
    [rgr_nstdPtysSubGrp_804, nestedPartySubID, nestedPartySubIDType];
get_record_def(nstdPtysSubGrp) -> 
    [nstdPtysSubGrp, [[rgr_nstdPtysSubGrp_804]]];
get_record_def(rgr_hop_627) -> 
    [rgr_hop_627, hopCompID, hopSendingTime, hopRefID];
get_record_def(hop) -> 
    [hop, [[rgr_hop_627]]];
get_record_def(rgr_nstdPtys2SubGrp_806) -> 
    [rgr_nstdPtys2SubGrp_806, nested2PartySubID, nested2PartySubIDType];
get_record_def(nstdPtys2SubGrp) -> 
    [nstdPtys2SubGrp, [[rgr_nstdPtys2SubGrp_806]]];
get_record_def(rgr_nstdPtys3SubGrp_952) -> 
    [rgr_nstdPtys3SubGrp_952, nested3PartySubID, nested3PartySubIDType];
get_record_def(nstdPtys3SubGrp) -> 
    [nstdPtys3SubGrp, [[rgr_nstdPtys3SubGrp_952]]];
get_record_def(instrument) -> 
    [instrument, symbol, symbolSfx, securityID, securityIDSource, [secAltIDGrp], produkt, cFICode, securityType, securitySubType, maturityMonthYear, maturityDate, putOrCall, couponPaymentDate, issueDate, repoCollateralSecurityType, repurchaseTerm, repurchaseRate, factor, creditRating, instrRegistry, countryOfIssue, stateOrProvinceOfIssue, localeOfIssue, redemptionDate, strikePrice, strikeCurrency, optAttribute, contractMultiplier, couponRate, securityExchange, issuer, encodedIssuerLen, encodedIssuer, securityDesc, encodedSecurityDescLen, encodedSecurityDesc, pool, contractSettlMonth, cPProgram, cPRegType, [evntGrp], datedDate, interestAccrualDate];
get_record_def(instrumentLeg) -> 
    [instrumentLeg, legSymbol, legSymbolSfx, legSecurityID, legSecurityIDSource, [legSecAltIDGrp], legProduct, legCFICode, legSecurityType, legSecuritySubType, legMaturityMonthYear, legMaturityDate, legCouponPaymentDate, legIssueDate, legRepoCollateralSecurityType, legRepurchaseTerm, legRepurchaseRate, legFactor, legCreditRating, legInstrRegistry, legCountryOfIssue, legStateOrProvinceOfIssue, legLocaleOfIssue, legRedemptionDate, legStrikePrice, legStrikeCurrency, legOptAttribute, legContractMultiplier, legCouponRate, legSecurityExchange, legIssuer, encodedLegIssuerLen, encodedLegIssuer, legSecurityDesc, encodedLegSecurityDescLen, encodedLegSecurityDesc, legRatioQty, legSide, legCurrency, legPool, legDatedDate, legContractSettlMonth, legInterestAccrualDate];
get_record_def(instrumentExtension) -> 
    [instrumentExtension, deliveryForm, pctAtRisk, [attrbGrp]];
get_record_def(rgr_parties_453) -> 
    [rgr_parties_453, partyID, partyIDSource, partyRole, [ptysSubGrp]];
get_record_def(rgr_nestedParties3_948) -> 
    [rgr_nestedParties3_948, nested3PartyID, nested3PartyIDSource, nested3PartyRole, [nstdPtys3SubGrp]];
get_record_def(rgr_nestedParties2_756) -> 
    [rgr_nestedParties2_756, nested2PartyID, nested2PartyIDSource, nested2PartyRole, [nstdPtys2SubGrp]];
get_record_def(rgr_settlParties_781) -> 
    [rgr_settlParties_781, settlPartyID, settlPartyIDSource, settlPartyRole, [settlPtysSubGrp]];
get_record_def(underlyingInstrument) -> 
    [underlyingInstrument, underlyingSymbol, underlyingSymbolSfx, underlyingSecurityID, underlyingSecurityIDSource, [undSecAltIDGrp], underlyingProduct, underlyingCFICode, underlyingSecurityType, underlyingSecuritySubType, underlyingMaturityMonthYear, underlyingMaturityDate, underlyingPutOrCall, underlyingCouponPaymentDate, underlyingIssueDate, underlyingRepoCollateralSecurityType, underlyingRepurchaseTerm, underlyingRepurchaseRate, underlyingFactor, underlyingCreditRating, underlyingInstrRegistry, underlyingCountryOfIssue, underlyingStateOrProvinceOfIssue, underlyingLocaleOfIssue, underlyingRedemptionDate, underlyingStrikePrice, underlyingStrikeCurrency, underlyingOptAttribute, underlyingContractMultiplier, underlyingCouponRate, underlyingSecurityExchange, underlyingIssuer, encodedUnderlyingIssuerLen, encodedUnderlyingIssuer, underlyingSecurityDesc, encodedUnderlyingSecurityDescLen, encodedUnderlyingSecurityDesc, underlyingCPProgram, underlyingCPRegType, underlyingCurrency, underlyingQty, underlyingPx, underlyingDirtyPrice, underlyingEndPrice, underlyingStartValue, underlyingCurrentValue, underlyingEndValue, [underlyingStipulations]];
get_record_def(rgr_nestedParties_539) -> 
    [rgr_nestedParties_539, nestedPartyID, nestedPartyIDSource, nestedPartyRole, [nstdPtysSubGrp]];
get_record_def(standardHeader) -> 
    [standardHeader, beginString, bodyLength, msgType, senderCompID, targetCompID, onBehalfOfCompID, deliverToCompID, secureDataLen, secureData, msgSeqNum, senderSubID, senderLocationID, targetSubID, targetLocationID, onBehalfOfSubID, onBehalfOfLocationID, deliverToSubID, deliverToLocationID, possDupFlag, possResend, sendingTime, origSendingTime, xmlDataLen, xmlData, messageEncoding, lastMsgSeqNumProcessed, [hop]];
get_record_def(rgr_bidCompRspGrp_420) -> 
    [rgr_bidCompRspGrp_420, [commissionData], listID, country, side, price, priceType, fairValue, netGrossInd, settlType, settlDate, tradingSessionID, tradingSessionSubID, text, encodedTextLen, encodedText];
get_record_def(settlParties) -> 
    [settlParties, [[rgr_settlParties_781]]];
get_record_def(nestedParties3) -> 
    [nestedParties3, [[rgr_nestedParties3_948]]];
get_record_def(parties) -> 
    [parties, [[rgr_parties_453]]];
get_record_def(rgr_instrmtStrkPxGrp_428) -> 
    [rgr_instrmtStrkPxGrp_428, [instrument]];
get_record_def(rgr_instrmtLegGrp_555) -> 
    [rgr_instrmtLegGrp_555, [instrumentLeg]];
get_record_def(rgr_undInstrmtStrkPxGrp_711) -> 
    [rgr_undInstrmtStrkPxGrp_711, [underlyingInstrument], prevClosePx, clOrdID, secondaryClOrdID, side, price, currency, text, encodedTextLen, encodedText];
get_record_def(rgr_instrmtLegIOIGrp_555) -> 
    [rgr_instrmtLegIOIGrp_555, [instrumentLeg], legIOIQty, [legStipulations]];
get_record_def(rgr_instrmtGrp_146) -> 
    [rgr_instrmtGrp_146, [instrument]];
get_record_def(rgr_undInstrmtCollGrp_711) -> 
    [rgr_undInstrmtCollGrp_711, [underlyingInstrument], collAction];
get_record_def(nestedParties2) -> 
    [nestedParties2, [[rgr_nestedParties2_756]]];
get_record_def(rgr_undInstrmtGrp_711) -> 
    [rgr_undInstrmtGrp_711, [underlyingInstrument]];
get_record_def(rgr_posUndInstrmtGrp_711) -> 
    [rgr_posUndInstrmtGrp_711, [underlyingInstrument], underlyingSettlPrice, underlyingSettlPriceType];
get_record_def(rgr_instrmtLegSecListGrp_555) -> 
    [rgr_instrmtLegSecListGrp_555, [instrumentLeg], legSwapType, legSettlType, [legStipulations], [legBenchmarkCurveData]];
get_record_def(bidCompRspGrp) -> 
    [bidCompRspGrp, [[rgr_bidCompRspGrp_420]]];
get_record_def(nestedParties) -> 
    [nestedParties, [[rgr_nestedParties_539]]];
get_record_def(rgr_instrmtLegExecGrp_555) -> 
    [rgr_instrmtLegExecGrp_555, [instrumentLeg], legQty, legSwapType, [legStipulations], legPositionEffect, legCoveredOrUncovered, [nestedParties], legRefID, legPrice, legSettlType, legSettlDate, legLastPx];
get_record_def(rgr_dlvyInstGrp_85) -> 
    [rgr_dlvyInstGrp_85, settlInstSource, dlvyInstType, [settlParties]];
get_record_def(rgr_preAllocGrp_78) -> 
    [rgr_preAllocGrp_78, allocAccount, allocAcctIDSource, allocSettlCurrency, individualAllocID, [nestedParties], allocQty];
get_record_def(rgr_legPreAllocGrp_670) -> 
    [rgr_legPreAllocGrp_670, legAllocAccount, legIndividualAllocID, [nestedParties2], legAllocQty, legAllocAcctIDSource, legSettlCurrency];
get_record_def(rgr_rgstDtlsGrp_473) -> 
    [rgr_rgstDtlsGrp_473, registDtls, registEmail, mailingDtls, mailingInst, [nestedParties], ownerType, dateOfBirth, investorCountryOfResidence];
get_record_def(undInstrmtGrp) -> 
    [undInstrmtGrp, [[rgr_undInstrmtGrp_711]]];
get_record_def(undInstrmtCollGrp) -> 
    [undInstrmtCollGrp, [[rgr_undInstrmtCollGrp_711]]];
get_record_def(posUndInstrmtGrp) -> 
    [posUndInstrmtGrp, [[rgr_posUndInstrmtGrp_711]]];
get_record_def(rgr_preAllocMlegGrp_78) -> 
    [rgr_preAllocMlegGrp_78, allocAccount, allocAcctIDSource, allocSettlCurrency, individualAllocID, [nestedParties3], allocQty];
get_record_def(instrmtLegSecListGrp) -> 
    [instrmtLegSecListGrp, [[rgr_instrmtLegSecListGrp_555]]];
get_record_def(rgr_legQuotStatGrp_555) -> 
    [rgr_legQuotStatGrp_555, [instrumentLeg], legQty, legSwapType, legSettlType, legSettlDate, [legStipulations], [nestedParties]];
get_record_def(instrmtLegGrp) -> 
    [instrmtLegGrp, [[rgr_instrmtLegGrp_555]]];
get_record_def(rgr_trdAllocGrp_78) -> 
    [rgr_trdAllocGrp_78, allocAccount, allocAcctIDSource, allocSettlCurrency, individualAllocID, [nestedParties2], allocQty];
get_record_def(rgr_trdInstrmtLegGrp_555) -> 
    [rgr_trdInstrmtLegGrp_555, [instrumentLeg], legQty, legSwapType, [legStipulations], legPositionEffect, legCoveredOrUncovered, [nestedParties], legRefID, legPrice, legSettlType, legSettlDate, legLastPx];
get_record_def(rgr_ordAllocGrp_73) -> 
    [rgr_ordAllocGrp_73, clOrdID, orderID, secondaryOrderID, secondaryClOrdID, listID, [nestedParties2], orderQty, orderAvgPx, orderBookingQty];
get_record_def(instrmtStrkPxGrp) -> 
    [instrmtStrkPxGrp, [[rgr_instrmtStrkPxGrp_428]]];
get_record_def(instrmtGrp) -> 
    [instrmtGrp, [[rgr_instrmtGrp_146]]];
get_record_def(undInstrmtStrkPxGrp) -> 
    [undInstrmtStrkPxGrp, [[rgr_undInstrmtStrkPxGrp_711]]];
get_record_def(instrmtLegIOIGrp) -> 
    [instrmtLegIOIGrp, [[rgr_instrmtLegIOIGrp_555]]];
get_record_def(rgr_quotReqLegsGrp_555) -> 
    [rgr_quotReqLegsGrp_555, [instrumentLeg], legQty, legSwapType, legSettlType, legSettlDate, [legStipulations], [nestedParties], [legBenchmarkCurveData]];
get_record_def(rgr_sideCrossOrdCxlGrp_552) -> 
    [rgr_sideCrossOrdCxlGrp_552, side, origClOrdID, clOrdID, secondaryClOrdID, clOrdLinkID, origOrdModTime, [parties], tradeOriginationDate, tradeDate, [orderQtyData], complianceID, text, encodedTextLen, encodedText];
get_record_def(rgr_legQuotGrp_555) -> 
    [rgr_legQuotGrp_555, [instrumentLeg], legQty, legSwapType, legSettlType, legSettlDate, [legStipulations], [nestedParties], legPriceType, legBidPx, legOfferPx, [legBenchmarkCurveData]];
get_record_def(rgr_positionQty_702) -> 
    [rgr_positionQty_702, posType, longQty, shortQty, posQtyStatus, [nestedParties]];
get_record_def(rgr_instrmtMDReqGrp_146) -> 
    [rgr_instrmtMDReqGrp_146, [instrument], [undInstrmtGrp], [instrmtLegGrp]];
get_record_def(instrmtLegExecGrp) -> 
    [instrmtLegExecGrp, [[rgr_instrmtLegExecGrp_555]]];
get_record_def(quotReqLegsGrp) -> 
    [quotReqLegsGrp, [[rgr_quotReqLegsGrp_555]]];
get_record_def(dlvyInstGrp) -> 
    [dlvyInstGrp, [[rgr_dlvyInstGrp_85]]];
get_record_def(preAllocGrp) -> 
    [preAllocGrp, [[rgr_preAllocGrp_78]]];
get_record_def(positionQty) -> 
    [positionQty, [[rgr_positionQty_702]]];
get_record_def(sideCrossOrdCxlGrp) -> 
    [sideCrossOrdCxlGrp, [[rgr_sideCrossOrdCxlGrp_552]]];
get_record_def(rgr_quotCxlEntriesGrp_295) -> 
    [rgr_quotCxlEntriesGrp_295, [instrument], [financingDetails], [undInstrmtGrp], [instrmtLegGrp]];
get_record_def(rgr_secListGrp_146) -> 
    [rgr_secListGrp_146, [instrument], [instrumentExtension], [financingDetails], [undInstrmtGrp], currency, [stipulations], [instrmtLegSecListGrp], [spreadOrBenchmarkCurveData], [yieldData], roundLot, minTradeVol, tradingSessionID, tradingSessionSubID, expirationCycle, text, encodedTextLen, encodedText];
get_record_def(rgstDtlsGrp) -> 
    [rgstDtlsGrp, [[rgr_rgstDtlsGrp_473]]];
get_record_def(rgr_mDIncGrp_268) -> 
    [rgr_mDIncGrp_268, mDUpdateAction, deleteReason, mDEntryType, mDEntryID, mDEntryRefID, [instrument], [undInstrmtGrp], [instrmtLegGrp], financialStatus, corporateAction, mDEntryPx, currency, mDEntrySize, mDEntryDate, mDEntryTime, tickDirection, mDMkt, tradingSessionID, tradingSessionSubID, quoteCondition, tradeCondition, mDEntryOriginator, locationID, deskID, openCloseSettlFlag, timeInForce, expireDate, expireTime, minQty, execInst, sellerDays, orderID, quoteEntryID, mDEntryBuyer, mDEntrySeller, numberOfOrders, mDEntryPositionNo, scope, priceDelta, netChgPrevDay, text, encodedTextLen, encodedText];
get_record_def(trdAllocGrp) -> 
    [trdAllocGrp, [[rgr_trdAllocGrp_78]]];
get_record_def(ordAllocGrp) -> 
    [ordAllocGrp, [[rgr_ordAllocGrp_73]]];
get_record_def(legQuotStatGrp) -> 
    [legQuotStatGrp, [[rgr_legQuotStatGrp_555]]];
get_record_def(preAllocMlegGrp) -> 
    [preAllocMlegGrp, [[rgr_preAllocMlegGrp_78]]];
get_record_def(trdInstrmtLegGrp) -> 
    [trdInstrmtLegGrp, [[rgr_trdInstrmtLegGrp_555]]];
get_record_def(legQuotGrp) -> 
    [legQuotGrp, [[rgr_legQuotGrp_555]]];
get_record_def(rgr_quotEntryAckGrp_295) -> 
    [rgr_quotEntryAckGrp_295, quoteEntryID, [instrument], [instrmtLegGrp], bidPx, offerPx, bidSize, offerSize, validUntilTime, bidSpotRate, offerSpotRate, bidForwardPoints, offerForwardPoints, midPx, bidYield, midYield, offerYield, transactTime, tradingSessionID, tradingSessionSubID, settlDate, ordType, settlDate2, orderQty2, bidForwardPoints2, offerForwardPoints2, currency, quoteEntryRejectReason];
get_record_def(legPreAllocGrp) -> 
    [legPreAllocGrp, [[rgr_legPreAllocGrp_670]]];
get_record_def(rgr_rFQReqGrp_146) -> 
    [rgr_rFQReqGrp_146, [instrument], [undInstrmtGrp], [instrmtLegGrp], prevClosePx, quoteRequestType, quoteType, tradingSessionID, tradingSessionSubID];
get_record_def(rgr_quotEntryGrp_295) -> 
    [rgr_quotEntryGrp_295, quoteEntryID, [instrument], [instrmtLegGrp], bidPx, offerPx, bidSize, offerSize, validUntilTime, bidSpotRate, offerSpotRate, bidForwardPoints, offerForwardPoints, midPx, bidYield, midYield, offerYield, transactTime, tradingSessionID, tradingSessionSubID, settlDate, ordType, settlDate2, orderQty2, bidForwardPoints2, offerForwardPoints2, currency];
get_record_def(rgr_relSymDerivSecGrp_146) -> 
    [rgr_relSymDerivSecGrp_146, [instrument], currency, expirationCycle, [instrumentExtension], [instrmtLegGrp], tradingSessionID, tradingSessionSubID, text, encodedTextLen, encodedText];
get_record_def(rgr_quotReqGrp_146) -> 
    [rgr_quotReqGrp_146, [instrument], [financingDetails], [undInstrmtGrp], prevClosePx, quoteRequestType, quoteType, tradingSessionID, tradingSessionSubID, tradeOriginationDate, side, qtyType, [orderQtyData], settlType, settlDate, settlDate2, orderQty2, currency, [stipulations], account, acctIDSource, accountType, [quotReqLegsGrp], [quotQualGrp], quotePriceType, ordType, validUntilTime, expireTime, transactTime, [spreadOrBenchmarkCurveData], priceType, price, price2, [yieldData], [parties]];
get_record_def(settlInstructionsData) -> 
    [settlInstructionsData, settlDeliveryType, standInstDbType, standInstDbName, standInstDbID, [dlvyInstGrp]];
get_record_def(rgr_listOrdGrp_73) -> 
    [rgr_listOrdGrp_73, clOrdID, secondaryClOrdID, listSeqNo, clOrdLinkID, settlInstMode, [parties], tradeOriginationDate, tradeDate, account, acctIDSource, accountType, dayBookingInst, bookingUnit, allocID, preallocMethod, [preAllocGrp], settlType, settlDate, cashMargin, clearingFeeIndicator, handlInst, execInst, minQty, maxFloor, exDestination, [trdgSesGrp], processCode, [instrument], [undInstrmtGrp], prevClosePx, side, sideValueInd, locateReqd, transactTime, [stipulations], qtyType, [orderQtyData], ordType, priceType, price, stopPx, [spreadOrBenchmarkCurveData], [yieldData], currency, complianceID, solicitedFlag, iOIID, quoteID, timeInForce, effectiveTime, expireDate, expireTime, gTBookingInst, [commissionData], orderCapacity, orderRestrictions, custOrderCapacity, forexReq, settlCurrency, bookingType, text, encodedTextLen, encodedText, settlDate2, orderQty2, price2, positionEffect, coveredOrUncovered, maxShow, [pegInstructions], [discretionInstructions], targetStrategy, targetStrategyParameters, participationRate, designation];
get_record_def(quotCxlEntriesGrp) -> 
    [quotCxlEntriesGrp, [[rgr_quotCxlEntriesGrp_295]]];
get_record_def(instrmtMDReqGrp) -> 
    [instrmtMDReqGrp, [[rgr_instrmtMDReqGrp_146]]];
get_record_def(relSymDerivSecGrp) -> 
    [relSymDerivSecGrp, [[rgr_relSymDerivSecGrp_146]]];
get_record_def(mDIncGrp) -> 
    [mDIncGrp, [[rgr_mDIncGrp_268]]];
get_record_def(rgr_trdCapRptSideGrp_552) -> 
    [rgr_trdCapRptSideGrp_552, side, orderID, secondaryOrderID, clOrdID, secondaryClOrdID, listID, [parties], account, acctIDSource, accountType, processCode, oddLot, [clrInstGrp], tradeInputSource, tradeInputDevice, orderInputDevice, currency, complianceID, solicitedFlag, orderCapacity, orderRestrictions, custOrderCapacity, ordType, execInst, transBkdTime, tradingSessionID, tradingSessionSubID, timeBracket, [commissionData], grossTradeAmt, numDaysInterest, exDate, accruedInterestRate, accruedInterestAmt, interestAtMaturity, endAccruedInterestAmt, startCash, endCash, concession, totalTakedown, netMoney, settlCurrAmt, settlCurrency, settlCurrFxRate, settlCurrFxRateCalc, positionEffect, text, encodedTextLen, encodedText, sideMultiLegReportingType, [contAmtGrp], [stipulations], [miscFeesGrp], exchangeRule, tradeAllocIndicator, preallocMethod, allocID, [trdAllocGrp]];
get_record_def(rgr_legOrdGrp_555) -> 
    [rgr_legOrdGrp_555, [instrumentLeg], legQty, legSwapType, [legStipulations], [legPreAllocGrp], legPositionEffect, legCoveredOrUncovered, [nestedParties], legRefID, legPrice, legSettlType, legSettlDate];
get_record_def(quotEntryGrp) -> 
    [quotEntryGrp, [[rgr_quotEntryGrp_295]]];
get_record_def(rgr_sideCrossOrdModGrp_552) -> 
    [rgr_sideCrossOrdModGrp_552, side, clOrdID, secondaryClOrdID, clOrdLinkID, [parties], tradeOriginationDate, tradeDate, account, acctIDSource, accountType, dayBookingInst, bookingUnit, preallocMethod, allocID, [preAllocGrp], qtyType, [orderQtyData], [commissionData], orderCapacity, orderRestrictions, custOrderCapacity, forexReq, settlCurrency, bookingType, text, encodedTextLen, encodedText, positionEffect, coveredOrUncovered, cashMargin, clearingFeeIndicator, solicitedFlag, sideComplianceID];
get_record_def(quotEntryAckGrp) -> 
    [quotEntryAckGrp, [[rgr_quotEntryAckGrp_295]]];
get_record_def(rgr_quotReqRjctGrp_146) -> 
    [rgr_quotReqRjctGrp_146, [instrument], [financingDetails], [undInstrmtGrp], prevClosePx, quoteRequestType, quoteType, tradingSessionID, tradingSessionSubID, tradeOriginationDate, side, qtyType, [orderQtyData], settlType, settlDate, settlDate2, orderQty2, currency, [stipulations], account, acctIDSource, accountType, [quotReqLegsGrp], [quotQualGrp], quotePriceType, ordType, expireTime, transactTime, [spreadOrBenchmarkCurveData], priceType, price, price2, [yieldData], [parties]];
get_record_def(secListGrp) -> 
    [secListGrp, [[rgr_secListGrp_146]]];
get_record_def(rFQReqGrp) -> 
    [rFQReqGrp, [[rgr_rFQReqGrp_146]]];
get_record_def(rgr_quotSetAckGrp_296) -> 
    [rgr_quotSetAckGrp_296, quoteSetID, [underlyingInstrument], totNoQuoteEntries, lastFragment, [quotEntryAckGrp]];
get_record_def(trdCapRptSideGrp) -> 
    [trdCapRptSideGrp, [[rgr_trdCapRptSideGrp_552]]];
get_record_def(sideCrossOrdModGrp) -> 
    [sideCrossOrdModGrp, [[rgr_sideCrossOrdModGrp_552]]];
get_record_def(legOrdGrp) -> 
    [legOrdGrp, [[rgr_legOrdGrp_555]]];
get_record_def(rgr_quotSetGrp_296) -> 
    [rgr_quotSetGrp_296, quoteSetID, [underlyingInstrument], quoteSetValidUntilTime, totNoQuoteEntries, lastFragment, [quotEntryGrp]];
get_record_def(rgr_allocGrp_78) -> 
    [rgr_allocGrp_78, allocAccount, allocAcctIDSource, matchStatus, allocPrice, allocQty, individualAllocID, processCode, [nestedParties], notifyBrokerOfCredit, allocHandlInst, allocText, encodedAllocTextLen, encodedAllocText, [commissionData], allocAvgPx, allocNetMoney, settlCurrAmt, allocSettlCurrAmt, settlCurrency, allocSettlCurrency, settlCurrFxRate, settlCurrFxRateCalc, allocAccruedInterestAmt, allocInterestAtMaturity, [miscFeesGrp], [clrInstGrp], allocSettlInstType, [settlInstructionsData]];
get_record_def(quotReqRjctGrp) -> 
    [quotReqRjctGrp, [[rgr_quotReqRjctGrp_146]]];
get_record_def(rgr_settlInstGrp_778) -> 
    [rgr_settlInstGrp_778, settlInstID, settlInstTransType, settlInstRefID, [parties], side, produkt, securityType, cFICode, effectiveTime, expireTime, lastUpdateTime, [settlInstructionsData], paymentMethod, paymentRef, cardHolderName, cardNumber, cardStartDate, cardExpDate, cardIssNum, paymentDate, paymentRemitterID];
get_record_def(listOrdGrp) -> 
    [listOrdGrp, [[rgr_listOrdGrp_73]]];
get_record_def(quotReqGrp) -> 
    [quotReqGrp, [[rgr_quotReqGrp_146]]];
get_record_def(quotSetAckGrp) -> 
    [quotSetAckGrp, [[rgr_quotSetAckGrp_296]]];
get_record_def(allocGrp) -> 
    [allocGrp, [[rgr_allocGrp_78]]];
get_record_def(quotSetGrp) -> 
    [quotSetGrp, [[rgr_quotSetGrp_296]]];
get_record_def(settlInstGrp) -> 
    [settlInstGrp, [[rgr_settlInstGrp_778]]];
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
get_record_def(iOI) -> 
    [iOI, [standardHeader], iOIID, iOITransType, iOIRefID, [instrument], [financingDetails], [undInstrmtGrp], side, qtyType, [orderQtyData], iOIQty, currency, [stipulations], [instrmtLegIOIGrp], priceType, price, validUntilTime, iOIQltyInd, iOINaturalFlag, [iOIQualGrp], text, encodedTextLen, encodedText, transactTime, uRLLink, [routingGrp], [spreadOrBenchmarkCurveData], [yieldData], [standardTrailer]];
get_record_def(advertisement) -> 
    [advertisement, [standardHeader], advId, advTransType, advRefID, [instrument], [instrmtLegGrp], [undInstrmtGrp], advSide, quantity, qtyType, price, currency, tradeDate, transactTime, text, encodedTextLen, encodedText, uRLLink, lastMkt, tradingSessionID, tradingSessionSubID, [standardTrailer]];
get_record_def(executionReport) -> 
    [executionReport, [standardHeader], orderID, secondaryOrderID, secondaryClOrdID, secondaryExecID, clOrdID, origClOrdID, clOrdLinkID, quoteRespID, ordStatusReqID, massStatusReqID, totNumReports, lastRptRequested, [parties], tradeOriginationDate, [contraGrp], listID, crossID, origCrossID, crossType, execID, execRefID, execType, ordStatus, workingIndicator, ordRejReason, execRestatementReason, account, acctIDSource, accountType, dayBookingInst, bookingUnit, preallocMethod, settlType, settlDate, cashMargin, clearingFeeIndicator, [instrument], [financingDetails], [undInstrmtGrp], side, [stipulations], qtyType, [orderQtyData], ordType, priceType, price, stopPx, [pegInstructions], [discretionInstructions], peggedPrice, discretionPrice, targetStrategy, targetStrategyParameters, participationRate, targetStrategyPerformance, currency, complianceID, solicitedFlag, timeInForce, effectiveTime, expireDate, expireTime, execInst, orderCapacity, orderRestrictions, custOrderCapacity, lastQty, underlyingLastQty, lastPx, underlyingLastPx, lastParPx, lastSpotRate, lastForwardPoints, lastMkt, tradingSessionID, tradingSessionSubID, timeBracket, lastCapacity, leavesQty, cumQty, avgPx, dayOrderQty, dayCumQty, dayAvgPx, gTBookingInst, tradeDate, transactTime, reportToExch, [commissionData], [spreadOrBenchmarkCurveData], [yieldData], grossTradeAmt, numDaysInterest, exDate, accruedInterestRate, accruedInterestAmt, interestAtMaturity, endAccruedInterestAmt, startCash, endCash, tradedFlatSwitch, basisFeatureDate, basisFeaturePrice, concession, totalTakedown, netMoney, settlCurrAmt, settlCurrency, settlCurrFxRate, settlCurrFxRateCalc, handlInst, minQty, maxFloor, positionEffect, maxShow, bookingType, text, encodedTextLen, encodedText, settlDate2, orderQty2, lastForwardPoints2, multiLegReportingType, cancellationRights, moneyLaunderingStatus, registID, designation, transBkdTime, execValuationPoint, execPriceType, execPriceAdjustment, priorityIndicator, priceImprovement, lastLiquidityInd, [contAmtGrp], [instrmtLegExecGrp], copyMsgIndicator, [miscFeesGrp], [standardTrailer]];
get_record_def(orderCancelReject) -> 
    [orderCancelReject, [standardHeader], orderID, secondaryOrderID, secondaryClOrdID, clOrdID, clOrdLinkID, origClOrdID, ordStatus, workingIndicator, origOrdModTime, listID, account, acctIDSource, accountType, tradeOriginationDate, tradeDate, transactTime, cxlRejResponseTo, cxlRejReason, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(rgr_logon_384) -> 
    [rgr_logon_384, refMsgType, msgDirection];
get_record_def(logon) -> 
    [logon, [standardHeader], encryptMethod, heartBtInt, rawDataLength, rawData, resetSeqNumFlag, nextExpectedMsgSeqNum, maxMessageSize, [[rgr_logon_384]], testMessageIndicator, username, password, [standardTrailer]];
get_record_def(news) -> 
    [news, [standardHeader], origTime, urgency, headline, encodedHeadlineLen, encodedHeadline, [routingGrp], [instrmtGrp], [instrmtLegGrp], [undInstrmtGrp], [linesOfTextGrp], uRLLink, rawDataLength, rawData, [standardTrailer]];
get_record_def(email) -> 
    [email, [standardHeader], emailThreadID, emailType, origTime, subject, encodedSubjectLen, encodedSubject, [routingGrp], [instrmtGrp], [undInstrmtGrp], [instrmtLegGrp], orderID, clOrdID, [linesOfTextGrp], rawDataLength, rawData, [standardTrailer]];
get_record_def(newOrderSingle) -> 
    [newOrderSingle, [standardHeader], clOrdID, secondaryClOrdID, clOrdLinkID, [parties], tradeOriginationDate, tradeDate, account, acctIDSource, accountType, dayBookingInst, bookingUnit, preallocMethod, allocID, [preAllocGrp], settlType, settlDate, cashMargin, clearingFeeIndicator, handlInst, execInst, minQty, maxFloor, exDestination, [trdgSesGrp], processCode, [instrument], [financingDetails], [undInstrmtGrp], prevClosePx, side, locateReqd, transactTime, [stipulations], qtyType, [orderQtyData], ordType, priceType, price, stopPx, [spreadOrBenchmarkCurveData], [yieldData], currency, complianceID, solicitedFlag, iOIID, quoteID, timeInForce, effectiveTime, expireDate, expireTime, gTBookingInst, [commissionData], orderCapacity, orderRestrictions, custOrderCapacity, forexReq, settlCurrency, bookingType, text, encodedTextLen, encodedText, settlDate2, orderQty2, price2, positionEffect, coveredOrUncovered, maxShow, [pegInstructions], [discretionInstructions], targetStrategy, targetStrategyParameters, participationRate, cancellationRights, moneyLaunderingStatus, registID, designation, [standardTrailer]];
get_record_def(newOrderList) -> 
    [newOrderList, [standardHeader], listID, bidID, clientBidID, progRptReqs, bidType, progPeriodInterval, cancellationRights, moneyLaunderingStatus, registID, listExecInstType, listExecInst, encodedListExecInstLen, encodedListExecInst, allowableOneSidednessPct, allowableOneSidednessValue, allowableOneSidednessCurr, totNoOrders, lastFragment, [listOrdGrp], [standardTrailer]];
get_record_def(orderCancelRequest) -> 
    [orderCancelRequest, [standardHeader], origClOrdID, orderID, clOrdID, secondaryClOrdID, clOrdLinkID, listID, origOrdModTime, account, acctIDSource, accountType, [parties], [instrument], [financingDetails], [undInstrmtGrp], side, transactTime, [orderQtyData], complianceID, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(orderCancelReplaceRequest) -> 
    [orderCancelReplaceRequest, [standardHeader], orderID, [parties], tradeOriginationDate, tradeDate, origClOrdID, clOrdID, secondaryClOrdID, clOrdLinkID, listID, origOrdModTime, account, acctIDSource, accountType, dayBookingInst, bookingUnit, preallocMethod, allocID, [preAllocGrp], settlType, settlDate, cashMargin, clearingFeeIndicator, handlInst, execInst, minQty, maxFloor, exDestination, [trdgSesGrp], [instrument], [financingDetails], [undInstrmtGrp], side, transactTime, qtyType, [orderQtyData], ordType, priceType, price, stopPx, [spreadOrBenchmarkCurveData], [yieldData], [pegInstructions], [discretionInstructions], targetStrategy, targetStrategyParameters, participationRate, complianceID, solicitedFlag, currency, timeInForce, effectiveTime, expireDate, expireTime, gTBookingInst, [commissionData], orderCapacity, orderRestrictions, custOrderCapacity, forexReq, settlCurrency, bookingType, text, encodedTextLen, encodedText, settlDate2, orderQty2, price2, positionEffect, coveredOrUncovered, maxShow, locateReqd, cancellationRights, moneyLaunderingStatus, registID, designation, [standardTrailer]];
get_record_def(orderStatusRequest) -> 
    [orderStatusRequest, [standardHeader], orderID, clOrdID, secondaryClOrdID, clOrdLinkID, [parties], ordStatusReqID, account, acctIDSource, [instrument], [financingDetails], [undInstrmtGrp], side, [standardTrailer]];
get_record_def(allocationInstruction) -> 
    [allocationInstruction, [standardHeader], allocID, allocTransType, allocType, secondaryAllocID, refAllocID, allocCancReplaceReason, allocIntermedReqType, allocLinkID, allocLinkType, bookingRefID, allocNoOrdersType, [ordAllocGrp], [execAllocGrp], previouslyReported, reversalIndicator, matchType, side, [instrument], [instrumentExtension], [financingDetails], [undInstrmtGrp], [instrmtLegGrp], quantity, qtyType, lastMkt, tradeOriginationDate, tradingSessionID, tradingSessionSubID, priceType, avgPx, avgParPx, [spreadOrBenchmarkCurveData], currency, avgPxPrecision, [parties], tradeDate, transactTime, settlType, settlDate, bookingType, grossTradeAmt, concession, totalTakedown, netMoney, positionEffect, autoAcceptIndicator, text, encodedTextLen, encodedText, numDaysInterest, accruedInterestRate, accruedInterestAmt, totalAccruedInterestAmt, interestAtMaturity, endAccruedInterestAmt, startCash, endCash, legalConfirm, [stipulations], [yieldData], totNoAllocs, lastFragment, [allocGrp], [standardTrailer]];
get_record_def(listCancelRequest) -> 
    [listCancelRequest, [standardHeader], listID, transactTime, tradeOriginationDate, tradeDate, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(listExecute) -> 
    [listExecute, [standardHeader], listID, clientBidID, bidID, transactTime, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(listStatusRequest) -> 
    [listStatusRequest, [standardHeader], listID, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(listStatus) -> 
    [listStatus, [standardHeader], listID, listStatusType, noRpts, listOrderStatus, rptSeq, listStatusText, encodedListStatusTextLen, encodedListStatusText, transactTime, totNoOrders, lastFragment, [ordListStatGrp], [standardTrailer]];
get_record_def(allocationInstructionAck) -> 
    [allocationInstructionAck, [standardHeader], allocID, [parties], secondaryAllocID, tradeDate, transactTime, allocStatus, allocRejCode, allocType, allocIntermedReqType, matchStatus, produkt, securityType, text, encodedTextLen, encodedText, [allocAckGrp], [standardTrailer]];
get_record_def(dontKnowTrade) -> 
    [dontKnowTrade, [standardHeader], orderID, secondaryOrderID, execID, dKReason, [instrument], [undInstrmtGrp], [instrmtLegGrp], side, [orderQtyData], lastQty, lastPx, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(quoteRequest) -> 
    [quoteRequest, [standardHeader], quoteReqID, rFQReqID, clOrdID, orderCapacity, [quotReqGrp], text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(quote) -> 
    [quote, [standardHeader], quoteReqID, quoteID, quoteRespID, quoteType, [quotQualGrp], quoteResponseLevel, [parties], tradingSessionID, tradingSessionSubID, [instrument], [financingDetails], [undInstrmtGrp], side, [orderQtyData], settlType, settlDate, settlDate2, orderQty2, currency, [stipulations], account, acctIDSource, accountType, [legQuotGrp], bidPx, offerPx, mktBidPx, mktOfferPx, minBidSize, bidSize, minOfferSize, offerSize, validUntilTime, bidSpotRate, offerSpotRate, bidForwardPoints, offerForwardPoints, midPx, bidYield, midYield, offerYield, transactTime, ordType, bidForwardPoints2, offerForwardPoints2, settlCurrBidFxRate, settlCurrOfferFxRate, settlCurrFxRateCalc, commType, commission, custOrderCapacity, exDestination, orderCapacity, priceType, [spreadOrBenchmarkCurveData], [yieldData], text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(settlementInstructions) -> 
    [settlementInstructions, [standardHeader], settlInstMsgID, settlInstReqID, settlInstMode, settlInstReqRejCode, text, encodedTextLen, encodedText, clOrdID, transactTime, [settlInstGrp], [standardTrailer]];
get_record_def(marketDataRequest) -> 
    [marketDataRequest, [standardHeader], mDReqID, subscriptionRequestType, marketDepth, mDUpdateType, aggregatedBook, openCloseSettlFlag, scope, mDImplicitDelete, [mDReqGrp], [instrmtMDReqGrp], [trdgSesGrp], applQueueAction, applQueueMax, [standardTrailer]];
get_record_def(marketDataSnapshotFullRefresh) -> 
    [marketDataSnapshotFullRefresh, [standardHeader], mDReqID, [instrument], [undInstrmtGrp], [instrmtLegGrp], financialStatus, corporateAction, netChgPrevDay, [mDFullGrp], applQueueDepth, applQueueResolution, [standardTrailer]];
get_record_def(marketDataIncrementalRefresh) -> 
    [marketDataIncrementalRefresh, [standardHeader], mDReqID, [mDIncGrp], applQueueDepth, applQueueResolution, [standardTrailer]];
get_record_def(marketDataRequestReject) -> 
    [marketDataRequestReject, [standardHeader], mDReqID, mDReqRejReason, [mDRjctGrp], text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(quoteCancel) -> 
    [quoteCancel, [standardHeader], quoteReqID, quoteID, quoteCancelType, quoteResponseLevel, [parties], account, acctIDSource, accountType, tradingSessionID, tradingSessionSubID, [quotCxlEntriesGrp], [standardTrailer]];
get_record_def(quoteStatusRequest) -> 
    [quoteStatusRequest, [standardHeader], quoteStatusReqID, quoteID, [instrument], [financingDetails], [undInstrmtGrp], [instrmtLegGrp], [parties], account, acctIDSource, accountType, tradingSessionID, tradingSessionSubID, subscriptionRequestType, [standardTrailer]];
get_record_def(massQuoteAcknowledgement) -> 
    [massQuoteAcknowledgement, [standardHeader], quoteReqID, quoteID, quoteStatus, quoteRejectReason, quoteResponseLevel, quoteType, [parties], account, acctIDSource, accountType, text, encodedTextLen, encodedText, [quotSetAckGrp], [standardTrailer]];
get_record_def(securityDefinitionRequest) -> 
    [securityDefinitionRequest, [standardHeader], securityReqID, securityRequestType, [instrument], [instrumentExtension], [undInstrmtGrp], currency, text, encodedTextLen, encodedText, tradingSessionID, tradingSessionSubID, [instrmtLegGrp], expirationCycle, subscriptionRequestType, [standardTrailer]];
get_record_def(securityDefinition) -> 
    [securityDefinition, [standardHeader], securityReqID, securityResponseID, securityResponseType, [instrument], [instrumentExtension], [undInstrmtGrp], currency, tradingSessionID, tradingSessionSubID, text, encodedTextLen, encodedText, [instrmtLegGrp], expirationCycle, roundLot, minTradeVol, [standardTrailer]];
get_record_def(securityStatusRequest) -> 
    [securityStatusRequest, [standardHeader], securityStatusReqID, [instrument], [instrumentExtension], [undInstrmtGrp], [instrmtLegGrp], currency, subscriptionRequestType, tradingSessionID, tradingSessionSubID, [standardTrailer]];
get_record_def(securityStatus) -> 
    [securityStatus, [standardHeader], securityStatusReqID, [instrument], [instrumentExtension], [undInstrmtGrp], [instrmtLegGrp], currency, tradingSessionID, tradingSessionSubID, unsolicitedIndicator, securityTradingStatus, financialStatus, corporateAction, haltReason, inViewOfCommon, dueToRelated, buyVolume, sellVolume, highPx, lowPx, lastPx, transactTime, adjustment, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(tradingSessionStatusRequest) -> 
    [tradingSessionStatusRequest, [standardHeader], tradSesReqID, tradingSessionID, tradingSessionSubID, tradSesMethod, tradSesMode, subscriptionRequestType, [standardTrailer]];
get_record_def(tradingSessionStatus) -> 
    [tradingSessionStatus, [standardHeader], tradSesReqID, tradingSessionID, tradingSessionSubID, tradSesMethod, tradSesMode, unsolicitedIndicator, tradSesStatus, tradSesStatusRejReason, tradSesStartTime, tradSesOpenTime, tradSesPreCloseTime, tradSesCloseTime, tradSesEndTime, totalVolumeTraded, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(massQuote) -> 
    [massQuote, [standardHeader], quoteReqID, quoteID, quoteType, quoteResponseLevel, [parties], account, acctIDSource, accountType, defBidSize, defOfferSize, [quotSetGrp], [standardTrailer]];
get_record_def(businessMessageReject) -> 
    [businessMessageReject, [standardHeader], refSeqNum, refMsgType, businessRejectRefID, businessRejectReason, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(bidRequest) -> 
    [bidRequest, [standardHeader], bidID, clientBidID, bidRequestTransType, listName, totNoRelatedSym, bidType, numTickets, currency, sideValue1, sideValue2, [bidDescReqGrp], [bidCompReqGrp], liquidityIndType, wtAverageLiquidity, exchangeForPhysical, outMainCntryUIndex, crossPercent, progRptReqs, progPeriodInterval, incTaxInd, forexReq, numBidders, tradeDate, bidTradeType, basisPxType, strikeTime, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(bidResponse) -> 
    [bidResponse, [standardHeader], bidID, clientBidID, [bidCompRspGrp], [standardTrailer]];
get_record_def(listStrikePrice) -> 
    [listStrikePrice, [standardHeader], listID, totNoStrikes, lastFragment, [instrmtStrkPxGrp], [undInstrmtStrkPxGrp], [standardTrailer]];
get_record_def(xMLnonFIX) -> 
    [xMLnonFIX, [standardHeader], [standardTrailer]];
get_record_def(registrationInstructions) -> 
    [registrationInstructions, [standardHeader], registID, registTransType, registRefID, clOrdID, [parties], account, acctIDSource, registAcctType, taxAdvantageType, ownershipType, [rgstDtlsGrp], [rgstDistInstGrp], [standardTrailer]];
get_record_def(registrationInstructionsResponse) -> 
    [registrationInstructionsResponse, [standardHeader], registID, registTransType, registRefID, clOrdID, [parties], account, acctIDSource, registStatus, registRejReasonCode, registRejReasonText, [standardTrailer]];
get_record_def(orderMassCancelRequest) -> 
    [orderMassCancelRequest, [standardHeader], clOrdID, secondaryClOrdID, massCancelRequestType, tradingSessionID, tradingSessionSubID, [instrument], [underlyingInstrument], side, transactTime, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(orderMassCancelReport) -> 
    [orderMassCancelReport, [standardHeader], clOrdID, secondaryClOrdID, orderID, secondaryOrderID, massCancelRequestType, massCancelResponse, massCancelRejectReason, totalAffectedOrders, [affectedOrdGrp], tradingSessionID, tradingSessionSubID, [instrument], [underlyingInstrument], side, transactTime, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(newOrderCross) -> 
    [newOrderCross, [standardHeader], crossID, crossType, crossPrioritization, [sideCrossOrdModGrp], [instrument], [undInstrmtGrp], [instrmtLegGrp], settlType, settlDate, handlInst, execInst, minQty, maxFloor, exDestination, [trdgSesGrp], processCode, prevClosePx, locateReqd, transactTime, [stipulations], ordType, priceType, price, stopPx, [spreadOrBenchmarkCurveData], [yieldData], currency, complianceID, iOIID, quoteID, timeInForce, effectiveTime, expireDate, expireTime, gTBookingInst, maxShow, [pegInstructions], [discretionInstructions], targetStrategy, targetStrategyParameters, participationRate, cancellationRights, moneyLaunderingStatus, registID, designation, [standardTrailer]];
get_record_def(crossOrderCancelReplaceRequest) -> 
    [crossOrderCancelReplaceRequest, [standardHeader], orderID, crossID, origCrossID, crossType, crossPrioritization, [sideCrossOrdModGrp], [instrument], [undInstrmtGrp], [instrmtLegGrp], settlType, settlDate, handlInst, execInst, minQty, maxFloor, exDestination, [trdgSesGrp], processCode, prevClosePx, locateReqd, transactTime, [stipulations], ordType, priceType, price, stopPx, [spreadOrBenchmarkCurveData], [yieldData], currency, complianceID, iOIID, quoteID, timeInForce, effectiveTime, expireDate, expireTime, gTBookingInst, maxShow, [pegInstructions], [discretionInstructions], targetStrategy, targetStrategyParameters, participationRate, cancellationRights, moneyLaunderingStatus, registID, designation, [standardTrailer]];
get_record_def(crossOrderCancelRequest) -> 
    [crossOrderCancelRequest, [standardHeader], orderID, crossID, origCrossID, crossType, crossPrioritization, [sideCrossOrdCxlGrp], [instrument], [undInstrmtGrp], [instrmtLegGrp], transactTime, [standardTrailer]];
get_record_def(securityTypeRequest) -> 
    [securityTypeRequest, [standardHeader], securityReqID, text, encodedTextLen, encodedText, tradingSessionID, tradingSessionSubID, produkt, securityType, securitySubType, [standardTrailer]];
get_record_def(securityTypes) -> 
    [securityTypes, [standardHeader], securityReqID, securityResponseID, securityResponseType, totNoSecurityTypes, lastFragment, [secTypesGrp], text, encodedTextLen, encodedText, tradingSessionID, tradingSessionSubID, subscriptionRequestType, [standardTrailer]];
get_record_def(securityListRequest) -> 
    [securityListRequest, [standardHeader], securityReqID, securityListRequestType, [instrument], [instrumentExtension], [financingDetails], [undInstrmtGrp], [instrmtLegGrp], currency, text, encodedTextLen, encodedText, tradingSessionID, tradingSessionSubID, subscriptionRequestType, [standardTrailer]];
get_record_def(securityList) -> 
    [securityList, [standardHeader], securityReqID, securityResponseID, securityRequestResult, totNoRelatedSym, lastFragment, [secListGrp], [standardTrailer]];
get_record_def(derivativeSecurityListRequest) -> 
    [derivativeSecurityListRequest, [standardHeader], securityReqID, securityListRequestType, [underlyingInstrument], securitySubType, currency, text, encodedTextLen, encodedText, tradingSessionID, tradingSessionSubID, subscriptionRequestType, [standardTrailer]];
get_record_def(derivativeSecurityList) -> 
    [derivativeSecurityList, [standardHeader], securityReqID, securityResponseID, securityRequestResult, [underlyingInstrument], totNoRelatedSym, lastFragment, [relSymDerivSecGrp], [standardTrailer]];
get_record_def(newOrderMultileg) -> 
    [newOrderMultileg, [standardHeader], clOrdID, secondaryClOrdID, clOrdLinkID, [parties], tradeOriginationDate, tradeDate, account, acctIDSource, accountType, dayBookingInst, bookingUnit, preallocMethod, allocID, [preAllocMlegGrp], settlType, settlDate, cashMargin, clearingFeeIndicator, handlInst, execInst, minQty, maxFloor, exDestination, [trdgSesGrp], processCode, side, [instrument], [undInstrmtGrp], prevClosePx, [legOrdGrp], locateReqd, transactTime, qtyType, [orderQtyData], ordType, priceType, price, stopPx, currency, complianceID, solicitedFlag, iOIID, quoteID, timeInForce, effectiveTime, expireDate, expireTime, gTBookingInst, [commissionData], orderCapacity, orderRestrictions, custOrderCapacity, forexReq, settlCurrency, bookingType, text, encodedTextLen, encodedText, positionEffect, coveredOrUncovered, maxShow, [pegInstructions], [discretionInstructions], targetStrategy, targetStrategyParameters, participationRate, cancellationRights, moneyLaunderingStatus, registID, designation, multiLegRptTypeReq, [standardTrailer]];
get_record_def(multilegOrderCancelReplace) -> 
    [multilegOrderCancelReplace, [standardHeader], orderID, origClOrdID, clOrdID, secondaryClOrdID, clOrdLinkID, origOrdModTime, [parties], tradeOriginationDate, tradeDate, account, acctIDSource, accountType, dayBookingInst, bookingUnit, preallocMethod, allocID, [preAllocMlegGrp], settlType, settlDate, cashMargin, clearingFeeIndicator, handlInst, execInst, minQty, maxFloor, exDestination, [trdgSesGrp], processCode, side, [instrument], [undInstrmtGrp], prevClosePx, [legOrdGrp], locateReqd, transactTime, qtyType, [orderQtyData], ordType, priceType, price, stopPx, currency, complianceID, solicitedFlag, iOIID, quoteID, timeInForce, effectiveTime, expireDate, expireTime, gTBookingInst, [commissionData], orderCapacity, orderRestrictions, custOrderCapacity, forexReq, settlCurrency, bookingType, text, encodedTextLen, encodedText, positionEffect, coveredOrUncovered, maxShow, [pegInstructions], [discretionInstructions], targetStrategy, targetStrategyParameters, participationRate, cancellationRights, moneyLaunderingStatus, registID, designation, multiLegRptTypeReq, [standardTrailer]];
get_record_def(tradeCaptureReportRequest) -> 
    [tradeCaptureReportRequest, [standardHeader], tradeRequestID, tradeRequestType, subscriptionRequestType, tradeReportID, secondaryTradeReportID, execID, execType, orderID, clOrdID, matchStatus, trdType, trdSubType, transferReason, secondaryTrdType, tradeLinkID, trdMatchID, [parties], [instrument], [instrumentExtension], [financingDetails], [undInstrmtGrp], [instrmtLegGrp], [trdCapDtGrp], clearingBusinessDate, tradingSessionID, tradingSessionSubID, timeBracket, side, multiLegReportingType, tradeInputSource, tradeInputDevice, responseTransportType, responseDestination, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(tradeCaptureReport) -> 
    [tradeCaptureReport, [standardHeader], tradeReportID, tradeReportTransType, tradeReportType, tradeRequestID, trdType, trdSubType, secondaryTrdType, transferReason, execType, totNumTradeReports, lastRptRequested, unsolicitedIndicator, subscriptionRequestType, tradeReportRefID, secondaryTradeReportRefID, secondaryTradeReportID, tradeLinkID, trdMatchID, execID, ordStatus, secondaryExecID, execRestatementReason, previouslyReported, priceType, [instrument], [financingDetails], [orderQtyData], qtyType, [yieldData], [undInstrmtGrp], underlyingTradingSessionID, underlyingTradingSessionSubID, lastQty, lastPx, lastParPx, lastSpotRate, lastForwardPoints, lastMkt, tradeDate, clearingBusinessDate, avgPx, [spreadOrBenchmarkCurveData], avgPxIndicator, [positionAmountData], multiLegReportingType, tradeLegRefID, [trdInstrmtLegGrp], transactTime, [trdRegTimestamps], settlType, settlDate, matchStatus, matchType, [trdCapRptSideGrp], copyMsgIndicator, publishTrdIndicator, shortSaleReason, [standardTrailer]];
get_record_def(orderMassStatusRequest) -> 
    [orderMassStatusRequest, [standardHeader], massStatusReqID, massStatusReqType, [parties], account, acctIDSource, tradingSessionID, tradingSessionSubID, [instrument], [underlyingInstrument], side, [standardTrailer]];
get_record_def(quoteRequestReject) -> 
    [quoteRequestReject, [standardHeader], quoteReqID, rFQReqID, quoteRequestRejectReason, [quotReqRjctGrp], text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(rFQRequest) -> 
    [rFQRequest, [standardHeader], rFQReqID, [rFQReqGrp], subscriptionRequestType, [standardTrailer]];
get_record_def(quoteStatusReport) -> 
    [quoteStatusReport, [standardHeader], quoteStatusReqID, quoteReqID, quoteID, quoteRespID, quoteType, [parties], tradingSessionID, tradingSessionSubID, [instrument], [financingDetails], [undInstrmtGrp], side, [orderQtyData], settlType, settlDate, settlDate2, orderQty2, currency, [stipulations], account, acctIDSource, accountType, [legQuotStatGrp], [quotQualGrp], expireTime, price, priceType, [spreadOrBenchmarkCurveData], [yieldData], bidPx, offerPx, mktBidPx, mktOfferPx, minBidSize, bidSize, minOfferSize, offerSize, validUntilTime, bidSpotRate, offerSpotRate, bidForwardPoints, offerForwardPoints, midPx, bidYield, midYield, offerYield, transactTime, ordType, bidForwardPoints2, offerForwardPoints2, settlCurrBidFxRate, settlCurrOfferFxRate, settlCurrFxRateCalc, commType, commission, custOrderCapacity, exDestination, quoteStatus, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(quoteResponse) -> 
    [quoteResponse, [standardHeader], quoteRespID, quoteID, quoteRespType, clOrdID, orderCapacity, iOIID, quoteType, [quotQualGrp], [parties], tradingSessionID, tradingSessionSubID, [instrument], [financingDetails], [undInstrmtGrp], side, [orderQtyData], settlType, settlDate, settlDate2, orderQty2, currency, [stipulations], account, acctIDSource, accountType, [legQuotGrp], bidPx, offerPx, mktBidPx, mktOfferPx, minBidSize, bidSize, minOfferSize, offerSize, validUntilTime, bidSpotRate, offerSpotRate, bidForwardPoints, offerForwardPoints, midPx, bidYield, midYield, offerYield, transactTime, ordType, bidForwardPoints2, offerForwardPoints2, settlCurrBidFxRate, settlCurrOfferFxRate, settlCurrFxRateCalc, commission, commType, custOrderCapacity, exDestination, text, encodedTextLen, encodedText, price, priceType, [spreadOrBenchmarkCurveData], [yieldData], [standardTrailer]];
get_record_def(confirmation) -> 
    [confirmation, [standardHeader], confirmID, confirmRefID, confirmReqID, confirmTransType, confirmType, copyMsgIndicator, legalConfirm, confirmStatus, [parties], [ordAllocGrp], allocID, secondaryAllocID, individualAllocID, transactTime, tradeDate, [trdRegTimestamps], [instrument], [instrumentExtension], [financingDetails], [undInstrmtGrp], [instrmtLegGrp], [yieldData], allocQty, qtyType, side, currency, lastMkt, [cpctyConfGrp], allocAccount, allocAcctIDSource, allocAccountType, avgPx, avgPxPrecision, priceType, avgParPx, [spreadOrBenchmarkCurveData], reportedPx, text, encodedTextLen, encodedText, processCode, grossTradeAmt, numDaysInterest, exDate, accruedInterestRate, accruedInterestAmt, interestAtMaturity, endAccruedInterestAmt, startCash, endCash, concession, totalTakedown, netMoney, maturityNetMoney, settlCurrAmt, settlCurrency, settlCurrFxRate, settlCurrFxRateCalc, settlType, settlDate, [settlInstructionsData], [commissionData], sharedCommission, [stipulations], [miscFeesGrp], [standardTrailer]];
get_record_def(positionMaintenanceRequest) -> 
    [positionMaintenanceRequest, [standardHeader], posReqID, posTransType, posMaintAction, origPosReqRefID, posMaintRptRefID, clearingBusinessDate, settlSessID, settlSessSubID, [parties], account, acctIDSource, accountType, [instrument], currency, [instrmtLegGrp], [undInstrmtGrp], [trdgSesGrp], transactTime, [positionQty], adjustmentType, contraryInstructionIndicator, priorSpreadIndicator, thresholdAmount, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(positionMaintenanceReport) -> 
    [positionMaintenanceReport, [standardHeader], posMaintRptID, posTransType, posReqID, posMaintAction, origPosReqRefID, posMaintStatus, posMaintResult, clearingBusinessDate, settlSessID, settlSessSubID, [parties], account, acctIDSource, accountType, [instrument], currency, [instrmtLegGrp], [undInstrmtGrp], [trdgSesGrp], transactTime, [positionQty], [positionAmountData], adjustmentType, thresholdAmount, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(requestForPositions) -> 
    [requestForPositions, [standardHeader], posReqID, posReqType, matchStatus, subscriptionRequestType, [parties], account, acctIDSource, accountType, [instrument], currency, [instrmtLegGrp], [undInstrmtGrp], clearingBusinessDate, settlSessID, settlSessSubID, [trdgSesGrp], transactTime, responseTransportType, responseDestination, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(requestForPositionsAck) -> 
    [requestForPositionsAck, [standardHeader], posMaintRptID, posReqID, totalNumPosReports, unsolicitedIndicator, posReqResult, posReqStatus, [parties], account, acctIDSource, accountType, [instrument], currency, [instrmtLegGrp], [undInstrmtGrp], responseTransportType, responseDestination, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(positionReport) -> 
    [positionReport, [standardHeader], posMaintRptID, posReqID, posReqType, subscriptionRequestType, totalNumPosReports, unsolicitedIndicator, posReqResult, clearingBusinessDate, settlSessID, settlSessSubID, [parties], account, acctIDSource, accountType, [instrument], currency, settlPrice, settlPriceType, priorSettlPrice, [instrmtLegGrp], [posUndInstrmtGrp], [positionQty], [positionAmountData], registStatus, deliveryDate, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(tradeCaptureReportRequestAck) -> 
    [tradeCaptureReportRequestAck, [standardHeader], tradeRequestID, tradeRequestType, subscriptionRequestType, totNumTradeReports, tradeRequestResult, tradeRequestStatus, [instrument], [undInstrmtGrp], [instrmtLegGrp], multiLegReportingType, responseTransportType, responseDestination, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(tradeCaptureReportAck) -> 
    [tradeCaptureReportAck, [standardHeader], tradeReportID, tradeReportTransType, tradeReportType, trdType, trdSubType, secondaryTrdType, transferReason, execType, tradeReportRefID, secondaryTradeReportRefID, trdRptStatus, tradeReportRejectReason, secondaryTradeReportID, subscriptionRequestType, tradeLinkID, trdMatchID, execID, secondaryExecID, [instrument], transactTime, [trdRegTimestamps], responseTransportType, responseDestination, text, encodedTextLen, encodedText, [trdInstrmtLegGrp], clearingFeeIndicator, orderCapacity, orderRestrictions, custOrderCapacity, account, acctIDSource, accountType, positionEffect, preallocMethod, [trdAllocGrp], [standardTrailer]];
get_record_def(allocationReport) -> 
    [allocationReport, [standardHeader], allocReportID, allocID, allocTransType, allocReportRefID, allocCancReplaceReason, secondaryAllocID, allocReportType, allocStatus, allocRejCode, refAllocID, allocIntermedReqType, allocLinkID, allocLinkType, bookingRefID, allocNoOrdersType, [ordAllocGrp], [execAllocGrp], previouslyReported, reversalIndicator, matchType, side, [instrument], [instrumentExtension], [financingDetails], [undInstrmtGrp], [instrmtLegGrp], quantity, qtyType, lastMkt, tradeOriginationDate, tradingSessionID, tradingSessionSubID, priceType, avgPx, avgParPx, [spreadOrBenchmarkCurveData], currency, avgPxPrecision, [parties], tradeDate, transactTime, settlType, settlDate, bookingType, grossTradeAmt, concession, totalTakedown, netMoney, positionEffect, autoAcceptIndicator, text, encodedTextLen, encodedText, numDaysInterest, accruedInterestRate, accruedInterestAmt, totalAccruedInterestAmt, interestAtMaturity, endAccruedInterestAmt, startCash, endCash, legalConfirm, [stipulations], [yieldData], totNoAllocs, lastFragment, [allocGrp], [standardTrailer]];
get_record_def(allocationReportAck) -> 
    [allocationReportAck, [standardHeader], allocReportID, allocID, [parties], secondaryAllocID, tradeDate, transactTime, allocStatus, allocRejCode, allocReportType, allocIntermedReqType, matchStatus, produkt, securityType, text, encodedTextLen, encodedText, [allocAckGrp], [standardTrailer]];
get_record_def(confirmationAck) -> 
    [confirmationAck, [standardHeader], confirmID, tradeDate, transactTime, affirmStatus, confirmRejReason, matchStatus, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(settlementInstructionRequest) -> 
    [settlementInstructionRequest, [standardHeader], settlInstReqID, transactTime, [parties], allocAccount, allocAcctIDSource, side, produkt, securityType, cFICode, effectiveTime, expireTime, lastUpdateTime, standInstDbType, standInstDbName, standInstDbID, [standardTrailer]];
get_record_def(assignmentReport) -> 
    [assignmentReport, [standardHeader], asgnRptID, totNumAssignmentReports, lastRptRequested, [parties], account, accountType, [instrument], currency, [instrmtLegGrp], [undInstrmtGrp], [positionQty], [positionAmountData], thresholdAmount, settlPrice, settlPriceType, underlyingSettlPrice, expireDate, assignmentMethod, assignmentUnit, openInterest, exerciseMethod, settlSessID, settlSessSubID, clearingBusinessDate, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(collateralRequest) -> 
    [collateralRequest, [standardHeader], collReqID, collAsgnReason, transactTime, expireTime, [parties], account, accountType, clOrdID, orderID, secondaryOrderID, secondaryClOrdID, [execCollGrp], [trdCollGrp], [instrument], [financingDetails], settlDate, quantity, qtyType, currency, [instrmtLegGrp], [undInstrmtCollGrp], marginExcess, totalNetValue, cashOutstanding, [trdRegTimestamps], side, [miscFeesGrp], price, priceType, accruedInterestAmt, endAccruedInterestAmt, startCash, endCash, [spreadOrBenchmarkCurveData], [stipulations], tradingSessionID, tradingSessionSubID, settlSessID, settlSessSubID, clearingBusinessDate, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(collateralAssignment) -> 
    [collateralAssignment, [standardHeader], collAsgnID, collReqID, collAsgnReason, collAsgnTransType, collAsgnRefID, transactTime, expireTime, [parties], account, accountType, clOrdID, orderID, secondaryOrderID, secondaryClOrdID, [execCollGrp], [trdCollGrp], [instrument], [financingDetails], settlDate, quantity, qtyType, currency, [instrmtLegGrp], [undInstrmtCollGrp], marginExcess, totalNetValue, cashOutstanding, [trdRegTimestamps], side, [miscFeesGrp], price, priceType, accruedInterestAmt, endAccruedInterestAmt, startCash, endCash, [spreadOrBenchmarkCurveData], [stipulations], [settlInstructionsData], tradingSessionID, tradingSessionSubID, settlSessID, settlSessSubID, clearingBusinessDate, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(collateralResponse) -> 
    [collateralResponse, [standardHeader], collRespID, collAsgnID, collReqID, collAsgnReason, collAsgnTransType, collAsgnRespType, collAsgnRejectReason, transactTime, [parties], account, accountType, clOrdID, orderID, secondaryOrderID, secondaryClOrdID, [execCollGrp], [trdCollGrp], [instrument], [financingDetails], settlDate, quantity, qtyType, currency, [instrmtLegGrp], [undInstrmtCollGrp], marginExcess, totalNetValue, cashOutstanding, [trdRegTimestamps], side, [miscFeesGrp], price, priceType, accruedInterestAmt, endAccruedInterestAmt, startCash, endCash, [spreadOrBenchmarkCurveData], [stipulations], text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(collateralReport) -> 
    [collateralReport, [standardHeader], collRptID, collInquiryID, collStatus, totNumReports, lastRptRequested, [parties], account, accountType, clOrdID, orderID, secondaryOrderID, secondaryClOrdID, [execCollGrp], [trdCollGrp], [instrument], [financingDetails], settlDate, quantity, qtyType, currency, [instrmtLegGrp], [undInstrmtGrp], marginExcess, totalNetValue, cashOutstanding, [trdRegTimestamps], side, [miscFeesGrp], price, priceType, accruedInterestAmt, endAccruedInterestAmt, startCash, endCash, [spreadOrBenchmarkCurveData], [stipulations], [settlInstructionsData], tradingSessionID, tradingSessionSubID, settlSessID, settlSessSubID, clearingBusinessDate, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(collateralInquiry) -> 
    [collateralInquiry, [standardHeader], collInquiryID, [collInqQualGrp], subscriptionRequestType, responseTransportType, responseDestination, [parties], account, accountType, clOrdID, orderID, secondaryOrderID, secondaryClOrdID, [execCollGrp], [trdCollGrp], [instrument], [financingDetails], settlDate, quantity, qtyType, currency, [instrmtLegGrp], [undInstrmtGrp], marginExcess, totalNetValue, cashOutstanding, [trdRegTimestamps], side, price, priceType, accruedInterestAmt, endAccruedInterestAmt, startCash, endCash, [spreadOrBenchmarkCurveData], [stipulations], [settlInstructionsData], tradingSessionID, tradingSessionSubID, settlSessID, settlSessSubID, clearingBusinessDate, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(networkCounterpartySystemStatusRequest) -> 
    [networkCounterpartySystemStatusRequest, [standardHeader], networkRequestType, networkRequestID, [compIDReqGrp], [standardTrailer]];
get_record_def(networkCounterpartySystemStatusResponse) -> 
    [networkCounterpartySystemStatusResponse, [standardHeader], networkStatusResponseType, networkRequestID, networkResponseID, lastNetworkResponseID, [compIDStatGrp], [standardTrailer]];
get_record_def(userRequest) -> 
    [userRequest, [standardHeader], userRequestID, userRequestType, username, password, newPassword, rawDataLength, rawData, [standardTrailer]];
get_record_def(userResponse) -> 
    [userResponse, [standardHeader], userRequestID, username, userStatus, userStatusText, [standardTrailer]];
get_record_def(collateralInquiryAck) -> 
    [collateralInquiryAck, [standardHeader], collInquiryID, collInquiryStatus, collInquiryResult, [collInqQualGrp], totNumReports, [parties], account, accountType, clOrdID, orderID, secondaryOrderID, secondaryClOrdID, [execCollGrp], [trdCollGrp], [instrument], [financingDetails], settlDate, quantity, qtyType, currency, [instrmtLegGrp], [undInstrmtGrp], tradingSessionID, tradingSessionSubID, settlSessID, settlSessSubID, clearingBusinessDate, responseTransportType, responseDestination, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(confirmationRequest) -> 
    [confirmationRequest, [standardHeader], confirmReqID, confirmType, [ordAllocGrp], allocID, secondaryAllocID, individualAllocID, transactTime, allocAccount, allocAcctIDSource, allocAccountType, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(_Else) -> 
    error.

getRecord(commissionData)->
    #commissionData{};
getRecord(discretionInstructions)->
    #discretionInstructions{};
getRecord(financingDetails)->
    #financingDetails{};
getRecord(instrument)->
    #instrument{};
getRecord(instrumentExtension)->
    #instrumentExtension{};
getRecord(instrumentLeg)->
    #instrumentLeg{};
getRecord(legBenchmarkCurveData)->
    #legBenchmarkCurveData{};
getRecord(rgr_legStipulations_683)->
    #rgr_legStipulations_683{};
getRecord(legStipulations)->
    #legStipulations{};
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
getRecord(pegInstructions)->
    #pegInstructions{};
getRecord(rgr_positionAmountData_753)->
    #rgr_positionAmountData_753{};
getRecord(positionAmountData)->
    #positionAmountData{};
getRecord(rgr_positionQty_702)->
    #rgr_positionQty_702{};
getRecord(positionQty)->
    #positionQty{};
getRecord(settlInstructionsData)->
    #settlInstructionsData{};
getRecord(rgr_settlParties_781)->
    #rgr_settlParties_781{};
getRecord(settlParties)->
    #settlParties{};
getRecord(spreadOrBenchmarkCurveData)->
    #spreadOrBenchmarkCurveData{};
getRecord(rgr_stipulations_232)->
    #rgr_stipulations_232{};
getRecord(stipulations)->
    #stipulations{};
getRecord(rgr_trdRegTimestamps_768)->
    #rgr_trdRegTimestamps_768{};
getRecord(trdRegTimestamps)->
    #trdRegTimestamps{};
getRecord(underlyingInstrument)->
    #underlyingInstrument{};
getRecord(yieldData)->
    #yieldData{};
getRecord(rgr_underlyingStipulations_887)->
    #rgr_underlyingStipulations_887{};
getRecord(underlyingStipulations)->
    #underlyingStipulations{};
getRecord(standardHeader)->
    #standardHeader{};
getRecord(standardTrailer)->
    #standardTrailer{};
getRecord(rgr_nestedParties2_756)->
    #rgr_nestedParties2_756{};
getRecord(nestedParties2)->
    #nestedParties2{};
getRecord(rgr_nestedParties3_948)->
    #rgr_nestedParties3_948{};
getRecord(nestedParties3)->
    #nestedParties3{};
getRecord(rgr_affectedOrdGrp_534)->
    #rgr_affectedOrdGrp_534{};
getRecord(affectedOrdGrp)->
    #affectedOrdGrp{};
getRecord(rgr_allocAckGrp_78)->
    #rgr_allocAckGrp_78{};
getRecord(allocAckGrp)->
    #allocAckGrp{};
getRecord(rgr_allocGrp_78)->
    #rgr_allocGrp_78{};
getRecord(allocGrp)->
    #allocGrp{};
getRecord(rgr_bidCompReqGrp_420)->
    #rgr_bidCompReqGrp_420{};
getRecord(bidCompReqGrp)->
    #bidCompReqGrp{};
getRecord(rgr_bidCompRspGrp_420)->
    #rgr_bidCompRspGrp_420{};
getRecord(bidCompRspGrp)->
    #bidCompRspGrp{};
getRecord(rgr_bidDescReqGrp_398)->
    #rgr_bidDescReqGrp_398{};
getRecord(bidDescReqGrp)->
    #bidDescReqGrp{};
getRecord(rgr_clrInstGrp_576)->
    #rgr_clrInstGrp_576{};
getRecord(clrInstGrp)->
    #clrInstGrp{};
getRecord(rgr_collInqQualGrp_938)->
    #rgr_collInqQualGrp_938{};
getRecord(collInqQualGrp)->
    #collInqQualGrp{};
getRecord(rgr_compIDReqGrp_936)->
    #rgr_compIDReqGrp_936{};
getRecord(compIDReqGrp)->
    #compIDReqGrp{};
getRecord(rgr_compIDStatGrp_936)->
    #rgr_compIDStatGrp_936{};
getRecord(compIDStatGrp)->
    #compIDStatGrp{};
getRecord(rgr_contAmtGrp_518)->
    #rgr_contAmtGrp_518{};
getRecord(contAmtGrp)->
    #contAmtGrp{};
getRecord(rgr_contraGrp_382)->
    #rgr_contraGrp_382{};
getRecord(contraGrp)->
    #contraGrp{};
getRecord(rgr_cpctyConfGrp_862)->
    #rgr_cpctyConfGrp_862{};
getRecord(cpctyConfGrp)->
    #cpctyConfGrp{};
getRecord(rgr_execAllocGrp_124)->
    #rgr_execAllocGrp_124{};
getRecord(execAllocGrp)->
    #execAllocGrp{};
getRecord(rgr_execCollGrp_124)->
    #rgr_execCollGrp_124{};
getRecord(execCollGrp)->
    #execCollGrp{};
getRecord(rgr_execsGrp_124)->
    #rgr_execsGrp_124{};
getRecord(execsGrp)->
    #execsGrp{};
getRecord(rgr_instrmtGrp_146)->
    #rgr_instrmtGrp_146{};
getRecord(instrmtGrp)->
    #instrmtGrp{};
getRecord(rgr_instrmtLegExecGrp_555)->
    #rgr_instrmtLegExecGrp_555{};
getRecord(instrmtLegExecGrp)->
    #instrmtLegExecGrp{};
getRecord(rgr_instrmtLegGrp_555)->
    #rgr_instrmtLegGrp_555{};
getRecord(instrmtLegGrp)->
    #instrmtLegGrp{};
getRecord(rgr_instrmtLegIOIGrp_555)->
    #rgr_instrmtLegIOIGrp_555{};
getRecord(instrmtLegIOIGrp)->
    #instrmtLegIOIGrp{};
getRecord(rgr_instrmtLegSecListGrp_555)->
    #rgr_instrmtLegSecListGrp_555{};
getRecord(instrmtLegSecListGrp)->
    #instrmtLegSecListGrp{};
getRecord(rgr_instrmtMDReqGrp_146)->
    #rgr_instrmtMDReqGrp_146{};
getRecord(instrmtMDReqGrp)->
    #instrmtMDReqGrp{};
getRecord(rgr_instrmtStrkPxGrp_428)->
    #rgr_instrmtStrkPxGrp_428{};
getRecord(instrmtStrkPxGrp)->
    #instrmtStrkPxGrp{};
getRecord(rgr_iOIQualGrp_199)->
    #rgr_iOIQualGrp_199{};
getRecord(iOIQualGrp)->
    #iOIQualGrp{};
getRecord(rgr_legOrdGrp_555)->
    #rgr_legOrdGrp_555{};
getRecord(legOrdGrp)->
    #legOrdGrp{};
getRecord(rgr_legPreAllocGrp_670)->
    #rgr_legPreAllocGrp_670{};
getRecord(legPreAllocGrp)->
    #legPreAllocGrp{};
getRecord(rgr_legQuotGrp_555)->
    #rgr_legQuotGrp_555{};
getRecord(legQuotGrp)->
    #legQuotGrp{};
getRecord(rgr_legQuotStatGrp_555)->
    #rgr_legQuotStatGrp_555{};
getRecord(legQuotStatGrp)->
    #legQuotStatGrp{};
getRecord(rgr_linesOfTextGrp_33)->
    #rgr_linesOfTextGrp_33{};
getRecord(linesOfTextGrp)->
    #linesOfTextGrp{};
getRecord(rgr_listOrdGrp_73)->
    #rgr_listOrdGrp_73{};
getRecord(listOrdGrp)->
    #listOrdGrp{};
getRecord(rgr_mDFullGrp_268)->
    #rgr_mDFullGrp_268{};
getRecord(mDFullGrp)->
    #mDFullGrp{};
getRecord(rgr_mDIncGrp_268)->
    #rgr_mDIncGrp_268{};
getRecord(mDIncGrp)->
    #mDIncGrp{};
getRecord(rgr_mDReqGrp_267)->
    #rgr_mDReqGrp_267{};
getRecord(mDReqGrp)->
    #mDReqGrp{};
getRecord(rgr_mDRjctGrp_816)->
    #rgr_mDRjctGrp_816{};
getRecord(mDRjctGrp)->
    #mDRjctGrp{};
getRecord(rgr_miscFeesGrp_136)->
    #rgr_miscFeesGrp_136{};
getRecord(miscFeesGrp)->
    #miscFeesGrp{};
getRecord(rgr_ordAllocGrp_73)->
    #rgr_ordAllocGrp_73{};
getRecord(ordAllocGrp)->
    #ordAllocGrp{};
getRecord(rgr_ordListStatGrp_73)->
    #rgr_ordListStatGrp_73{};
getRecord(ordListStatGrp)->
    #ordListStatGrp{};
getRecord(rgr_posUndInstrmtGrp_711)->
    #rgr_posUndInstrmtGrp_711{};
getRecord(posUndInstrmtGrp)->
    #posUndInstrmtGrp{};
getRecord(rgr_preAllocGrp_78)->
    #rgr_preAllocGrp_78{};
getRecord(preAllocGrp)->
    #preAllocGrp{};
getRecord(rgr_preAllocMlegGrp_78)->
    #rgr_preAllocMlegGrp_78{};
getRecord(preAllocMlegGrp)->
    #preAllocMlegGrp{};
getRecord(rgr_quotCxlEntriesGrp_295)->
    #rgr_quotCxlEntriesGrp_295{};
getRecord(quotCxlEntriesGrp)->
    #quotCxlEntriesGrp{};
getRecord(rgr_quotEntryAckGrp_295)->
    #rgr_quotEntryAckGrp_295{};
getRecord(quotEntryAckGrp)->
    #quotEntryAckGrp{};
getRecord(rgr_quotEntryGrp_295)->
    #rgr_quotEntryGrp_295{};
getRecord(quotEntryGrp)->
    #quotEntryGrp{};
getRecord(rgr_quotQualGrp_735)->
    #rgr_quotQualGrp_735{};
getRecord(quotQualGrp)->
    #quotQualGrp{};
getRecord(rgr_quotReqGrp_146)->
    #rgr_quotReqGrp_146{};
getRecord(quotReqGrp)->
    #quotReqGrp{};
getRecord(rgr_quotReqLegsGrp_555)->
    #rgr_quotReqLegsGrp_555{};
getRecord(quotReqLegsGrp)->
    #quotReqLegsGrp{};
getRecord(rgr_quotReqRjctGrp_146)->
    #rgr_quotReqRjctGrp_146{};
getRecord(quotReqRjctGrp)->
    #quotReqRjctGrp{};
getRecord(rgr_quotSetAckGrp_296)->
    #rgr_quotSetAckGrp_296{};
getRecord(quotSetAckGrp)->
    #quotSetAckGrp{};
getRecord(rgr_quotSetGrp_296)->
    #rgr_quotSetGrp_296{};
getRecord(quotSetGrp)->
    #quotSetGrp{};
getRecord(rgr_relSymDerivSecGrp_146)->
    #rgr_relSymDerivSecGrp_146{};
getRecord(relSymDerivSecGrp)->
    #relSymDerivSecGrp{};
getRecord(rgr_rFQReqGrp_146)->
    #rgr_rFQReqGrp_146{};
getRecord(rFQReqGrp)->
    #rFQReqGrp{};
getRecord(rgr_rgstDistInstGrp_510)->
    #rgr_rgstDistInstGrp_510{};
getRecord(rgstDistInstGrp)->
    #rgstDistInstGrp{};
getRecord(rgr_rgstDtlsGrp_473)->
    #rgr_rgstDtlsGrp_473{};
getRecord(rgstDtlsGrp)->
    #rgstDtlsGrp{};
getRecord(rgr_routingGrp_215)->
    #rgr_routingGrp_215{};
getRecord(routingGrp)->
    #routingGrp{};
getRecord(rgr_secListGrp_146)->
    #rgr_secListGrp_146{};
getRecord(secListGrp)->
    #secListGrp{};
getRecord(rgr_secTypesGrp_558)->
    #rgr_secTypesGrp_558{};
getRecord(secTypesGrp)->
    #secTypesGrp{};
getRecord(rgr_settlInstGrp_778)->
    #rgr_settlInstGrp_778{};
getRecord(settlInstGrp)->
    #settlInstGrp{};
getRecord(rgr_sideCrossOrdCxlGrp_552)->
    #rgr_sideCrossOrdCxlGrp_552{};
getRecord(sideCrossOrdCxlGrp)->
    #sideCrossOrdCxlGrp{};
getRecord(rgr_sideCrossOrdModGrp_552)->
    #rgr_sideCrossOrdModGrp_552{};
getRecord(sideCrossOrdModGrp)->
    #sideCrossOrdModGrp{};
getRecord(rgr_trdAllocGrp_78)->
    #rgr_trdAllocGrp_78{};
getRecord(trdAllocGrp)->
    #trdAllocGrp{};
getRecord(rgr_trdCapRptSideGrp_552)->
    #rgr_trdCapRptSideGrp_552{};
getRecord(trdCapRptSideGrp)->
    #trdCapRptSideGrp{};
getRecord(rgr_trdCollGrp_897)->
    #rgr_trdCollGrp_897{};
getRecord(trdCollGrp)->
    #trdCollGrp{};
getRecord(rgr_trdInstrmtLegGrp_555)->
    #rgr_trdInstrmtLegGrp_555{};
getRecord(trdInstrmtLegGrp)->
    #trdInstrmtLegGrp{};
getRecord(rgr_trdgSesGrp_386)->
    #rgr_trdgSesGrp_386{};
getRecord(trdgSesGrp)->
    #trdgSesGrp{};
getRecord(rgr_undInstrmtCollGrp_711)->
    #rgr_undInstrmtCollGrp_711{};
getRecord(undInstrmtCollGrp)->
    #undInstrmtCollGrp{};
getRecord(rgr_undInstrmtGrp_711)->
    #rgr_undInstrmtGrp_711{};
getRecord(undInstrmtGrp)->
    #undInstrmtGrp{};
getRecord(rgr_undInstrmtStrkPxGrp_711)->
    #rgr_undInstrmtStrkPxGrp_711{};
getRecord(undInstrmtStrkPxGrp)->
    #undInstrmtStrkPxGrp{};
getRecord(rgr_trdCapDtGrp_580)->
    #rgr_trdCapDtGrp_580{};
getRecord(trdCapDtGrp)->
    #trdCapDtGrp{};
getRecord(rgr_evntGrp_864)->
    #rgr_evntGrp_864{};
getRecord(evntGrp)->
    #evntGrp{};
getRecord(rgr_secAltIDGrp_454)->
    #rgr_secAltIDGrp_454{};
getRecord(secAltIDGrp)->
    #secAltIDGrp{};
getRecord(rgr_legSecAltIDGrp_604)->
    #rgr_legSecAltIDGrp_604{};
getRecord(legSecAltIDGrp)->
    #legSecAltIDGrp{};
getRecord(rgr_undSecAltIDGrp_457)->
    #rgr_undSecAltIDGrp_457{};
getRecord(undSecAltIDGrp)->
    #undSecAltIDGrp{};
getRecord(rgr_attrbGrp_870)->
    #rgr_attrbGrp_870{};
getRecord(attrbGrp)->
    #attrbGrp{};
getRecord(rgr_dlvyInstGrp_85)->
    #rgr_dlvyInstGrp_85{};
getRecord(dlvyInstGrp)->
    #dlvyInstGrp{};
getRecord(rgr_settlPtysSubGrp_801)->
    #rgr_settlPtysSubGrp_801{};
getRecord(settlPtysSubGrp)->
    #settlPtysSubGrp{};
getRecord(rgr_ptysSubGrp_802)->
    #rgr_ptysSubGrp_802{};
getRecord(ptysSubGrp)->
    #ptysSubGrp{};
getRecord(rgr_nstdPtysSubGrp_804)->
    #rgr_nstdPtysSubGrp_804{};
getRecord(nstdPtysSubGrp)->
    #nstdPtysSubGrp{};
getRecord(rgr_hop_627)->
    #rgr_hop_627{};
getRecord(hop)->
    #hop{};
getRecord(rgr_nstdPtys2SubGrp_806)->
    #rgr_nstdPtys2SubGrp_806{};
getRecord(nstdPtys2SubGrp)->
    #nstdPtys2SubGrp{};
getRecord(rgr_nstdPtys3SubGrp_952)->
    #rgr_nstdPtys3SubGrp_952{};
getRecord(nstdPtys3SubGrp)->
    #nstdPtys3SubGrp{};
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
getRecord(executionReport)->
    #executionReport{};
getRecord(orderCancelReject)->
    #orderCancelReject{};
getRecord(rgr_logon_384)->
    #rgr_logon_384{};
getRecord(logon)->
    #logon{};
getRecord(news)->
    #news{};
getRecord(email)->
    #email{};
getRecord(newOrderSingle)->
    #newOrderSingle{};
getRecord(newOrderList)->
    #newOrderList{};
getRecord(orderCancelRequest)->
    #orderCancelRequest{};
getRecord(orderCancelReplaceRequest)->
    #orderCancelReplaceRequest{};
getRecord(orderStatusRequest)->
    #orderStatusRequest{};
getRecord(allocationInstruction)->
    #allocationInstruction{};
getRecord(listCancelRequest)->
    #listCancelRequest{};
getRecord(listExecute)->
    #listExecute{};
getRecord(listStatusRequest)->
    #listStatusRequest{};
getRecord(listStatus)->
    #listStatus{};
getRecord(allocationInstructionAck)->
    #allocationInstructionAck{};
getRecord(dontKnowTrade)->
    #dontKnowTrade{};
getRecord(quoteRequest)->
    #quoteRequest{};
getRecord(quote)->
    #quote{};
getRecord(settlementInstructions)->
    #settlementInstructions{};
getRecord(marketDataRequest)->
    #marketDataRequest{};
getRecord(marketDataSnapshotFullRefresh)->
    #marketDataSnapshotFullRefresh{};
getRecord(marketDataIncrementalRefresh)->
    #marketDataIncrementalRefresh{};
getRecord(marketDataRequestReject)->
    #marketDataRequestReject{};
getRecord(quoteCancel)->
    #quoteCancel{};
getRecord(quoteStatusRequest)->
    #quoteStatusRequest{};
getRecord(massQuoteAcknowledgement)->
    #massQuoteAcknowledgement{};
getRecord(securityDefinitionRequest)->
    #securityDefinitionRequest{};
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
getRecord(massQuote)->
    #massQuote{};
getRecord(businessMessageReject)->
    #businessMessageReject{};
getRecord(bidRequest)->
    #bidRequest{};
getRecord(bidResponse)->
    #bidResponse{};
getRecord(listStrikePrice)->
    #listStrikePrice{};
getRecord(xMLnonFIX)->
    #xMLnonFIX{};
getRecord(registrationInstructions)->
    #registrationInstructions{};
getRecord(registrationInstructionsResponse)->
    #registrationInstructionsResponse{};
getRecord(orderMassCancelRequest)->
    #orderMassCancelRequest{};
getRecord(orderMassCancelReport)->
    #orderMassCancelReport{};
getRecord(newOrderCross)->
    #newOrderCross{};
getRecord(crossOrderCancelReplaceRequest)->
    #crossOrderCancelReplaceRequest{};
getRecord(crossOrderCancelRequest)->
    #crossOrderCancelRequest{};
getRecord(securityTypeRequest)->
    #securityTypeRequest{};
getRecord(securityTypes)->
    #securityTypes{};
getRecord(securityListRequest)->
    #securityListRequest{};
getRecord(securityList)->
    #securityList{};
getRecord(derivativeSecurityListRequest)->
    #derivativeSecurityListRequest{};
getRecord(derivativeSecurityList)->
    #derivativeSecurityList{};
getRecord(newOrderMultileg)->
    #newOrderMultileg{};
getRecord(multilegOrderCancelReplace)->
    #multilegOrderCancelReplace{};
getRecord(tradeCaptureReportRequest)->
    #tradeCaptureReportRequest{};
getRecord(tradeCaptureReport)->
    #tradeCaptureReport{};
getRecord(orderMassStatusRequest)->
    #orderMassStatusRequest{};
getRecord(quoteRequestReject)->
    #quoteRequestReject{};
getRecord(rFQRequest)->
    #rFQRequest{};
getRecord(quoteStatusReport)->
    #quoteStatusReport{};
getRecord(quoteResponse)->
    #quoteResponse{};
getRecord(confirmation)->
    #confirmation{};
getRecord(positionMaintenanceRequest)->
    #positionMaintenanceRequest{};
getRecord(positionMaintenanceReport)->
    #positionMaintenanceReport{};
getRecord(requestForPositions)->
    #requestForPositions{};
getRecord(requestForPositionsAck)->
    #requestForPositionsAck{};
getRecord(positionReport)->
    #positionReport{};
getRecord(tradeCaptureReportRequestAck)->
    #tradeCaptureReportRequestAck{};
getRecord(tradeCaptureReportAck)->
    #tradeCaptureReportAck{};
getRecord(allocationReport)->
    #allocationReport{};
getRecord(allocationReportAck)->
    #allocationReportAck{};
getRecord(confirmationAck)->
    #confirmationAck{};
getRecord(settlementInstructionRequest)->
    #settlementInstructionRequest{};
getRecord(assignmentReport)->
    #assignmentReport{};
getRecord(collateralRequest)->
    #collateralRequest{};
getRecord(collateralAssignment)->
    #collateralAssignment{};
getRecord(collateralResponse)->
    #collateralResponse{};
getRecord(collateralReport)->
    #collateralReport{};
getRecord(collateralInquiry)->
    #collateralInquiry{};
getRecord(networkCounterpartySystemStatusRequest)->
    #networkCounterpartySystemStatusRequest{};
getRecord(networkCounterpartySystemStatusResponse)->
    #networkCounterpartySystemStatusResponse{};
getRecord(userRequest)->
    #userRequest{};
getRecord(userResponse)->
    #userResponse{};
getRecord(collateralInquiryAck)->
    #collateralInquiryAck{};
getRecord(confirmationRequest)->
    #confirmationRequest{}.
setFieldInRecord(commissionData, commission, Record, Value)->
   erlang:setelement(#commissionData.commission, Record, Value);
setFieldInRecord(commissionData, commType, Record, Value)->
   erlang:setelement(#commissionData.commType, Record, Value);
setFieldInRecord(commissionData, commCurrency, Record, Value)->
   erlang:setelement(#commissionData.commCurrency, Record, Value);
setFieldInRecord(commissionData, fundRenewWaiv, Record, Value)->
   erlang:setelement(#commissionData.fundRenewWaiv, Record, Value);
setFieldInRecord(discretionInstructions, discretionInst, Record, Value)->
   erlang:setelement(#discretionInstructions.discretionInst, Record, Value);
setFieldInRecord(discretionInstructions, discretionOffsetValue, Record, Value)->
   erlang:setelement(#discretionInstructions.discretionOffsetValue, Record, Value);
setFieldInRecord(discretionInstructions, discretionMoveType, Record, Value)->
   erlang:setelement(#discretionInstructions.discretionMoveType, Record, Value);
setFieldInRecord(discretionInstructions, discretionOffsetType, Record, Value)->
   erlang:setelement(#discretionInstructions.discretionOffsetType, Record, Value);
setFieldInRecord(discretionInstructions, discretionLimitType, Record, Value)->
   erlang:setelement(#discretionInstructions.discretionLimitType, Record, Value);
setFieldInRecord(discretionInstructions, discretionRoundDirection, Record, Value)->
   erlang:setelement(#discretionInstructions.discretionRoundDirection, Record, Value);
setFieldInRecord(discretionInstructions, discretionScope, Record, Value)->
   erlang:setelement(#discretionInstructions.discretionScope, Record, Value);
setFieldInRecord(financingDetails, agreementDesc, Record, Value)->
   erlang:setelement(#financingDetails.agreementDesc, Record, Value);
setFieldInRecord(financingDetails, agreementID, Record, Value)->
   erlang:setelement(#financingDetails.agreementID, Record, Value);
setFieldInRecord(financingDetails, agreementDate, Record, Value)->
   erlang:setelement(#financingDetails.agreementDate, Record, Value);
setFieldInRecord(financingDetails, agreementCurrency, Record, Value)->
   erlang:setelement(#financingDetails.agreementCurrency, Record, Value);
setFieldInRecord(financingDetails, terminationType, Record, Value)->
   erlang:setelement(#financingDetails.terminationType, Record, Value);
setFieldInRecord(financingDetails, startDate, Record, Value)->
   erlang:setelement(#financingDetails.startDate, Record, Value);
setFieldInRecord(financingDetails, endDate, Record, Value)->
   erlang:setelement(#financingDetails.endDate, Record, Value);
setFieldInRecord(financingDetails, deliveryType, Record, Value)->
   erlang:setelement(#financingDetails.deliveryType, Record, Value);
setFieldInRecord(financingDetails, marginRatio, Record, Value)->
   erlang:setelement(#financingDetails.marginRatio, Record, Value);
setFieldInRecord(instrument, symbol, Record, Value)->
   erlang:setelement(#instrument.symbol, Record, Value);
setFieldInRecord(instrument, symbolSfx, Record, Value)->
   erlang:setelement(#instrument.symbolSfx, Record, Value);
setFieldInRecord(instrument, securityID, Record, Value)->
   erlang:setelement(#instrument.securityID, Record, Value);
setFieldInRecord(instrument, securityIDSource, Record, Value)->
   erlang:setelement(#instrument.securityIDSource, Record, Value);
setFieldInRecord(instrument, secAltIDGrp, Record, Value)->
   erlang:setelement(#instrument.secAltIDGrp, Record, Value);
setFieldInRecord(instrument, produkt, Record, Value)->
   erlang:setelement(#instrument.produkt, Record, Value);
setFieldInRecord(instrument, cFICode, Record, Value)->
   erlang:setelement(#instrument.cFICode, Record, Value);
setFieldInRecord(instrument, securityType, Record, Value)->
   erlang:setelement(#instrument.securityType, Record, Value);
setFieldInRecord(instrument, securitySubType, Record, Value)->
   erlang:setelement(#instrument.securitySubType, Record, Value);
setFieldInRecord(instrument, maturityMonthYear, Record, Value)->
   erlang:setelement(#instrument.maturityMonthYear, Record, Value);
setFieldInRecord(instrument, maturityDate, Record, Value)->
   erlang:setelement(#instrument.maturityDate, Record, Value);
setFieldInRecord(instrument, putOrCall, Record, Value)->
   erlang:setelement(#instrument.putOrCall, Record, Value);
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
setFieldInRecord(instrument, strikeCurrency, Record, Value)->
   erlang:setelement(#instrument.strikeCurrency, Record, Value);
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
setFieldInRecord(instrument, pool, Record, Value)->
   erlang:setelement(#instrument.pool, Record, Value);
setFieldInRecord(instrument, contractSettlMonth, Record, Value)->
   erlang:setelement(#instrument.contractSettlMonth, Record, Value);
setFieldInRecord(instrument, cPProgram, Record, Value)->
   erlang:setelement(#instrument.cPProgram, Record, Value);
setFieldInRecord(instrument, cPRegType, Record, Value)->
   erlang:setelement(#instrument.cPRegType, Record, Value);
setFieldInRecord(instrument, evntGrp, Record, Value)->
   erlang:setelement(#instrument.evntGrp, Record, Value);
setFieldInRecord(instrument, datedDate, Record, Value)->
   erlang:setelement(#instrument.datedDate, Record, Value);
setFieldInRecord(instrument, interestAccrualDate, Record, Value)->
   erlang:setelement(#instrument.interestAccrualDate, Record, Value);
setFieldInRecord(instrumentExtension, deliveryForm, Record, Value)->
   erlang:setelement(#instrumentExtension.deliveryForm, Record, Value);
setFieldInRecord(instrumentExtension, pctAtRisk, Record, Value)->
   erlang:setelement(#instrumentExtension.pctAtRisk, Record, Value);
setFieldInRecord(instrumentExtension, attrbGrp, Record, Value)->
   erlang:setelement(#instrumentExtension.attrbGrp, Record, Value);
setFieldInRecord(instrumentLeg, legSymbol, Record, Value)->
   erlang:setelement(#instrumentLeg.legSymbol, Record, Value);
setFieldInRecord(instrumentLeg, legSymbolSfx, Record, Value)->
   erlang:setelement(#instrumentLeg.legSymbolSfx, Record, Value);
setFieldInRecord(instrumentLeg, legSecurityID, Record, Value)->
   erlang:setelement(#instrumentLeg.legSecurityID, Record, Value);
setFieldInRecord(instrumentLeg, legSecurityIDSource, Record, Value)->
   erlang:setelement(#instrumentLeg.legSecurityIDSource, Record, Value);
setFieldInRecord(instrumentLeg, legSecAltIDGrp, Record, Value)->
   erlang:setelement(#instrumentLeg.legSecAltIDGrp, Record, Value);
setFieldInRecord(instrumentLeg, legProduct, Record, Value)->
   erlang:setelement(#instrumentLeg.legProduct, Record, Value);
setFieldInRecord(instrumentLeg, legCFICode, Record, Value)->
   erlang:setelement(#instrumentLeg.legCFICode, Record, Value);
setFieldInRecord(instrumentLeg, legSecurityType, Record, Value)->
   erlang:setelement(#instrumentLeg.legSecurityType, Record, Value);
setFieldInRecord(instrumentLeg, legSecuritySubType, Record, Value)->
   erlang:setelement(#instrumentLeg.legSecuritySubType, Record, Value);
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
setFieldInRecord(instrumentLeg, legStrikeCurrency, Record, Value)->
   erlang:setelement(#instrumentLeg.legStrikeCurrency, Record, Value);
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
setFieldInRecord(instrumentLeg, legCurrency, Record, Value)->
   erlang:setelement(#instrumentLeg.legCurrency, Record, Value);
setFieldInRecord(instrumentLeg, legPool, Record, Value)->
   erlang:setelement(#instrumentLeg.legPool, Record, Value);
setFieldInRecord(instrumentLeg, legDatedDate, Record, Value)->
   erlang:setelement(#instrumentLeg.legDatedDate, Record, Value);
setFieldInRecord(instrumentLeg, legContractSettlMonth, Record, Value)->
   erlang:setelement(#instrumentLeg.legContractSettlMonth, Record, Value);
setFieldInRecord(instrumentLeg, legInterestAccrualDate, Record, Value)->
   erlang:setelement(#instrumentLeg.legInterestAccrualDate, Record, Value);
setFieldInRecord(legBenchmarkCurveData, legBenchmarkCurveCurrency, Record, Value)->
   erlang:setelement(#legBenchmarkCurveData.legBenchmarkCurveCurrency, Record, Value);
setFieldInRecord(legBenchmarkCurveData, legBenchmarkCurveName, Record, Value)->
   erlang:setelement(#legBenchmarkCurveData.legBenchmarkCurveName, Record, Value);
setFieldInRecord(legBenchmarkCurveData, legBenchmarkCurvePoint, Record, Value)->
   erlang:setelement(#legBenchmarkCurveData.legBenchmarkCurvePoint, Record, Value);
setFieldInRecord(legBenchmarkCurveData, legBenchmarkPrice, Record, Value)->
   erlang:setelement(#legBenchmarkCurveData.legBenchmarkPrice, Record, Value);
setFieldInRecord(legBenchmarkCurveData, legBenchmarkPriceType, Record, Value)->
   erlang:setelement(#legBenchmarkCurveData.legBenchmarkPriceType, Record, Value);
setFieldInRecord(legStipulations, rgr_legStipulations_683, Record, Value)->
   erlang:setelement(#legStipulations.rgr_legStipulations_683, Record, Value);
setFieldInRecord(rgr_legStipulations_683, legStipulationType, Record, Value)->
   erlang:setelement(#rgr_legStipulations_683.legStipulationType, Record, Value);
setFieldInRecord(rgr_legStipulations_683, legStipulationValue, Record, Value)->
   erlang:setelement(#rgr_legStipulations_683.legStipulationValue, Record, Value);
setFieldInRecord(nestedParties, rgr_nestedParties_539, Record, Value)->
   erlang:setelement(#nestedParties.rgr_nestedParties_539, Record, Value);
setFieldInRecord(rgr_nestedParties_539, nestedPartyID, Record, Value)->
   erlang:setelement(#rgr_nestedParties_539.nestedPartyID, Record, Value);
setFieldInRecord(rgr_nestedParties_539, nestedPartyIDSource, Record, Value)->
   erlang:setelement(#rgr_nestedParties_539.nestedPartyIDSource, Record, Value);
setFieldInRecord(rgr_nestedParties_539, nestedPartyRole, Record, Value)->
   erlang:setelement(#rgr_nestedParties_539.nestedPartyRole, Record, Value);
setFieldInRecord(rgr_nestedParties_539, nstdPtysSubGrp, Record, Value)->
   erlang:setelement(#rgr_nestedParties_539.nstdPtysSubGrp, Record, Value);
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
setFieldInRecord(rgr_parties_453, ptysSubGrp, Record, Value)->
   erlang:setelement(#rgr_parties_453.ptysSubGrp, Record, Value);
setFieldInRecord(pegInstructions, pegOffsetValue, Record, Value)->
   erlang:setelement(#pegInstructions.pegOffsetValue, Record, Value);
setFieldInRecord(pegInstructions, pegMoveType, Record, Value)->
   erlang:setelement(#pegInstructions.pegMoveType, Record, Value);
setFieldInRecord(pegInstructions, pegOffsetType, Record, Value)->
   erlang:setelement(#pegInstructions.pegOffsetType, Record, Value);
setFieldInRecord(pegInstructions, pegLimitType, Record, Value)->
   erlang:setelement(#pegInstructions.pegLimitType, Record, Value);
setFieldInRecord(pegInstructions, pegRoundDirection, Record, Value)->
   erlang:setelement(#pegInstructions.pegRoundDirection, Record, Value);
setFieldInRecord(pegInstructions, pegScope, Record, Value)->
   erlang:setelement(#pegInstructions.pegScope, Record, Value);
setFieldInRecord(positionAmountData, rgr_positionAmountData_753, Record, Value)->
   erlang:setelement(#positionAmountData.rgr_positionAmountData_753, Record, Value);
setFieldInRecord(rgr_positionAmountData_753, posAmtType, Record, Value)->
   erlang:setelement(#rgr_positionAmountData_753.posAmtType, Record, Value);
setFieldInRecord(rgr_positionAmountData_753, posAmt, Record, Value)->
   erlang:setelement(#rgr_positionAmountData_753.posAmt, Record, Value);
setFieldInRecord(positionQty, rgr_positionQty_702, Record, Value)->
   erlang:setelement(#positionQty.rgr_positionQty_702, Record, Value);
setFieldInRecord(rgr_positionQty_702, posType, Record, Value)->
   erlang:setelement(#rgr_positionQty_702.posType, Record, Value);
setFieldInRecord(rgr_positionQty_702, longQty, Record, Value)->
   erlang:setelement(#rgr_positionQty_702.longQty, Record, Value);
setFieldInRecord(rgr_positionQty_702, shortQty, Record, Value)->
   erlang:setelement(#rgr_positionQty_702.shortQty, Record, Value);
setFieldInRecord(rgr_positionQty_702, posQtyStatus, Record, Value)->
   erlang:setelement(#rgr_positionQty_702.posQtyStatus, Record, Value);
setFieldInRecord(rgr_positionQty_702, nestedParties, Record, Value)->
   erlang:setelement(#rgr_positionQty_702.nestedParties, Record, Value);
setFieldInRecord(settlInstructionsData, settlDeliveryType, Record, Value)->
   erlang:setelement(#settlInstructionsData.settlDeliveryType, Record, Value);
setFieldInRecord(settlInstructionsData, standInstDbType, Record, Value)->
   erlang:setelement(#settlInstructionsData.standInstDbType, Record, Value);
setFieldInRecord(settlInstructionsData, standInstDbName, Record, Value)->
   erlang:setelement(#settlInstructionsData.standInstDbName, Record, Value);
setFieldInRecord(settlInstructionsData, standInstDbID, Record, Value)->
   erlang:setelement(#settlInstructionsData.standInstDbID, Record, Value);
setFieldInRecord(settlInstructionsData, dlvyInstGrp, Record, Value)->
   erlang:setelement(#settlInstructionsData.dlvyInstGrp, Record, Value);
setFieldInRecord(settlParties, rgr_settlParties_781, Record, Value)->
   erlang:setelement(#settlParties.rgr_settlParties_781, Record, Value);
setFieldInRecord(rgr_settlParties_781, settlPartyID, Record, Value)->
   erlang:setelement(#rgr_settlParties_781.settlPartyID, Record, Value);
setFieldInRecord(rgr_settlParties_781, settlPartyIDSource, Record, Value)->
   erlang:setelement(#rgr_settlParties_781.settlPartyIDSource, Record, Value);
setFieldInRecord(rgr_settlParties_781, settlPartyRole, Record, Value)->
   erlang:setelement(#rgr_settlParties_781.settlPartyRole, Record, Value);
setFieldInRecord(rgr_settlParties_781, settlPtysSubGrp, Record, Value)->
   erlang:setelement(#rgr_settlParties_781.settlPtysSubGrp, Record, Value);
setFieldInRecord(spreadOrBenchmarkCurveData, spread, Record, Value)->
   erlang:setelement(#spreadOrBenchmarkCurveData.spread, Record, Value);
setFieldInRecord(spreadOrBenchmarkCurveData, benchmarkCurveCurrency, Record, Value)->
   erlang:setelement(#spreadOrBenchmarkCurveData.benchmarkCurveCurrency, Record, Value);
setFieldInRecord(spreadOrBenchmarkCurveData, benchmarkCurveName, Record, Value)->
   erlang:setelement(#spreadOrBenchmarkCurveData.benchmarkCurveName, Record, Value);
setFieldInRecord(spreadOrBenchmarkCurveData, benchmarkCurvePoint, Record, Value)->
   erlang:setelement(#spreadOrBenchmarkCurveData.benchmarkCurvePoint, Record, Value);
setFieldInRecord(spreadOrBenchmarkCurveData, benchmarkPrice, Record, Value)->
   erlang:setelement(#spreadOrBenchmarkCurveData.benchmarkPrice, Record, Value);
setFieldInRecord(spreadOrBenchmarkCurveData, benchmarkPriceType, Record, Value)->
   erlang:setelement(#spreadOrBenchmarkCurveData.benchmarkPriceType, Record, Value);
setFieldInRecord(spreadOrBenchmarkCurveData, benchmarkSecurityID, Record, Value)->
   erlang:setelement(#spreadOrBenchmarkCurveData.benchmarkSecurityID, Record, Value);
setFieldInRecord(spreadOrBenchmarkCurveData, benchmarkSecurityIDSource, Record, Value)->
   erlang:setelement(#spreadOrBenchmarkCurveData.benchmarkSecurityIDSource, Record, Value);
setFieldInRecord(stipulations, rgr_stipulations_232, Record, Value)->
   erlang:setelement(#stipulations.rgr_stipulations_232, Record, Value);
setFieldInRecord(rgr_stipulations_232, stipulationType, Record, Value)->
   erlang:setelement(#rgr_stipulations_232.stipulationType, Record, Value);
setFieldInRecord(rgr_stipulations_232, stipulationValue, Record, Value)->
   erlang:setelement(#rgr_stipulations_232.stipulationValue, Record, Value);
setFieldInRecord(trdRegTimestamps, rgr_trdRegTimestamps_768, Record, Value)->
   erlang:setelement(#trdRegTimestamps.rgr_trdRegTimestamps_768, Record, Value);
setFieldInRecord(rgr_trdRegTimestamps_768, trdRegTimestamp, Record, Value)->
   erlang:setelement(#rgr_trdRegTimestamps_768.trdRegTimestamp, Record, Value);
setFieldInRecord(rgr_trdRegTimestamps_768, trdRegTimestampType, Record, Value)->
   erlang:setelement(#rgr_trdRegTimestamps_768.trdRegTimestampType, Record, Value);
setFieldInRecord(rgr_trdRegTimestamps_768, trdRegTimestampOrigin, Record, Value)->
   erlang:setelement(#rgr_trdRegTimestamps_768.trdRegTimestampOrigin, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingSymbol, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingSymbol, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingSymbolSfx, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingSymbolSfx, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingSecurityID, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingSecurityID, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingSecurityIDSource, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingSecurityIDSource, Record, Value);
setFieldInRecord(underlyingInstrument, undSecAltIDGrp, Record, Value)->
   erlang:setelement(#underlyingInstrument.undSecAltIDGrp, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingProduct, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingProduct, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingCFICode, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingCFICode, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingSecurityType, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingSecurityType, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingSecuritySubType, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingSecuritySubType, Record, Value);
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
setFieldInRecord(underlyingInstrument, underlyingStrikeCurrency, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingStrikeCurrency, Record, Value);
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
setFieldInRecord(underlyingInstrument, underlyingCPProgram, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingCPProgram, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingCPRegType, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingCPRegType, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingCurrency, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingCurrency, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingQty, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingQty, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingPx, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingPx, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingDirtyPrice, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingDirtyPrice, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingEndPrice, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingEndPrice, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingStartValue, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingStartValue, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingCurrentValue, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingCurrentValue, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingEndValue, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingEndValue, Record, Value);
setFieldInRecord(underlyingInstrument, underlyingStipulations, Record, Value)->
   erlang:setelement(#underlyingInstrument.underlyingStipulations, Record, Value);
setFieldInRecord(yieldData, yieldType, Record, Value)->
   erlang:setelement(#yieldData.yieldType, Record, Value);
setFieldInRecord(yieldData, yield, Record, Value)->
   erlang:setelement(#yieldData.yield, Record, Value);
setFieldInRecord(yieldData, yieldCalcDate, Record, Value)->
   erlang:setelement(#yieldData.yieldCalcDate, Record, Value);
setFieldInRecord(yieldData, yieldRedemptionDate, Record, Value)->
   erlang:setelement(#yieldData.yieldRedemptionDate, Record, Value);
setFieldInRecord(yieldData, yieldRedemptionPrice, Record, Value)->
   erlang:setelement(#yieldData.yieldRedemptionPrice, Record, Value);
setFieldInRecord(yieldData, yieldRedemptionPriceType, Record, Value)->
   erlang:setelement(#yieldData.yieldRedemptionPriceType, Record, Value);
setFieldInRecord(underlyingStipulations, rgr_underlyingStipulations_887, Record, Value)->
   erlang:setelement(#underlyingStipulations.rgr_underlyingStipulations_887, Record, Value);
setFieldInRecord(rgr_underlyingStipulations_887, underlyingStipType, Record, Value)->
   erlang:setelement(#rgr_underlyingStipulations_887.underlyingStipType, Record, Value);
setFieldInRecord(rgr_underlyingStipulations_887, underlyingStipValue, Record, Value)->
   erlang:setelement(#rgr_underlyingStipulations_887.underlyingStipValue, Record, Value);
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
setFieldInRecord(standardHeader, hop, Record, Value)->
   erlang:setelement(#standardHeader.hop, Record, Value);
setFieldInRecord(standardTrailer, signatureLength, Record, Value)->
   erlang:setelement(#standardTrailer.signatureLength, Record, Value);
setFieldInRecord(standardTrailer, signature, Record, Value)->
   erlang:setelement(#standardTrailer.signature, Record, Value);
setFieldInRecord(standardTrailer, checkSum, Record, Value)->
   erlang:setelement(#standardTrailer.checkSum, Record, Value);
setFieldInRecord(nestedParties2, rgr_nestedParties2_756, Record, Value)->
   erlang:setelement(#nestedParties2.rgr_nestedParties2_756, Record, Value);
setFieldInRecord(rgr_nestedParties2_756, nested2PartyID, Record, Value)->
   erlang:setelement(#rgr_nestedParties2_756.nested2PartyID, Record, Value);
setFieldInRecord(rgr_nestedParties2_756, nested2PartyIDSource, Record, Value)->
   erlang:setelement(#rgr_nestedParties2_756.nested2PartyIDSource, Record, Value);
setFieldInRecord(rgr_nestedParties2_756, nested2PartyRole, Record, Value)->
   erlang:setelement(#rgr_nestedParties2_756.nested2PartyRole, Record, Value);
setFieldInRecord(rgr_nestedParties2_756, nstdPtys2SubGrp, Record, Value)->
   erlang:setelement(#rgr_nestedParties2_756.nstdPtys2SubGrp, Record, Value);
setFieldInRecord(nestedParties3, rgr_nestedParties3_948, Record, Value)->
   erlang:setelement(#nestedParties3.rgr_nestedParties3_948, Record, Value);
setFieldInRecord(rgr_nestedParties3_948, nested3PartyID, Record, Value)->
   erlang:setelement(#rgr_nestedParties3_948.nested3PartyID, Record, Value);
setFieldInRecord(rgr_nestedParties3_948, nested3PartyIDSource, Record, Value)->
   erlang:setelement(#rgr_nestedParties3_948.nested3PartyIDSource, Record, Value);
setFieldInRecord(rgr_nestedParties3_948, nested3PartyRole, Record, Value)->
   erlang:setelement(#rgr_nestedParties3_948.nested3PartyRole, Record, Value);
setFieldInRecord(rgr_nestedParties3_948, nstdPtys3SubGrp, Record, Value)->
   erlang:setelement(#rgr_nestedParties3_948.nstdPtys3SubGrp, Record, Value);
setFieldInRecord(affectedOrdGrp, rgr_affectedOrdGrp_534, Record, Value)->
   erlang:setelement(#affectedOrdGrp.rgr_affectedOrdGrp_534, Record, Value);
setFieldInRecord(rgr_affectedOrdGrp_534, origClOrdID, Record, Value)->
   erlang:setelement(#rgr_affectedOrdGrp_534.origClOrdID, Record, Value);
setFieldInRecord(rgr_affectedOrdGrp_534, affectedOrderID, Record, Value)->
   erlang:setelement(#rgr_affectedOrdGrp_534.affectedOrderID, Record, Value);
setFieldInRecord(rgr_affectedOrdGrp_534, affectedSecondaryOrderID, Record, Value)->
   erlang:setelement(#rgr_affectedOrdGrp_534.affectedSecondaryOrderID, Record, Value);
setFieldInRecord(allocAckGrp, rgr_allocAckGrp_78, Record, Value)->
   erlang:setelement(#allocAckGrp.rgr_allocAckGrp_78, Record, Value);
setFieldInRecord(rgr_allocAckGrp_78, allocAccount, Record, Value)->
   erlang:setelement(#rgr_allocAckGrp_78.allocAccount, Record, Value);
setFieldInRecord(rgr_allocAckGrp_78, allocAcctIDSource, Record, Value)->
   erlang:setelement(#rgr_allocAckGrp_78.allocAcctIDSource, Record, Value);
setFieldInRecord(rgr_allocAckGrp_78, allocPrice, Record, Value)->
   erlang:setelement(#rgr_allocAckGrp_78.allocPrice, Record, Value);
setFieldInRecord(rgr_allocAckGrp_78, individualAllocID, Record, Value)->
   erlang:setelement(#rgr_allocAckGrp_78.individualAllocID, Record, Value);
setFieldInRecord(rgr_allocAckGrp_78, individualAllocRejCode, Record, Value)->
   erlang:setelement(#rgr_allocAckGrp_78.individualAllocRejCode, Record, Value);
setFieldInRecord(rgr_allocAckGrp_78, allocText, Record, Value)->
   erlang:setelement(#rgr_allocAckGrp_78.allocText, Record, Value);
setFieldInRecord(rgr_allocAckGrp_78, encodedAllocTextLen, Record, Value)->
   erlang:setelement(#rgr_allocAckGrp_78.encodedAllocTextLen, Record, Value);
setFieldInRecord(rgr_allocAckGrp_78, encodedAllocText, Record, Value)->
   erlang:setelement(#rgr_allocAckGrp_78.encodedAllocText, Record, Value);
setFieldInRecord(allocGrp, rgr_allocGrp_78, Record, Value)->
   erlang:setelement(#allocGrp.rgr_allocGrp_78, Record, Value);
setFieldInRecord(rgr_allocGrp_78, allocAccount, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.allocAccount, Record, Value);
setFieldInRecord(rgr_allocGrp_78, allocAcctIDSource, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.allocAcctIDSource, Record, Value);
setFieldInRecord(rgr_allocGrp_78, matchStatus, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.matchStatus, Record, Value);
setFieldInRecord(rgr_allocGrp_78, allocPrice, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.allocPrice, Record, Value);
setFieldInRecord(rgr_allocGrp_78, allocQty, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.allocQty, Record, Value);
setFieldInRecord(rgr_allocGrp_78, individualAllocID, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.individualAllocID, Record, Value);
setFieldInRecord(rgr_allocGrp_78, processCode, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.processCode, Record, Value);
setFieldInRecord(rgr_allocGrp_78, nestedParties, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.nestedParties, Record, Value);
setFieldInRecord(rgr_allocGrp_78, notifyBrokerOfCredit, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.notifyBrokerOfCredit, Record, Value);
setFieldInRecord(rgr_allocGrp_78, allocHandlInst, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.allocHandlInst, Record, Value);
setFieldInRecord(rgr_allocGrp_78, allocText, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.allocText, Record, Value);
setFieldInRecord(rgr_allocGrp_78, encodedAllocTextLen, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.encodedAllocTextLen, Record, Value);
setFieldInRecord(rgr_allocGrp_78, encodedAllocText, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.encodedAllocText, Record, Value);
setFieldInRecord(rgr_allocGrp_78, commissionData, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.commissionData, Record, Value);
setFieldInRecord(rgr_allocGrp_78, allocAvgPx, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.allocAvgPx, Record, Value);
setFieldInRecord(rgr_allocGrp_78, allocNetMoney, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.allocNetMoney, Record, Value);
setFieldInRecord(rgr_allocGrp_78, settlCurrAmt, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.settlCurrAmt, Record, Value);
setFieldInRecord(rgr_allocGrp_78, allocSettlCurrAmt, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.allocSettlCurrAmt, Record, Value);
setFieldInRecord(rgr_allocGrp_78, settlCurrency, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.settlCurrency, Record, Value);
setFieldInRecord(rgr_allocGrp_78, allocSettlCurrency, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.allocSettlCurrency, Record, Value);
setFieldInRecord(rgr_allocGrp_78, settlCurrFxRate, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.settlCurrFxRate, Record, Value);
setFieldInRecord(rgr_allocGrp_78, settlCurrFxRateCalc, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.settlCurrFxRateCalc, Record, Value);
setFieldInRecord(rgr_allocGrp_78, allocAccruedInterestAmt, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.allocAccruedInterestAmt, Record, Value);
setFieldInRecord(rgr_allocGrp_78, allocInterestAtMaturity, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.allocInterestAtMaturity, Record, Value);
setFieldInRecord(rgr_allocGrp_78, miscFeesGrp, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.miscFeesGrp, Record, Value);
setFieldInRecord(rgr_allocGrp_78, clrInstGrp, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.clrInstGrp, Record, Value);
setFieldInRecord(rgr_allocGrp_78, allocSettlInstType, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.allocSettlInstType, Record, Value);
setFieldInRecord(rgr_allocGrp_78, settlInstructionsData, Record, Value)->
   erlang:setelement(#rgr_allocGrp_78.settlInstructionsData, Record, Value);
setFieldInRecord(bidCompReqGrp, rgr_bidCompReqGrp_420, Record, Value)->
   erlang:setelement(#bidCompReqGrp.rgr_bidCompReqGrp_420, Record, Value);
setFieldInRecord(rgr_bidCompReqGrp_420, listID, Record, Value)->
   erlang:setelement(#rgr_bidCompReqGrp_420.listID, Record, Value);
setFieldInRecord(rgr_bidCompReqGrp_420, side, Record, Value)->
   erlang:setelement(#rgr_bidCompReqGrp_420.side, Record, Value);
setFieldInRecord(rgr_bidCompReqGrp_420, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_bidCompReqGrp_420.tradingSessionID, Record, Value);
setFieldInRecord(rgr_bidCompReqGrp_420, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_bidCompReqGrp_420.tradingSessionSubID, Record, Value);
setFieldInRecord(rgr_bidCompReqGrp_420, netGrossInd, Record, Value)->
   erlang:setelement(#rgr_bidCompReqGrp_420.netGrossInd, Record, Value);
setFieldInRecord(rgr_bidCompReqGrp_420, settlType, Record, Value)->
   erlang:setelement(#rgr_bidCompReqGrp_420.settlType, Record, Value);
setFieldInRecord(rgr_bidCompReqGrp_420, settlDate, Record, Value)->
   erlang:setelement(#rgr_bidCompReqGrp_420.settlDate, Record, Value);
setFieldInRecord(rgr_bidCompReqGrp_420, account, Record, Value)->
   erlang:setelement(#rgr_bidCompReqGrp_420.account, Record, Value);
setFieldInRecord(rgr_bidCompReqGrp_420, acctIDSource, Record, Value)->
   erlang:setelement(#rgr_bidCompReqGrp_420.acctIDSource, Record, Value);
setFieldInRecord(bidCompRspGrp, rgr_bidCompRspGrp_420, Record, Value)->
   erlang:setelement(#bidCompRspGrp.rgr_bidCompRspGrp_420, Record, Value);
setFieldInRecord(rgr_bidCompRspGrp_420, commissionData, Record, Value)->
   erlang:setelement(#rgr_bidCompRspGrp_420.commissionData, Record, Value);
setFieldInRecord(rgr_bidCompRspGrp_420, listID, Record, Value)->
   erlang:setelement(#rgr_bidCompRspGrp_420.listID, Record, Value);
setFieldInRecord(rgr_bidCompRspGrp_420, country, Record, Value)->
   erlang:setelement(#rgr_bidCompRspGrp_420.country, Record, Value);
setFieldInRecord(rgr_bidCompRspGrp_420, side, Record, Value)->
   erlang:setelement(#rgr_bidCompRspGrp_420.side, Record, Value);
setFieldInRecord(rgr_bidCompRspGrp_420, price, Record, Value)->
   erlang:setelement(#rgr_bidCompRspGrp_420.price, Record, Value);
setFieldInRecord(rgr_bidCompRspGrp_420, priceType, Record, Value)->
   erlang:setelement(#rgr_bidCompRspGrp_420.priceType, Record, Value);
setFieldInRecord(rgr_bidCompRspGrp_420, fairValue, Record, Value)->
   erlang:setelement(#rgr_bidCompRspGrp_420.fairValue, Record, Value);
setFieldInRecord(rgr_bidCompRspGrp_420, netGrossInd, Record, Value)->
   erlang:setelement(#rgr_bidCompRspGrp_420.netGrossInd, Record, Value);
setFieldInRecord(rgr_bidCompRspGrp_420, settlType, Record, Value)->
   erlang:setelement(#rgr_bidCompRspGrp_420.settlType, Record, Value);
setFieldInRecord(rgr_bidCompRspGrp_420, settlDate, Record, Value)->
   erlang:setelement(#rgr_bidCompRspGrp_420.settlDate, Record, Value);
setFieldInRecord(rgr_bidCompRspGrp_420, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_bidCompRspGrp_420.tradingSessionID, Record, Value);
setFieldInRecord(rgr_bidCompRspGrp_420, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_bidCompRspGrp_420.tradingSessionSubID, Record, Value);
setFieldInRecord(rgr_bidCompRspGrp_420, text, Record, Value)->
   erlang:setelement(#rgr_bidCompRspGrp_420.text, Record, Value);
setFieldInRecord(rgr_bidCompRspGrp_420, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_bidCompRspGrp_420.encodedTextLen, Record, Value);
setFieldInRecord(rgr_bidCompRspGrp_420, encodedText, Record, Value)->
   erlang:setelement(#rgr_bidCompRspGrp_420.encodedText, Record, Value);
setFieldInRecord(bidDescReqGrp, rgr_bidDescReqGrp_398, Record, Value)->
   erlang:setelement(#bidDescReqGrp.rgr_bidDescReqGrp_398, Record, Value);
setFieldInRecord(rgr_bidDescReqGrp_398, bidDescriptorType, Record, Value)->
   erlang:setelement(#rgr_bidDescReqGrp_398.bidDescriptorType, Record, Value);
setFieldInRecord(rgr_bidDescReqGrp_398, bidDescriptor, Record, Value)->
   erlang:setelement(#rgr_bidDescReqGrp_398.bidDescriptor, Record, Value);
setFieldInRecord(rgr_bidDescReqGrp_398, sideValueInd, Record, Value)->
   erlang:setelement(#rgr_bidDescReqGrp_398.sideValueInd, Record, Value);
setFieldInRecord(rgr_bidDescReqGrp_398, liquidityValue, Record, Value)->
   erlang:setelement(#rgr_bidDescReqGrp_398.liquidityValue, Record, Value);
setFieldInRecord(rgr_bidDescReqGrp_398, liquidityNumSecurities, Record, Value)->
   erlang:setelement(#rgr_bidDescReqGrp_398.liquidityNumSecurities, Record, Value);
setFieldInRecord(rgr_bidDescReqGrp_398, liquidityPctLow, Record, Value)->
   erlang:setelement(#rgr_bidDescReqGrp_398.liquidityPctLow, Record, Value);
setFieldInRecord(rgr_bidDescReqGrp_398, liquidityPctHigh, Record, Value)->
   erlang:setelement(#rgr_bidDescReqGrp_398.liquidityPctHigh, Record, Value);
setFieldInRecord(rgr_bidDescReqGrp_398, eFPTrackingError, Record, Value)->
   erlang:setelement(#rgr_bidDescReqGrp_398.eFPTrackingError, Record, Value);
setFieldInRecord(rgr_bidDescReqGrp_398, fairValue, Record, Value)->
   erlang:setelement(#rgr_bidDescReqGrp_398.fairValue, Record, Value);
setFieldInRecord(rgr_bidDescReqGrp_398, outsideIndexPct, Record, Value)->
   erlang:setelement(#rgr_bidDescReqGrp_398.outsideIndexPct, Record, Value);
setFieldInRecord(rgr_bidDescReqGrp_398, valueOfFutures, Record, Value)->
   erlang:setelement(#rgr_bidDescReqGrp_398.valueOfFutures, Record, Value);
setFieldInRecord(clrInstGrp, rgr_clrInstGrp_576, Record, Value)->
   erlang:setelement(#clrInstGrp.rgr_clrInstGrp_576, Record, Value);
setFieldInRecord(rgr_clrInstGrp_576, clearingInstruction, Record, Value)->
   erlang:setelement(#rgr_clrInstGrp_576.clearingInstruction, Record, Value);
setFieldInRecord(collInqQualGrp, rgr_collInqQualGrp_938, Record, Value)->
   erlang:setelement(#collInqQualGrp.rgr_collInqQualGrp_938, Record, Value);
setFieldInRecord(rgr_collInqQualGrp_938, collInquiryQualifier, Record, Value)->
   erlang:setelement(#rgr_collInqQualGrp_938.collInquiryQualifier, Record, Value);
setFieldInRecord(compIDReqGrp, rgr_compIDReqGrp_936, Record, Value)->
   erlang:setelement(#compIDReqGrp.rgr_compIDReqGrp_936, Record, Value);
setFieldInRecord(rgr_compIDReqGrp_936, refCompID, Record, Value)->
   erlang:setelement(#rgr_compIDReqGrp_936.refCompID, Record, Value);
setFieldInRecord(rgr_compIDReqGrp_936, refSubID, Record, Value)->
   erlang:setelement(#rgr_compIDReqGrp_936.refSubID, Record, Value);
setFieldInRecord(rgr_compIDReqGrp_936, locationID, Record, Value)->
   erlang:setelement(#rgr_compIDReqGrp_936.locationID, Record, Value);
setFieldInRecord(rgr_compIDReqGrp_936, deskID, Record, Value)->
   erlang:setelement(#rgr_compIDReqGrp_936.deskID, Record, Value);
setFieldInRecord(compIDStatGrp, rgr_compIDStatGrp_936, Record, Value)->
   erlang:setelement(#compIDStatGrp.rgr_compIDStatGrp_936, Record, Value);
setFieldInRecord(rgr_compIDStatGrp_936, refCompID, Record, Value)->
   erlang:setelement(#rgr_compIDStatGrp_936.refCompID, Record, Value);
setFieldInRecord(rgr_compIDStatGrp_936, refSubID, Record, Value)->
   erlang:setelement(#rgr_compIDStatGrp_936.refSubID, Record, Value);
setFieldInRecord(rgr_compIDStatGrp_936, locationID, Record, Value)->
   erlang:setelement(#rgr_compIDStatGrp_936.locationID, Record, Value);
setFieldInRecord(rgr_compIDStatGrp_936, deskID, Record, Value)->
   erlang:setelement(#rgr_compIDStatGrp_936.deskID, Record, Value);
setFieldInRecord(rgr_compIDStatGrp_936, statusValue, Record, Value)->
   erlang:setelement(#rgr_compIDStatGrp_936.statusValue, Record, Value);
setFieldInRecord(rgr_compIDStatGrp_936, statusText, Record, Value)->
   erlang:setelement(#rgr_compIDStatGrp_936.statusText, Record, Value);
setFieldInRecord(contAmtGrp, rgr_contAmtGrp_518, Record, Value)->
   erlang:setelement(#contAmtGrp.rgr_contAmtGrp_518, Record, Value);
setFieldInRecord(rgr_contAmtGrp_518, contAmtType, Record, Value)->
   erlang:setelement(#rgr_contAmtGrp_518.contAmtType, Record, Value);
setFieldInRecord(rgr_contAmtGrp_518, contAmtValue, Record, Value)->
   erlang:setelement(#rgr_contAmtGrp_518.contAmtValue, Record, Value);
setFieldInRecord(rgr_contAmtGrp_518, contAmtCurr, Record, Value)->
   erlang:setelement(#rgr_contAmtGrp_518.contAmtCurr, Record, Value);
setFieldInRecord(contraGrp, rgr_contraGrp_382, Record, Value)->
   erlang:setelement(#contraGrp.rgr_contraGrp_382, Record, Value);
setFieldInRecord(rgr_contraGrp_382, contraBroker, Record, Value)->
   erlang:setelement(#rgr_contraGrp_382.contraBroker, Record, Value);
setFieldInRecord(rgr_contraGrp_382, contraTrader, Record, Value)->
   erlang:setelement(#rgr_contraGrp_382.contraTrader, Record, Value);
setFieldInRecord(rgr_contraGrp_382, contraTradeQty, Record, Value)->
   erlang:setelement(#rgr_contraGrp_382.contraTradeQty, Record, Value);
setFieldInRecord(rgr_contraGrp_382, contraTradeTime, Record, Value)->
   erlang:setelement(#rgr_contraGrp_382.contraTradeTime, Record, Value);
setFieldInRecord(rgr_contraGrp_382, contraLegRefID, Record, Value)->
   erlang:setelement(#rgr_contraGrp_382.contraLegRefID, Record, Value);
setFieldInRecord(cpctyConfGrp, rgr_cpctyConfGrp_862, Record, Value)->
   erlang:setelement(#cpctyConfGrp.rgr_cpctyConfGrp_862, Record, Value);
setFieldInRecord(rgr_cpctyConfGrp_862, orderCapacity, Record, Value)->
   erlang:setelement(#rgr_cpctyConfGrp_862.orderCapacity, Record, Value);
setFieldInRecord(rgr_cpctyConfGrp_862, orderRestrictions, Record, Value)->
   erlang:setelement(#rgr_cpctyConfGrp_862.orderRestrictions, Record, Value);
setFieldInRecord(rgr_cpctyConfGrp_862, orderCapacityQty, Record, Value)->
   erlang:setelement(#rgr_cpctyConfGrp_862.orderCapacityQty, Record, Value);
setFieldInRecord(execAllocGrp, rgr_execAllocGrp_124, Record, Value)->
   erlang:setelement(#execAllocGrp.rgr_execAllocGrp_124, Record, Value);
setFieldInRecord(rgr_execAllocGrp_124, lastQty, Record, Value)->
   erlang:setelement(#rgr_execAllocGrp_124.lastQty, Record, Value);
setFieldInRecord(rgr_execAllocGrp_124, execID, Record, Value)->
   erlang:setelement(#rgr_execAllocGrp_124.execID, Record, Value);
setFieldInRecord(rgr_execAllocGrp_124, secondaryExecID, Record, Value)->
   erlang:setelement(#rgr_execAllocGrp_124.secondaryExecID, Record, Value);
setFieldInRecord(rgr_execAllocGrp_124, lastPx, Record, Value)->
   erlang:setelement(#rgr_execAllocGrp_124.lastPx, Record, Value);
setFieldInRecord(rgr_execAllocGrp_124, lastParPx, Record, Value)->
   erlang:setelement(#rgr_execAllocGrp_124.lastParPx, Record, Value);
setFieldInRecord(rgr_execAllocGrp_124, lastCapacity, Record, Value)->
   erlang:setelement(#rgr_execAllocGrp_124.lastCapacity, Record, Value);
setFieldInRecord(execCollGrp, rgr_execCollGrp_124, Record, Value)->
   erlang:setelement(#execCollGrp.rgr_execCollGrp_124, Record, Value);
setFieldInRecord(rgr_execCollGrp_124, execID, Record, Value)->
   erlang:setelement(#rgr_execCollGrp_124.execID, Record, Value);
setFieldInRecord(execsGrp, rgr_execsGrp_124, Record, Value)->
   erlang:setelement(#execsGrp.rgr_execsGrp_124, Record, Value);
setFieldInRecord(rgr_execsGrp_124, execID, Record, Value)->
   erlang:setelement(#rgr_execsGrp_124.execID, Record, Value);
setFieldInRecord(instrmtGrp, rgr_instrmtGrp_146, Record, Value)->
   erlang:setelement(#instrmtGrp.rgr_instrmtGrp_146, Record, Value);
setFieldInRecord(rgr_instrmtGrp_146, instrument, Record, Value)->
   erlang:setelement(#rgr_instrmtGrp_146.instrument, Record, Value);
setFieldInRecord(instrmtLegExecGrp, rgr_instrmtLegExecGrp_555, Record, Value)->
   erlang:setelement(#instrmtLegExecGrp.rgr_instrmtLegExecGrp_555, Record, Value);
setFieldInRecord(rgr_instrmtLegExecGrp_555, instrumentLeg, Record, Value)->
   erlang:setelement(#rgr_instrmtLegExecGrp_555.instrumentLeg, Record, Value);
setFieldInRecord(rgr_instrmtLegExecGrp_555, legQty, Record, Value)->
   erlang:setelement(#rgr_instrmtLegExecGrp_555.legQty, Record, Value);
setFieldInRecord(rgr_instrmtLegExecGrp_555, legSwapType, Record, Value)->
   erlang:setelement(#rgr_instrmtLegExecGrp_555.legSwapType, Record, Value);
setFieldInRecord(rgr_instrmtLegExecGrp_555, legStipulations, Record, Value)->
   erlang:setelement(#rgr_instrmtLegExecGrp_555.legStipulations, Record, Value);
setFieldInRecord(rgr_instrmtLegExecGrp_555, legPositionEffect, Record, Value)->
   erlang:setelement(#rgr_instrmtLegExecGrp_555.legPositionEffect, Record, Value);
setFieldInRecord(rgr_instrmtLegExecGrp_555, legCoveredOrUncovered, Record, Value)->
   erlang:setelement(#rgr_instrmtLegExecGrp_555.legCoveredOrUncovered, Record, Value);
setFieldInRecord(rgr_instrmtLegExecGrp_555, nestedParties, Record, Value)->
   erlang:setelement(#rgr_instrmtLegExecGrp_555.nestedParties, Record, Value);
setFieldInRecord(rgr_instrmtLegExecGrp_555, legRefID, Record, Value)->
   erlang:setelement(#rgr_instrmtLegExecGrp_555.legRefID, Record, Value);
setFieldInRecord(rgr_instrmtLegExecGrp_555, legPrice, Record, Value)->
   erlang:setelement(#rgr_instrmtLegExecGrp_555.legPrice, Record, Value);
setFieldInRecord(rgr_instrmtLegExecGrp_555, legSettlType, Record, Value)->
   erlang:setelement(#rgr_instrmtLegExecGrp_555.legSettlType, Record, Value);
setFieldInRecord(rgr_instrmtLegExecGrp_555, legSettlDate, Record, Value)->
   erlang:setelement(#rgr_instrmtLegExecGrp_555.legSettlDate, Record, Value);
setFieldInRecord(rgr_instrmtLegExecGrp_555, legLastPx, Record, Value)->
   erlang:setelement(#rgr_instrmtLegExecGrp_555.legLastPx, Record, Value);
setFieldInRecord(instrmtLegGrp, rgr_instrmtLegGrp_555, Record, Value)->
   erlang:setelement(#instrmtLegGrp.rgr_instrmtLegGrp_555, Record, Value);
setFieldInRecord(rgr_instrmtLegGrp_555, instrumentLeg, Record, Value)->
   erlang:setelement(#rgr_instrmtLegGrp_555.instrumentLeg, Record, Value);
setFieldInRecord(instrmtLegIOIGrp, rgr_instrmtLegIOIGrp_555, Record, Value)->
   erlang:setelement(#instrmtLegIOIGrp.rgr_instrmtLegIOIGrp_555, Record, Value);
setFieldInRecord(rgr_instrmtLegIOIGrp_555, instrumentLeg, Record, Value)->
   erlang:setelement(#rgr_instrmtLegIOIGrp_555.instrumentLeg, Record, Value);
setFieldInRecord(rgr_instrmtLegIOIGrp_555, legIOIQty, Record, Value)->
   erlang:setelement(#rgr_instrmtLegIOIGrp_555.legIOIQty, Record, Value);
setFieldInRecord(rgr_instrmtLegIOIGrp_555, legStipulations, Record, Value)->
   erlang:setelement(#rgr_instrmtLegIOIGrp_555.legStipulations, Record, Value);
setFieldInRecord(instrmtLegSecListGrp, rgr_instrmtLegSecListGrp_555, Record, Value)->
   erlang:setelement(#instrmtLegSecListGrp.rgr_instrmtLegSecListGrp_555, Record, Value);
setFieldInRecord(rgr_instrmtLegSecListGrp_555, instrumentLeg, Record, Value)->
   erlang:setelement(#rgr_instrmtLegSecListGrp_555.instrumentLeg, Record, Value);
setFieldInRecord(rgr_instrmtLegSecListGrp_555, legSwapType, Record, Value)->
   erlang:setelement(#rgr_instrmtLegSecListGrp_555.legSwapType, Record, Value);
setFieldInRecord(rgr_instrmtLegSecListGrp_555, legSettlType, Record, Value)->
   erlang:setelement(#rgr_instrmtLegSecListGrp_555.legSettlType, Record, Value);
setFieldInRecord(rgr_instrmtLegSecListGrp_555, legStipulations, Record, Value)->
   erlang:setelement(#rgr_instrmtLegSecListGrp_555.legStipulations, Record, Value);
setFieldInRecord(rgr_instrmtLegSecListGrp_555, legBenchmarkCurveData, Record, Value)->
   erlang:setelement(#rgr_instrmtLegSecListGrp_555.legBenchmarkCurveData, Record, Value);
setFieldInRecord(instrmtMDReqGrp, rgr_instrmtMDReqGrp_146, Record, Value)->
   erlang:setelement(#instrmtMDReqGrp.rgr_instrmtMDReqGrp_146, Record, Value);
setFieldInRecord(rgr_instrmtMDReqGrp_146, instrument, Record, Value)->
   erlang:setelement(#rgr_instrmtMDReqGrp_146.instrument, Record, Value);
setFieldInRecord(rgr_instrmtMDReqGrp_146, undInstrmtGrp, Record, Value)->
   erlang:setelement(#rgr_instrmtMDReqGrp_146.undInstrmtGrp, Record, Value);
setFieldInRecord(rgr_instrmtMDReqGrp_146, instrmtLegGrp, Record, Value)->
   erlang:setelement(#rgr_instrmtMDReqGrp_146.instrmtLegGrp, Record, Value);
setFieldInRecord(instrmtStrkPxGrp, rgr_instrmtStrkPxGrp_428, Record, Value)->
   erlang:setelement(#instrmtStrkPxGrp.rgr_instrmtStrkPxGrp_428, Record, Value);
setFieldInRecord(rgr_instrmtStrkPxGrp_428, instrument, Record, Value)->
   erlang:setelement(#rgr_instrmtStrkPxGrp_428.instrument, Record, Value);
setFieldInRecord(iOIQualGrp, rgr_iOIQualGrp_199, Record, Value)->
   erlang:setelement(#iOIQualGrp.rgr_iOIQualGrp_199, Record, Value);
setFieldInRecord(rgr_iOIQualGrp_199, iOIQualifier, Record, Value)->
   erlang:setelement(#rgr_iOIQualGrp_199.iOIQualifier, Record, Value);
setFieldInRecord(legOrdGrp, rgr_legOrdGrp_555, Record, Value)->
   erlang:setelement(#legOrdGrp.rgr_legOrdGrp_555, Record, Value);
setFieldInRecord(rgr_legOrdGrp_555, instrumentLeg, Record, Value)->
   erlang:setelement(#rgr_legOrdGrp_555.instrumentLeg, Record, Value);
setFieldInRecord(rgr_legOrdGrp_555, legQty, Record, Value)->
   erlang:setelement(#rgr_legOrdGrp_555.legQty, Record, Value);
setFieldInRecord(rgr_legOrdGrp_555, legSwapType, Record, Value)->
   erlang:setelement(#rgr_legOrdGrp_555.legSwapType, Record, Value);
setFieldInRecord(rgr_legOrdGrp_555, legStipulations, Record, Value)->
   erlang:setelement(#rgr_legOrdGrp_555.legStipulations, Record, Value);
setFieldInRecord(rgr_legOrdGrp_555, legPreAllocGrp, Record, Value)->
   erlang:setelement(#rgr_legOrdGrp_555.legPreAllocGrp, Record, Value);
setFieldInRecord(rgr_legOrdGrp_555, legPositionEffect, Record, Value)->
   erlang:setelement(#rgr_legOrdGrp_555.legPositionEffect, Record, Value);
setFieldInRecord(rgr_legOrdGrp_555, legCoveredOrUncovered, Record, Value)->
   erlang:setelement(#rgr_legOrdGrp_555.legCoveredOrUncovered, Record, Value);
setFieldInRecord(rgr_legOrdGrp_555, nestedParties, Record, Value)->
   erlang:setelement(#rgr_legOrdGrp_555.nestedParties, Record, Value);
setFieldInRecord(rgr_legOrdGrp_555, legRefID, Record, Value)->
   erlang:setelement(#rgr_legOrdGrp_555.legRefID, Record, Value);
setFieldInRecord(rgr_legOrdGrp_555, legPrice, Record, Value)->
   erlang:setelement(#rgr_legOrdGrp_555.legPrice, Record, Value);
setFieldInRecord(rgr_legOrdGrp_555, legSettlType, Record, Value)->
   erlang:setelement(#rgr_legOrdGrp_555.legSettlType, Record, Value);
setFieldInRecord(rgr_legOrdGrp_555, legSettlDate, Record, Value)->
   erlang:setelement(#rgr_legOrdGrp_555.legSettlDate, Record, Value);
setFieldInRecord(legPreAllocGrp, rgr_legPreAllocGrp_670, Record, Value)->
   erlang:setelement(#legPreAllocGrp.rgr_legPreAllocGrp_670, Record, Value);
setFieldInRecord(rgr_legPreAllocGrp_670, legAllocAccount, Record, Value)->
   erlang:setelement(#rgr_legPreAllocGrp_670.legAllocAccount, Record, Value);
setFieldInRecord(rgr_legPreAllocGrp_670, legIndividualAllocID, Record, Value)->
   erlang:setelement(#rgr_legPreAllocGrp_670.legIndividualAllocID, Record, Value);
setFieldInRecord(rgr_legPreAllocGrp_670, nestedParties2, Record, Value)->
   erlang:setelement(#rgr_legPreAllocGrp_670.nestedParties2, Record, Value);
setFieldInRecord(rgr_legPreAllocGrp_670, legAllocQty, Record, Value)->
   erlang:setelement(#rgr_legPreAllocGrp_670.legAllocQty, Record, Value);
setFieldInRecord(rgr_legPreAllocGrp_670, legAllocAcctIDSource, Record, Value)->
   erlang:setelement(#rgr_legPreAllocGrp_670.legAllocAcctIDSource, Record, Value);
setFieldInRecord(rgr_legPreAllocGrp_670, legSettlCurrency, Record, Value)->
   erlang:setelement(#rgr_legPreAllocGrp_670.legSettlCurrency, Record, Value);
setFieldInRecord(legQuotGrp, rgr_legQuotGrp_555, Record, Value)->
   erlang:setelement(#legQuotGrp.rgr_legQuotGrp_555, Record, Value);
setFieldInRecord(rgr_legQuotGrp_555, instrumentLeg, Record, Value)->
   erlang:setelement(#rgr_legQuotGrp_555.instrumentLeg, Record, Value);
setFieldInRecord(rgr_legQuotGrp_555, legQty, Record, Value)->
   erlang:setelement(#rgr_legQuotGrp_555.legQty, Record, Value);
setFieldInRecord(rgr_legQuotGrp_555, legSwapType, Record, Value)->
   erlang:setelement(#rgr_legQuotGrp_555.legSwapType, Record, Value);
setFieldInRecord(rgr_legQuotGrp_555, legSettlType, Record, Value)->
   erlang:setelement(#rgr_legQuotGrp_555.legSettlType, Record, Value);
setFieldInRecord(rgr_legQuotGrp_555, legSettlDate, Record, Value)->
   erlang:setelement(#rgr_legQuotGrp_555.legSettlDate, Record, Value);
setFieldInRecord(rgr_legQuotGrp_555, legStipulations, Record, Value)->
   erlang:setelement(#rgr_legQuotGrp_555.legStipulations, Record, Value);
setFieldInRecord(rgr_legQuotGrp_555, nestedParties, Record, Value)->
   erlang:setelement(#rgr_legQuotGrp_555.nestedParties, Record, Value);
setFieldInRecord(rgr_legQuotGrp_555, legPriceType, Record, Value)->
   erlang:setelement(#rgr_legQuotGrp_555.legPriceType, Record, Value);
setFieldInRecord(rgr_legQuotGrp_555, legBidPx, Record, Value)->
   erlang:setelement(#rgr_legQuotGrp_555.legBidPx, Record, Value);
setFieldInRecord(rgr_legQuotGrp_555, legOfferPx, Record, Value)->
   erlang:setelement(#rgr_legQuotGrp_555.legOfferPx, Record, Value);
setFieldInRecord(rgr_legQuotGrp_555, legBenchmarkCurveData, Record, Value)->
   erlang:setelement(#rgr_legQuotGrp_555.legBenchmarkCurveData, Record, Value);
setFieldInRecord(legQuotStatGrp, rgr_legQuotStatGrp_555, Record, Value)->
   erlang:setelement(#legQuotStatGrp.rgr_legQuotStatGrp_555, Record, Value);
setFieldInRecord(rgr_legQuotStatGrp_555, instrumentLeg, Record, Value)->
   erlang:setelement(#rgr_legQuotStatGrp_555.instrumentLeg, Record, Value);
setFieldInRecord(rgr_legQuotStatGrp_555, legQty, Record, Value)->
   erlang:setelement(#rgr_legQuotStatGrp_555.legQty, Record, Value);
setFieldInRecord(rgr_legQuotStatGrp_555, legSwapType, Record, Value)->
   erlang:setelement(#rgr_legQuotStatGrp_555.legSwapType, Record, Value);
setFieldInRecord(rgr_legQuotStatGrp_555, legSettlType, Record, Value)->
   erlang:setelement(#rgr_legQuotStatGrp_555.legSettlType, Record, Value);
setFieldInRecord(rgr_legQuotStatGrp_555, legSettlDate, Record, Value)->
   erlang:setelement(#rgr_legQuotStatGrp_555.legSettlDate, Record, Value);
setFieldInRecord(rgr_legQuotStatGrp_555, legStipulations, Record, Value)->
   erlang:setelement(#rgr_legQuotStatGrp_555.legStipulations, Record, Value);
setFieldInRecord(rgr_legQuotStatGrp_555, nestedParties, Record, Value)->
   erlang:setelement(#rgr_legQuotStatGrp_555.nestedParties, Record, Value);
setFieldInRecord(linesOfTextGrp, rgr_linesOfTextGrp_33, Record, Value)->
   erlang:setelement(#linesOfTextGrp.rgr_linesOfTextGrp_33, Record, Value);
setFieldInRecord(rgr_linesOfTextGrp_33, text, Record, Value)->
   erlang:setelement(#rgr_linesOfTextGrp_33.text, Record, Value);
setFieldInRecord(rgr_linesOfTextGrp_33, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_linesOfTextGrp_33.encodedTextLen, Record, Value);
setFieldInRecord(rgr_linesOfTextGrp_33, encodedText, Record, Value)->
   erlang:setelement(#rgr_linesOfTextGrp_33.encodedText, Record, Value);
setFieldInRecord(listOrdGrp, rgr_listOrdGrp_73, Record, Value)->
   erlang:setelement(#listOrdGrp.rgr_listOrdGrp_73, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, clOrdID, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.clOrdID, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, secondaryClOrdID, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.secondaryClOrdID, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, listSeqNo, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.listSeqNo, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, clOrdLinkID, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.clOrdLinkID, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, settlInstMode, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.settlInstMode, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, parties, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.parties, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, tradeOriginationDate, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.tradeOriginationDate, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, tradeDate, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.tradeDate, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, account, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.account, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, acctIDSource, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.acctIDSource, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, accountType, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.accountType, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, dayBookingInst, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.dayBookingInst, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, bookingUnit, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.bookingUnit, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, allocID, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.allocID, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, preallocMethod, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.preallocMethod, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, preAllocGrp, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.preAllocGrp, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, settlType, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.settlType, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, settlDate, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.settlDate, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, cashMargin, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.cashMargin, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, clearingFeeIndicator, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.clearingFeeIndicator, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, handlInst, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.handlInst, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, execInst, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.execInst, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, minQty, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.minQty, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, maxFloor, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.maxFloor, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, exDestination, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.exDestination, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, trdgSesGrp, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.trdgSesGrp, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, processCode, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.processCode, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, instrument, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.instrument, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, undInstrmtGrp, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.undInstrmtGrp, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, prevClosePx, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.prevClosePx, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, side, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.side, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, sideValueInd, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.sideValueInd, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, locateReqd, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.locateReqd, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, transactTime, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.transactTime, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, stipulations, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.stipulations, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, qtyType, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.qtyType, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, orderQtyData, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.orderQtyData, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, ordType, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.ordType, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, priceType, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.priceType, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, price, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.price, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, stopPx, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.stopPx, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, spreadOrBenchmarkCurveData, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.spreadOrBenchmarkCurveData, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, yieldData, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.yieldData, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, currency, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.currency, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, complianceID, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.complianceID, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, solicitedFlag, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.solicitedFlag, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, iOIID, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.iOIID, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, quoteID, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.quoteID, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, timeInForce, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.timeInForce, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, effectiveTime, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.effectiveTime, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, expireDate, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.expireDate, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, expireTime, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.expireTime, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, gTBookingInst, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.gTBookingInst, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, commissionData, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.commissionData, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, orderCapacity, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.orderCapacity, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, orderRestrictions, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.orderRestrictions, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, custOrderCapacity, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.custOrderCapacity, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, forexReq, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.forexReq, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, settlCurrency, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.settlCurrency, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, bookingType, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.bookingType, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, text, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.text, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.encodedTextLen, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, encodedText, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.encodedText, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, settlDate2, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.settlDate2, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, orderQty2, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.orderQty2, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, price2, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.price2, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, positionEffect, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.positionEffect, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, coveredOrUncovered, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.coveredOrUncovered, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, maxShow, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.maxShow, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, pegInstructions, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.pegInstructions, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, discretionInstructions, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.discretionInstructions, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, targetStrategy, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.targetStrategy, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, targetStrategyParameters, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.targetStrategyParameters, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, participationRate, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.participationRate, Record, Value);
setFieldInRecord(rgr_listOrdGrp_73, designation, Record, Value)->
   erlang:setelement(#rgr_listOrdGrp_73.designation, Record, Value);
setFieldInRecord(mDFullGrp, rgr_mDFullGrp_268, Record, Value)->
   erlang:setelement(#mDFullGrp.rgr_mDFullGrp_268, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, mDEntryType, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.mDEntryType, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, mDEntryPx, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.mDEntryPx, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, currency, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.currency, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, mDEntrySize, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.mDEntrySize, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, mDEntryDate, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.mDEntryDate, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, mDEntryTime, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.mDEntryTime, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, tickDirection, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.tickDirection, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, mDMkt, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.mDMkt, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.tradingSessionID, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.tradingSessionSubID, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, quoteCondition, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.quoteCondition, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, tradeCondition, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.tradeCondition, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, mDEntryOriginator, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.mDEntryOriginator, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, locationID, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.locationID, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, deskID, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.deskID, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, openCloseSettlFlag, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.openCloseSettlFlag, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, timeInForce, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.timeInForce, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, expireDate, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.expireDate, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, expireTime, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.expireTime, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, minQty, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.minQty, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, execInst, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.execInst, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, sellerDays, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.sellerDays, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, orderID, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.orderID, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, quoteEntryID, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.quoteEntryID, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, mDEntryBuyer, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.mDEntryBuyer, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, mDEntrySeller, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.mDEntrySeller, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, numberOfOrders, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.numberOfOrders, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, mDEntryPositionNo, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.mDEntryPositionNo, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, scope, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.scope, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, priceDelta, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.priceDelta, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, text, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.text, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.encodedTextLen, Record, Value);
setFieldInRecord(rgr_mDFullGrp_268, encodedText, Record, Value)->
   erlang:setelement(#rgr_mDFullGrp_268.encodedText, Record, Value);
setFieldInRecord(mDIncGrp, rgr_mDIncGrp_268, Record, Value)->
   erlang:setelement(#mDIncGrp.rgr_mDIncGrp_268, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, mDUpdateAction, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.mDUpdateAction, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, deleteReason, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.deleteReason, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, mDEntryType, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.mDEntryType, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, mDEntryID, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.mDEntryID, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, mDEntryRefID, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.mDEntryRefID, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, instrument, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.instrument, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, undInstrmtGrp, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.undInstrmtGrp, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, instrmtLegGrp, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.instrmtLegGrp, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, financialStatus, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.financialStatus, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, corporateAction, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.corporateAction, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, mDEntryPx, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.mDEntryPx, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, currency, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.currency, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, mDEntrySize, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.mDEntrySize, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, mDEntryDate, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.mDEntryDate, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, mDEntryTime, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.mDEntryTime, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, tickDirection, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.tickDirection, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, mDMkt, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.mDMkt, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.tradingSessionID, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.tradingSessionSubID, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, quoteCondition, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.quoteCondition, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, tradeCondition, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.tradeCondition, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, mDEntryOriginator, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.mDEntryOriginator, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, locationID, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.locationID, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, deskID, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.deskID, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, openCloseSettlFlag, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.openCloseSettlFlag, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, timeInForce, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.timeInForce, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, expireDate, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.expireDate, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, expireTime, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.expireTime, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, minQty, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.minQty, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, execInst, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.execInst, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, sellerDays, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.sellerDays, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, orderID, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.orderID, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, quoteEntryID, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.quoteEntryID, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, mDEntryBuyer, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.mDEntryBuyer, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, mDEntrySeller, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.mDEntrySeller, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, numberOfOrders, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.numberOfOrders, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, mDEntryPositionNo, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.mDEntryPositionNo, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, scope, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.scope, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, priceDelta, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.priceDelta, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, netChgPrevDay, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.netChgPrevDay, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, text, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.text, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.encodedTextLen, Record, Value);
setFieldInRecord(rgr_mDIncGrp_268, encodedText, Record, Value)->
   erlang:setelement(#rgr_mDIncGrp_268.encodedText, Record, Value);
setFieldInRecord(mDReqGrp, rgr_mDReqGrp_267, Record, Value)->
   erlang:setelement(#mDReqGrp.rgr_mDReqGrp_267, Record, Value);
setFieldInRecord(rgr_mDReqGrp_267, mDEntryType, Record, Value)->
   erlang:setelement(#rgr_mDReqGrp_267.mDEntryType, Record, Value);
setFieldInRecord(mDRjctGrp, rgr_mDRjctGrp_816, Record, Value)->
   erlang:setelement(#mDRjctGrp.rgr_mDRjctGrp_816, Record, Value);
setFieldInRecord(rgr_mDRjctGrp_816, altMDSourceID, Record, Value)->
   erlang:setelement(#rgr_mDRjctGrp_816.altMDSourceID, Record, Value);
setFieldInRecord(miscFeesGrp, rgr_miscFeesGrp_136, Record, Value)->
   erlang:setelement(#miscFeesGrp.rgr_miscFeesGrp_136, Record, Value);
setFieldInRecord(rgr_miscFeesGrp_136, miscFeeAmt, Record, Value)->
   erlang:setelement(#rgr_miscFeesGrp_136.miscFeeAmt, Record, Value);
setFieldInRecord(rgr_miscFeesGrp_136, miscFeeCurr, Record, Value)->
   erlang:setelement(#rgr_miscFeesGrp_136.miscFeeCurr, Record, Value);
setFieldInRecord(rgr_miscFeesGrp_136, miscFeeType, Record, Value)->
   erlang:setelement(#rgr_miscFeesGrp_136.miscFeeType, Record, Value);
setFieldInRecord(rgr_miscFeesGrp_136, miscFeeBasis, Record, Value)->
   erlang:setelement(#rgr_miscFeesGrp_136.miscFeeBasis, Record, Value);
setFieldInRecord(ordAllocGrp, rgr_ordAllocGrp_73, Record, Value)->
   erlang:setelement(#ordAllocGrp.rgr_ordAllocGrp_73, Record, Value);
setFieldInRecord(rgr_ordAllocGrp_73, clOrdID, Record, Value)->
   erlang:setelement(#rgr_ordAllocGrp_73.clOrdID, Record, Value);
setFieldInRecord(rgr_ordAllocGrp_73, orderID, Record, Value)->
   erlang:setelement(#rgr_ordAllocGrp_73.orderID, Record, Value);
setFieldInRecord(rgr_ordAllocGrp_73, secondaryOrderID, Record, Value)->
   erlang:setelement(#rgr_ordAllocGrp_73.secondaryOrderID, Record, Value);
setFieldInRecord(rgr_ordAllocGrp_73, secondaryClOrdID, Record, Value)->
   erlang:setelement(#rgr_ordAllocGrp_73.secondaryClOrdID, Record, Value);
setFieldInRecord(rgr_ordAllocGrp_73, listID, Record, Value)->
   erlang:setelement(#rgr_ordAllocGrp_73.listID, Record, Value);
setFieldInRecord(rgr_ordAllocGrp_73, nestedParties2, Record, Value)->
   erlang:setelement(#rgr_ordAllocGrp_73.nestedParties2, Record, Value);
setFieldInRecord(rgr_ordAllocGrp_73, orderQty, Record, Value)->
   erlang:setelement(#rgr_ordAllocGrp_73.orderQty, Record, Value);
setFieldInRecord(rgr_ordAllocGrp_73, orderAvgPx, Record, Value)->
   erlang:setelement(#rgr_ordAllocGrp_73.orderAvgPx, Record, Value);
setFieldInRecord(rgr_ordAllocGrp_73, orderBookingQty, Record, Value)->
   erlang:setelement(#rgr_ordAllocGrp_73.orderBookingQty, Record, Value);
setFieldInRecord(ordListStatGrp, rgr_ordListStatGrp_73, Record, Value)->
   erlang:setelement(#ordListStatGrp.rgr_ordListStatGrp_73, Record, Value);
setFieldInRecord(rgr_ordListStatGrp_73, clOrdID, Record, Value)->
   erlang:setelement(#rgr_ordListStatGrp_73.clOrdID, Record, Value);
setFieldInRecord(rgr_ordListStatGrp_73, secondaryClOrdID, Record, Value)->
   erlang:setelement(#rgr_ordListStatGrp_73.secondaryClOrdID, Record, Value);
setFieldInRecord(rgr_ordListStatGrp_73, cumQty, Record, Value)->
   erlang:setelement(#rgr_ordListStatGrp_73.cumQty, Record, Value);
setFieldInRecord(rgr_ordListStatGrp_73, ordStatus, Record, Value)->
   erlang:setelement(#rgr_ordListStatGrp_73.ordStatus, Record, Value);
setFieldInRecord(rgr_ordListStatGrp_73, workingIndicator, Record, Value)->
   erlang:setelement(#rgr_ordListStatGrp_73.workingIndicator, Record, Value);
setFieldInRecord(rgr_ordListStatGrp_73, leavesQty, Record, Value)->
   erlang:setelement(#rgr_ordListStatGrp_73.leavesQty, Record, Value);
setFieldInRecord(rgr_ordListStatGrp_73, cxlQty, Record, Value)->
   erlang:setelement(#rgr_ordListStatGrp_73.cxlQty, Record, Value);
setFieldInRecord(rgr_ordListStatGrp_73, avgPx, Record, Value)->
   erlang:setelement(#rgr_ordListStatGrp_73.avgPx, Record, Value);
setFieldInRecord(rgr_ordListStatGrp_73, ordRejReason, Record, Value)->
   erlang:setelement(#rgr_ordListStatGrp_73.ordRejReason, Record, Value);
setFieldInRecord(rgr_ordListStatGrp_73, text, Record, Value)->
   erlang:setelement(#rgr_ordListStatGrp_73.text, Record, Value);
setFieldInRecord(rgr_ordListStatGrp_73, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_ordListStatGrp_73.encodedTextLen, Record, Value);
setFieldInRecord(rgr_ordListStatGrp_73, encodedText, Record, Value)->
   erlang:setelement(#rgr_ordListStatGrp_73.encodedText, Record, Value);
setFieldInRecord(posUndInstrmtGrp, rgr_posUndInstrmtGrp_711, Record, Value)->
   erlang:setelement(#posUndInstrmtGrp.rgr_posUndInstrmtGrp_711, Record, Value);
setFieldInRecord(rgr_posUndInstrmtGrp_711, underlyingInstrument, Record, Value)->
   erlang:setelement(#rgr_posUndInstrmtGrp_711.underlyingInstrument, Record, Value);
setFieldInRecord(rgr_posUndInstrmtGrp_711, underlyingSettlPrice, Record, Value)->
   erlang:setelement(#rgr_posUndInstrmtGrp_711.underlyingSettlPrice, Record, Value);
setFieldInRecord(rgr_posUndInstrmtGrp_711, underlyingSettlPriceType, Record, Value)->
   erlang:setelement(#rgr_posUndInstrmtGrp_711.underlyingSettlPriceType, Record, Value);
setFieldInRecord(preAllocGrp, rgr_preAllocGrp_78, Record, Value)->
   erlang:setelement(#preAllocGrp.rgr_preAllocGrp_78, Record, Value);
setFieldInRecord(rgr_preAllocGrp_78, allocAccount, Record, Value)->
   erlang:setelement(#rgr_preAllocGrp_78.allocAccount, Record, Value);
setFieldInRecord(rgr_preAllocGrp_78, allocAcctIDSource, Record, Value)->
   erlang:setelement(#rgr_preAllocGrp_78.allocAcctIDSource, Record, Value);
setFieldInRecord(rgr_preAllocGrp_78, allocSettlCurrency, Record, Value)->
   erlang:setelement(#rgr_preAllocGrp_78.allocSettlCurrency, Record, Value);
setFieldInRecord(rgr_preAllocGrp_78, individualAllocID, Record, Value)->
   erlang:setelement(#rgr_preAllocGrp_78.individualAllocID, Record, Value);
setFieldInRecord(rgr_preAllocGrp_78, nestedParties, Record, Value)->
   erlang:setelement(#rgr_preAllocGrp_78.nestedParties, Record, Value);
setFieldInRecord(rgr_preAllocGrp_78, allocQty, Record, Value)->
   erlang:setelement(#rgr_preAllocGrp_78.allocQty, Record, Value);
setFieldInRecord(preAllocMlegGrp, rgr_preAllocMlegGrp_78, Record, Value)->
   erlang:setelement(#preAllocMlegGrp.rgr_preAllocMlegGrp_78, Record, Value);
setFieldInRecord(rgr_preAllocMlegGrp_78, allocAccount, Record, Value)->
   erlang:setelement(#rgr_preAllocMlegGrp_78.allocAccount, Record, Value);
setFieldInRecord(rgr_preAllocMlegGrp_78, allocAcctIDSource, Record, Value)->
   erlang:setelement(#rgr_preAllocMlegGrp_78.allocAcctIDSource, Record, Value);
setFieldInRecord(rgr_preAllocMlegGrp_78, allocSettlCurrency, Record, Value)->
   erlang:setelement(#rgr_preAllocMlegGrp_78.allocSettlCurrency, Record, Value);
setFieldInRecord(rgr_preAllocMlegGrp_78, individualAllocID, Record, Value)->
   erlang:setelement(#rgr_preAllocMlegGrp_78.individualAllocID, Record, Value);
setFieldInRecord(rgr_preAllocMlegGrp_78, nestedParties3, Record, Value)->
   erlang:setelement(#rgr_preAllocMlegGrp_78.nestedParties3, Record, Value);
setFieldInRecord(rgr_preAllocMlegGrp_78, allocQty, Record, Value)->
   erlang:setelement(#rgr_preAllocMlegGrp_78.allocQty, Record, Value);
setFieldInRecord(quotCxlEntriesGrp, rgr_quotCxlEntriesGrp_295, Record, Value)->
   erlang:setelement(#quotCxlEntriesGrp.rgr_quotCxlEntriesGrp_295, Record, Value);
setFieldInRecord(rgr_quotCxlEntriesGrp_295, instrument, Record, Value)->
   erlang:setelement(#rgr_quotCxlEntriesGrp_295.instrument, Record, Value);
setFieldInRecord(rgr_quotCxlEntriesGrp_295, financingDetails, Record, Value)->
   erlang:setelement(#rgr_quotCxlEntriesGrp_295.financingDetails, Record, Value);
setFieldInRecord(rgr_quotCxlEntriesGrp_295, undInstrmtGrp, Record, Value)->
   erlang:setelement(#rgr_quotCxlEntriesGrp_295.undInstrmtGrp, Record, Value);
setFieldInRecord(rgr_quotCxlEntriesGrp_295, instrmtLegGrp, Record, Value)->
   erlang:setelement(#rgr_quotCxlEntriesGrp_295.instrmtLegGrp, Record, Value);
setFieldInRecord(quotEntryAckGrp, rgr_quotEntryAckGrp_295, Record, Value)->
   erlang:setelement(#quotEntryAckGrp.rgr_quotEntryAckGrp_295, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, quoteEntryID, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.quoteEntryID, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, instrument, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.instrument, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, instrmtLegGrp, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.instrmtLegGrp, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, bidPx, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.bidPx, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, offerPx, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.offerPx, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, bidSize, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.bidSize, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, offerSize, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.offerSize, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, validUntilTime, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.validUntilTime, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, bidSpotRate, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.bidSpotRate, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, offerSpotRate, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.offerSpotRate, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, bidForwardPoints, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.bidForwardPoints, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, offerForwardPoints, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.offerForwardPoints, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, midPx, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.midPx, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, bidYield, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.bidYield, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, midYield, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.midYield, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, offerYield, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.offerYield, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, transactTime, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.transactTime, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.tradingSessionID, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.tradingSessionSubID, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, settlDate, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.settlDate, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, ordType, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.ordType, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, settlDate2, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.settlDate2, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, orderQty2, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.orderQty2, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, bidForwardPoints2, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.bidForwardPoints2, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, offerForwardPoints2, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.offerForwardPoints2, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, currency, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.currency, Record, Value);
setFieldInRecord(rgr_quotEntryAckGrp_295, quoteEntryRejectReason, Record, Value)->
   erlang:setelement(#rgr_quotEntryAckGrp_295.quoteEntryRejectReason, Record, Value);
setFieldInRecord(quotEntryGrp, rgr_quotEntryGrp_295, Record, Value)->
   erlang:setelement(#quotEntryGrp.rgr_quotEntryGrp_295, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, quoteEntryID, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.quoteEntryID, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, instrument, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.instrument, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, instrmtLegGrp, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.instrmtLegGrp, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, bidPx, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.bidPx, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, offerPx, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.offerPx, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, bidSize, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.bidSize, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, offerSize, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.offerSize, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, validUntilTime, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.validUntilTime, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, bidSpotRate, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.bidSpotRate, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, offerSpotRate, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.offerSpotRate, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, bidForwardPoints, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.bidForwardPoints, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, offerForwardPoints, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.offerForwardPoints, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, midPx, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.midPx, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, bidYield, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.bidYield, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, midYield, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.midYield, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, offerYield, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.offerYield, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, transactTime, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.transactTime, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.tradingSessionID, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.tradingSessionSubID, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, settlDate, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.settlDate, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, ordType, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.ordType, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, settlDate2, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.settlDate2, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, orderQty2, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.orderQty2, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, bidForwardPoints2, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.bidForwardPoints2, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, offerForwardPoints2, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.offerForwardPoints2, Record, Value);
setFieldInRecord(rgr_quotEntryGrp_295, currency, Record, Value)->
   erlang:setelement(#rgr_quotEntryGrp_295.currency, Record, Value);
setFieldInRecord(quotQualGrp, rgr_quotQualGrp_735, Record, Value)->
   erlang:setelement(#quotQualGrp.rgr_quotQualGrp_735, Record, Value);
setFieldInRecord(rgr_quotQualGrp_735, quoteQualifier, Record, Value)->
   erlang:setelement(#rgr_quotQualGrp_735.quoteQualifier, Record, Value);
setFieldInRecord(quotReqGrp, rgr_quotReqGrp_146, Record, Value)->
   erlang:setelement(#quotReqGrp.rgr_quotReqGrp_146, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, instrument, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.instrument, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, financingDetails, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.financingDetails, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, undInstrmtGrp, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.undInstrmtGrp, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, prevClosePx, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.prevClosePx, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, quoteRequestType, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.quoteRequestType, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, quoteType, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.quoteType, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.tradingSessionID, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.tradingSessionSubID, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, tradeOriginationDate, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.tradeOriginationDate, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, side, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.side, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, qtyType, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.qtyType, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, orderQtyData, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.orderQtyData, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, settlType, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.settlType, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, settlDate, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.settlDate, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, settlDate2, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.settlDate2, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, orderQty2, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.orderQty2, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, currency, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.currency, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, stipulations, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.stipulations, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, account, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.account, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, acctIDSource, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.acctIDSource, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, accountType, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.accountType, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, quotReqLegsGrp, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.quotReqLegsGrp, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, quotQualGrp, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.quotQualGrp, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, quotePriceType, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.quotePriceType, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, ordType, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.ordType, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, validUntilTime, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.validUntilTime, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, expireTime, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.expireTime, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, transactTime, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.transactTime, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, spreadOrBenchmarkCurveData, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.spreadOrBenchmarkCurveData, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, priceType, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.priceType, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, price, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.price, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, price2, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.price2, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, yieldData, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.yieldData, Record, Value);
setFieldInRecord(rgr_quotReqGrp_146, parties, Record, Value)->
   erlang:setelement(#rgr_quotReqGrp_146.parties, Record, Value);
setFieldInRecord(quotReqLegsGrp, rgr_quotReqLegsGrp_555, Record, Value)->
   erlang:setelement(#quotReqLegsGrp.rgr_quotReqLegsGrp_555, Record, Value);
setFieldInRecord(rgr_quotReqLegsGrp_555, instrumentLeg, Record, Value)->
   erlang:setelement(#rgr_quotReqLegsGrp_555.instrumentLeg, Record, Value);
setFieldInRecord(rgr_quotReqLegsGrp_555, legQty, Record, Value)->
   erlang:setelement(#rgr_quotReqLegsGrp_555.legQty, Record, Value);
setFieldInRecord(rgr_quotReqLegsGrp_555, legSwapType, Record, Value)->
   erlang:setelement(#rgr_quotReqLegsGrp_555.legSwapType, Record, Value);
setFieldInRecord(rgr_quotReqLegsGrp_555, legSettlType, Record, Value)->
   erlang:setelement(#rgr_quotReqLegsGrp_555.legSettlType, Record, Value);
setFieldInRecord(rgr_quotReqLegsGrp_555, legSettlDate, Record, Value)->
   erlang:setelement(#rgr_quotReqLegsGrp_555.legSettlDate, Record, Value);
setFieldInRecord(rgr_quotReqLegsGrp_555, legStipulations, Record, Value)->
   erlang:setelement(#rgr_quotReqLegsGrp_555.legStipulations, Record, Value);
setFieldInRecord(rgr_quotReqLegsGrp_555, nestedParties, Record, Value)->
   erlang:setelement(#rgr_quotReqLegsGrp_555.nestedParties, Record, Value);
setFieldInRecord(rgr_quotReqLegsGrp_555, legBenchmarkCurveData, Record, Value)->
   erlang:setelement(#rgr_quotReqLegsGrp_555.legBenchmarkCurveData, Record, Value);
setFieldInRecord(quotReqRjctGrp, rgr_quotReqRjctGrp_146, Record, Value)->
   erlang:setelement(#quotReqRjctGrp.rgr_quotReqRjctGrp_146, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, instrument, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.instrument, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, financingDetails, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.financingDetails, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, undInstrmtGrp, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.undInstrmtGrp, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, prevClosePx, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.prevClosePx, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, quoteRequestType, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.quoteRequestType, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, quoteType, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.quoteType, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.tradingSessionID, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.tradingSessionSubID, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, tradeOriginationDate, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.tradeOriginationDate, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, side, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.side, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, qtyType, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.qtyType, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, orderQtyData, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.orderQtyData, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, settlType, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.settlType, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, settlDate, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.settlDate, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, settlDate2, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.settlDate2, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, orderQty2, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.orderQty2, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, currency, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.currency, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, stipulations, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.stipulations, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, account, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.account, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, acctIDSource, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.acctIDSource, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, accountType, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.accountType, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, quotReqLegsGrp, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.quotReqLegsGrp, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, quotQualGrp, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.quotQualGrp, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, quotePriceType, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.quotePriceType, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, ordType, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.ordType, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, expireTime, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.expireTime, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, transactTime, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.transactTime, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, spreadOrBenchmarkCurveData, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.spreadOrBenchmarkCurveData, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, priceType, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.priceType, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, price, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.price, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, price2, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.price2, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, yieldData, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.yieldData, Record, Value);
setFieldInRecord(rgr_quotReqRjctGrp_146, parties, Record, Value)->
   erlang:setelement(#rgr_quotReqRjctGrp_146.parties, Record, Value);
setFieldInRecord(quotSetAckGrp, rgr_quotSetAckGrp_296, Record, Value)->
   erlang:setelement(#quotSetAckGrp.rgr_quotSetAckGrp_296, Record, Value);
setFieldInRecord(rgr_quotSetAckGrp_296, quoteSetID, Record, Value)->
   erlang:setelement(#rgr_quotSetAckGrp_296.quoteSetID, Record, Value);
setFieldInRecord(rgr_quotSetAckGrp_296, underlyingInstrument, Record, Value)->
   erlang:setelement(#rgr_quotSetAckGrp_296.underlyingInstrument, Record, Value);
setFieldInRecord(rgr_quotSetAckGrp_296, totNoQuoteEntries, Record, Value)->
   erlang:setelement(#rgr_quotSetAckGrp_296.totNoQuoteEntries, Record, Value);
setFieldInRecord(rgr_quotSetAckGrp_296, lastFragment, Record, Value)->
   erlang:setelement(#rgr_quotSetAckGrp_296.lastFragment, Record, Value);
setFieldInRecord(rgr_quotSetAckGrp_296, quotEntryAckGrp, Record, Value)->
   erlang:setelement(#rgr_quotSetAckGrp_296.quotEntryAckGrp, Record, Value);
setFieldInRecord(quotSetGrp, rgr_quotSetGrp_296, Record, Value)->
   erlang:setelement(#quotSetGrp.rgr_quotSetGrp_296, Record, Value);
setFieldInRecord(rgr_quotSetGrp_296, quoteSetID, Record, Value)->
   erlang:setelement(#rgr_quotSetGrp_296.quoteSetID, Record, Value);
setFieldInRecord(rgr_quotSetGrp_296, underlyingInstrument, Record, Value)->
   erlang:setelement(#rgr_quotSetGrp_296.underlyingInstrument, Record, Value);
setFieldInRecord(rgr_quotSetGrp_296, quoteSetValidUntilTime, Record, Value)->
   erlang:setelement(#rgr_quotSetGrp_296.quoteSetValidUntilTime, Record, Value);
setFieldInRecord(rgr_quotSetGrp_296, totNoQuoteEntries, Record, Value)->
   erlang:setelement(#rgr_quotSetGrp_296.totNoQuoteEntries, Record, Value);
setFieldInRecord(rgr_quotSetGrp_296, lastFragment, Record, Value)->
   erlang:setelement(#rgr_quotSetGrp_296.lastFragment, Record, Value);
setFieldInRecord(rgr_quotSetGrp_296, quotEntryGrp, Record, Value)->
   erlang:setelement(#rgr_quotSetGrp_296.quotEntryGrp, Record, Value);
setFieldInRecord(relSymDerivSecGrp, rgr_relSymDerivSecGrp_146, Record, Value)->
   erlang:setelement(#relSymDerivSecGrp.rgr_relSymDerivSecGrp_146, Record, Value);
setFieldInRecord(rgr_relSymDerivSecGrp_146, instrument, Record, Value)->
   erlang:setelement(#rgr_relSymDerivSecGrp_146.instrument, Record, Value);
setFieldInRecord(rgr_relSymDerivSecGrp_146, currency, Record, Value)->
   erlang:setelement(#rgr_relSymDerivSecGrp_146.currency, Record, Value);
setFieldInRecord(rgr_relSymDerivSecGrp_146, expirationCycle, Record, Value)->
   erlang:setelement(#rgr_relSymDerivSecGrp_146.expirationCycle, Record, Value);
setFieldInRecord(rgr_relSymDerivSecGrp_146, instrumentExtension, Record, Value)->
   erlang:setelement(#rgr_relSymDerivSecGrp_146.instrumentExtension, Record, Value);
setFieldInRecord(rgr_relSymDerivSecGrp_146, instrmtLegGrp, Record, Value)->
   erlang:setelement(#rgr_relSymDerivSecGrp_146.instrmtLegGrp, Record, Value);
setFieldInRecord(rgr_relSymDerivSecGrp_146, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_relSymDerivSecGrp_146.tradingSessionID, Record, Value);
setFieldInRecord(rgr_relSymDerivSecGrp_146, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_relSymDerivSecGrp_146.tradingSessionSubID, Record, Value);
setFieldInRecord(rgr_relSymDerivSecGrp_146, text, Record, Value)->
   erlang:setelement(#rgr_relSymDerivSecGrp_146.text, Record, Value);
setFieldInRecord(rgr_relSymDerivSecGrp_146, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_relSymDerivSecGrp_146.encodedTextLen, Record, Value);
setFieldInRecord(rgr_relSymDerivSecGrp_146, encodedText, Record, Value)->
   erlang:setelement(#rgr_relSymDerivSecGrp_146.encodedText, Record, Value);
setFieldInRecord(rFQReqGrp, rgr_rFQReqGrp_146, Record, Value)->
   erlang:setelement(#rFQReqGrp.rgr_rFQReqGrp_146, Record, Value);
setFieldInRecord(rgr_rFQReqGrp_146, instrument, Record, Value)->
   erlang:setelement(#rgr_rFQReqGrp_146.instrument, Record, Value);
setFieldInRecord(rgr_rFQReqGrp_146, undInstrmtGrp, Record, Value)->
   erlang:setelement(#rgr_rFQReqGrp_146.undInstrmtGrp, Record, Value);
setFieldInRecord(rgr_rFQReqGrp_146, instrmtLegGrp, Record, Value)->
   erlang:setelement(#rgr_rFQReqGrp_146.instrmtLegGrp, Record, Value);
setFieldInRecord(rgr_rFQReqGrp_146, prevClosePx, Record, Value)->
   erlang:setelement(#rgr_rFQReqGrp_146.prevClosePx, Record, Value);
setFieldInRecord(rgr_rFQReqGrp_146, quoteRequestType, Record, Value)->
   erlang:setelement(#rgr_rFQReqGrp_146.quoteRequestType, Record, Value);
setFieldInRecord(rgr_rFQReqGrp_146, quoteType, Record, Value)->
   erlang:setelement(#rgr_rFQReqGrp_146.quoteType, Record, Value);
setFieldInRecord(rgr_rFQReqGrp_146, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_rFQReqGrp_146.tradingSessionID, Record, Value);
setFieldInRecord(rgr_rFQReqGrp_146, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_rFQReqGrp_146.tradingSessionSubID, Record, Value);
setFieldInRecord(rgstDistInstGrp, rgr_rgstDistInstGrp_510, Record, Value)->
   erlang:setelement(#rgstDistInstGrp.rgr_rgstDistInstGrp_510, Record, Value);
setFieldInRecord(rgr_rgstDistInstGrp_510, distribPaymentMethod, Record, Value)->
   erlang:setelement(#rgr_rgstDistInstGrp_510.distribPaymentMethod, Record, Value);
setFieldInRecord(rgr_rgstDistInstGrp_510, distribPercentage, Record, Value)->
   erlang:setelement(#rgr_rgstDistInstGrp_510.distribPercentage, Record, Value);
setFieldInRecord(rgr_rgstDistInstGrp_510, cashDistribCurr, Record, Value)->
   erlang:setelement(#rgr_rgstDistInstGrp_510.cashDistribCurr, Record, Value);
setFieldInRecord(rgr_rgstDistInstGrp_510, cashDistribAgentName, Record, Value)->
   erlang:setelement(#rgr_rgstDistInstGrp_510.cashDistribAgentName, Record, Value);
setFieldInRecord(rgr_rgstDistInstGrp_510, cashDistribAgentCode, Record, Value)->
   erlang:setelement(#rgr_rgstDistInstGrp_510.cashDistribAgentCode, Record, Value);
setFieldInRecord(rgr_rgstDistInstGrp_510, cashDistribAgentAcctNumber, Record, Value)->
   erlang:setelement(#rgr_rgstDistInstGrp_510.cashDistribAgentAcctNumber, Record, Value);
setFieldInRecord(rgr_rgstDistInstGrp_510, cashDistribPayRef, Record, Value)->
   erlang:setelement(#rgr_rgstDistInstGrp_510.cashDistribPayRef, Record, Value);
setFieldInRecord(rgr_rgstDistInstGrp_510, cashDistribAgentAcctName, Record, Value)->
   erlang:setelement(#rgr_rgstDistInstGrp_510.cashDistribAgentAcctName, Record, Value);
setFieldInRecord(rgstDtlsGrp, rgr_rgstDtlsGrp_473, Record, Value)->
   erlang:setelement(#rgstDtlsGrp.rgr_rgstDtlsGrp_473, Record, Value);
setFieldInRecord(rgr_rgstDtlsGrp_473, registDtls, Record, Value)->
   erlang:setelement(#rgr_rgstDtlsGrp_473.registDtls, Record, Value);
setFieldInRecord(rgr_rgstDtlsGrp_473, registEmail, Record, Value)->
   erlang:setelement(#rgr_rgstDtlsGrp_473.registEmail, Record, Value);
setFieldInRecord(rgr_rgstDtlsGrp_473, mailingDtls, Record, Value)->
   erlang:setelement(#rgr_rgstDtlsGrp_473.mailingDtls, Record, Value);
setFieldInRecord(rgr_rgstDtlsGrp_473, mailingInst, Record, Value)->
   erlang:setelement(#rgr_rgstDtlsGrp_473.mailingInst, Record, Value);
setFieldInRecord(rgr_rgstDtlsGrp_473, nestedParties, Record, Value)->
   erlang:setelement(#rgr_rgstDtlsGrp_473.nestedParties, Record, Value);
setFieldInRecord(rgr_rgstDtlsGrp_473, ownerType, Record, Value)->
   erlang:setelement(#rgr_rgstDtlsGrp_473.ownerType, Record, Value);
setFieldInRecord(rgr_rgstDtlsGrp_473, dateOfBirth, Record, Value)->
   erlang:setelement(#rgr_rgstDtlsGrp_473.dateOfBirth, Record, Value);
setFieldInRecord(rgr_rgstDtlsGrp_473, investorCountryOfResidence, Record, Value)->
   erlang:setelement(#rgr_rgstDtlsGrp_473.investorCountryOfResidence, Record, Value);
setFieldInRecord(routingGrp, rgr_routingGrp_215, Record, Value)->
   erlang:setelement(#routingGrp.rgr_routingGrp_215, Record, Value);
setFieldInRecord(rgr_routingGrp_215, routingType, Record, Value)->
   erlang:setelement(#rgr_routingGrp_215.routingType, Record, Value);
setFieldInRecord(rgr_routingGrp_215, routingID, Record, Value)->
   erlang:setelement(#rgr_routingGrp_215.routingID, Record, Value);
setFieldInRecord(secListGrp, rgr_secListGrp_146, Record, Value)->
   erlang:setelement(#secListGrp.rgr_secListGrp_146, Record, Value);
setFieldInRecord(rgr_secListGrp_146, instrument, Record, Value)->
   erlang:setelement(#rgr_secListGrp_146.instrument, Record, Value);
setFieldInRecord(rgr_secListGrp_146, instrumentExtension, Record, Value)->
   erlang:setelement(#rgr_secListGrp_146.instrumentExtension, Record, Value);
setFieldInRecord(rgr_secListGrp_146, financingDetails, Record, Value)->
   erlang:setelement(#rgr_secListGrp_146.financingDetails, Record, Value);
setFieldInRecord(rgr_secListGrp_146, undInstrmtGrp, Record, Value)->
   erlang:setelement(#rgr_secListGrp_146.undInstrmtGrp, Record, Value);
setFieldInRecord(rgr_secListGrp_146, currency, Record, Value)->
   erlang:setelement(#rgr_secListGrp_146.currency, Record, Value);
setFieldInRecord(rgr_secListGrp_146, stipulations, Record, Value)->
   erlang:setelement(#rgr_secListGrp_146.stipulations, Record, Value);
setFieldInRecord(rgr_secListGrp_146, instrmtLegSecListGrp, Record, Value)->
   erlang:setelement(#rgr_secListGrp_146.instrmtLegSecListGrp, Record, Value);
setFieldInRecord(rgr_secListGrp_146, spreadOrBenchmarkCurveData, Record, Value)->
   erlang:setelement(#rgr_secListGrp_146.spreadOrBenchmarkCurveData, Record, Value);
setFieldInRecord(rgr_secListGrp_146, yieldData, Record, Value)->
   erlang:setelement(#rgr_secListGrp_146.yieldData, Record, Value);
setFieldInRecord(rgr_secListGrp_146, roundLot, Record, Value)->
   erlang:setelement(#rgr_secListGrp_146.roundLot, Record, Value);
setFieldInRecord(rgr_secListGrp_146, minTradeVol, Record, Value)->
   erlang:setelement(#rgr_secListGrp_146.minTradeVol, Record, Value);
setFieldInRecord(rgr_secListGrp_146, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_secListGrp_146.tradingSessionID, Record, Value);
setFieldInRecord(rgr_secListGrp_146, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_secListGrp_146.tradingSessionSubID, Record, Value);
setFieldInRecord(rgr_secListGrp_146, expirationCycle, Record, Value)->
   erlang:setelement(#rgr_secListGrp_146.expirationCycle, Record, Value);
setFieldInRecord(rgr_secListGrp_146, text, Record, Value)->
   erlang:setelement(#rgr_secListGrp_146.text, Record, Value);
setFieldInRecord(rgr_secListGrp_146, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_secListGrp_146.encodedTextLen, Record, Value);
setFieldInRecord(rgr_secListGrp_146, encodedText, Record, Value)->
   erlang:setelement(#rgr_secListGrp_146.encodedText, Record, Value);
setFieldInRecord(secTypesGrp, rgr_secTypesGrp_558, Record, Value)->
   erlang:setelement(#secTypesGrp.rgr_secTypesGrp_558, Record, Value);
setFieldInRecord(rgr_secTypesGrp_558, securityType, Record, Value)->
   erlang:setelement(#rgr_secTypesGrp_558.securityType, Record, Value);
setFieldInRecord(rgr_secTypesGrp_558, securitySubType, Record, Value)->
   erlang:setelement(#rgr_secTypesGrp_558.securitySubType, Record, Value);
setFieldInRecord(rgr_secTypesGrp_558, produkt, Record, Value)->
   erlang:setelement(#rgr_secTypesGrp_558.produkt, Record, Value);
setFieldInRecord(rgr_secTypesGrp_558, cFICode, Record, Value)->
   erlang:setelement(#rgr_secTypesGrp_558.cFICode, Record, Value);
setFieldInRecord(settlInstGrp, rgr_settlInstGrp_778, Record, Value)->
   erlang:setelement(#settlInstGrp.rgr_settlInstGrp_778, Record, Value);
setFieldInRecord(rgr_settlInstGrp_778, settlInstID, Record, Value)->
   erlang:setelement(#rgr_settlInstGrp_778.settlInstID, Record, Value);
setFieldInRecord(rgr_settlInstGrp_778, settlInstTransType, Record, Value)->
   erlang:setelement(#rgr_settlInstGrp_778.settlInstTransType, Record, Value);
setFieldInRecord(rgr_settlInstGrp_778, settlInstRefID, Record, Value)->
   erlang:setelement(#rgr_settlInstGrp_778.settlInstRefID, Record, Value);
setFieldInRecord(rgr_settlInstGrp_778, parties, Record, Value)->
   erlang:setelement(#rgr_settlInstGrp_778.parties, Record, Value);
setFieldInRecord(rgr_settlInstGrp_778, side, Record, Value)->
   erlang:setelement(#rgr_settlInstGrp_778.side, Record, Value);
setFieldInRecord(rgr_settlInstGrp_778, produkt, Record, Value)->
   erlang:setelement(#rgr_settlInstGrp_778.produkt, Record, Value);
setFieldInRecord(rgr_settlInstGrp_778, securityType, Record, Value)->
   erlang:setelement(#rgr_settlInstGrp_778.securityType, Record, Value);
setFieldInRecord(rgr_settlInstGrp_778, cFICode, Record, Value)->
   erlang:setelement(#rgr_settlInstGrp_778.cFICode, Record, Value);
setFieldInRecord(rgr_settlInstGrp_778, effectiveTime, Record, Value)->
   erlang:setelement(#rgr_settlInstGrp_778.effectiveTime, Record, Value);
setFieldInRecord(rgr_settlInstGrp_778, expireTime, Record, Value)->
   erlang:setelement(#rgr_settlInstGrp_778.expireTime, Record, Value);
setFieldInRecord(rgr_settlInstGrp_778, lastUpdateTime, Record, Value)->
   erlang:setelement(#rgr_settlInstGrp_778.lastUpdateTime, Record, Value);
setFieldInRecord(rgr_settlInstGrp_778, settlInstructionsData, Record, Value)->
   erlang:setelement(#rgr_settlInstGrp_778.settlInstructionsData, Record, Value);
setFieldInRecord(rgr_settlInstGrp_778, paymentMethod, Record, Value)->
   erlang:setelement(#rgr_settlInstGrp_778.paymentMethod, Record, Value);
setFieldInRecord(rgr_settlInstGrp_778, paymentRef, Record, Value)->
   erlang:setelement(#rgr_settlInstGrp_778.paymentRef, Record, Value);
setFieldInRecord(rgr_settlInstGrp_778, cardHolderName, Record, Value)->
   erlang:setelement(#rgr_settlInstGrp_778.cardHolderName, Record, Value);
setFieldInRecord(rgr_settlInstGrp_778, cardNumber, Record, Value)->
   erlang:setelement(#rgr_settlInstGrp_778.cardNumber, Record, Value);
setFieldInRecord(rgr_settlInstGrp_778, cardStartDate, Record, Value)->
   erlang:setelement(#rgr_settlInstGrp_778.cardStartDate, Record, Value);
setFieldInRecord(rgr_settlInstGrp_778, cardExpDate, Record, Value)->
   erlang:setelement(#rgr_settlInstGrp_778.cardExpDate, Record, Value);
setFieldInRecord(rgr_settlInstGrp_778, cardIssNum, Record, Value)->
   erlang:setelement(#rgr_settlInstGrp_778.cardIssNum, Record, Value);
setFieldInRecord(rgr_settlInstGrp_778, paymentDate, Record, Value)->
   erlang:setelement(#rgr_settlInstGrp_778.paymentDate, Record, Value);
setFieldInRecord(rgr_settlInstGrp_778, paymentRemitterID, Record, Value)->
   erlang:setelement(#rgr_settlInstGrp_778.paymentRemitterID, Record, Value);
setFieldInRecord(sideCrossOrdCxlGrp, rgr_sideCrossOrdCxlGrp_552, Record, Value)->
   erlang:setelement(#sideCrossOrdCxlGrp.rgr_sideCrossOrdCxlGrp_552, Record, Value);
setFieldInRecord(rgr_sideCrossOrdCxlGrp_552, side, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdCxlGrp_552.side, Record, Value);
setFieldInRecord(rgr_sideCrossOrdCxlGrp_552, origClOrdID, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdCxlGrp_552.origClOrdID, Record, Value);
setFieldInRecord(rgr_sideCrossOrdCxlGrp_552, clOrdID, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdCxlGrp_552.clOrdID, Record, Value);
setFieldInRecord(rgr_sideCrossOrdCxlGrp_552, secondaryClOrdID, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdCxlGrp_552.secondaryClOrdID, Record, Value);
setFieldInRecord(rgr_sideCrossOrdCxlGrp_552, clOrdLinkID, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdCxlGrp_552.clOrdLinkID, Record, Value);
setFieldInRecord(rgr_sideCrossOrdCxlGrp_552, origOrdModTime, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdCxlGrp_552.origOrdModTime, Record, Value);
setFieldInRecord(rgr_sideCrossOrdCxlGrp_552, parties, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdCxlGrp_552.parties, Record, Value);
setFieldInRecord(rgr_sideCrossOrdCxlGrp_552, tradeOriginationDate, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdCxlGrp_552.tradeOriginationDate, Record, Value);
setFieldInRecord(rgr_sideCrossOrdCxlGrp_552, tradeDate, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdCxlGrp_552.tradeDate, Record, Value);
setFieldInRecord(rgr_sideCrossOrdCxlGrp_552, orderQtyData, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdCxlGrp_552.orderQtyData, Record, Value);
setFieldInRecord(rgr_sideCrossOrdCxlGrp_552, complianceID, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdCxlGrp_552.complianceID, Record, Value);
setFieldInRecord(rgr_sideCrossOrdCxlGrp_552, text, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdCxlGrp_552.text, Record, Value);
setFieldInRecord(rgr_sideCrossOrdCxlGrp_552, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdCxlGrp_552.encodedTextLen, Record, Value);
setFieldInRecord(rgr_sideCrossOrdCxlGrp_552, encodedText, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdCxlGrp_552.encodedText, Record, Value);
setFieldInRecord(sideCrossOrdModGrp, rgr_sideCrossOrdModGrp_552, Record, Value)->
   erlang:setelement(#sideCrossOrdModGrp.rgr_sideCrossOrdModGrp_552, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, side, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.side, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, clOrdID, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.clOrdID, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, secondaryClOrdID, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.secondaryClOrdID, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, clOrdLinkID, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.clOrdLinkID, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, parties, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.parties, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, tradeOriginationDate, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.tradeOriginationDate, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, tradeDate, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.tradeDate, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, account, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.account, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, acctIDSource, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.acctIDSource, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, accountType, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.accountType, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, dayBookingInst, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.dayBookingInst, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, bookingUnit, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.bookingUnit, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, preallocMethod, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.preallocMethod, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, allocID, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.allocID, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, preAllocGrp, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.preAllocGrp, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, qtyType, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.qtyType, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, orderQtyData, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.orderQtyData, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, commissionData, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.commissionData, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, orderCapacity, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.orderCapacity, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, orderRestrictions, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.orderRestrictions, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, custOrderCapacity, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.custOrderCapacity, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, forexReq, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.forexReq, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, settlCurrency, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.settlCurrency, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, bookingType, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.bookingType, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, text, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.text, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.encodedTextLen, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, encodedText, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.encodedText, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, positionEffect, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.positionEffect, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, coveredOrUncovered, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.coveredOrUncovered, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, cashMargin, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.cashMargin, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, clearingFeeIndicator, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.clearingFeeIndicator, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, solicitedFlag, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.solicitedFlag, Record, Value);
setFieldInRecord(rgr_sideCrossOrdModGrp_552, sideComplianceID, Record, Value)->
   erlang:setelement(#rgr_sideCrossOrdModGrp_552.sideComplianceID, Record, Value);
setFieldInRecord(trdAllocGrp, rgr_trdAllocGrp_78, Record, Value)->
   erlang:setelement(#trdAllocGrp.rgr_trdAllocGrp_78, Record, Value);
setFieldInRecord(rgr_trdAllocGrp_78, allocAccount, Record, Value)->
   erlang:setelement(#rgr_trdAllocGrp_78.allocAccount, Record, Value);
setFieldInRecord(rgr_trdAllocGrp_78, allocAcctIDSource, Record, Value)->
   erlang:setelement(#rgr_trdAllocGrp_78.allocAcctIDSource, Record, Value);
setFieldInRecord(rgr_trdAllocGrp_78, allocSettlCurrency, Record, Value)->
   erlang:setelement(#rgr_trdAllocGrp_78.allocSettlCurrency, Record, Value);
setFieldInRecord(rgr_trdAllocGrp_78, individualAllocID, Record, Value)->
   erlang:setelement(#rgr_trdAllocGrp_78.individualAllocID, Record, Value);
setFieldInRecord(rgr_trdAllocGrp_78, nestedParties2, Record, Value)->
   erlang:setelement(#rgr_trdAllocGrp_78.nestedParties2, Record, Value);
setFieldInRecord(rgr_trdAllocGrp_78, allocQty, Record, Value)->
   erlang:setelement(#rgr_trdAllocGrp_78.allocQty, Record, Value);
setFieldInRecord(trdCapRptSideGrp, rgr_trdCapRptSideGrp_552, Record, Value)->
   erlang:setelement(#trdCapRptSideGrp.rgr_trdCapRptSideGrp_552, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, side, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.side, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, orderID, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.orderID, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, secondaryOrderID, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.secondaryOrderID, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, clOrdID, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.clOrdID, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, secondaryClOrdID, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.secondaryClOrdID, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, listID, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.listID, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, parties, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.parties, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, account, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.account, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, acctIDSource, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.acctIDSource, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, accountType, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.accountType, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, processCode, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.processCode, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, oddLot, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.oddLot, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, clrInstGrp, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.clrInstGrp, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, tradeInputSource, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.tradeInputSource, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, tradeInputDevice, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.tradeInputDevice, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, orderInputDevice, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.orderInputDevice, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, currency, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.currency, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, complianceID, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.complianceID, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, solicitedFlag, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.solicitedFlag, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, orderCapacity, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.orderCapacity, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, orderRestrictions, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.orderRestrictions, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, custOrderCapacity, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.custOrderCapacity, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, ordType, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.ordType, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, execInst, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.execInst, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, transBkdTime, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.transBkdTime, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.tradingSessionID, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.tradingSessionSubID, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, timeBracket, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.timeBracket, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, commissionData, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.commissionData, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, grossTradeAmt, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.grossTradeAmt, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, numDaysInterest, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.numDaysInterest, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, exDate, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.exDate, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, accruedInterestRate, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.accruedInterestRate, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, accruedInterestAmt, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.accruedInterestAmt, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, interestAtMaturity, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.interestAtMaturity, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, endAccruedInterestAmt, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.endAccruedInterestAmt, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, startCash, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.startCash, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, endCash, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.endCash, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, concession, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.concession, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, totalTakedown, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.totalTakedown, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, netMoney, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.netMoney, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, settlCurrAmt, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.settlCurrAmt, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, settlCurrency, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.settlCurrency, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, settlCurrFxRate, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.settlCurrFxRate, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, settlCurrFxRateCalc, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.settlCurrFxRateCalc, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, positionEffect, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.positionEffect, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, text, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.text, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.encodedTextLen, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, encodedText, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.encodedText, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, sideMultiLegReportingType, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.sideMultiLegReportingType, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, contAmtGrp, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.contAmtGrp, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, stipulations, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.stipulations, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, miscFeesGrp, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.miscFeesGrp, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, exchangeRule, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.exchangeRule, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, tradeAllocIndicator, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.tradeAllocIndicator, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, preallocMethod, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.preallocMethod, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, allocID, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.allocID, Record, Value);
setFieldInRecord(rgr_trdCapRptSideGrp_552, trdAllocGrp, Record, Value)->
   erlang:setelement(#rgr_trdCapRptSideGrp_552.trdAllocGrp, Record, Value);
setFieldInRecord(trdCollGrp, rgr_trdCollGrp_897, Record, Value)->
   erlang:setelement(#trdCollGrp.rgr_trdCollGrp_897, Record, Value);
setFieldInRecord(rgr_trdCollGrp_897, tradeReportID, Record, Value)->
   erlang:setelement(#rgr_trdCollGrp_897.tradeReportID, Record, Value);
setFieldInRecord(rgr_trdCollGrp_897, secondaryTradeReportID, Record, Value)->
   erlang:setelement(#rgr_trdCollGrp_897.secondaryTradeReportID, Record, Value);
setFieldInRecord(trdInstrmtLegGrp, rgr_trdInstrmtLegGrp_555, Record, Value)->
   erlang:setelement(#trdInstrmtLegGrp.rgr_trdInstrmtLegGrp_555, Record, Value);
setFieldInRecord(rgr_trdInstrmtLegGrp_555, instrumentLeg, Record, Value)->
   erlang:setelement(#rgr_trdInstrmtLegGrp_555.instrumentLeg, Record, Value);
setFieldInRecord(rgr_trdInstrmtLegGrp_555, legQty, Record, Value)->
   erlang:setelement(#rgr_trdInstrmtLegGrp_555.legQty, Record, Value);
setFieldInRecord(rgr_trdInstrmtLegGrp_555, legSwapType, Record, Value)->
   erlang:setelement(#rgr_trdInstrmtLegGrp_555.legSwapType, Record, Value);
setFieldInRecord(rgr_trdInstrmtLegGrp_555, legStipulations, Record, Value)->
   erlang:setelement(#rgr_trdInstrmtLegGrp_555.legStipulations, Record, Value);
setFieldInRecord(rgr_trdInstrmtLegGrp_555, legPositionEffect, Record, Value)->
   erlang:setelement(#rgr_trdInstrmtLegGrp_555.legPositionEffect, Record, Value);
setFieldInRecord(rgr_trdInstrmtLegGrp_555, legCoveredOrUncovered, Record, Value)->
   erlang:setelement(#rgr_trdInstrmtLegGrp_555.legCoveredOrUncovered, Record, Value);
setFieldInRecord(rgr_trdInstrmtLegGrp_555, nestedParties, Record, Value)->
   erlang:setelement(#rgr_trdInstrmtLegGrp_555.nestedParties, Record, Value);
setFieldInRecord(rgr_trdInstrmtLegGrp_555, legRefID, Record, Value)->
   erlang:setelement(#rgr_trdInstrmtLegGrp_555.legRefID, Record, Value);
setFieldInRecord(rgr_trdInstrmtLegGrp_555, legPrice, Record, Value)->
   erlang:setelement(#rgr_trdInstrmtLegGrp_555.legPrice, Record, Value);
setFieldInRecord(rgr_trdInstrmtLegGrp_555, legSettlType, Record, Value)->
   erlang:setelement(#rgr_trdInstrmtLegGrp_555.legSettlType, Record, Value);
setFieldInRecord(rgr_trdInstrmtLegGrp_555, legSettlDate, Record, Value)->
   erlang:setelement(#rgr_trdInstrmtLegGrp_555.legSettlDate, Record, Value);
setFieldInRecord(rgr_trdInstrmtLegGrp_555, legLastPx, Record, Value)->
   erlang:setelement(#rgr_trdInstrmtLegGrp_555.legLastPx, Record, Value);
setFieldInRecord(trdgSesGrp, rgr_trdgSesGrp_386, Record, Value)->
   erlang:setelement(#trdgSesGrp.rgr_trdgSesGrp_386, Record, Value);
setFieldInRecord(rgr_trdgSesGrp_386, tradingSessionID, Record, Value)->
   erlang:setelement(#rgr_trdgSesGrp_386.tradingSessionID, Record, Value);
setFieldInRecord(rgr_trdgSesGrp_386, tradingSessionSubID, Record, Value)->
   erlang:setelement(#rgr_trdgSesGrp_386.tradingSessionSubID, Record, Value);
setFieldInRecord(undInstrmtCollGrp, rgr_undInstrmtCollGrp_711, Record, Value)->
   erlang:setelement(#undInstrmtCollGrp.rgr_undInstrmtCollGrp_711, Record, Value);
setFieldInRecord(rgr_undInstrmtCollGrp_711, underlyingInstrument, Record, Value)->
   erlang:setelement(#rgr_undInstrmtCollGrp_711.underlyingInstrument, Record, Value);
setFieldInRecord(rgr_undInstrmtCollGrp_711, collAction, Record, Value)->
   erlang:setelement(#rgr_undInstrmtCollGrp_711.collAction, Record, Value);
setFieldInRecord(undInstrmtGrp, rgr_undInstrmtGrp_711, Record, Value)->
   erlang:setelement(#undInstrmtGrp.rgr_undInstrmtGrp_711, Record, Value);
setFieldInRecord(rgr_undInstrmtGrp_711, underlyingInstrument, Record, Value)->
   erlang:setelement(#rgr_undInstrmtGrp_711.underlyingInstrument, Record, Value);
setFieldInRecord(undInstrmtStrkPxGrp, rgr_undInstrmtStrkPxGrp_711, Record, Value)->
   erlang:setelement(#undInstrmtStrkPxGrp.rgr_undInstrmtStrkPxGrp_711, Record, Value);
setFieldInRecord(rgr_undInstrmtStrkPxGrp_711, underlyingInstrument, Record, Value)->
   erlang:setelement(#rgr_undInstrmtStrkPxGrp_711.underlyingInstrument, Record, Value);
setFieldInRecord(rgr_undInstrmtStrkPxGrp_711, prevClosePx, Record, Value)->
   erlang:setelement(#rgr_undInstrmtStrkPxGrp_711.prevClosePx, Record, Value);
setFieldInRecord(rgr_undInstrmtStrkPxGrp_711, clOrdID, Record, Value)->
   erlang:setelement(#rgr_undInstrmtStrkPxGrp_711.clOrdID, Record, Value);
setFieldInRecord(rgr_undInstrmtStrkPxGrp_711, secondaryClOrdID, Record, Value)->
   erlang:setelement(#rgr_undInstrmtStrkPxGrp_711.secondaryClOrdID, Record, Value);
setFieldInRecord(rgr_undInstrmtStrkPxGrp_711, side, Record, Value)->
   erlang:setelement(#rgr_undInstrmtStrkPxGrp_711.side, Record, Value);
setFieldInRecord(rgr_undInstrmtStrkPxGrp_711, price, Record, Value)->
   erlang:setelement(#rgr_undInstrmtStrkPxGrp_711.price, Record, Value);
setFieldInRecord(rgr_undInstrmtStrkPxGrp_711, currency, Record, Value)->
   erlang:setelement(#rgr_undInstrmtStrkPxGrp_711.currency, Record, Value);
setFieldInRecord(rgr_undInstrmtStrkPxGrp_711, text, Record, Value)->
   erlang:setelement(#rgr_undInstrmtStrkPxGrp_711.text, Record, Value);
setFieldInRecord(rgr_undInstrmtStrkPxGrp_711, encodedTextLen, Record, Value)->
   erlang:setelement(#rgr_undInstrmtStrkPxGrp_711.encodedTextLen, Record, Value);
setFieldInRecord(rgr_undInstrmtStrkPxGrp_711, encodedText, Record, Value)->
   erlang:setelement(#rgr_undInstrmtStrkPxGrp_711.encodedText, Record, Value);
setFieldInRecord(trdCapDtGrp, rgr_trdCapDtGrp_580, Record, Value)->
   erlang:setelement(#trdCapDtGrp.rgr_trdCapDtGrp_580, Record, Value);
setFieldInRecord(rgr_trdCapDtGrp_580, tradeDate, Record, Value)->
   erlang:setelement(#rgr_trdCapDtGrp_580.tradeDate, Record, Value);
setFieldInRecord(rgr_trdCapDtGrp_580, transactTime, Record, Value)->
   erlang:setelement(#rgr_trdCapDtGrp_580.transactTime, Record, Value);
setFieldInRecord(evntGrp, rgr_evntGrp_864, Record, Value)->
   erlang:setelement(#evntGrp.rgr_evntGrp_864, Record, Value);
setFieldInRecord(rgr_evntGrp_864, eventType, Record, Value)->
   erlang:setelement(#rgr_evntGrp_864.eventType, Record, Value);
setFieldInRecord(rgr_evntGrp_864, eventDate, Record, Value)->
   erlang:setelement(#rgr_evntGrp_864.eventDate, Record, Value);
setFieldInRecord(rgr_evntGrp_864, eventPx, Record, Value)->
   erlang:setelement(#rgr_evntGrp_864.eventPx, Record, Value);
setFieldInRecord(rgr_evntGrp_864, eventText, Record, Value)->
   erlang:setelement(#rgr_evntGrp_864.eventText, Record, Value);
setFieldInRecord(secAltIDGrp, rgr_secAltIDGrp_454, Record, Value)->
   erlang:setelement(#secAltIDGrp.rgr_secAltIDGrp_454, Record, Value);
setFieldInRecord(rgr_secAltIDGrp_454, securityAltID, Record, Value)->
   erlang:setelement(#rgr_secAltIDGrp_454.securityAltID, Record, Value);
setFieldInRecord(rgr_secAltIDGrp_454, securityAltIDSource, Record, Value)->
   erlang:setelement(#rgr_secAltIDGrp_454.securityAltIDSource, Record, Value);
setFieldInRecord(legSecAltIDGrp, rgr_legSecAltIDGrp_604, Record, Value)->
   erlang:setelement(#legSecAltIDGrp.rgr_legSecAltIDGrp_604, Record, Value);
setFieldInRecord(rgr_legSecAltIDGrp_604, legSecurityAltID, Record, Value)->
   erlang:setelement(#rgr_legSecAltIDGrp_604.legSecurityAltID, Record, Value);
setFieldInRecord(rgr_legSecAltIDGrp_604, legSecurityAltIDSource, Record, Value)->
   erlang:setelement(#rgr_legSecAltIDGrp_604.legSecurityAltIDSource, Record, Value);
setFieldInRecord(undSecAltIDGrp, rgr_undSecAltIDGrp_457, Record, Value)->
   erlang:setelement(#undSecAltIDGrp.rgr_undSecAltIDGrp_457, Record, Value);
setFieldInRecord(rgr_undSecAltIDGrp_457, underlyingSecurityAltID, Record, Value)->
   erlang:setelement(#rgr_undSecAltIDGrp_457.underlyingSecurityAltID, Record, Value);
setFieldInRecord(rgr_undSecAltIDGrp_457, underlyingSecurityAltIDSource, Record, Value)->
   erlang:setelement(#rgr_undSecAltIDGrp_457.underlyingSecurityAltIDSource, Record, Value);
setFieldInRecord(attrbGrp, rgr_attrbGrp_870, Record, Value)->
   erlang:setelement(#attrbGrp.rgr_attrbGrp_870, Record, Value);
setFieldInRecord(rgr_attrbGrp_870, instrAttribType, Record, Value)->
   erlang:setelement(#rgr_attrbGrp_870.instrAttribType, Record, Value);
setFieldInRecord(rgr_attrbGrp_870, instrAttribValue, Record, Value)->
   erlang:setelement(#rgr_attrbGrp_870.instrAttribValue, Record, Value);
setFieldInRecord(dlvyInstGrp, rgr_dlvyInstGrp_85, Record, Value)->
   erlang:setelement(#dlvyInstGrp.rgr_dlvyInstGrp_85, Record, Value);
setFieldInRecord(rgr_dlvyInstGrp_85, settlInstSource, Record, Value)->
   erlang:setelement(#rgr_dlvyInstGrp_85.settlInstSource, Record, Value);
setFieldInRecord(rgr_dlvyInstGrp_85, dlvyInstType, Record, Value)->
   erlang:setelement(#rgr_dlvyInstGrp_85.dlvyInstType, Record, Value);
setFieldInRecord(rgr_dlvyInstGrp_85, settlParties, Record, Value)->
   erlang:setelement(#rgr_dlvyInstGrp_85.settlParties, Record, Value);
setFieldInRecord(settlPtysSubGrp, rgr_settlPtysSubGrp_801, Record, Value)->
   erlang:setelement(#settlPtysSubGrp.rgr_settlPtysSubGrp_801, Record, Value);
setFieldInRecord(rgr_settlPtysSubGrp_801, settlPartySubID, Record, Value)->
   erlang:setelement(#rgr_settlPtysSubGrp_801.settlPartySubID, Record, Value);
setFieldInRecord(rgr_settlPtysSubGrp_801, settlPartySubIDType, Record, Value)->
   erlang:setelement(#rgr_settlPtysSubGrp_801.settlPartySubIDType, Record, Value);
setFieldInRecord(ptysSubGrp, rgr_ptysSubGrp_802, Record, Value)->
   erlang:setelement(#ptysSubGrp.rgr_ptysSubGrp_802, Record, Value);
setFieldInRecord(rgr_ptysSubGrp_802, partySubID, Record, Value)->
   erlang:setelement(#rgr_ptysSubGrp_802.partySubID, Record, Value);
setFieldInRecord(rgr_ptysSubGrp_802, partySubIDType, Record, Value)->
   erlang:setelement(#rgr_ptysSubGrp_802.partySubIDType, Record, Value);
setFieldInRecord(nstdPtysSubGrp, rgr_nstdPtysSubGrp_804, Record, Value)->
   erlang:setelement(#nstdPtysSubGrp.rgr_nstdPtysSubGrp_804, Record, Value);
setFieldInRecord(rgr_nstdPtysSubGrp_804, nestedPartySubID, Record, Value)->
   erlang:setelement(#rgr_nstdPtysSubGrp_804.nestedPartySubID, Record, Value);
setFieldInRecord(rgr_nstdPtysSubGrp_804, nestedPartySubIDType, Record, Value)->
   erlang:setelement(#rgr_nstdPtysSubGrp_804.nestedPartySubIDType, Record, Value);
setFieldInRecord(hop, rgr_hop_627, Record, Value)->
   erlang:setelement(#hop.rgr_hop_627, Record, Value);
setFieldInRecord(rgr_hop_627, hopCompID, Record, Value)->
   erlang:setelement(#rgr_hop_627.hopCompID, Record, Value);
setFieldInRecord(rgr_hop_627, hopSendingTime, Record, Value)->
   erlang:setelement(#rgr_hop_627.hopSendingTime, Record, Value);
setFieldInRecord(rgr_hop_627, hopRefID, Record, Value)->
   erlang:setelement(#rgr_hop_627.hopRefID, Record, Value);
setFieldInRecord(nstdPtys2SubGrp, rgr_nstdPtys2SubGrp_806, Record, Value)->
   erlang:setelement(#nstdPtys2SubGrp.rgr_nstdPtys2SubGrp_806, Record, Value);
setFieldInRecord(rgr_nstdPtys2SubGrp_806, nested2PartySubID, Record, Value)->
   erlang:setelement(#rgr_nstdPtys2SubGrp_806.nested2PartySubID, Record, Value);
setFieldInRecord(rgr_nstdPtys2SubGrp_806, nested2PartySubIDType, Record, Value)->
   erlang:setelement(#rgr_nstdPtys2SubGrp_806.nested2PartySubIDType, Record, Value);
setFieldInRecord(nstdPtys3SubGrp, rgr_nstdPtys3SubGrp_952, Record, Value)->
   erlang:setelement(#nstdPtys3SubGrp.rgr_nstdPtys3SubGrp_952, Record, Value);
setFieldInRecord(rgr_nstdPtys3SubGrp_952, nested3PartySubID, Record, Value)->
   erlang:setelement(#rgr_nstdPtys3SubGrp_952.nested3PartySubID, Record, Value);
setFieldInRecord(rgr_nstdPtys3SubGrp_952, nested3PartySubIDType, Record, Value)->
   erlang:setelement(#rgr_nstdPtys3SubGrp_952.nested3PartySubIDType, Record, Value);
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
setFieldInRecord(iOI, iOIID, Record, Value)->
    erlang:setelement(#iOI.iOIID, Record, Value);
setFieldInRecord(iOI, iOITransType, Record, Value)->
    erlang:setelement(#iOI.iOITransType, Record, Value);
setFieldInRecord(iOI, iOIRefID, Record, Value)->
    erlang:setelement(#iOI.iOIRefID, Record, Value);
setFieldInRecord(iOI, instrument, Record, Value)->
    erlang:setelement(#iOI.instrument, Record, Value);
setFieldInRecord(iOI, financingDetails, Record, Value)->
    erlang:setelement(#iOI.financingDetails, Record, Value);
setFieldInRecord(iOI, undInstrmtGrp, Record, Value)->
    erlang:setelement(#iOI.undInstrmtGrp, Record, Value);
setFieldInRecord(iOI, side, Record, Value)->
    erlang:setelement(#iOI.side, Record, Value);
setFieldInRecord(iOI, qtyType, Record, Value)->
    erlang:setelement(#iOI.qtyType, Record, Value);
setFieldInRecord(iOI, orderQtyData, Record, Value)->
    erlang:setelement(#iOI.orderQtyData, Record, Value);
setFieldInRecord(iOI, iOIQty, Record, Value)->
    erlang:setelement(#iOI.iOIQty, Record, Value);
setFieldInRecord(iOI, currency, Record, Value)->
    erlang:setelement(#iOI.currency, Record, Value);
setFieldInRecord(iOI, stipulations, Record, Value)->
    erlang:setelement(#iOI.stipulations, Record, Value);
setFieldInRecord(iOI, instrmtLegIOIGrp, Record, Value)->
    erlang:setelement(#iOI.instrmtLegIOIGrp, Record, Value);
setFieldInRecord(iOI, priceType, Record, Value)->
    erlang:setelement(#iOI.priceType, Record, Value);
setFieldInRecord(iOI, price, Record, Value)->
    erlang:setelement(#iOI.price, Record, Value);
setFieldInRecord(iOI, validUntilTime, Record, Value)->
    erlang:setelement(#iOI.validUntilTime, Record, Value);
setFieldInRecord(iOI, iOIQltyInd, Record, Value)->
    erlang:setelement(#iOI.iOIQltyInd, Record, Value);
setFieldInRecord(iOI, iOINaturalFlag, Record, Value)->
    erlang:setelement(#iOI.iOINaturalFlag, Record, Value);
setFieldInRecord(iOI, iOIQualGrp, Record, Value)->
    erlang:setelement(#iOI.iOIQualGrp, Record, Value);
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
setFieldInRecord(iOI, routingGrp, Record, Value)->
    erlang:setelement(#iOI.routingGrp, Record, Value);
setFieldInRecord(iOI, spreadOrBenchmarkCurveData, Record, Value)->
    erlang:setelement(#iOI.spreadOrBenchmarkCurveData, Record, Value);
setFieldInRecord(iOI, yieldData, Record, Value)->
    erlang:setelement(#iOI.yieldData, Record, Value);
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
setFieldInRecord(advertisement, instrmtLegGrp, Record, Value)->
    erlang:setelement(#advertisement.instrmtLegGrp, Record, Value);
setFieldInRecord(advertisement, undInstrmtGrp, Record, Value)->
    erlang:setelement(#advertisement.undInstrmtGrp, Record, Value);
setFieldInRecord(advertisement, advSide, Record, Value)->
    erlang:setelement(#advertisement.advSide, Record, Value);
setFieldInRecord(advertisement, quantity, Record, Value)->
    erlang:setelement(#advertisement.quantity, Record, Value);
setFieldInRecord(advertisement, qtyType, Record, Value)->
    erlang:setelement(#advertisement.qtyType, Record, Value);
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
setFieldInRecord(executionReport, quoteRespID, Record, Value)->
    erlang:setelement(#executionReport.quoteRespID, Record, Value);
setFieldInRecord(executionReport, ordStatusReqID, Record, Value)->
    erlang:setelement(#executionReport.ordStatusReqID, Record, Value);
setFieldInRecord(executionReport, massStatusReqID, Record, Value)->
    erlang:setelement(#executionReport.massStatusReqID, Record, Value);
setFieldInRecord(executionReport, totNumReports, Record, Value)->
    erlang:setelement(#executionReport.totNumReports, Record, Value);
setFieldInRecord(executionReport, lastRptRequested, Record, Value)->
    erlang:setelement(#executionReport.lastRptRequested, Record, Value);
setFieldInRecord(executionReport, parties, Record, Value)->
    erlang:setelement(#executionReport.parties, Record, Value);
setFieldInRecord(executionReport, tradeOriginationDate, Record, Value)->
    erlang:setelement(#executionReport.tradeOriginationDate, Record, Value);
setFieldInRecord(executionReport, contraGrp, Record, Value)->
    erlang:setelement(#executionReport.contraGrp, Record, Value);
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
setFieldInRecord(executionReport, acctIDSource, Record, Value)->
    erlang:setelement(#executionReport.acctIDSource, Record, Value);
setFieldInRecord(executionReport, accountType, Record, Value)->
    erlang:setelement(#executionReport.accountType, Record, Value);
setFieldInRecord(executionReport, dayBookingInst, Record, Value)->
    erlang:setelement(#executionReport.dayBookingInst, Record, Value);
setFieldInRecord(executionReport, bookingUnit, Record, Value)->
    erlang:setelement(#executionReport.bookingUnit, Record, Value);
setFieldInRecord(executionReport, preallocMethod, Record, Value)->
    erlang:setelement(#executionReport.preallocMethod, Record, Value);
setFieldInRecord(executionReport, settlType, Record, Value)->
    erlang:setelement(#executionReport.settlType, Record, Value);
setFieldInRecord(executionReport, settlDate, Record, Value)->
    erlang:setelement(#executionReport.settlDate, Record, Value);
setFieldInRecord(executionReport, cashMargin, Record, Value)->
    erlang:setelement(#executionReport.cashMargin, Record, Value);
setFieldInRecord(executionReport, clearingFeeIndicator, Record, Value)->
    erlang:setelement(#executionReport.clearingFeeIndicator, Record, Value);
setFieldInRecord(executionReport, instrument, Record, Value)->
    erlang:setelement(#executionReport.instrument, Record, Value);
setFieldInRecord(executionReport, financingDetails, Record, Value)->
    erlang:setelement(#executionReport.financingDetails, Record, Value);
setFieldInRecord(executionReport, undInstrmtGrp, Record, Value)->
    erlang:setelement(#executionReport.undInstrmtGrp, Record, Value);
setFieldInRecord(executionReport, side, Record, Value)->
    erlang:setelement(#executionReport.side, Record, Value);
setFieldInRecord(executionReport, stipulations, Record, Value)->
    erlang:setelement(#executionReport.stipulations, Record, Value);
setFieldInRecord(executionReport, qtyType, Record, Value)->
    erlang:setelement(#executionReport.qtyType, Record, Value);
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
setFieldInRecord(executionReport, pegInstructions, Record, Value)->
    erlang:setelement(#executionReport.pegInstructions, Record, Value);
setFieldInRecord(executionReport, discretionInstructions, Record, Value)->
    erlang:setelement(#executionReport.discretionInstructions, Record, Value);
setFieldInRecord(executionReport, peggedPrice, Record, Value)->
    erlang:setelement(#executionReport.peggedPrice, Record, Value);
setFieldInRecord(executionReport, discretionPrice, Record, Value)->
    erlang:setelement(#executionReport.discretionPrice, Record, Value);
setFieldInRecord(executionReport, targetStrategy, Record, Value)->
    erlang:setelement(#executionReport.targetStrategy, Record, Value);
setFieldInRecord(executionReport, targetStrategyParameters, Record, Value)->
    erlang:setelement(#executionReport.targetStrategyParameters, Record, Value);
setFieldInRecord(executionReport, participationRate, Record, Value)->
    erlang:setelement(#executionReport.participationRate, Record, Value);
setFieldInRecord(executionReport, targetStrategyPerformance, Record, Value)->
    erlang:setelement(#executionReport.targetStrategyPerformance, Record, Value);
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
setFieldInRecord(executionReport, lastQty, Record, Value)->
    erlang:setelement(#executionReport.lastQty, Record, Value);
setFieldInRecord(executionReport, underlyingLastQty, Record, Value)->
    erlang:setelement(#executionReport.underlyingLastQty, Record, Value);
setFieldInRecord(executionReport, lastPx, Record, Value)->
    erlang:setelement(#executionReport.lastPx, Record, Value);
setFieldInRecord(executionReport, underlyingLastPx, Record, Value)->
    erlang:setelement(#executionReport.underlyingLastPx, Record, Value);
setFieldInRecord(executionReport, lastParPx, Record, Value)->
    erlang:setelement(#executionReport.lastParPx, Record, Value);
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
setFieldInRecord(executionReport, timeBracket, Record, Value)->
    erlang:setelement(#executionReport.timeBracket, Record, Value);
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
setFieldInRecord(executionReport, interestAtMaturity, Record, Value)->
    erlang:setelement(#executionReport.interestAtMaturity, Record, Value);
setFieldInRecord(executionReport, endAccruedInterestAmt, Record, Value)->
    erlang:setelement(#executionReport.endAccruedInterestAmt, Record, Value);
setFieldInRecord(executionReport, startCash, Record, Value)->
    erlang:setelement(#executionReport.startCash, Record, Value);
setFieldInRecord(executionReport, endCash, Record, Value)->
    erlang:setelement(#executionReport.endCash, Record, Value);
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
setFieldInRecord(executionReport, bookingType, Record, Value)->
    erlang:setelement(#executionReport.bookingType, Record, Value);
setFieldInRecord(executionReport, text, Record, Value)->
    erlang:setelement(#executionReport.text, Record, Value);
setFieldInRecord(executionReport, encodedTextLen, Record, Value)->
    erlang:setelement(#executionReport.encodedTextLen, Record, Value);
setFieldInRecord(executionReport, encodedText, Record, Value)->
    erlang:setelement(#executionReport.encodedText, Record, Value);
setFieldInRecord(executionReport, settlDate2, Record, Value)->
    erlang:setelement(#executionReport.settlDate2, Record, Value);
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
setFieldInRecord(executionReport, lastLiquidityInd, Record, Value)->
    erlang:setelement(#executionReport.lastLiquidityInd, Record, Value);
setFieldInRecord(executionReport, contAmtGrp, Record, Value)->
    erlang:setelement(#executionReport.contAmtGrp, Record, Value);
setFieldInRecord(executionReport, instrmtLegExecGrp, Record, Value)->
    erlang:setelement(#executionReport.instrmtLegExecGrp, Record, Value);
setFieldInRecord(executionReport, copyMsgIndicator, Record, Value)->
    erlang:setelement(#executionReport.copyMsgIndicator, Record, Value);
setFieldInRecord(executionReport, miscFeesGrp, Record, Value)->
    erlang:setelement(#executionReport.miscFeesGrp, Record, Value);
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
setFieldInRecord(orderCancelReject, acctIDSource, Record, Value)->
    erlang:setelement(#orderCancelReject.acctIDSource, Record, Value);
setFieldInRecord(orderCancelReject, accountType, Record, Value)->
    erlang:setelement(#orderCancelReject.accountType, Record, Value);
setFieldInRecord(orderCancelReject, tradeOriginationDate, Record, Value)->
    erlang:setelement(#orderCancelReject.tradeOriginationDate, Record, Value);
setFieldInRecord(orderCancelReject, tradeDate, Record, Value)->
    erlang:setelement(#orderCancelReject.tradeDate, Record, Value);
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
setFieldInRecord(logon, nextExpectedMsgSeqNum, Record, Value)->
    erlang:setelement(#logon.nextExpectedMsgSeqNum, Record, Value);
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
setFieldInRecord(news, routingGrp, Record, Value)->
    erlang:setelement(#news.routingGrp, Record, Value);
setFieldInRecord(news, instrmtGrp, Record, Value)->
    erlang:setelement(#news.instrmtGrp, Record, Value);
setFieldInRecord(news, instrmtLegGrp, Record, Value)->
    erlang:setelement(#news.instrmtLegGrp, Record, Value);
setFieldInRecord(news, undInstrmtGrp, Record, Value)->
    erlang:setelement(#news.undInstrmtGrp, Record, Value);
setFieldInRecord(news, linesOfTextGrp, Record, Value)->
    erlang:setelement(#news.linesOfTextGrp, Record, Value);
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
setFieldInRecord(email, routingGrp, Record, Value)->
    erlang:setelement(#email.routingGrp, Record, Value);
setFieldInRecord(email, instrmtGrp, Record, Value)->
    erlang:setelement(#email.instrmtGrp, Record, Value);
setFieldInRecord(email, undInstrmtGrp, Record, Value)->
    erlang:setelement(#email.undInstrmtGrp, Record, Value);
setFieldInRecord(email, instrmtLegGrp, Record, Value)->
    erlang:setelement(#email.instrmtLegGrp, Record, Value);
setFieldInRecord(email, orderID, Record, Value)->
    erlang:setelement(#email.orderID, Record, Value);
setFieldInRecord(email, clOrdID, Record, Value)->
    erlang:setelement(#email.clOrdID, Record, Value);
setFieldInRecord(email, linesOfTextGrp, Record, Value)->
    erlang:setelement(#email.linesOfTextGrp, Record, Value);
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
setFieldInRecord(newOrderSingle, tradeDate, Record, Value)->
    erlang:setelement(#newOrderSingle.tradeDate, Record, Value);
setFieldInRecord(newOrderSingle, account, Record, Value)->
    erlang:setelement(#newOrderSingle.account, Record, Value);
setFieldInRecord(newOrderSingle, acctIDSource, Record, Value)->
    erlang:setelement(#newOrderSingle.acctIDSource, Record, Value);
setFieldInRecord(newOrderSingle, accountType, Record, Value)->
    erlang:setelement(#newOrderSingle.accountType, Record, Value);
setFieldInRecord(newOrderSingle, dayBookingInst, Record, Value)->
    erlang:setelement(#newOrderSingle.dayBookingInst, Record, Value);
setFieldInRecord(newOrderSingle, bookingUnit, Record, Value)->
    erlang:setelement(#newOrderSingle.bookingUnit, Record, Value);
setFieldInRecord(newOrderSingle, preallocMethod, Record, Value)->
    erlang:setelement(#newOrderSingle.preallocMethod, Record, Value);
setFieldInRecord(newOrderSingle, allocID, Record, Value)->
    erlang:setelement(#newOrderSingle.allocID, Record, Value);
setFieldInRecord(newOrderSingle, preAllocGrp, Record, Value)->
    erlang:setelement(#newOrderSingle.preAllocGrp, Record, Value);
setFieldInRecord(newOrderSingle, settlType, Record, Value)->
    erlang:setelement(#newOrderSingle.settlType, Record, Value);
setFieldInRecord(newOrderSingle, settlDate, Record, Value)->
    erlang:setelement(#newOrderSingle.settlDate, Record, Value);
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
setFieldInRecord(newOrderSingle, trdgSesGrp, Record, Value)->
    erlang:setelement(#newOrderSingle.trdgSesGrp, Record, Value);
setFieldInRecord(newOrderSingle, processCode, Record, Value)->
    erlang:setelement(#newOrderSingle.processCode, Record, Value);
setFieldInRecord(newOrderSingle, instrument, Record, Value)->
    erlang:setelement(#newOrderSingle.instrument, Record, Value);
setFieldInRecord(newOrderSingle, financingDetails, Record, Value)->
    erlang:setelement(#newOrderSingle.financingDetails, Record, Value);
setFieldInRecord(newOrderSingle, undInstrmtGrp, Record, Value)->
    erlang:setelement(#newOrderSingle.undInstrmtGrp, Record, Value);
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
setFieldInRecord(newOrderSingle, qtyType, Record, Value)->
    erlang:setelement(#newOrderSingle.qtyType, Record, Value);
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
setFieldInRecord(newOrderSingle, iOIID, Record, Value)->
    erlang:setelement(#newOrderSingle.iOIID, Record, Value);
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
setFieldInRecord(newOrderSingle, forexReq, Record, Value)->
    erlang:setelement(#newOrderSingle.forexReq, Record, Value);
setFieldInRecord(newOrderSingle, settlCurrency, Record, Value)->
    erlang:setelement(#newOrderSingle.settlCurrency, Record, Value);
setFieldInRecord(newOrderSingle, bookingType, Record, Value)->
    erlang:setelement(#newOrderSingle.bookingType, Record, Value);
setFieldInRecord(newOrderSingle, text, Record, Value)->
    erlang:setelement(#newOrderSingle.text, Record, Value);
setFieldInRecord(newOrderSingle, encodedTextLen, Record, Value)->
    erlang:setelement(#newOrderSingle.encodedTextLen, Record, Value);
setFieldInRecord(newOrderSingle, encodedText, Record, Value)->
    erlang:setelement(#newOrderSingle.encodedText, Record, Value);
setFieldInRecord(newOrderSingle, settlDate2, Record, Value)->
    erlang:setelement(#newOrderSingle.settlDate2, Record, Value);
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
setFieldInRecord(newOrderSingle, pegInstructions, Record, Value)->
    erlang:setelement(#newOrderSingle.pegInstructions, Record, Value);
setFieldInRecord(newOrderSingle, discretionInstructions, Record, Value)->
    erlang:setelement(#newOrderSingle.discretionInstructions, Record, Value);
setFieldInRecord(newOrderSingle, targetStrategy, Record, Value)->
    erlang:setelement(#newOrderSingle.targetStrategy, Record, Value);
setFieldInRecord(newOrderSingle, targetStrategyParameters, Record, Value)->
    erlang:setelement(#newOrderSingle.targetStrategyParameters, Record, Value);
setFieldInRecord(newOrderSingle, participationRate, Record, Value)->
    erlang:setelement(#newOrderSingle.participationRate, Record, Value);
setFieldInRecord(newOrderSingle, cancellationRights, Record, Value)->
    erlang:setelement(#newOrderSingle.cancellationRights, Record, Value);
setFieldInRecord(newOrderSingle, moneyLaunderingStatus, Record, Value)->
    erlang:setelement(#newOrderSingle.moneyLaunderingStatus, Record, Value);
setFieldInRecord(newOrderSingle, registID, Record, Value)->
    erlang:setelement(#newOrderSingle.registID, Record, Value);
setFieldInRecord(newOrderSingle, designation, Record, Value)->
    erlang:setelement(#newOrderSingle.designation, Record, Value);
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
setFieldInRecord(newOrderList, allowableOneSidednessPct, Record, Value)->
    erlang:setelement(#newOrderList.allowableOneSidednessPct, Record, Value);
setFieldInRecord(newOrderList, allowableOneSidednessValue, Record, Value)->
    erlang:setelement(#newOrderList.allowableOneSidednessValue, Record, Value);
setFieldInRecord(newOrderList, allowableOneSidednessCurr, Record, Value)->
    erlang:setelement(#newOrderList.allowableOneSidednessCurr, Record, Value);
setFieldInRecord(newOrderList, totNoOrders, Record, Value)->
    erlang:setelement(#newOrderList.totNoOrders, Record, Value);
setFieldInRecord(newOrderList, lastFragment, Record, Value)->
    erlang:setelement(#newOrderList.lastFragment, Record, Value);
setFieldInRecord(newOrderList, listOrdGrp, Record, Value)->
    erlang:setelement(#newOrderList.listOrdGrp, Record, Value);
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
setFieldInRecord(orderCancelRequest, acctIDSource, Record, Value)->
    erlang:setelement(#orderCancelRequest.acctIDSource, Record, Value);
setFieldInRecord(orderCancelRequest, accountType, Record, Value)->
    erlang:setelement(#orderCancelRequest.accountType, Record, Value);
setFieldInRecord(orderCancelRequest, parties, Record, Value)->
    erlang:setelement(#orderCancelRequest.parties, Record, Value);
setFieldInRecord(orderCancelRequest, instrument, Record, Value)->
    erlang:setelement(#orderCancelRequest.instrument, Record, Value);
setFieldInRecord(orderCancelRequest, financingDetails, Record, Value)->
    erlang:setelement(#orderCancelRequest.financingDetails, Record, Value);
setFieldInRecord(orderCancelRequest, undInstrmtGrp, Record, Value)->
    erlang:setelement(#orderCancelRequest.undInstrmtGrp, Record, Value);
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
setFieldInRecord(orderCancelReplaceRequest, tradeDate, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.tradeDate, Record, Value);
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
setFieldInRecord(orderCancelReplaceRequest, acctIDSource, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.acctIDSource, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, accountType, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.accountType, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, dayBookingInst, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.dayBookingInst, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, bookingUnit, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.bookingUnit, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, preallocMethod, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.preallocMethod, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, allocID, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.allocID, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, preAllocGrp, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.preAllocGrp, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, settlType, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.settlType, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, settlDate, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.settlDate, Record, Value);
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
setFieldInRecord(orderCancelReplaceRequest, trdgSesGrp, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.trdgSesGrp, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, instrument, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.instrument, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, financingDetails, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.financingDetails, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, undInstrmtGrp, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.undInstrmtGrp, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, side, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.side, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, transactTime, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.transactTime, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, qtyType, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.qtyType, Record, Value);
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
setFieldInRecord(orderCancelReplaceRequest, pegInstructions, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.pegInstructions, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, discretionInstructions, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.discretionInstructions, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, targetStrategy, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.targetStrategy, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, targetStrategyParameters, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.targetStrategyParameters, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, participationRate, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.participationRate, Record, Value);
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
setFieldInRecord(orderCancelReplaceRequest, forexReq, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.forexReq, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, settlCurrency, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.settlCurrency, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, bookingType, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.bookingType, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, text, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.text, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, encodedTextLen, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.encodedTextLen, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, encodedText, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.encodedText, Record, Value);
setFieldInRecord(orderCancelReplaceRequest, settlDate2, Record, Value)->
    erlang:setelement(#orderCancelReplaceRequest.settlDate2, Record, Value);
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
setFieldInRecord(orderStatusRequest, ordStatusReqID, Record, Value)->
    erlang:setelement(#orderStatusRequest.ordStatusReqID, Record, Value);
setFieldInRecord(orderStatusRequest, account, Record, Value)->
    erlang:setelement(#orderStatusRequest.account, Record, Value);
setFieldInRecord(orderStatusRequest, acctIDSource, Record, Value)->
    erlang:setelement(#orderStatusRequest.acctIDSource, Record, Value);
setFieldInRecord(orderStatusRequest, instrument, Record, Value)->
    erlang:setelement(#orderStatusRequest.instrument, Record, Value);
setFieldInRecord(orderStatusRequest, financingDetails, Record, Value)->
    erlang:setelement(#orderStatusRequest.financingDetails, Record, Value);
setFieldInRecord(orderStatusRequest, undInstrmtGrp, Record, Value)->
    erlang:setelement(#orderStatusRequest.undInstrmtGrp, Record, Value);
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
setFieldInRecord(allocationInstruction, allocType, Record, Value)->
    erlang:setelement(#allocationInstruction.allocType, Record, Value);
setFieldInRecord(allocationInstruction, secondaryAllocID, Record, Value)->
    erlang:setelement(#allocationInstruction.secondaryAllocID, Record, Value);
setFieldInRecord(allocationInstruction, refAllocID, Record, Value)->
    erlang:setelement(#allocationInstruction.refAllocID, Record, Value);
setFieldInRecord(allocationInstruction, allocCancReplaceReason, Record, Value)->
    erlang:setelement(#allocationInstruction.allocCancReplaceReason, Record, Value);
setFieldInRecord(allocationInstruction, allocIntermedReqType, Record, Value)->
    erlang:setelement(#allocationInstruction.allocIntermedReqType, Record, Value);
setFieldInRecord(allocationInstruction, allocLinkID, Record, Value)->
    erlang:setelement(#allocationInstruction.allocLinkID, Record, Value);
setFieldInRecord(allocationInstruction, allocLinkType, Record, Value)->
    erlang:setelement(#allocationInstruction.allocLinkType, Record, Value);
setFieldInRecord(allocationInstruction, bookingRefID, Record, Value)->
    erlang:setelement(#allocationInstruction.bookingRefID, Record, Value);
setFieldInRecord(allocationInstruction, allocNoOrdersType, Record, Value)->
    erlang:setelement(#allocationInstruction.allocNoOrdersType, Record, Value);
setFieldInRecord(allocationInstruction, ordAllocGrp, Record, Value)->
    erlang:setelement(#allocationInstruction.ordAllocGrp, Record, Value);
setFieldInRecord(allocationInstruction, execAllocGrp, Record, Value)->
    erlang:setelement(#allocationInstruction.execAllocGrp, Record, Value);
setFieldInRecord(allocationInstruction, previouslyReported, Record, Value)->
    erlang:setelement(#allocationInstruction.previouslyReported, Record, Value);
setFieldInRecord(allocationInstruction, reversalIndicator, Record, Value)->
    erlang:setelement(#allocationInstruction.reversalIndicator, Record, Value);
setFieldInRecord(allocationInstruction, matchType, Record, Value)->
    erlang:setelement(#allocationInstruction.matchType, Record, Value);
setFieldInRecord(allocationInstruction, side, Record, Value)->
    erlang:setelement(#allocationInstruction.side, Record, Value);
setFieldInRecord(allocationInstruction, instrument, Record, Value)->
    erlang:setelement(#allocationInstruction.instrument, Record, Value);
setFieldInRecord(allocationInstruction, instrumentExtension, Record, Value)->
    erlang:setelement(#allocationInstruction.instrumentExtension, Record, Value);
setFieldInRecord(allocationInstruction, financingDetails, Record, Value)->
    erlang:setelement(#allocationInstruction.financingDetails, Record, Value);
setFieldInRecord(allocationInstruction, undInstrmtGrp, Record, Value)->
    erlang:setelement(#allocationInstruction.undInstrmtGrp, Record, Value);
setFieldInRecord(allocationInstruction, instrmtLegGrp, Record, Value)->
    erlang:setelement(#allocationInstruction.instrmtLegGrp, Record, Value);
setFieldInRecord(allocationInstruction, quantity, Record, Value)->
    erlang:setelement(#allocationInstruction.quantity, Record, Value);
setFieldInRecord(allocationInstruction, qtyType, Record, Value)->
    erlang:setelement(#allocationInstruction.qtyType, Record, Value);
setFieldInRecord(allocationInstruction, lastMkt, Record, Value)->
    erlang:setelement(#allocationInstruction.lastMkt, Record, Value);
setFieldInRecord(allocationInstruction, tradeOriginationDate, Record, Value)->
    erlang:setelement(#allocationInstruction.tradeOriginationDate, Record, Value);
setFieldInRecord(allocationInstruction, tradingSessionID, Record, Value)->
    erlang:setelement(#allocationInstruction.tradingSessionID, Record, Value);
setFieldInRecord(allocationInstruction, tradingSessionSubID, Record, Value)->
    erlang:setelement(#allocationInstruction.tradingSessionSubID, Record, Value);
setFieldInRecord(allocationInstruction, priceType, Record, Value)->
    erlang:setelement(#allocationInstruction.priceType, Record, Value);
setFieldInRecord(allocationInstruction, avgPx, Record, Value)->
    erlang:setelement(#allocationInstruction.avgPx, Record, Value);
setFieldInRecord(allocationInstruction, avgParPx, Record, Value)->
    erlang:setelement(#allocationInstruction.avgParPx, Record, Value);
setFieldInRecord(allocationInstruction, spreadOrBenchmarkCurveData, Record, Value)->
    erlang:setelement(#allocationInstruction.spreadOrBenchmarkCurveData, Record, Value);
setFieldInRecord(allocationInstruction, currency, Record, Value)->
    erlang:setelement(#allocationInstruction.currency, Record, Value);
setFieldInRecord(allocationInstruction, avgPxPrecision, Record, Value)->
    erlang:setelement(#allocationInstruction.avgPxPrecision, Record, Value);
setFieldInRecord(allocationInstruction, parties, Record, Value)->
    erlang:setelement(#allocationInstruction.parties, Record, Value);
setFieldInRecord(allocationInstruction, tradeDate, Record, Value)->
    erlang:setelement(#allocationInstruction.tradeDate, Record, Value);
setFieldInRecord(allocationInstruction, transactTime, Record, Value)->
    erlang:setelement(#allocationInstruction.transactTime, Record, Value);
setFieldInRecord(allocationInstruction, settlType, Record, Value)->
    erlang:setelement(#allocationInstruction.settlType, Record, Value);
setFieldInRecord(allocationInstruction, settlDate, Record, Value)->
    erlang:setelement(#allocationInstruction.settlDate, Record, Value);
setFieldInRecord(allocationInstruction, bookingType, Record, Value)->
    erlang:setelement(#allocationInstruction.bookingType, Record, Value);
setFieldInRecord(allocationInstruction, grossTradeAmt, Record, Value)->
    erlang:setelement(#allocationInstruction.grossTradeAmt, Record, Value);
setFieldInRecord(allocationInstruction, concession, Record, Value)->
    erlang:setelement(#allocationInstruction.concession, Record, Value);
setFieldInRecord(allocationInstruction, totalTakedown, Record, Value)->
    erlang:setelement(#allocationInstruction.totalTakedown, Record, Value);
setFieldInRecord(allocationInstruction, netMoney, Record, Value)->
    erlang:setelement(#allocationInstruction.netMoney, Record, Value);
setFieldInRecord(allocationInstruction, positionEffect, Record, Value)->
    erlang:setelement(#allocationInstruction.positionEffect, Record, Value);
setFieldInRecord(allocationInstruction, autoAcceptIndicator, Record, Value)->
    erlang:setelement(#allocationInstruction.autoAcceptIndicator, Record, Value);
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
setFieldInRecord(allocationInstruction, accruedInterestAmt, Record, Value)->
    erlang:setelement(#allocationInstruction.accruedInterestAmt, Record, Value);
setFieldInRecord(allocationInstruction, totalAccruedInterestAmt, Record, Value)->
    erlang:setelement(#allocationInstruction.totalAccruedInterestAmt, Record, Value);
setFieldInRecord(allocationInstruction, interestAtMaturity, Record, Value)->
    erlang:setelement(#allocationInstruction.interestAtMaturity, Record, Value);
setFieldInRecord(allocationInstruction, endAccruedInterestAmt, Record, Value)->
    erlang:setelement(#allocationInstruction.endAccruedInterestAmt, Record, Value);
setFieldInRecord(allocationInstruction, startCash, Record, Value)->
    erlang:setelement(#allocationInstruction.startCash, Record, Value);
setFieldInRecord(allocationInstruction, endCash, Record, Value)->
    erlang:setelement(#allocationInstruction.endCash, Record, Value);
setFieldInRecord(allocationInstruction, legalConfirm, Record, Value)->
    erlang:setelement(#allocationInstruction.legalConfirm, Record, Value);
setFieldInRecord(allocationInstruction, stipulations, Record, Value)->
    erlang:setelement(#allocationInstruction.stipulations, Record, Value);
setFieldInRecord(allocationInstruction, yieldData, Record, Value)->
    erlang:setelement(#allocationInstruction.yieldData, Record, Value);
setFieldInRecord(allocationInstruction, totNoAllocs, Record, Value)->
    erlang:setelement(#allocationInstruction.totNoAllocs, Record, Value);
setFieldInRecord(allocationInstruction, lastFragment, Record, Value)->
    erlang:setelement(#allocationInstruction.lastFragment, Record, Value);
setFieldInRecord(allocationInstruction, allocGrp, Record, Value)->
    erlang:setelement(#allocationInstruction.allocGrp, Record, Value);
setFieldInRecord(allocationInstruction, standardTrailer, Record, Value)->
    erlang:setelement(#allocationInstruction.standardTrailer, Record, Value);
setFieldInRecord(listCancelRequest, standardHeader, Record, Value)->
    erlang:setelement(#listCancelRequest.standardHeader, Record, Value);
setFieldInRecord(listCancelRequest, listID, Record, Value)->
    erlang:setelement(#listCancelRequest.listID, Record, Value);
setFieldInRecord(listCancelRequest, transactTime, Record, Value)->
    erlang:setelement(#listCancelRequest.transactTime, Record, Value);
setFieldInRecord(listCancelRequest, tradeOriginationDate, Record, Value)->
    erlang:setelement(#listCancelRequest.tradeOriginationDate, Record, Value);
setFieldInRecord(listCancelRequest, tradeDate, Record, Value)->
    erlang:setelement(#listCancelRequest.tradeDate, Record, Value);
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
setFieldInRecord(listStatus, lastFragment, Record, Value)->
    erlang:setelement(#listStatus.lastFragment, Record, Value);
setFieldInRecord(listStatus, ordListStatGrp, Record, Value)->
    erlang:setelement(#listStatus.ordListStatGrp, Record, Value);
setFieldInRecord(listStatus, standardTrailer, Record, Value)->
    erlang:setelement(#listStatus.standardTrailer, Record, Value);
setFieldInRecord(allocationInstructionAck, standardHeader, Record, Value)->
    erlang:setelement(#allocationInstructionAck.standardHeader, Record, Value);
setFieldInRecord(allocationInstructionAck, allocID, Record, Value)->
    erlang:setelement(#allocationInstructionAck.allocID, Record, Value);
setFieldInRecord(allocationInstructionAck, parties, Record, Value)->
    erlang:setelement(#allocationInstructionAck.parties, Record, Value);
setFieldInRecord(allocationInstructionAck, secondaryAllocID, Record, Value)->
    erlang:setelement(#allocationInstructionAck.secondaryAllocID, Record, Value);
setFieldInRecord(allocationInstructionAck, tradeDate, Record, Value)->
    erlang:setelement(#allocationInstructionAck.tradeDate, Record, Value);
setFieldInRecord(allocationInstructionAck, transactTime, Record, Value)->
    erlang:setelement(#allocationInstructionAck.transactTime, Record, Value);
setFieldInRecord(allocationInstructionAck, allocStatus, Record, Value)->
    erlang:setelement(#allocationInstructionAck.allocStatus, Record, Value);
setFieldInRecord(allocationInstructionAck, allocRejCode, Record, Value)->
    erlang:setelement(#allocationInstructionAck.allocRejCode, Record, Value);
setFieldInRecord(allocationInstructionAck, allocType, Record, Value)->
    erlang:setelement(#allocationInstructionAck.allocType, Record, Value);
setFieldInRecord(allocationInstructionAck, allocIntermedReqType, Record, Value)->
    erlang:setelement(#allocationInstructionAck.allocIntermedReqType, Record, Value);
setFieldInRecord(allocationInstructionAck, matchStatus, Record, Value)->
    erlang:setelement(#allocationInstructionAck.matchStatus, Record, Value);
setFieldInRecord(allocationInstructionAck, produkt, Record, Value)->
    erlang:setelement(#allocationInstructionAck.produkt, Record, Value);
setFieldInRecord(allocationInstructionAck, securityType, Record, Value)->
    erlang:setelement(#allocationInstructionAck.securityType, Record, Value);
setFieldInRecord(allocationInstructionAck, text, Record, Value)->
    erlang:setelement(#allocationInstructionAck.text, Record, Value);
setFieldInRecord(allocationInstructionAck, encodedTextLen, Record, Value)->
    erlang:setelement(#allocationInstructionAck.encodedTextLen, Record, Value);
setFieldInRecord(allocationInstructionAck, encodedText, Record, Value)->
    erlang:setelement(#allocationInstructionAck.encodedText, Record, Value);
setFieldInRecord(allocationInstructionAck, allocAckGrp, Record, Value)->
    erlang:setelement(#allocationInstructionAck.allocAckGrp, Record, Value);
setFieldInRecord(allocationInstructionAck, standardTrailer, Record, Value)->
    erlang:setelement(#allocationInstructionAck.standardTrailer, Record, Value);
setFieldInRecord(dontKnowTrade, standardHeader, Record, Value)->
    erlang:setelement(#dontKnowTrade.standardHeader, Record, Value);
setFieldInRecord(dontKnowTrade, orderID, Record, Value)->
    erlang:setelement(#dontKnowTrade.orderID, Record, Value);
setFieldInRecord(dontKnowTrade, secondaryOrderID, Record, Value)->
    erlang:setelement(#dontKnowTrade.secondaryOrderID, Record, Value);
setFieldInRecord(dontKnowTrade, execID, Record, Value)->
    erlang:setelement(#dontKnowTrade.execID, Record, Value);
setFieldInRecord(dontKnowTrade, dKReason, Record, Value)->
    erlang:setelement(#dontKnowTrade.dKReason, Record, Value);
setFieldInRecord(dontKnowTrade, instrument, Record, Value)->
    erlang:setelement(#dontKnowTrade.instrument, Record, Value);
setFieldInRecord(dontKnowTrade, undInstrmtGrp, Record, Value)->
    erlang:setelement(#dontKnowTrade.undInstrmtGrp, Record, Value);
setFieldInRecord(dontKnowTrade, instrmtLegGrp, Record, Value)->
    erlang:setelement(#dontKnowTrade.instrmtLegGrp, Record, Value);
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
setFieldInRecord(quoteRequest, clOrdID, Record, Value)->
    erlang:setelement(#quoteRequest.clOrdID, Record, Value);
setFieldInRecord(quoteRequest, orderCapacity, Record, Value)->
    erlang:setelement(#quoteRequest.orderCapacity, Record, Value);
setFieldInRecord(quoteRequest, quotReqGrp, Record, Value)->
    erlang:setelement(#quoteRequest.quotReqGrp, Record, Value);
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
setFieldInRecord(quote, quoteRespID, Record, Value)->
    erlang:setelement(#quote.quoteRespID, Record, Value);
setFieldInRecord(quote, quoteType, Record, Value)->
    erlang:setelement(#quote.quoteType, Record, Value);
setFieldInRecord(quote, quotQualGrp, Record, Value)->
    erlang:setelement(#quote.quotQualGrp, Record, Value);
setFieldInRecord(quote, quoteResponseLevel, Record, Value)->
    erlang:setelement(#quote.quoteResponseLevel, Record, Value);
setFieldInRecord(quote, parties, Record, Value)->
    erlang:setelement(#quote.parties, Record, Value);
setFieldInRecord(quote, tradingSessionID, Record, Value)->
    erlang:setelement(#quote.tradingSessionID, Record, Value);
setFieldInRecord(quote, tradingSessionSubID, Record, Value)->
    erlang:setelement(#quote.tradingSessionSubID, Record, Value);
setFieldInRecord(quote, instrument, Record, Value)->
    erlang:setelement(#quote.instrument, Record, Value);
setFieldInRecord(quote, financingDetails, Record, Value)->
    erlang:setelement(#quote.financingDetails, Record, Value);
setFieldInRecord(quote, undInstrmtGrp, Record, Value)->
    erlang:setelement(#quote.undInstrmtGrp, Record, Value);
setFieldInRecord(quote, side, Record, Value)->
    erlang:setelement(#quote.side, Record, Value);
setFieldInRecord(quote, orderQtyData, Record, Value)->
    erlang:setelement(#quote.orderQtyData, Record, Value);
setFieldInRecord(quote, settlType, Record, Value)->
    erlang:setelement(#quote.settlType, Record, Value);
setFieldInRecord(quote, settlDate, Record, Value)->
    erlang:setelement(#quote.settlDate, Record, Value);
setFieldInRecord(quote, settlDate2, Record, Value)->
    erlang:setelement(#quote.settlDate2, Record, Value);
setFieldInRecord(quote, orderQty2, Record, Value)->
    erlang:setelement(#quote.orderQty2, Record, Value);
setFieldInRecord(quote, currency, Record, Value)->
    erlang:setelement(#quote.currency, Record, Value);
setFieldInRecord(quote, stipulations, Record, Value)->
    erlang:setelement(#quote.stipulations, Record, Value);
setFieldInRecord(quote, account, Record, Value)->
    erlang:setelement(#quote.account, Record, Value);
setFieldInRecord(quote, acctIDSource, Record, Value)->
    erlang:setelement(#quote.acctIDSource, Record, Value);
setFieldInRecord(quote, accountType, Record, Value)->
    erlang:setelement(#quote.accountType, Record, Value);
setFieldInRecord(quote, legQuotGrp, Record, Value)->
    erlang:setelement(#quote.legQuotGrp, Record, Value);
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
setFieldInRecord(quote, ordType, Record, Value)->
    erlang:setelement(#quote.ordType, Record, Value);
setFieldInRecord(quote, bidForwardPoints2, Record, Value)->
    erlang:setelement(#quote.bidForwardPoints2, Record, Value);
setFieldInRecord(quote, offerForwardPoints2, Record, Value)->
    erlang:setelement(#quote.offerForwardPoints2, Record, Value);
setFieldInRecord(quote, settlCurrBidFxRate, Record, Value)->
    erlang:setelement(#quote.settlCurrBidFxRate, Record, Value);
setFieldInRecord(quote, settlCurrOfferFxRate, Record, Value)->
    erlang:setelement(#quote.settlCurrOfferFxRate, Record, Value);
setFieldInRecord(quote, settlCurrFxRateCalc, Record, Value)->
    erlang:setelement(#quote.settlCurrFxRateCalc, Record, Value);
setFieldInRecord(quote, commType, Record, Value)->
    erlang:setelement(#quote.commType, Record, Value);
setFieldInRecord(quote, commission, Record, Value)->
    erlang:setelement(#quote.commission, Record, Value);
setFieldInRecord(quote, custOrderCapacity, Record, Value)->
    erlang:setelement(#quote.custOrderCapacity, Record, Value);
setFieldInRecord(quote, exDestination, Record, Value)->
    erlang:setelement(#quote.exDestination, Record, Value);
setFieldInRecord(quote, orderCapacity, Record, Value)->
    erlang:setelement(#quote.orderCapacity, Record, Value);
setFieldInRecord(quote, priceType, Record, Value)->
    erlang:setelement(#quote.priceType, Record, Value);
setFieldInRecord(quote, spreadOrBenchmarkCurveData, Record, Value)->
    erlang:setelement(#quote.spreadOrBenchmarkCurveData, Record, Value);
setFieldInRecord(quote, yieldData, Record, Value)->
    erlang:setelement(#quote.yieldData, Record, Value);
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
setFieldInRecord(settlementInstructions, settlInstMsgID, Record, Value)->
    erlang:setelement(#settlementInstructions.settlInstMsgID, Record, Value);
setFieldInRecord(settlementInstructions, settlInstReqID, Record, Value)->
    erlang:setelement(#settlementInstructions.settlInstReqID, Record, Value);
setFieldInRecord(settlementInstructions, settlInstMode, Record, Value)->
    erlang:setelement(#settlementInstructions.settlInstMode, Record, Value);
setFieldInRecord(settlementInstructions, settlInstReqRejCode, Record, Value)->
    erlang:setelement(#settlementInstructions.settlInstReqRejCode, Record, Value);
setFieldInRecord(settlementInstructions, text, Record, Value)->
    erlang:setelement(#settlementInstructions.text, Record, Value);
setFieldInRecord(settlementInstructions, encodedTextLen, Record, Value)->
    erlang:setelement(#settlementInstructions.encodedTextLen, Record, Value);
setFieldInRecord(settlementInstructions, encodedText, Record, Value)->
    erlang:setelement(#settlementInstructions.encodedText, Record, Value);
setFieldInRecord(settlementInstructions, clOrdID, Record, Value)->
    erlang:setelement(#settlementInstructions.clOrdID, Record, Value);
setFieldInRecord(settlementInstructions, transactTime, Record, Value)->
    erlang:setelement(#settlementInstructions.transactTime, Record, Value);
setFieldInRecord(settlementInstructions, settlInstGrp, Record, Value)->
    erlang:setelement(#settlementInstructions.settlInstGrp, Record, Value);
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
setFieldInRecord(marketDataRequest, openCloseSettlFlag, Record, Value)->
    erlang:setelement(#marketDataRequest.openCloseSettlFlag, Record, Value);
setFieldInRecord(marketDataRequest, scope, Record, Value)->
    erlang:setelement(#marketDataRequest.scope, Record, Value);
setFieldInRecord(marketDataRequest, mDImplicitDelete, Record, Value)->
    erlang:setelement(#marketDataRequest.mDImplicitDelete, Record, Value);
setFieldInRecord(marketDataRequest, mDReqGrp, Record, Value)->
    erlang:setelement(#marketDataRequest.mDReqGrp, Record, Value);
setFieldInRecord(marketDataRequest, instrmtMDReqGrp, Record, Value)->
    erlang:setelement(#marketDataRequest.instrmtMDReqGrp, Record, Value);
setFieldInRecord(marketDataRequest, trdgSesGrp, Record, Value)->
    erlang:setelement(#marketDataRequest.trdgSesGrp, Record, Value);
setFieldInRecord(marketDataRequest, applQueueAction, Record, Value)->
    erlang:setelement(#marketDataRequest.applQueueAction, Record, Value);
setFieldInRecord(marketDataRequest, applQueueMax, Record, Value)->
    erlang:setelement(#marketDataRequest.applQueueMax, Record, Value);
setFieldInRecord(marketDataRequest, standardTrailer, Record, Value)->
    erlang:setelement(#marketDataRequest.standardTrailer, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, standardHeader, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.standardHeader, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, mDReqID, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.mDReqID, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, instrument, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.instrument, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, undInstrmtGrp, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.undInstrmtGrp, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, instrmtLegGrp, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.instrmtLegGrp, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, financialStatus, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.financialStatus, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, corporateAction, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.corporateAction, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, netChgPrevDay, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.netChgPrevDay, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, mDFullGrp, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.mDFullGrp, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, applQueueDepth, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.applQueueDepth, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, applQueueResolution, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.applQueueResolution, Record, Value);
setFieldInRecord(marketDataSnapshotFullRefresh, standardTrailer, Record, Value)->
    erlang:setelement(#marketDataSnapshotFullRefresh.standardTrailer, Record, Value);
setFieldInRecord(marketDataIncrementalRefresh, standardHeader, Record, Value)->
    erlang:setelement(#marketDataIncrementalRefresh.standardHeader, Record, Value);
setFieldInRecord(marketDataIncrementalRefresh, mDReqID, Record, Value)->
    erlang:setelement(#marketDataIncrementalRefresh.mDReqID, Record, Value);
setFieldInRecord(marketDataIncrementalRefresh, mDIncGrp, Record, Value)->
    erlang:setelement(#marketDataIncrementalRefresh.mDIncGrp, Record, Value);
setFieldInRecord(marketDataIncrementalRefresh, applQueueDepth, Record, Value)->
    erlang:setelement(#marketDataIncrementalRefresh.applQueueDepth, Record, Value);
setFieldInRecord(marketDataIncrementalRefresh, applQueueResolution, Record, Value)->
    erlang:setelement(#marketDataIncrementalRefresh.applQueueResolution, Record, Value);
setFieldInRecord(marketDataIncrementalRefresh, standardTrailer, Record, Value)->
    erlang:setelement(#marketDataIncrementalRefresh.standardTrailer, Record, Value);
setFieldInRecord(marketDataRequestReject, standardHeader, Record, Value)->
    erlang:setelement(#marketDataRequestReject.standardHeader, Record, Value);
setFieldInRecord(marketDataRequestReject, mDReqID, Record, Value)->
    erlang:setelement(#marketDataRequestReject.mDReqID, Record, Value);
setFieldInRecord(marketDataRequestReject, mDReqRejReason, Record, Value)->
    erlang:setelement(#marketDataRequestReject.mDReqRejReason, Record, Value);
setFieldInRecord(marketDataRequestReject, mDRjctGrp, Record, Value)->
    erlang:setelement(#marketDataRequestReject.mDRjctGrp, Record, Value);
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
setFieldInRecord(quoteCancel, acctIDSource, Record, Value)->
    erlang:setelement(#quoteCancel.acctIDSource, Record, Value);
setFieldInRecord(quoteCancel, accountType, Record, Value)->
    erlang:setelement(#quoteCancel.accountType, Record, Value);
setFieldInRecord(quoteCancel, tradingSessionID, Record, Value)->
    erlang:setelement(#quoteCancel.tradingSessionID, Record, Value);
setFieldInRecord(quoteCancel, tradingSessionSubID, Record, Value)->
    erlang:setelement(#quoteCancel.tradingSessionSubID, Record, Value);
setFieldInRecord(quoteCancel, quotCxlEntriesGrp, Record, Value)->
    erlang:setelement(#quoteCancel.quotCxlEntriesGrp, Record, Value);
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
setFieldInRecord(quoteStatusRequest, financingDetails, Record, Value)->
    erlang:setelement(#quoteStatusRequest.financingDetails, Record, Value);
setFieldInRecord(quoteStatusRequest, undInstrmtGrp, Record, Value)->
    erlang:setelement(#quoteStatusRequest.undInstrmtGrp, Record, Value);
setFieldInRecord(quoteStatusRequest, instrmtLegGrp, Record, Value)->
    erlang:setelement(#quoteStatusRequest.instrmtLegGrp, Record, Value);
setFieldInRecord(quoteStatusRequest, parties, Record, Value)->
    erlang:setelement(#quoteStatusRequest.parties, Record, Value);
setFieldInRecord(quoteStatusRequest, account, Record, Value)->
    erlang:setelement(#quoteStatusRequest.account, Record, Value);
setFieldInRecord(quoteStatusRequest, acctIDSource, Record, Value)->
    erlang:setelement(#quoteStatusRequest.acctIDSource, Record, Value);
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
setFieldInRecord(massQuoteAcknowledgement, acctIDSource, Record, Value)->
    erlang:setelement(#massQuoteAcknowledgement.acctIDSource, Record, Value);
setFieldInRecord(massQuoteAcknowledgement, accountType, Record, Value)->
    erlang:setelement(#massQuoteAcknowledgement.accountType, Record, Value);
setFieldInRecord(massQuoteAcknowledgement, text, Record, Value)->
    erlang:setelement(#massQuoteAcknowledgement.text, Record, Value);
setFieldInRecord(massQuoteAcknowledgement, encodedTextLen, Record, Value)->
    erlang:setelement(#massQuoteAcknowledgement.encodedTextLen, Record, Value);
setFieldInRecord(massQuoteAcknowledgement, encodedText, Record, Value)->
    erlang:setelement(#massQuoteAcknowledgement.encodedText, Record, Value);
setFieldInRecord(massQuoteAcknowledgement, quotSetAckGrp, Record, Value)->
    erlang:setelement(#massQuoteAcknowledgement.quotSetAckGrp, Record, Value);
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
setFieldInRecord(securityDefinitionRequest, instrumentExtension, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.instrumentExtension, Record, Value);
setFieldInRecord(securityDefinitionRequest, undInstrmtGrp, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.undInstrmtGrp, Record, Value);
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
setFieldInRecord(securityDefinitionRequest, instrmtLegGrp, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.instrmtLegGrp, Record, Value);
setFieldInRecord(securityDefinitionRequest, expirationCycle, Record, Value)->
    erlang:setelement(#securityDefinitionRequest.expirationCycle, Record, Value);
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
setFieldInRecord(securityDefinition, instrumentExtension, Record, Value)->
    erlang:setelement(#securityDefinition.instrumentExtension, Record, Value);
setFieldInRecord(securityDefinition, undInstrmtGrp, Record, Value)->
    erlang:setelement(#securityDefinition.undInstrmtGrp, Record, Value);
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
setFieldInRecord(securityDefinition, instrmtLegGrp, Record, Value)->
    erlang:setelement(#securityDefinition.instrmtLegGrp, Record, Value);
setFieldInRecord(securityDefinition, expirationCycle, Record, Value)->
    erlang:setelement(#securityDefinition.expirationCycle, Record, Value);
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
setFieldInRecord(securityStatusRequest, instrumentExtension, Record, Value)->
    erlang:setelement(#securityStatusRequest.instrumentExtension, Record, Value);
setFieldInRecord(securityStatusRequest, undInstrmtGrp, Record, Value)->
    erlang:setelement(#securityStatusRequest.undInstrmtGrp, Record, Value);
setFieldInRecord(securityStatusRequest, instrmtLegGrp, Record, Value)->
    erlang:setelement(#securityStatusRequest.instrmtLegGrp, Record, Value);
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
setFieldInRecord(securityStatus, instrumentExtension, Record, Value)->
    erlang:setelement(#securityStatus.instrumentExtension, Record, Value);
setFieldInRecord(securityStatus, undInstrmtGrp, Record, Value)->
    erlang:setelement(#securityStatus.undInstrmtGrp, Record, Value);
setFieldInRecord(securityStatus, instrmtLegGrp, Record, Value)->
    erlang:setelement(#securityStatus.instrmtLegGrp, Record, Value);
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
setFieldInRecord(massQuote, acctIDSource, Record, Value)->
    erlang:setelement(#massQuote.acctIDSource, Record, Value);
setFieldInRecord(massQuote, accountType, Record, Value)->
    erlang:setelement(#massQuote.accountType, Record, Value);
setFieldInRecord(massQuote, defBidSize, Record, Value)->
    erlang:setelement(#massQuote.defBidSize, Record, Value);
setFieldInRecord(massQuote, defOfferSize, Record, Value)->
    erlang:setelement(#massQuote.defOfferSize, Record, Value);
setFieldInRecord(massQuote, quotSetGrp, Record, Value)->
    erlang:setelement(#massQuote.quotSetGrp, Record, Value);
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
setFieldInRecord(bidRequest, totNoRelatedSym, Record, Value)->
    erlang:setelement(#bidRequest.totNoRelatedSym, Record, Value);
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
setFieldInRecord(bidRequest, bidDescReqGrp, Record, Value)->
    erlang:setelement(#bidRequest.bidDescReqGrp, Record, Value);
setFieldInRecord(bidRequest, bidCompReqGrp, Record, Value)->
    erlang:setelement(#bidRequest.bidCompReqGrp, Record, Value);
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
setFieldInRecord(bidRequest, bidTradeType, Record, Value)->
    erlang:setelement(#bidRequest.bidTradeType, Record, Value);
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
setFieldInRecord(bidResponse, bidCompRspGrp, Record, Value)->
    erlang:setelement(#bidResponse.bidCompRspGrp, Record, Value);
setFieldInRecord(bidResponse, standardTrailer, Record, Value)->
    erlang:setelement(#bidResponse.standardTrailer, Record, Value);
setFieldInRecord(listStrikePrice, standardHeader, Record, Value)->
    erlang:setelement(#listStrikePrice.standardHeader, Record, Value);
setFieldInRecord(listStrikePrice, listID, Record, Value)->
    erlang:setelement(#listStrikePrice.listID, Record, Value);
setFieldInRecord(listStrikePrice, totNoStrikes, Record, Value)->
    erlang:setelement(#listStrikePrice.totNoStrikes, Record, Value);
setFieldInRecord(listStrikePrice, lastFragment, Record, Value)->
    erlang:setelement(#listStrikePrice.lastFragment, Record, Value);
setFieldInRecord(listStrikePrice, instrmtStrkPxGrp, Record, Value)->
    erlang:setelement(#listStrikePrice.instrmtStrkPxGrp, Record, Value);
setFieldInRecord(listStrikePrice, undInstrmtStrkPxGrp, Record, Value)->
    erlang:setelement(#listStrikePrice.undInstrmtStrkPxGrp, Record, Value);
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
setFieldInRecord(registrationInstructions, acctIDSource, Record, Value)->
    erlang:setelement(#registrationInstructions.acctIDSource, Record, Value);
setFieldInRecord(registrationInstructions, registAcctType, Record, Value)->
    erlang:setelement(#registrationInstructions.registAcctType, Record, Value);
setFieldInRecord(registrationInstructions, taxAdvantageType, Record, Value)->
    erlang:setelement(#registrationInstructions.taxAdvantageType, Record, Value);
setFieldInRecord(registrationInstructions, ownershipType, Record, Value)->
    erlang:setelement(#registrationInstructions.ownershipType, Record, Value);
setFieldInRecord(registrationInstructions, rgstDtlsGrp, Record, Value)->
    erlang:setelement(#registrationInstructions.rgstDtlsGrp, Record, Value);
setFieldInRecord(registrationInstructions, rgstDistInstGrp, Record, Value)->
    erlang:setelement(#registrationInstructions.rgstDistInstGrp, Record, Value);
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
setFieldInRecord(registrationInstructionsResponse, acctIDSource, Record, Value)->
    erlang:setelement(#registrationInstructionsResponse.acctIDSource, Record, Value);
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
setFieldInRecord(orderMassCancelReport, affectedOrdGrp, Record, Value)->
    erlang:setelement(#orderMassCancelReport.affectedOrdGrp, Record, Value);
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
setFieldInRecord(newOrderCross, sideCrossOrdModGrp, Record, Value)->
    erlang:setelement(#newOrderCross.sideCrossOrdModGrp, Record, Value);
setFieldInRecord(newOrderCross, instrument, Record, Value)->
    erlang:setelement(#newOrderCross.instrument, Record, Value);
setFieldInRecord(newOrderCross, undInstrmtGrp, Record, Value)->
    erlang:setelement(#newOrderCross.undInstrmtGrp, Record, Value);
setFieldInRecord(newOrderCross, instrmtLegGrp, Record, Value)->
    erlang:setelement(#newOrderCross.instrmtLegGrp, Record, Value);
setFieldInRecord(newOrderCross, settlType, Record, Value)->
    erlang:setelement(#newOrderCross.settlType, Record, Value);
setFieldInRecord(newOrderCross, settlDate, Record, Value)->
    erlang:setelement(#newOrderCross.settlDate, Record, Value);
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
setFieldInRecord(newOrderCross, trdgSesGrp, Record, Value)->
    erlang:setelement(#newOrderCross.trdgSesGrp, Record, Value);
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
setFieldInRecord(newOrderCross, iOIID, Record, Value)->
    erlang:setelement(#newOrderCross.iOIID, Record, Value);
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
setFieldInRecord(newOrderCross, pegInstructions, Record, Value)->
    erlang:setelement(#newOrderCross.pegInstructions, Record, Value);
setFieldInRecord(newOrderCross, discretionInstructions, Record, Value)->
    erlang:setelement(#newOrderCross.discretionInstructions, Record, Value);
setFieldInRecord(newOrderCross, targetStrategy, Record, Value)->
    erlang:setelement(#newOrderCross.targetStrategy, Record, Value);
setFieldInRecord(newOrderCross, targetStrategyParameters, Record, Value)->
    erlang:setelement(#newOrderCross.targetStrategyParameters, Record, Value);
setFieldInRecord(newOrderCross, participationRate, Record, Value)->
    erlang:setelement(#newOrderCross.participationRate, Record, Value);
setFieldInRecord(newOrderCross, cancellationRights, Record, Value)->
    erlang:setelement(#newOrderCross.cancellationRights, Record, Value);
setFieldInRecord(newOrderCross, moneyLaunderingStatus, Record, Value)->
    erlang:setelement(#newOrderCross.moneyLaunderingStatus, Record, Value);
setFieldInRecord(newOrderCross, registID, Record, Value)->
    erlang:setelement(#newOrderCross.registID, Record, Value);
setFieldInRecord(newOrderCross, designation, Record, Value)->
    erlang:setelement(#newOrderCross.designation, Record, Value);
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
setFieldInRecord(crossOrderCancelReplaceRequest, sideCrossOrdModGrp, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.sideCrossOrdModGrp, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, instrument, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.instrument, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, undInstrmtGrp, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.undInstrmtGrp, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, instrmtLegGrp, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.instrmtLegGrp, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, settlType, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.settlType, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, settlDate, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.settlDate, Record, Value);
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
setFieldInRecord(crossOrderCancelReplaceRequest, trdgSesGrp, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.trdgSesGrp, Record, Value);
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
setFieldInRecord(crossOrderCancelReplaceRequest, iOIID, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.iOIID, Record, Value);
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
setFieldInRecord(crossOrderCancelReplaceRequest, pegInstructions, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.pegInstructions, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, discretionInstructions, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.discretionInstructions, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, targetStrategy, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.targetStrategy, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, targetStrategyParameters, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.targetStrategyParameters, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, participationRate, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.participationRate, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, cancellationRights, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.cancellationRights, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, moneyLaunderingStatus, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.moneyLaunderingStatus, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, registID, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.registID, Record, Value);
setFieldInRecord(crossOrderCancelReplaceRequest, designation, Record, Value)->
    erlang:setelement(#crossOrderCancelReplaceRequest.designation, Record, Value);
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
setFieldInRecord(crossOrderCancelRequest, sideCrossOrdCxlGrp, Record, Value)->
    erlang:setelement(#crossOrderCancelRequest.sideCrossOrdCxlGrp, Record, Value);
setFieldInRecord(crossOrderCancelRequest, instrument, Record, Value)->
    erlang:setelement(#crossOrderCancelRequest.instrument, Record, Value);
setFieldInRecord(crossOrderCancelRequest, undInstrmtGrp, Record, Value)->
    erlang:setelement(#crossOrderCancelRequest.undInstrmtGrp, Record, Value);
setFieldInRecord(crossOrderCancelRequest, instrmtLegGrp, Record, Value)->
    erlang:setelement(#crossOrderCancelRequest.instrmtLegGrp, Record, Value);
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
setFieldInRecord(securityTypeRequest, produkt, Record, Value)->
    erlang:setelement(#securityTypeRequest.produkt, Record, Value);
setFieldInRecord(securityTypeRequest, securityType, Record, Value)->
    erlang:setelement(#securityTypeRequest.securityType, Record, Value);
setFieldInRecord(securityTypeRequest, securitySubType, Record, Value)->
    erlang:setelement(#securityTypeRequest.securitySubType, Record, Value);
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
setFieldInRecord(securityTypes, totNoSecurityTypes, Record, Value)->
    erlang:setelement(#securityTypes.totNoSecurityTypes, Record, Value);
setFieldInRecord(securityTypes, lastFragment, Record, Value)->
    erlang:setelement(#securityTypes.lastFragment, Record, Value);
setFieldInRecord(securityTypes, secTypesGrp, Record, Value)->
    erlang:setelement(#securityTypes.secTypesGrp, Record, Value);
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
setFieldInRecord(securityListRequest, instrumentExtension, Record, Value)->
    erlang:setelement(#securityListRequest.instrumentExtension, Record, Value);
setFieldInRecord(securityListRequest, financingDetails, Record, Value)->
    erlang:setelement(#securityListRequest.financingDetails, Record, Value);
setFieldInRecord(securityListRequest, undInstrmtGrp, Record, Value)->
    erlang:setelement(#securityListRequest.undInstrmtGrp, Record, Value);
setFieldInRecord(securityListRequest, instrmtLegGrp, Record, Value)->
    erlang:setelement(#securityListRequest.instrmtLegGrp, Record, Value);
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
setFieldInRecord(securityList, totNoRelatedSym, Record, Value)->
    erlang:setelement(#securityList.totNoRelatedSym, Record, Value);
setFieldInRecord(securityList, lastFragment, Record, Value)->
    erlang:setelement(#securityList.lastFragment, Record, Value);
setFieldInRecord(securityList, secListGrp, Record, Value)->
    erlang:setelement(#securityList.secListGrp, Record, Value);
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
setFieldInRecord(derivativeSecurityListRequest, securitySubType, Record, Value)->
    erlang:setelement(#derivativeSecurityListRequest.securitySubType, Record, Value);
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
setFieldInRecord(derivativeSecurityList, totNoRelatedSym, Record, Value)->
    erlang:setelement(#derivativeSecurityList.totNoRelatedSym, Record, Value);
setFieldInRecord(derivativeSecurityList, lastFragment, Record, Value)->
    erlang:setelement(#derivativeSecurityList.lastFragment, Record, Value);
setFieldInRecord(derivativeSecurityList, relSymDerivSecGrp, Record, Value)->
    erlang:setelement(#derivativeSecurityList.relSymDerivSecGrp, Record, Value);
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
setFieldInRecord(newOrderMultileg, tradeOriginationDate, Record, Value)->
    erlang:setelement(#newOrderMultileg.tradeOriginationDate, Record, Value);
setFieldInRecord(newOrderMultileg, tradeDate, Record, Value)->
    erlang:setelement(#newOrderMultileg.tradeDate, Record, Value);
setFieldInRecord(newOrderMultileg, account, Record, Value)->
    erlang:setelement(#newOrderMultileg.account, Record, Value);
setFieldInRecord(newOrderMultileg, acctIDSource, Record, Value)->
    erlang:setelement(#newOrderMultileg.acctIDSource, Record, Value);
setFieldInRecord(newOrderMultileg, accountType, Record, Value)->
    erlang:setelement(#newOrderMultileg.accountType, Record, Value);
setFieldInRecord(newOrderMultileg, dayBookingInst, Record, Value)->
    erlang:setelement(#newOrderMultileg.dayBookingInst, Record, Value);
setFieldInRecord(newOrderMultileg, bookingUnit, Record, Value)->
    erlang:setelement(#newOrderMultileg.bookingUnit, Record, Value);
setFieldInRecord(newOrderMultileg, preallocMethod, Record, Value)->
    erlang:setelement(#newOrderMultileg.preallocMethod, Record, Value);
setFieldInRecord(newOrderMultileg, allocID, Record, Value)->
    erlang:setelement(#newOrderMultileg.allocID, Record, Value);
setFieldInRecord(newOrderMultileg, preAllocMlegGrp, Record, Value)->
    erlang:setelement(#newOrderMultileg.preAllocMlegGrp, Record, Value);
setFieldInRecord(newOrderMultileg, settlType, Record, Value)->
    erlang:setelement(#newOrderMultileg.settlType, Record, Value);
setFieldInRecord(newOrderMultileg, settlDate, Record, Value)->
    erlang:setelement(#newOrderMultileg.settlDate, Record, Value);
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
setFieldInRecord(newOrderMultileg, trdgSesGrp, Record, Value)->
    erlang:setelement(#newOrderMultileg.trdgSesGrp, Record, Value);
setFieldInRecord(newOrderMultileg, processCode, Record, Value)->
    erlang:setelement(#newOrderMultileg.processCode, Record, Value);
setFieldInRecord(newOrderMultileg, side, Record, Value)->
    erlang:setelement(#newOrderMultileg.side, Record, Value);
setFieldInRecord(newOrderMultileg, instrument, Record, Value)->
    erlang:setelement(#newOrderMultileg.instrument, Record, Value);
setFieldInRecord(newOrderMultileg, undInstrmtGrp, Record, Value)->
    erlang:setelement(#newOrderMultileg.undInstrmtGrp, Record, Value);
setFieldInRecord(newOrderMultileg, prevClosePx, Record, Value)->
    erlang:setelement(#newOrderMultileg.prevClosePx, Record, Value);
setFieldInRecord(newOrderMultileg, legOrdGrp, Record, Value)->
    erlang:setelement(#newOrderMultileg.legOrdGrp, Record, Value);
setFieldInRecord(newOrderMultileg, locateReqd, Record, Value)->
    erlang:setelement(#newOrderMultileg.locateReqd, Record, Value);
setFieldInRecord(newOrderMultileg, transactTime, Record, Value)->
    erlang:setelement(#newOrderMultileg.transactTime, Record, Value);
setFieldInRecord(newOrderMultileg, qtyType, Record, Value)->
    erlang:setelement(#newOrderMultileg.qtyType, Record, Value);
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
setFieldInRecord(newOrderMultileg, iOIID, Record, Value)->
    erlang:setelement(#newOrderMultileg.iOIID, Record, Value);
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
setFieldInRecord(newOrderMultileg, bookingType, Record, Value)->
    erlang:setelement(#newOrderMultileg.bookingType, Record, Value);
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
setFieldInRecord(newOrderMultileg, pegInstructions, Record, Value)->
    erlang:setelement(#newOrderMultileg.pegInstructions, Record, Value);
setFieldInRecord(newOrderMultileg, discretionInstructions, Record, Value)->
    erlang:setelement(#newOrderMultileg.discretionInstructions, Record, Value);
setFieldInRecord(newOrderMultileg, targetStrategy, Record, Value)->
    erlang:setelement(#newOrderMultileg.targetStrategy, Record, Value);
setFieldInRecord(newOrderMultileg, targetStrategyParameters, Record, Value)->
    erlang:setelement(#newOrderMultileg.targetStrategyParameters, Record, Value);
setFieldInRecord(newOrderMultileg, participationRate, Record, Value)->
    erlang:setelement(#newOrderMultileg.participationRate, Record, Value);
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
setFieldInRecord(newOrderMultileg, standardTrailer, Record, Value)->
    erlang:setelement(#newOrderMultileg.standardTrailer, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, standardHeader, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.standardHeader, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, orderID, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.orderID, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, origClOrdID, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.origClOrdID, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, clOrdID, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.clOrdID, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, secondaryClOrdID, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.secondaryClOrdID, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, clOrdLinkID, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.clOrdLinkID, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, origOrdModTime, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.origOrdModTime, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, parties, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.parties, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, tradeOriginationDate, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.tradeOriginationDate, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, tradeDate, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.tradeDate, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, account, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.account, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, acctIDSource, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.acctIDSource, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, accountType, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.accountType, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, dayBookingInst, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.dayBookingInst, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, bookingUnit, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.bookingUnit, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, preallocMethod, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.preallocMethod, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, allocID, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.allocID, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, preAllocMlegGrp, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.preAllocMlegGrp, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, settlType, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.settlType, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, settlDate, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.settlDate, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, cashMargin, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.cashMargin, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, clearingFeeIndicator, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.clearingFeeIndicator, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, handlInst, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.handlInst, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, execInst, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.execInst, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, minQty, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.minQty, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, maxFloor, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.maxFloor, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, exDestination, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.exDestination, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, trdgSesGrp, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.trdgSesGrp, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, processCode, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.processCode, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, side, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.side, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, instrument, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.instrument, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, undInstrmtGrp, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.undInstrmtGrp, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, prevClosePx, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.prevClosePx, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, legOrdGrp, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.legOrdGrp, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, locateReqd, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.locateReqd, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, transactTime, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.transactTime, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, qtyType, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.qtyType, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, orderQtyData, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.orderQtyData, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, ordType, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.ordType, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, priceType, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.priceType, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, price, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.price, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, stopPx, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.stopPx, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, currency, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.currency, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, complianceID, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.complianceID, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, solicitedFlag, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.solicitedFlag, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, iOIID, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.iOIID, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, quoteID, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.quoteID, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, timeInForce, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.timeInForce, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, effectiveTime, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.effectiveTime, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, expireDate, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.expireDate, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, expireTime, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.expireTime, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, gTBookingInst, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.gTBookingInst, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, commissionData, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.commissionData, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, orderCapacity, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.orderCapacity, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, orderRestrictions, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.orderRestrictions, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, custOrderCapacity, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.custOrderCapacity, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, forexReq, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.forexReq, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, settlCurrency, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.settlCurrency, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, bookingType, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.bookingType, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, text, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.text, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, encodedTextLen, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.encodedTextLen, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, encodedText, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.encodedText, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, positionEffect, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.positionEffect, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, coveredOrUncovered, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.coveredOrUncovered, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, maxShow, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.maxShow, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, pegInstructions, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.pegInstructions, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, discretionInstructions, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.discretionInstructions, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, targetStrategy, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.targetStrategy, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, targetStrategyParameters, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.targetStrategyParameters, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, participationRate, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.participationRate, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, cancellationRights, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.cancellationRights, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, moneyLaunderingStatus, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.moneyLaunderingStatus, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, registID, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.registID, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, designation, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.designation, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, multiLegRptTypeReq, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.multiLegRptTypeReq, Record, Value);
setFieldInRecord(multilegOrderCancelReplace, standardTrailer, Record, Value)->
    erlang:setelement(#multilegOrderCancelReplace.standardTrailer, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, standardHeader, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.standardHeader, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, tradeRequestID, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.tradeRequestID, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, tradeRequestType, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.tradeRequestType, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, subscriptionRequestType, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.subscriptionRequestType, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, tradeReportID, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.tradeReportID, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, secondaryTradeReportID, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.secondaryTradeReportID, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, execID, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.execID, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, execType, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.execType, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, orderID, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.orderID, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, clOrdID, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.clOrdID, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, matchStatus, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.matchStatus, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, trdType, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.trdType, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, trdSubType, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.trdSubType, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, transferReason, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.transferReason, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, secondaryTrdType, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.secondaryTrdType, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, tradeLinkID, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.tradeLinkID, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, trdMatchID, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.trdMatchID, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, parties, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.parties, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, instrument, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.instrument, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, instrumentExtension, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.instrumentExtension, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, financingDetails, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.financingDetails, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, undInstrmtGrp, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.undInstrmtGrp, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, instrmtLegGrp, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.instrmtLegGrp, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, trdCapDtGrp, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.trdCapDtGrp, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, clearingBusinessDate, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.clearingBusinessDate, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, tradingSessionID, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.tradingSessionID, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, tradingSessionSubID, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.tradingSessionSubID, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, timeBracket, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.timeBracket, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, side, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.side, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, multiLegReportingType, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.multiLegReportingType, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, tradeInputSource, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.tradeInputSource, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, tradeInputDevice, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.tradeInputDevice, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, responseTransportType, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.responseTransportType, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, responseDestination, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.responseDestination, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, text, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.text, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, encodedTextLen, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.encodedTextLen, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, encodedText, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.encodedText, Record, Value);
setFieldInRecord(tradeCaptureReportRequest, standardTrailer, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequest.standardTrailer, Record, Value);
setFieldInRecord(tradeCaptureReport, standardHeader, Record, Value)->
    erlang:setelement(#tradeCaptureReport.standardHeader, Record, Value);
setFieldInRecord(tradeCaptureReport, tradeReportID, Record, Value)->
    erlang:setelement(#tradeCaptureReport.tradeReportID, Record, Value);
setFieldInRecord(tradeCaptureReport, tradeReportTransType, Record, Value)->
    erlang:setelement(#tradeCaptureReport.tradeReportTransType, Record, Value);
setFieldInRecord(tradeCaptureReport, tradeReportType, Record, Value)->
    erlang:setelement(#tradeCaptureReport.tradeReportType, Record, Value);
setFieldInRecord(tradeCaptureReport, tradeRequestID, Record, Value)->
    erlang:setelement(#tradeCaptureReport.tradeRequestID, Record, Value);
setFieldInRecord(tradeCaptureReport, trdType, Record, Value)->
    erlang:setelement(#tradeCaptureReport.trdType, Record, Value);
setFieldInRecord(tradeCaptureReport, trdSubType, Record, Value)->
    erlang:setelement(#tradeCaptureReport.trdSubType, Record, Value);
setFieldInRecord(tradeCaptureReport, secondaryTrdType, Record, Value)->
    erlang:setelement(#tradeCaptureReport.secondaryTrdType, Record, Value);
setFieldInRecord(tradeCaptureReport, transferReason, Record, Value)->
    erlang:setelement(#tradeCaptureReport.transferReason, Record, Value);
setFieldInRecord(tradeCaptureReport, execType, Record, Value)->
    erlang:setelement(#tradeCaptureReport.execType, Record, Value);
setFieldInRecord(tradeCaptureReport, totNumTradeReports, Record, Value)->
    erlang:setelement(#tradeCaptureReport.totNumTradeReports, Record, Value);
setFieldInRecord(tradeCaptureReport, lastRptRequested, Record, Value)->
    erlang:setelement(#tradeCaptureReport.lastRptRequested, Record, Value);
setFieldInRecord(tradeCaptureReport, unsolicitedIndicator, Record, Value)->
    erlang:setelement(#tradeCaptureReport.unsolicitedIndicator, Record, Value);
setFieldInRecord(tradeCaptureReport, subscriptionRequestType, Record, Value)->
    erlang:setelement(#tradeCaptureReport.subscriptionRequestType, Record, Value);
setFieldInRecord(tradeCaptureReport, tradeReportRefID, Record, Value)->
    erlang:setelement(#tradeCaptureReport.tradeReportRefID, Record, Value);
setFieldInRecord(tradeCaptureReport, secondaryTradeReportRefID, Record, Value)->
    erlang:setelement(#tradeCaptureReport.secondaryTradeReportRefID, Record, Value);
setFieldInRecord(tradeCaptureReport, secondaryTradeReportID, Record, Value)->
    erlang:setelement(#tradeCaptureReport.secondaryTradeReportID, Record, Value);
setFieldInRecord(tradeCaptureReport, tradeLinkID, Record, Value)->
    erlang:setelement(#tradeCaptureReport.tradeLinkID, Record, Value);
setFieldInRecord(tradeCaptureReport, trdMatchID, Record, Value)->
    erlang:setelement(#tradeCaptureReport.trdMatchID, Record, Value);
setFieldInRecord(tradeCaptureReport, execID, Record, Value)->
    erlang:setelement(#tradeCaptureReport.execID, Record, Value);
setFieldInRecord(tradeCaptureReport, ordStatus, Record, Value)->
    erlang:setelement(#tradeCaptureReport.ordStatus, Record, Value);
setFieldInRecord(tradeCaptureReport, secondaryExecID, Record, Value)->
    erlang:setelement(#tradeCaptureReport.secondaryExecID, Record, Value);
setFieldInRecord(tradeCaptureReport, execRestatementReason, Record, Value)->
    erlang:setelement(#tradeCaptureReport.execRestatementReason, Record, Value);
setFieldInRecord(tradeCaptureReport, previouslyReported, Record, Value)->
    erlang:setelement(#tradeCaptureReport.previouslyReported, Record, Value);
setFieldInRecord(tradeCaptureReport, priceType, Record, Value)->
    erlang:setelement(#tradeCaptureReport.priceType, Record, Value);
setFieldInRecord(tradeCaptureReport, instrument, Record, Value)->
    erlang:setelement(#tradeCaptureReport.instrument, Record, Value);
setFieldInRecord(tradeCaptureReport, financingDetails, Record, Value)->
    erlang:setelement(#tradeCaptureReport.financingDetails, Record, Value);
setFieldInRecord(tradeCaptureReport, orderQtyData, Record, Value)->
    erlang:setelement(#tradeCaptureReport.orderQtyData, Record, Value);
setFieldInRecord(tradeCaptureReport, qtyType, Record, Value)->
    erlang:setelement(#tradeCaptureReport.qtyType, Record, Value);
setFieldInRecord(tradeCaptureReport, yieldData, Record, Value)->
    erlang:setelement(#tradeCaptureReport.yieldData, Record, Value);
setFieldInRecord(tradeCaptureReport, undInstrmtGrp, Record, Value)->
    erlang:setelement(#tradeCaptureReport.undInstrmtGrp, Record, Value);
setFieldInRecord(tradeCaptureReport, underlyingTradingSessionID, Record, Value)->
    erlang:setelement(#tradeCaptureReport.underlyingTradingSessionID, Record, Value);
setFieldInRecord(tradeCaptureReport, underlyingTradingSessionSubID, Record, Value)->
    erlang:setelement(#tradeCaptureReport.underlyingTradingSessionSubID, Record, Value);
setFieldInRecord(tradeCaptureReport, lastQty, Record, Value)->
    erlang:setelement(#tradeCaptureReport.lastQty, Record, Value);
setFieldInRecord(tradeCaptureReport, lastPx, Record, Value)->
    erlang:setelement(#tradeCaptureReport.lastPx, Record, Value);
setFieldInRecord(tradeCaptureReport, lastParPx, Record, Value)->
    erlang:setelement(#tradeCaptureReport.lastParPx, Record, Value);
setFieldInRecord(tradeCaptureReport, lastSpotRate, Record, Value)->
    erlang:setelement(#tradeCaptureReport.lastSpotRate, Record, Value);
setFieldInRecord(tradeCaptureReport, lastForwardPoints, Record, Value)->
    erlang:setelement(#tradeCaptureReport.lastForwardPoints, Record, Value);
setFieldInRecord(tradeCaptureReport, lastMkt, Record, Value)->
    erlang:setelement(#tradeCaptureReport.lastMkt, Record, Value);
setFieldInRecord(tradeCaptureReport, tradeDate, Record, Value)->
    erlang:setelement(#tradeCaptureReport.tradeDate, Record, Value);
setFieldInRecord(tradeCaptureReport, clearingBusinessDate, Record, Value)->
    erlang:setelement(#tradeCaptureReport.clearingBusinessDate, Record, Value);
setFieldInRecord(tradeCaptureReport, avgPx, Record, Value)->
    erlang:setelement(#tradeCaptureReport.avgPx, Record, Value);
setFieldInRecord(tradeCaptureReport, spreadOrBenchmarkCurveData, Record, Value)->
    erlang:setelement(#tradeCaptureReport.spreadOrBenchmarkCurveData, Record, Value);
setFieldInRecord(tradeCaptureReport, avgPxIndicator, Record, Value)->
    erlang:setelement(#tradeCaptureReport.avgPxIndicator, Record, Value);
setFieldInRecord(tradeCaptureReport, positionAmountData, Record, Value)->
    erlang:setelement(#tradeCaptureReport.positionAmountData, Record, Value);
setFieldInRecord(tradeCaptureReport, multiLegReportingType, Record, Value)->
    erlang:setelement(#tradeCaptureReport.multiLegReportingType, Record, Value);
setFieldInRecord(tradeCaptureReport, tradeLegRefID, Record, Value)->
    erlang:setelement(#tradeCaptureReport.tradeLegRefID, Record, Value);
setFieldInRecord(tradeCaptureReport, trdInstrmtLegGrp, Record, Value)->
    erlang:setelement(#tradeCaptureReport.trdInstrmtLegGrp, Record, Value);
setFieldInRecord(tradeCaptureReport, transactTime, Record, Value)->
    erlang:setelement(#tradeCaptureReport.transactTime, Record, Value);
setFieldInRecord(tradeCaptureReport, trdRegTimestamps, Record, Value)->
    erlang:setelement(#tradeCaptureReport.trdRegTimestamps, Record, Value);
setFieldInRecord(tradeCaptureReport, settlType, Record, Value)->
    erlang:setelement(#tradeCaptureReport.settlType, Record, Value);
setFieldInRecord(tradeCaptureReport, settlDate, Record, Value)->
    erlang:setelement(#tradeCaptureReport.settlDate, Record, Value);
setFieldInRecord(tradeCaptureReport, matchStatus, Record, Value)->
    erlang:setelement(#tradeCaptureReport.matchStatus, Record, Value);
setFieldInRecord(tradeCaptureReport, matchType, Record, Value)->
    erlang:setelement(#tradeCaptureReport.matchType, Record, Value);
setFieldInRecord(tradeCaptureReport, trdCapRptSideGrp, Record, Value)->
    erlang:setelement(#tradeCaptureReport.trdCapRptSideGrp, Record, Value);
setFieldInRecord(tradeCaptureReport, copyMsgIndicator, Record, Value)->
    erlang:setelement(#tradeCaptureReport.copyMsgIndicator, Record, Value);
setFieldInRecord(tradeCaptureReport, publishTrdIndicator, Record, Value)->
    erlang:setelement(#tradeCaptureReport.publishTrdIndicator, Record, Value);
setFieldInRecord(tradeCaptureReport, shortSaleReason, Record, Value)->
    erlang:setelement(#tradeCaptureReport.shortSaleReason, Record, Value);
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
setFieldInRecord(orderMassStatusRequest, acctIDSource, Record, Value)->
    erlang:setelement(#orderMassStatusRequest.acctIDSource, Record, Value);
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
setFieldInRecord(quoteRequestReject, quotReqRjctGrp, Record, Value)->
    erlang:setelement(#quoteRequestReject.quotReqRjctGrp, Record, Value);
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
setFieldInRecord(rFQRequest, rFQReqGrp, Record, Value)->
    erlang:setelement(#rFQRequest.rFQReqGrp, Record, Value);
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
setFieldInRecord(quoteStatusReport, quoteRespID, Record, Value)->
    erlang:setelement(#quoteStatusReport.quoteRespID, Record, Value);
setFieldInRecord(quoteStatusReport, quoteType, Record, Value)->
    erlang:setelement(#quoteStatusReport.quoteType, Record, Value);
setFieldInRecord(quoteStatusReport, parties, Record, Value)->
    erlang:setelement(#quoteStatusReport.parties, Record, Value);
setFieldInRecord(quoteStatusReport, tradingSessionID, Record, Value)->
    erlang:setelement(#quoteStatusReport.tradingSessionID, Record, Value);
setFieldInRecord(quoteStatusReport, tradingSessionSubID, Record, Value)->
    erlang:setelement(#quoteStatusReport.tradingSessionSubID, Record, Value);
setFieldInRecord(quoteStatusReport, instrument, Record, Value)->
    erlang:setelement(#quoteStatusReport.instrument, Record, Value);
setFieldInRecord(quoteStatusReport, financingDetails, Record, Value)->
    erlang:setelement(#quoteStatusReport.financingDetails, Record, Value);
setFieldInRecord(quoteStatusReport, undInstrmtGrp, Record, Value)->
    erlang:setelement(#quoteStatusReport.undInstrmtGrp, Record, Value);
setFieldInRecord(quoteStatusReport, side, Record, Value)->
    erlang:setelement(#quoteStatusReport.side, Record, Value);
setFieldInRecord(quoteStatusReport, orderQtyData, Record, Value)->
    erlang:setelement(#quoteStatusReport.orderQtyData, Record, Value);
setFieldInRecord(quoteStatusReport, settlType, Record, Value)->
    erlang:setelement(#quoteStatusReport.settlType, Record, Value);
setFieldInRecord(quoteStatusReport, settlDate, Record, Value)->
    erlang:setelement(#quoteStatusReport.settlDate, Record, Value);
setFieldInRecord(quoteStatusReport, settlDate2, Record, Value)->
    erlang:setelement(#quoteStatusReport.settlDate2, Record, Value);
setFieldInRecord(quoteStatusReport, orderQty2, Record, Value)->
    erlang:setelement(#quoteStatusReport.orderQty2, Record, Value);
setFieldInRecord(quoteStatusReport, currency, Record, Value)->
    erlang:setelement(#quoteStatusReport.currency, Record, Value);
setFieldInRecord(quoteStatusReport, stipulations, Record, Value)->
    erlang:setelement(#quoteStatusReport.stipulations, Record, Value);
setFieldInRecord(quoteStatusReport, account, Record, Value)->
    erlang:setelement(#quoteStatusReport.account, Record, Value);
setFieldInRecord(quoteStatusReport, acctIDSource, Record, Value)->
    erlang:setelement(#quoteStatusReport.acctIDSource, Record, Value);
setFieldInRecord(quoteStatusReport, accountType, Record, Value)->
    erlang:setelement(#quoteStatusReport.accountType, Record, Value);
setFieldInRecord(quoteStatusReport, legQuotStatGrp, Record, Value)->
    erlang:setelement(#quoteStatusReport.legQuotStatGrp, Record, Value);
setFieldInRecord(quoteStatusReport, quotQualGrp, Record, Value)->
    erlang:setelement(#quoteStatusReport.quotQualGrp, Record, Value);
setFieldInRecord(quoteStatusReport, expireTime, Record, Value)->
    erlang:setelement(#quoteStatusReport.expireTime, Record, Value);
setFieldInRecord(quoteStatusReport, price, Record, Value)->
    erlang:setelement(#quoteStatusReport.price, Record, Value);
setFieldInRecord(quoteStatusReport, priceType, Record, Value)->
    erlang:setelement(#quoteStatusReport.priceType, Record, Value);
setFieldInRecord(quoteStatusReport, spreadOrBenchmarkCurveData, Record, Value)->
    erlang:setelement(#quoteStatusReport.spreadOrBenchmarkCurveData, Record, Value);
setFieldInRecord(quoteStatusReport, yieldData, Record, Value)->
    erlang:setelement(#quoteStatusReport.yieldData, Record, Value);
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
setFieldInRecord(quoteStatusReport, ordType, Record, Value)->
    erlang:setelement(#quoteStatusReport.ordType, Record, Value);
setFieldInRecord(quoteStatusReport, bidForwardPoints2, Record, Value)->
    erlang:setelement(#quoteStatusReport.bidForwardPoints2, Record, Value);
setFieldInRecord(quoteStatusReport, offerForwardPoints2, Record, Value)->
    erlang:setelement(#quoteStatusReport.offerForwardPoints2, Record, Value);
setFieldInRecord(quoteStatusReport, settlCurrBidFxRate, Record, Value)->
    erlang:setelement(#quoteStatusReport.settlCurrBidFxRate, Record, Value);
setFieldInRecord(quoteStatusReport, settlCurrOfferFxRate, Record, Value)->
    erlang:setelement(#quoteStatusReport.settlCurrOfferFxRate, Record, Value);
setFieldInRecord(quoteStatusReport, settlCurrFxRateCalc, Record, Value)->
    erlang:setelement(#quoteStatusReport.settlCurrFxRateCalc, Record, Value);
setFieldInRecord(quoteStatusReport, commType, Record, Value)->
    erlang:setelement(#quoteStatusReport.commType, Record, Value);
setFieldInRecord(quoteStatusReport, commission, Record, Value)->
    erlang:setelement(#quoteStatusReport.commission, Record, Value);
setFieldInRecord(quoteStatusReport, custOrderCapacity, Record, Value)->
    erlang:setelement(#quoteStatusReport.custOrderCapacity, Record, Value);
setFieldInRecord(quoteStatusReport, exDestination, Record, Value)->
    erlang:setelement(#quoteStatusReport.exDestination, Record, Value);
setFieldInRecord(quoteStatusReport, quoteStatus, Record, Value)->
    erlang:setelement(#quoteStatusReport.quoteStatus, Record, Value);
setFieldInRecord(quoteStatusReport, text, Record, Value)->
    erlang:setelement(#quoteStatusReport.text, Record, Value);
setFieldInRecord(quoteStatusReport, encodedTextLen, Record, Value)->
    erlang:setelement(#quoteStatusReport.encodedTextLen, Record, Value);
setFieldInRecord(quoteStatusReport, encodedText, Record, Value)->
    erlang:setelement(#quoteStatusReport.encodedText, Record, Value);
setFieldInRecord(quoteStatusReport, standardTrailer, Record, Value)->
    erlang:setelement(#quoteStatusReport.standardTrailer, Record, Value);
setFieldInRecord(quoteResponse, standardHeader, Record, Value)->
    erlang:setelement(#quoteResponse.standardHeader, Record, Value);
setFieldInRecord(quoteResponse, quoteRespID, Record, Value)->
    erlang:setelement(#quoteResponse.quoteRespID, Record, Value);
setFieldInRecord(quoteResponse, quoteID, Record, Value)->
    erlang:setelement(#quoteResponse.quoteID, Record, Value);
setFieldInRecord(quoteResponse, quoteRespType, Record, Value)->
    erlang:setelement(#quoteResponse.quoteRespType, Record, Value);
setFieldInRecord(quoteResponse, clOrdID, Record, Value)->
    erlang:setelement(#quoteResponse.clOrdID, Record, Value);
setFieldInRecord(quoteResponse, orderCapacity, Record, Value)->
    erlang:setelement(#quoteResponse.orderCapacity, Record, Value);
setFieldInRecord(quoteResponse, iOIID, Record, Value)->
    erlang:setelement(#quoteResponse.iOIID, Record, Value);
setFieldInRecord(quoteResponse, quoteType, Record, Value)->
    erlang:setelement(#quoteResponse.quoteType, Record, Value);
setFieldInRecord(quoteResponse, quotQualGrp, Record, Value)->
    erlang:setelement(#quoteResponse.quotQualGrp, Record, Value);
setFieldInRecord(quoteResponse, parties, Record, Value)->
    erlang:setelement(#quoteResponse.parties, Record, Value);
setFieldInRecord(quoteResponse, tradingSessionID, Record, Value)->
    erlang:setelement(#quoteResponse.tradingSessionID, Record, Value);
setFieldInRecord(quoteResponse, tradingSessionSubID, Record, Value)->
    erlang:setelement(#quoteResponse.tradingSessionSubID, Record, Value);
setFieldInRecord(quoteResponse, instrument, Record, Value)->
    erlang:setelement(#quoteResponse.instrument, Record, Value);
setFieldInRecord(quoteResponse, financingDetails, Record, Value)->
    erlang:setelement(#quoteResponse.financingDetails, Record, Value);
setFieldInRecord(quoteResponse, undInstrmtGrp, Record, Value)->
    erlang:setelement(#quoteResponse.undInstrmtGrp, Record, Value);
setFieldInRecord(quoteResponse, side, Record, Value)->
    erlang:setelement(#quoteResponse.side, Record, Value);
setFieldInRecord(quoteResponse, orderQtyData, Record, Value)->
    erlang:setelement(#quoteResponse.orderQtyData, Record, Value);
setFieldInRecord(quoteResponse, settlType, Record, Value)->
    erlang:setelement(#quoteResponse.settlType, Record, Value);
setFieldInRecord(quoteResponse, settlDate, Record, Value)->
    erlang:setelement(#quoteResponse.settlDate, Record, Value);
setFieldInRecord(quoteResponse, settlDate2, Record, Value)->
    erlang:setelement(#quoteResponse.settlDate2, Record, Value);
setFieldInRecord(quoteResponse, orderQty2, Record, Value)->
    erlang:setelement(#quoteResponse.orderQty2, Record, Value);
setFieldInRecord(quoteResponse, currency, Record, Value)->
    erlang:setelement(#quoteResponse.currency, Record, Value);
setFieldInRecord(quoteResponse, stipulations, Record, Value)->
    erlang:setelement(#quoteResponse.stipulations, Record, Value);
setFieldInRecord(quoteResponse, account, Record, Value)->
    erlang:setelement(#quoteResponse.account, Record, Value);
setFieldInRecord(quoteResponse, acctIDSource, Record, Value)->
    erlang:setelement(#quoteResponse.acctIDSource, Record, Value);
setFieldInRecord(quoteResponse, accountType, Record, Value)->
    erlang:setelement(#quoteResponse.accountType, Record, Value);
setFieldInRecord(quoteResponse, legQuotGrp, Record, Value)->
    erlang:setelement(#quoteResponse.legQuotGrp, Record, Value);
setFieldInRecord(quoteResponse, bidPx, Record, Value)->
    erlang:setelement(#quoteResponse.bidPx, Record, Value);
setFieldInRecord(quoteResponse, offerPx, Record, Value)->
    erlang:setelement(#quoteResponse.offerPx, Record, Value);
setFieldInRecord(quoteResponse, mktBidPx, Record, Value)->
    erlang:setelement(#quoteResponse.mktBidPx, Record, Value);
setFieldInRecord(quoteResponse, mktOfferPx, Record, Value)->
    erlang:setelement(#quoteResponse.mktOfferPx, Record, Value);
setFieldInRecord(quoteResponse, minBidSize, Record, Value)->
    erlang:setelement(#quoteResponse.minBidSize, Record, Value);
setFieldInRecord(quoteResponse, bidSize, Record, Value)->
    erlang:setelement(#quoteResponse.bidSize, Record, Value);
setFieldInRecord(quoteResponse, minOfferSize, Record, Value)->
    erlang:setelement(#quoteResponse.minOfferSize, Record, Value);
setFieldInRecord(quoteResponse, offerSize, Record, Value)->
    erlang:setelement(#quoteResponse.offerSize, Record, Value);
setFieldInRecord(quoteResponse, validUntilTime, Record, Value)->
    erlang:setelement(#quoteResponse.validUntilTime, Record, Value);
setFieldInRecord(quoteResponse, bidSpotRate, Record, Value)->
    erlang:setelement(#quoteResponse.bidSpotRate, Record, Value);
setFieldInRecord(quoteResponse, offerSpotRate, Record, Value)->
    erlang:setelement(#quoteResponse.offerSpotRate, Record, Value);
setFieldInRecord(quoteResponse, bidForwardPoints, Record, Value)->
    erlang:setelement(#quoteResponse.bidForwardPoints, Record, Value);
setFieldInRecord(quoteResponse, offerForwardPoints, Record, Value)->
    erlang:setelement(#quoteResponse.offerForwardPoints, Record, Value);
setFieldInRecord(quoteResponse, midPx, Record, Value)->
    erlang:setelement(#quoteResponse.midPx, Record, Value);
setFieldInRecord(quoteResponse, bidYield, Record, Value)->
    erlang:setelement(#quoteResponse.bidYield, Record, Value);
setFieldInRecord(quoteResponse, midYield, Record, Value)->
    erlang:setelement(#quoteResponse.midYield, Record, Value);
setFieldInRecord(quoteResponse, offerYield, Record, Value)->
    erlang:setelement(#quoteResponse.offerYield, Record, Value);
setFieldInRecord(quoteResponse, transactTime, Record, Value)->
    erlang:setelement(#quoteResponse.transactTime, Record, Value);
setFieldInRecord(quoteResponse, ordType, Record, Value)->
    erlang:setelement(#quoteResponse.ordType, Record, Value);
setFieldInRecord(quoteResponse, bidForwardPoints2, Record, Value)->
    erlang:setelement(#quoteResponse.bidForwardPoints2, Record, Value);
setFieldInRecord(quoteResponse, offerForwardPoints2, Record, Value)->
    erlang:setelement(#quoteResponse.offerForwardPoints2, Record, Value);
setFieldInRecord(quoteResponse, settlCurrBidFxRate, Record, Value)->
    erlang:setelement(#quoteResponse.settlCurrBidFxRate, Record, Value);
setFieldInRecord(quoteResponse, settlCurrOfferFxRate, Record, Value)->
    erlang:setelement(#quoteResponse.settlCurrOfferFxRate, Record, Value);
setFieldInRecord(quoteResponse, settlCurrFxRateCalc, Record, Value)->
    erlang:setelement(#quoteResponse.settlCurrFxRateCalc, Record, Value);
setFieldInRecord(quoteResponse, commission, Record, Value)->
    erlang:setelement(#quoteResponse.commission, Record, Value);
setFieldInRecord(quoteResponse, commType, Record, Value)->
    erlang:setelement(#quoteResponse.commType, Record, Value);
setFieldInRecord(quoteResponse, custOrderCapacity, Record, Value)->
    erlang:setelement(#quoteResponse.custOrderCapacity, Record, Value);
setFieldInRecord(quoteResponse, exDestination, Record, Value)->
    erlang:setelement(#quoteResponse.exDestination, Record, Value);
setFieldInRecord(quoteResponse, text, Record, Value)->
    erlang:setelement(#quoteResponse.text, Record, Value);
setFieldInRecord(quoteResponse, encodedTextLen, Record, Value)->
    erlang:setelement(#quoteResponse.encodedTextLen, Record, Value);
setFieldInRecord(quoteResponse, encodedText, Record, Value)->
    erlang:setelement(#quoteResponse.encodedText, Record, Value);
setFieldInRecord(quoteResponse, price, Record, Value)->
    erlang:setelement(#quoteResponse.price, Record, Value);
setFieldInRecord(quoteResponse, priceType, Record, Value)->
    erlang:setelement(#quoteResponse.priceType, Record, Value);
setFieldInRecord(quoteResponse, spreadOrBenchmarkCurveData, Record, Value)->
    erlang:setelement(#quoteResponse.spreadOrBenchmarkCurveData, Record, Value);
setFieldInRecord(quoteResponse, yieldData, Record, Value)->
    erlang:setelement(#quoteResponse.yieldData, Record, Value);
setFieldInRecord(quoteResponse, standardTrailer, Record, Value)->
    erlang:setelement(#quoteResponse.standardTrailer, Record, Value);
setFieldInRecord(confirmation, standardHeader, Record, Value)->
    erlang:setelement(#confirmation.standardHeader, Record, Value);
setFieldInRecord(confirmation, confirmID, Record, Value)->
    erlang:setelement(#confirmation.confirmID, Record, Value);
setFieldInRecord(confirmation, confirmRefID, Record, Value)->
    erlang:setelement(#confirmation.confirmRefID, Record, Value);
setFieldInRecord(confirmation, confirmReqID, Record, Value)->
    erlang:setelement(#confirmation.confirmReqID, Record, Value);
setFieldInRecord(confirmation, confirmTransType, Record, Value)->
    erlang:setelement(#confirmation.confirmTransType, Record, Value);
setFieldInRecord(confirmation, confirmType, Record, Value)->
    erlang:setelement(#confirmation.confirmType, Record, Value);
setFieldInRecord(confirmation, copyMsgIndicator, Record, Value)->
    erlang:setelement(#confirmation.copyMsgIndicator, Record, Value);
setFieldInRecord(confirmation, legalConfirm, Record, Value)->
    erlang:setelement(#confirmation.legalConfirm, Record, Value);
setFieldInRecord(confirmation, confirmStatus, Record, Value)->
    erlang:setelement(#confirmation.confirmStatus, Record, Value);
setFieldInRecord(confirmation, parties, Record, Value)->
    erlang:setelement(#confirmation.parties, Record, Value);
setFieldInRecord(confirmation, ordAllocGrp, Record, Value)->
    erlang:setelement(#confirmation.ordAllocGrp, Record, Value);
setFieldInRecord(confirmation, allocID, Record, Value)->
    erlang:setelement(#confirmation.allocID, Record, Value);
setFieldInRecord(confirmation, secondaryAllocID, Record, Value)->
    erlang:setelement(#confirmation.secondaryAllocID, Record, Value);
setFieldInRecord(confirmation, individualAllocID, Record, Value)->
    erlang:setelement(#confirmation.individualAllocID, Record, Value);
setFieldInRecord(confirmation, transactTime, Record, Value)->
    erlang:setelement(#confirmation.transactTime, Record, Value);
setFieldInRecord(confirmation, tradeDate, Record, Value)->
    erlang:setelement(#confirmation.tradeDate, Record, Value);
setFieldInRecord(confirmation, trdRegTimestamps, Record, Value)->
    erlang:setelement(#confirmation.trdRegTimestamps, Record, Value);
setFieldInRecord(confirmation, instrument, Record, Value)->
    erlang:setelement(#confirmation.instrument, Record, Value);
setFieldInRecord(confirmation, instrumentExtension, Record, Value)->
    erlang:setelement(#confirmation.instrumentExtension, Record, Value);
setFieldInRecord(confirmation, financingDetails, Record, Value)->
    erlang:setelement(#confirmation.financingDetails, Record, Value);
setFieldInRecord(confirmation, undInstrmtGrp, Record, Value)->
    erlang:setelement(#confirmation.undInstrmtGrp, Record, Value);
setFieldInRecord(confirmation, instrmtLegGrp, Record, Value)->
    erlang:setelement(#confirmation.instrmtLegGrp, Record, Value);
setFieldInRecord(confirmation, yieldData, Record, Value)->
    erlang:setelement(#confirmation.yieldData, Record, Value);
setFieldInRecord(confirmation, allocQty, Record, Value)->
    erlang:setelement(#confirmation.allocQty, Record, Value);
setFieldInRecord(confirmation, qtyType, Record, Value)->
    erlang:setelement(#confirmation.qtyType, Record, Value);
setFieldInRecord(confirmation, side, Record, Value)->
    erlang:setelement(#confirmation.side, Record, Value);
setFieldInRecord(confirmation, currency, Record, Value)->
    erlang:setelement(#confirmation.currency, Record, Value);
setFieldInRecord(confirmation, lastMkt, Record, Value)->
    erlang:setelement(#confirmation.lastMkt, Record, Value);
setFieldInRecord(confirmation, cpctyConfGrp, Record, Value)->
    erlang:setelement(#confirmation.cpctyConfGrp, Record, Value);
setFieldInRecord(confirmation, allocAccount, Record, Value)->
    erlang:setelement(#confirmation.allocAccount, Record, Value);
setFieldInRecord(confirmation, allocAcctIDSource, Record, Value)->
    erlang:setelement(#confirmation.allocAcctIDSource, Record, Value);
setFieldInRecord(confirmation, allocAccountType, Record, Value)->
    erlang:setelement(#confirmation.allocAccountType, Record, Value);
setFieldInRecord(confirmation, avgPx, Record, Value)->
    erlang:setelement(#confirmation.avgPx, Record, Value);
setFieldInRecord(confirmation, avgPxPrecision, Record, Value)->
    erlang:setelement(#confirmation.avgPxPrecision, Record, Value);
setFieldInRecord(confirmation, priceType, Record, Value)->
    erlang:setelement(#confirmation.priceType, Record, Value);
setFieldInRecord(confirmation, avgParPx, Record, Value)->
    erlang:setelement(#confirmation.avgParPx, Record, Value);
setFieldInRecord(confirmation, spreadOrBenchmarkCurveData, Record, Value)->
    erlang:setelement(#confirmation.spreadOrBenchmarkCurveData, Record, Value);
setFieldInRecord(confirmation, reportedPx, Record, Value)->
    erlang:setelement(#confirmation.reportedPx, Record, Value);
setFieldInRecord(confirmation, text, Record, Value)->
    erlang:setelement(#confirmation.text, Record, Value);
setFieldInRecord(confirmation, encodedTextLen, Record, Value)->
    erlang:setelement(#confirmation.encodedTextLen, Record, Value);
setFieldInRecord(confirmation, encodedText, Record, Value)->
    erlang:setelement(#confirmation.encodedText, Record, Value);
setFieldInRecord(confirmation, processCode, Record, Value)->
    erlang:setelement(#confirmation.processCode, Record, Value);
setFieldInRecord(confirmation, grossTradeAmt, Record, Value)->
    erlang:setelement(#confirmation.grossTradeAmt, Record, Value);
setFieldInRecord(confirmation, numDaysInterest, Record, Value)->
    erlang:setelement(#confirmation.numDaysInterest, Record, Value);
setFieldInRecord(confirmation, exDate, Record, Value)->
    erlang:setelement(#confirmation.exDate, Record, Value);
setFieldInRecord(confirmation, accruedInterestRate, Record, Value)->
    erlang:setelement(#confirmation.accruedInterestRate, Record, Value);
setFieldInRecord(confirmation, accruedInterestAmt, Record, Value)->
    erlang:setelement(#confirmation.accruedInterestAmt, Record, Value);
setFieldInRecord(confirmation, interestAtMaturity, Record, Value)->
    erlang:setelement(#confirmation.interestAtMaturity, Record, Value);
setFieldInRecord(confirmation, endAccruedInterestAmt, Record, Value)->
    erlang:setelement(#confirmation.endAccruedInterestAmt, Record, Value);
setFieldInRecord(confirmation, startCash, Record, Value)->
    erlang:setelement(#confirmation.startCash, Record, Value);
setFieldInRecord(confirmation, endCash, Record, Value)->
    erlang:setelement(#confirmation.endCash, Record, Value);
setFieldInRecord(confirmation, concession, Record, Value)->
    erlang:setelement(#confirmation.concession, Record, Value);
setFieldInRecord(confirmation, totalTakedown, Record, Value)->
    erlang:setelement(#confirmation.totalTakedown, Record, Value);
setFieldInRecord(confirmation, netMoney, Record, Value)->
    erlang:setelement(#confirmation.netMoney, Record, Value);
setFieldInRecord(confirmation, maturityNetMoney, Record, Value)->
    erlang:setelement(#confirmation.maturityNetMoney, Record, Value);
setFieldInRecord(confirmation, settlCurrAmt, Record, Value)->
    erlang:setelement(#confirmation.settlCurrAmt, Record, Value);
setFieldInRecord(confirmation, settlCurrency, Record, Value)->
    erlang:setelement(#confirmation.settlCurrency, Record, Value);
setFieldInRecord(confirmation, settlCurrFxRate, Record, Value)->
    erlang:setelement(#confirmation.settlCurrFxRate, Record, Value);
setFieldInRecord(confirmation, settlCurrFxRateCalc, Record, Value)->
    erlang:setelement(#confirmation.settlCurrFxRateCalc, Record, Value);
setFieldInRecord(confirmation, settlType, Record, Value)->
    erlang:setelement(#confirmation.settlType, Record, Value);
setFieldInRecord(confirmation, settlDate, Record, Value)->
    erlang:setelement(#confirmation.settlDate, Record, Value);
setFieldInRecord(confirmation, settlInstructionsData, Record, Value)->
    erlang:setelement(#confirmation.settlInstructionsData, Record, Value);
setFieldInRecord(confirmation, commissionData, Record, Value)->
    erlang:setelement(#confirmation.commissionData, Record, Value);
setFieldInRecord(confirmation, sharedCommission, Record, Value)->
    erlang:setelement(#confirmation.sharedCommission, Record, Value);
setFieldInRecord(confirmation, stipulations, Record, Value)->
    erlang:setelement(#confirmation.stipulations, Record, Value);
setFieldInRecord(confirmation, miscFeesGrp, Record, Value)->
    erlang:setelement(#confirmation.miscFeesGrp, Record, Value);
setFieldInRecord(confirmation, standardTrailer, Record, Value)->
    erlang:setelement(#confirmation.standardTrailer, Record, Value);
setFieldInRecord(positionMaintenanceRequest, standardHeader, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.standardHeader, Record, Value);
setFieldInRecord(positionMaintenanceRequest, posReqID, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.posReqID, Record, Value);
setFieldInRecord(positionMaintenanceRequest, posTransType, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.posTransType, Record, Value);
setFieldInRecord(positionMaintenanceRequest, posMaintAction, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.posMaintAction, Record, Value);
setFieldInRecord(positionMaintenanceRequest, origPosReqRefID, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.origPosReqRefID, Record, Value);
setFieldInRecord(positionMaintenanceRequest, posMaintRptRefID, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.posMaintRptRefID, Record, Value);
setFieldInRecord(positionMaintenanceRequest, clearingBusinessDate, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.clearingBusinessDate, Record, Value);
setFieldInRecord(positionMaintenanceRequest, settlSessID, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.settlSessID, Record, Value);
setFieldInRecord(positionMaintenanceRequest, settlSessSubID, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.settlSessSubID, Record, Value);
setFieldInRecord(positionMaintenanceRequest, parties, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.parties, Record, Value);
setFieldInRecord(positionMaintenanceRequest, account, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.account, Record, Value);
setFieldInRecord(positionMaintenanceRequest, acctIDSource, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.acctIDSource, Record, Value);
setFieldInRecord(positionMaintenanceRequest, accountType, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.accountType, Record, Value);
setFieldInRecord(positionMaintenanceRequest, instrument, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.instrument, Record, Value);
setFieldInRecord(positionMaintenanceRequest, currency, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.currency, Record, Value);
setFieldInRecord(positionMaintenanceRequest, instrmtLegGrp, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.instrmtLegGrp, Record, Value);
setFieldInRecord(positionMaintenanceRequest, undInstrmtGrp, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.undInstrmtGrp, Record, Value);
setFieldInRecord(positionMaintenanceRequest, trdgSesGrp, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.trdgSesGrp, Record, Value);
setFieldInRecord(positionMaintenanceRequest, transactTime, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.transactTime, Record, Value);
setFieldInRecord(positionMaintenanceRequest, positionQty, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.positionQty, Record, Value);
setFieldInRecord(positionMaintenanceRequest, adjustmentType, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.adjustmentType, Record, Value);
setFieldInRecord(positionMaintenanceRequest, contraryInstructionIndicator, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.contraryInstructionIndicator, Record, Value);
setFieldInRecord(positionMaintenanceRequest, priorSpreadIndicator, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.priorSpreadIndicator, Record, Value);
setFieldInRecord(positionMaintenanceRequest, thresholdAmount, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.thresholdAmount, Record, Value);
setFieldInRecord(positionMaintenanceRequest, text, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.text, Record, Value);
setFieldInRecord(positionMaintenanceRequest, encodedTextLen, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.encodedTextLen, Record, Value);
setFieldInRecord(positionMaintenanceRequest, encodedText, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.encodedText, Record, Value);
setFieldInRecord(positionMaintenanceRequest, standardTrailer, Record, Value)->
    erlang:setelement(#positionMaintenanceRequest.standardTrailer, Record, Value);
setFieldInRecord(positionMaintenanceReport, standardHeader, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.standardHeader, Record, Value);
setFieldInRecord(positionMaintenanceReport, posMaintRptID, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.posMaintRptID, Record, Value);
setFieldInRecord(positionMaintenanceReport, posTransType, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.posTransType, Record, Value);
setFieldInRecord(positionMaintenanceReport, posReqID, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.posReqID, Record, Value);
setFieldInRecord(positionMaintenanceReport, posMaintAction, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.posMaintAction, Record, Value);
setFieldInRecord(positionMaintenanceReport, origPosReqRefID, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.origPosReqRefID, Record, Value);
setFieldInRecord(positionMaintenanceReport, posMaintStatus, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.posMaintStatus, Record, Value);
setFieldInRecord(positionMaintenanceReport, posMaintResult, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.posMaintResult, Record, Value);
setFieldInRecord(positionMaintenanceReport, clearingBusinessDate, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.clearingBusinessDate, Record, Value);
setFieldInRecord(positionMaintenanceReport, settlSessID, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.settlSessID, Record, Value);
setFieldInRecord(positionMaintenanceReport, settlSessSubID, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.settlSessSubID, Record, Value);
setFieldInRecord(positionMaintenanceReport, parties, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.parties, Record, Value);
setFieldInRecord(positionMaintenanceReport, account, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.account, Record, Value);
setFieldInRecord(positionMaintenanceReport, acctIDSource, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.acctIDSource, Record, Value);
setFieldInRecord(positionMaintenanceReport, accountType, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.accountType, Record, Value);
setFieldInRecord(positionMaintenanceReport, instrument, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.instrument, Record, Value);
setFieldInRecord(positionMaintenanceReport, currency, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.currency, Record, Value);
setFieldInRecord(positionMaintenanceReport, instrmtLegGrp, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.instrmtLegGrp, Record, Value);
setFieldInRecord(positionMaintenanceReport, undInstrmtGrp, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.undInstrmtGrp, Record, Value);
setFieldInRecord(positionMaintenanceReport, trdgSesGrp, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.trdgSesGrp, Record, Value);
setFieldInRecord(positionMaintenanceReport, transactTime, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.transactTime, Record, Value);
setFieldInRecord(positionMaintenanceReport, positionQty, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.positionQty, Record, Value);
setFieldInRecord(positionMaintenanceReport, positionAmountData, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.positionAmountData, Record, Value);
setFieldInRecord(positionMaintenanceReport, adjustmentType, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.adjustmentType, Record, Value);
setFieldInRecord(positionMaintenanceReport, thresholdAmount, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.thresholdAmount, Record, Value);
setFieldInRecord(positionMaintenanceReport, text, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.text, Record, Value);
setFieldInRecord(positionMaintenanceReport, encodedTextLen, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.encodedTextLen, Record, Value);
setFieldInRecord(positionMaintenanceReport, encodedText, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.encodedText, Record, Value);
setFieldInRecord(positionMaintenanceReport, standardTrailer, Record, Value)->
    erlang:setelement(#positionMaintenanceReport.standardTrailer, Record, Value);
setFieldInRecord(requestForPositions, standardHeader, Record, Value)->
    erlang:setelement(#requestForPositions.standardHeader, Record, Value);
setFieldInRecord(requestForPositions, posReqID, Record, Value)->
    erlang:setelement(#requestForPositions.posReqID, Record, Value);
setFieldInRecord(requestForPositions, posReqType, Record, Value)->
    erlang:setelement(#requestForPositions.posReqType, Record, Value);
setFieldInRecord(requestForPositions, matchStatus, Record, Value)->
    erlang:setelement(#requestForPositions.matchStatus, Record, Value);
setFieldInRecord(requestForPositions, subscriptionRequestType, Record, Value)->
    erlang:setelement(#requestForPositions.subscriptionRequestType, Record, Value);
setFieldInRecord(requestForPositions, parties, Record, Value)->
    erlang:setelement(#requestForPositions.parties, Record, Value);
setFieldInRecord(requestForPositions, account, Record, Value)->
    erlang:setelement(#requestForPositions.account, Record, Value);
setFieldInRecord(requestForPositions, acctIDSource, Record, Value)->
    erlang:setelement(#requestForPositions.acctIDSource, Record, Value);
setFieldInRecord(requestForPositions, accountType, Record, Value)->
    erlang:setelement(#requestForPositions.accountType, Record, Value);
setFieldInRecord(requestForPositions, instrument, Record, Value)->
    erlang:setelement(#requestForPositions.instrument, Record, Value);
setFieldInRecord(requestForPositions, currency, Record, Value)->
    erlang:setelement(#requestForPositions.currency, Record, Value);
setFieldInRecord(requestForPositions, instrmtLegGrp, Record, Value)->
    erlang:setelement(#requestForPositions.instrmtLegGrp, Record, Value);
setFieldInRecord(requestForPositions, undInstrmtGrp, Record, Value)->
    erlang:setelement(#requestForPositions.undInstrmtGrp, Record, Value);
setFieldInRecord(requestForPositions, clearingBusinessDate, Record, Value)->
    erlang:setelement(#requestForPositions.clearingBusinessDate, Record, Value);
setFieldInRecord(requestForPositions, settlSessID, Record, Value)->
    erlang:setelement(#requestForPositions.settlSessID, Record, Value);
setFieldInRecord(requestForPositions, settlSessSubID, Record, Value)->
    erlang:setelement(#requestForPositions.settlSessSubID, Record, Value);
setFieldInRecord(requestForPositions, trdgSesGrp, Record, Value)->
    erlang:setelement(#requestForPositions.trdgSesGrp, Record, Value);
setFieldInRecord(requestForPositions, transactTime, Record, Value)->
    erlang:setelement(#requestForPositions.transactTime, Record, Value);
setFieldInRecord(requestForPositions, responseTransportType, Record, Value)->
    erlang:setelement(#requestForPositions.responseTransportType, Record, Value);
setFieldInRecord(requestForPositions, responseDestination, Record, Value)->
    erlang:setelement(#requestForPositions.responseDestination, Record, Value);
setFieldInRecord(requestForPositions, text, Record, Value)->
    erlang:setelement(#requestForPositions.text, Record, Value);
setFieldInRecord(requestForPositions, encodedTextLen, Record, Value)->
    erlang:setelement(#requestForPositions.encodedTextLen, Record, Value);
setFieldInRecord(requestForPositions, encodedText, Record, Value)->
    erlang:setelement(#requestForPositions.encodedText, Record, Value);
setFieldInRecord(requestForPositions, standardTrailer, Record, Value)->
    erlang:setelement(#requestForPositions.standardTrailer, Record, Value);
setFieldInRecord(requestForPositionsAck, standardHeader, Record, Value)->
    erlang:setelement(#requestForPositionsAck.standardHeader, Record, Value);
setFieldInRecord(requestForPositionsAck, posMaintRptID, Record, Value)->
    erlang:setelement(#requestForPositionsAck.posMaintRptID, Record, Value);
setFieldInRecord(requestForPositionsAck, posReqID, Record, Value)->
    erlang:setelement(#requestForPositionsAck.posReqID, Record, Value);
setFieldInRecord(requestForPositionsAck, totalNumPosReports, Record, Value)->
    erlang:setelement(#requestForPositionsAck.totalNumPosReports, Record, Value);
setFieldInRecord(requestForPositionsAck, unsolicitedIndicator, Record, Value)->
    erlang:setelement(#requestForPositionsAck.unsolicitedIndicator, Record, Value);
setFieldInRecord(requestForPositionsAck, posReqResult, Record, Value)->
    erlang:setelement(#requestForPositionsAck.posReqResult, Record, Value);
setFieldInRecord(requestForPositionsAck, posReqStatus, Record, Value)->
    erlang:setelement(#requestForPositionsAck.posReqStatus, Record, Value);
setFieldInRecord(requestForPositionsAck, parties, Record, Value)->
    erlang:setelement(#requestForPositionsAck.parties, Record, Value);
setFieldInRecord(requestForPositionsAck, account, Record, Value)->
    erlang:setelement(#requestForPositionsAck.account, Record, Value);
setFieldInRecord(requestForPositionsAck, acctIDSource, Record, Value)->
    erlang:setelement(#requestForPositionsAck.acctIDSource, Record, Value);
setFieldInRecord(requestForPositionsAck, accountType, Record, Value)->
    erlang:setelement(#requestForPositionsAck.accountType, Record, Value);
setFieldInRecord(requestForPositionsAck, instrument, Record, Value)->
    erlang:setelement(#requestForPositionsAck.instrument, Record, Value);
setFieldInRecord(requestForPositionsAck, currency, Record, Value)->
    erlang:setelement(#requestForPositionsAck.currency, Record, Value);
setFieldInRecord(requestForPositionsAck, instrmtLegGrp, Record, Value)->
    erlang:setelement(#requestForPositionsAck.instrmtLegGrp, Record, Value);
setFieldInRecord(requestForPositionsAck, undInstrmtGrp, Record, Value)->
    erlang:setelement(#requestForPositionsAck.undInstrmtGrp, Record, Value);
setFieldInRecord(requestForPositionsAck, responseTransportType, Record, Value)->
    erlang:setelement(#requestForPositionsAck.responseTransportType, Record, Value);
setFieldInRecord(requestForPositionsAck, responseDestination, Record, Value)->
    erlang:setelement(#requestForPositionsAck.responseDestination, Record, Value);
setFieldInRecord(requestForPositionsAck, text, Record, Value)->
    erlang:setelement(#requestForPositionsAck.text, Record, Value);
setFieldInRecord(requestForPositionsAck, encodedTextLen, Record, Value)->
    erlang:setelement(#requestForPositionsAck.encodedTextLen, Record, Value);
setFieldInRecord(requestForPositionsAck, encodedText, Record, Value)->
    erlang:setelement(#requestForPositionsAck.encodedText, Record, Value);
setFieldInRecord(requestForPositionsAck, standardTrailer, Record, Value)->
    erlang:setelement(#requestForPositionsAck.standardTrailer, Record, Value);
setFieldInRecord(positionReport, standardHeader, Record, Value)->
    erlang:setelement(#positionReport.standardHeader, Record, Value);
setFieldInRecord(positionReport, posMaintRptID, Record, Value)->
    erlang:setelement(#positionReport.posMaintRptID, Record, Value);
setFieldInRecord(positionReport, posReqID, Record, Value)->
    erlang:setelement(#positionReport.posReqID, Record, Value);
setFieldInRecord(positionReport, posReqType, Record, Value)->
    erlang:setelement(#positionReport.posReqType, Record, Value);
setFieldInRecord(positionReport, subscriptionRequestType, Record, Value)->
    erlang:setelement(#positionReport.subscriptionRequestType, Record, Value);
setFieldInRecord(positionReport, totalNumPosReports, Record, Value)->
    erlang:setelement(#positionReport.totalNumPosReports, Record, Value);
setFieldInRecord(positionReport, unsolicitedIndicator, Record, Value)->
    erlang:setelement(#positionReport.unsolicitedIndicator, Record, Value);
setFieldInRecord(positionReport, posReqResult, Record, Value)->
    erlang:setelement(#positionReport.posReqResult, Record, Value);
setFieldInRecord(positionReport, clearingBusinessDate, Record, Value)->
    erlang:setelement(#positionReport.clearingBusinessDate, Record, Value);
setFieldInRecord(positionReport, settlSessID, Record, Value)->
    erlang:setelement(#positionReport.settlSessID, Record, Value);
setFieldInRecord(positionReport, settlSessSubID, Record, Value)->
    erlang:setelement(#positionReport.settlSessSubID, Record, Value);
setFieldInRecord(positionReport, parties, Record, Value)->
    erlang:setelement(#positionReport.parties, Record, Value);
setFieldInRecord(positionReport, account, Record, Value)->
    erlang:setelement(#positionReport.account, Record, Value);
setFieldInRecord(positionReport, acctIDSource, Record, Value)->
    erlang:setelement(#positionReport.acctIDSource, Record, Value);
setFieldInRecord(positionReport, accountType, Record, Value)->
    erlang:setelement(#positionReport.accountType, Record, Value);
setFieldInRecord(positionReport, instrument, Record, Value)->
    erlang:setelement(#positionReport.instrument, Record, Value);
setFieldInRecord(positionReport, currency, Record, Value)->
    erlang:setelement(#positionReport.currency, Record, Value);
setFieldInRecord(positionReport, settlPrice, Record, Value)->
    erlang:setelement(#positionReport.settlPrice, Record, Value);
setFieldInRecord(positionReport, settlPriceType, Record, Value)->
    erlang:setelement(#positionReport.settlPriceType, Record, Value);
setFieldInRecord(positionReport, priorSettlPrice, Record, Value)->
    erlang:setelement(#positionReport.priorSettlPrice, Record, Value);
setFieldInRecord(positionReport, instrmtLegGrp, Record, Value)->
    erlang:setelement(#positionReport.instrmtLegGrp, Record, Value);
setFieldInRecord(positionReport, posUndInstrmtGrp, Record, Value)->
    erlang:setelement(#positionReport.posUndInstrmtGrp, Record, Value);
setFieldInRecord(positionReport, positionQty, Record, Value)->
    erlang:setelement(#positionReport.positionQty, Record, Value);
setFieldInRecord(positionReport, positionAmountData, Record, Value)->
    erlang:setelement(#positionReport.positionAmountData, Record, Value);
setFieldInRecord(positionReport, registStatus, Record, Value)->
    erlang:setelement(#positionReport.registStatus, Record, Value);
setFieldInRecord(positionReport, deliveryDate, Record, Value)->
    erlang:setelement(#positionReport.deliveryDate, Record, Value);
setFieldInRecord(positionReport, text, Record, Value)->
    erlang:setelement(#positionReport.text, Record, Value);
setFieldInRecord(positionReport, encodedTextLen, Record, Value)->
    erlang:setelement(#positionReport.encodedTextLen, Record, Value);
setFieldInRecord(positionReport, encodedText, Record, Value)->
    erlang:setelement(#positionReport.encodedText, Record, Value);
setFieldInRecord(positionReport, standardTrailer, Record, Value)->
    erlang:setelement(#positionReport.standardTrailer, Record, Value);
setFieldInRecord(tradeCaptureReportRequestAck, standardHeader, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequestAck.standardHeader, Record, Value);
setFieldInRecord(tradeCaptureReportRequestAck, tradeRequestID, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequestAck.tradeRequestID, Record, Value);
setFieldInRecord(tradeCaptureReportRequestAck, tradeRequestType, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequestAck.tradeRequestType, Record, Value);
setFieldInRecord(tradeCaptureReportRequestAck, subscriptionRequestType, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequestAck.subscriptionRequestType, Record, Value);
setFieldInRecord(tradeCaptureReportRequestAck, totNumTradeReports, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequestAck.totNumTradeReports, Record, Value);
setFieldInRecord(tradeCaptureReportRequestAck, tradeRequestResult, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequestAck.tradeRequestResult, Record, Value);
setFieldInRecord(tradeCaptureReportRequestAck, tradeRequestStatus, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequestAck.tradeRequestStatus, Record, Value);
setFieldInRecord(tradeCaptureReportRequestAck, instrument, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequestAck.instrument, Record, Value);
setFieldInRecord(tradeCaptureReportRequestAck, undInstrmtGrp, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequestAck.undInstrmtGrp, Record, Value);
setFieldInRecord(tradeCaptureReportRequestAck, instrmtLegGrp, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequestAck.instrmtLegGrp, Record, Value);
setFieldInRecord(tradeCaptureReportRequestAck, multiLegReportingType, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequestAck.multiLegReportingType, Record, Value);
setFieldInRecord(tradeCaptureReportRequestAck, responseTransportType, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequestAck.responseTransportType, Record, Value);
setFieldInRecord(tradeCaptureReportRequestAck, responseDestination, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequestAck.responseDestination, Record, Value);
setFieldInRecord(tradeCaptureReportRequestAck, text, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequestAck.text, Record, Value);
setFieldInRecord(tradeCaptureReportRequestAck, encodedTextLen, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequestAck.encodedTextLen, Record, Value);
setFieldInRecord(tradeCaptureReportRequestAck, encodedText, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequestAck.encodedText, Record, Value);
setFieldInRecord(tradeCaptureReportRequestAck, standardTrailer, Record, Value)->
    erlang:setelement(#tradeCaptureReportRequestAck.standardTrailer, Record, Value);
setFieldInRecord(tradeCaptureReportAck, standardHeader, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.standardHeader, Record, Value);
setFieldInRecord(tradeCaptureReportAck, tradeReportID, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.tradeReportID, Record, Value);
setFieldInRecord(tradeCaptureReportAck, tradeReportTransType, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.tradeReportTransType, Record, Value);
setFieldInRecord(tradeCaptureReportAck, tradeReportType, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.tradeReportType, Record, Value);
setFieldInRecord(tradeCaptureReportAck, trdType, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.trdType, Record, Value);
setFieldInRecord(tradeCaptureReportAck, trdSubType, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.trdSubType, Record, Value);
setFieldInRecord(tradeCaptureReportAck, secondaryTrdType, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.secondaryTrdType, Record, Value);
setFieldInRecord(tradeCaptureReportAck, transferReason, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.transferReason, Record, Value);
setFieldInRecord(tradeCaptureReportAck, execType, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.execType, Record, Value);
setFieldInRecord(tradeCaptureReportAck, tradeReportRefID, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.tradeReportRefID, Record, Value);
setFieldInRecord(tradeCaptureReportAck, secondaryTradeReportRefID, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.secondaryTradeReportRefID, Record, Value);
setFieldInRecord(tradeCaptureReportAck, trdRptStatus, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.trdRptStatus, Record, Value);
setFieldInRecord(tradeCaptureReportAck, tradeReportRejectReason, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.tradeReportRejectReason, Record, Value);
setFieldInRecord(tradeCaptureReportAck, secondaryTradeReportID, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.secondaryTradeReportID, Record, Value);
setFieldInRecord(tradeCaptureReportAck, subscriptionRequestType, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.subscriptionRequestType, Record, Value);
setFieldInRecord(tradeCaptureReportAck, tradeLinkID, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.tradeLinkID, Record, Value);
setFieldInRecord(tradeCaptureReportAck, trdMatchID, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.trdMatchID, Record, Value);
setFieldInRecord(tradeCaptureReportAck, execID, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.execID, Record, Value);
setFieldInRecord(tradeCaptureReportAck, secondaryExecID, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.secondaryExecID, Record, Value);
setFieldInRecord(tradeCaptureReportAck, instrument, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.instrument, Record, Value);
setFieldInRecord(tradeCaptureReportAck, transactTime, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.transactTime, Record, Value);
setFieldInRecord(tradeCaptureReportAck, trdRegTimestamps, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.trdRegTimestamps, Record, Value);
setFieldInRecord(tradeCaptureReportAck, responseTransportType, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.responseTransportType, Record, Value);
setFieldInRecord(tradeCaptureReportAck, responseDestination, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.responseDestination, Record, Value);
setFieldInRecord(tradeCaptureReportAck, text, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.text, Record, Value);
setFieldInRecord(tradeCaptureReportAck, encodedTextLen, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.encodedTextLen, Record, Value);
setFieldInRecord(tradeCaptureReportAck, encodedText, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.encodedText, Record, Value);
setFieldInRecord(tradeCaptureReportAck, trdInstrmtLegGrp, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.trdInstrmtLegGrp, Record, Value);
setFieldInRecord(tradeCaptureReportAck, clearingFeeIndicator, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.clearingFeeIndicator, Record, Value);
setFieldInRecord(tradeCaptureReportAck, orderCapacity, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.orderCapacity, Record, Value);
setFieldInRecord(tradeCaptureReportAck, orderRestrictions, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.orderRestrictions, Record, Value);
setFieldInRecord(tradeCaptureReportAck, custOrderCapacity, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.custOrderCapacity, Record, Value);
setFieldInRecord(tradeCaptureReportAck, account, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.account, Record, Value);
setFieldInRecord(tradeCaptureReportAck, acctIDSource, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.acctIDSource, Record, Value);
setFieldInRecord(tradeCaptureReportAck, accountType, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.accountType, Record, Value);
setFieldInRecord(tradeCaptureReportAck, positionEffect, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.positionEffect, Record, Value);
setFieldInRecord(tradeCaptureReportAck, preallocMethod, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.preallocMethod, Record, Value);
setFieldInRecord(tradeCaptureReportAck, trdAllocGrp, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.trdAllocGrp, Record, Value);
setFieldInRecord(tradeCaptureReportAck, standardTrailer, Record, Value)->
    erlang:setelement(#tradeCaptureReportAck.standardTrailer, Record, Value);
setFieldInRecord(allocationReport, standardHeader, Record, Value)->
    erlang:setelement(#allocationReport.standardHeader, Record, Value);
setFieldInRecord(allocationReport, allocReportID, Record, Value)->
    erlang:setelement(#allocationReport.allocReportID, Record, Value);
setFieldInRecord(allocationReport, allocID, Record, Value)->
    erlang:setelement(#allocationReport.allocID, Record, Value);
setFieldInRecord(allocationReport, allocTransType, Record, Value)->
    erlang:setelement(#allocationReport.allocTransType, Record, Value);
setFieldInRecord(allocationReport, allocReportRefID, Record, Value)->
    erlang:setelement(#allocationReport.allocReportRefID, Record, Value);
setFieldInRecord(allocationReport, allocCancReplaceReason, Record, Value)->
    erlang:setelement(#allocationReport.allocCancReplaceReason, Record, Value);
setFieldInRecord(allocationReport, secondaryAllocID, Record, Value)->
    erlang:setelement(#allocationReport.secondaryAllocID, Record, Value);
setFieldInRecord(allocationReport, allocReportType, Record, Value)->
    erlang:setelement(#allocationReport.allocReportType, Record, Value);
setFieldInRecord(allocationReport, allocStatus, Record, Value)->
    erlang:setelement(#allocationReport.allocStatus, Record, Value);
setFieldInRecord(allocationReport, allocRejCode, Record, Value)->
    erlang:setelement(#allocationReport.allocRejCode, Record, Value);
setFieldInRecord(allocationReport, refAllocID, Record, Value)->
    erlang:setelement(#allocationReport.refAllocID, Record, Value);
setFieldInRecord(allocationReport, allocIntermedReqType, Record, Value)->
    erlang:setelement(#allocationReport.allocIntermedReqType, Record, Value);
setFieldInRecord(allocationReport, allocLinkID, Record, Value)->
    erlang:setelement(#allocationReport.allocLinkID, Record, Value);
setFieldInRecord(allocationReport, allocLinkType, Record, Value)->
    erlang:setelement(#allocationReport.allocLinkType, Record, Value);
setFieldInRecord(allocationReport, bookingRefID, Record, Value)->
    erlang:setelement(#allocationReport.bookingRefID, Record, Value);
setFieldInRecord(allocationReport, allocNoOrdersType, Record, Value)->
    erlang:setelement(#allocationReport.allocNoOrdersType, Record, Value);
setFieldInRecord(allocationReport, ordAllocGrp, Record, Value)->
    erlang:setelement(#allocationReport.ordAllocGrp, Record, Value);
setFieldInRecord(allocationReport, execAllocGrp, Record, Value)->
    erlang:setelement(#allocationReport.execAllocGrp, Record, Value);
setFieldInRecord(allocationReport, previouslyReported, Record, Value)->
    erlang:setelement(#allocationReport.previouslyReported, Record, Value);
setFieldInRecord(allocationReport, reversalIndicator, Record, Value)->
    erlang:setelement(#allocationReport.reversalIndicator, Record, Value);
setFieldInRecord(allocationReport, matchType, Record, Value)->
    erlang:setelement(#allocationReport.matchType, Record, Value);
setFieldInRecord(allocationReport, side, Record, Value)->
    erlang:setelement(#allocationReport.side, Record, Value);
setFieldInRecord(allocationReport, instrument, Record, Value)->
    erlang:setelement(#allocationReport.instrument, Record, Value);
setFieldInRecord(allocationReport, instrumentExtension, Record, Value)->
    erlang:setelement(#allocationReport.instrumentExtension, Record, Value);
setFieldInRecord(allocationReport, financingDetails, Record, Value)->
    erlang:setelement(#allocationReport.financingDetails, Record, Value);
setFieldInRecord(allocationReport, undInstrmtGrp, Record, Value)->
    erlang:setelement(#allocationReport.undInstrmtGrp, Record, Value);
setFieldInRecord(allocationReport, instrmtLegGrp, Record, Value)->
    erlang:setelement(#allocationReport.instrmtLegGrp, Record, Value);
setFieldInRecord(allocationReport, quantity, Record, Value)->
    erlang:setelement(#allocationReport.quantity, Record, Value);
setFieldInRecord(allocationReport, qtyType, Record, Value)->
    erlang:setelement(#allocationReport.qtyType, Record, Value);
setFieldInRecord(allocationReport, lastMkt, Record, Value)->
    erlang:setelement(#allocationReport.lastMkt, Record, Value);
setFieldInRecord(allocationReport, tradeOriginationDate, Record, Value)->
    erlang:setelement(#allocationReport.tradeOriginationDate, Record, Value);
setFieldInRecord(allocationReport, tradingSessionID, Record, Value)->
    erlang:setelement(#allocationReport.tradingSessionID, Record, Value);
setFieldInRecord(allocationReport, tradingSessionSubID, Record, Value)->
    erlang:setelement(#allocationReport.tradingSessionSubID, Record, Value);
setFieldInRecord(allocationReport, priceType, Record, Value)->
    erlang:setelement(#allocationReport.priceType, Record, Value);
setFieldInRecord(allocationReport, avgPx, Record, Value)->
    erlang:setelement(#allocationReport.avgPx, Record, Value);
setFieldInRecord(allocationReport, avgParPx, Record, Value)->
    erlang:setelement(#allocationReport.avgParPx, Record, Value);
setFieldInRecord(allocationReport, spreadOrBenchmarkCurveData, Record, Value)->
    erlang:setelement(#allocationReport.spreadOrBenchmarkCurveData, Record, Value);
setFieldInRecord(allocationReport, currency, Record, Value)->
    erlang:setelement(#allocationReport.currency, Record, Value);
setFieldInRecord(allocationReport, avgPxPrecision, Record, Value)->
    erlang:setelement(#allocationReport.avgPxPrecision, Record, Value);
setFieldInRecord(allocationReport, parties, Record, Value)->
    erlang:setelement(#allocationReport.parties, Record, Value);
setFieldInRecord(allocationReport, tradeDate, Record, Value)->
    erlang:setelement(#allocationReport.tradeDate, Record, Value);
setFieldInRecord(allocationReport, transactTime, Record, Value)->
    erlang:setelement(#allocationReport.transactTime, Record, Value);
setFieldInRecord(allocationReport, settlType, Record, Value)->
    erlang:setelement(#allocationReport.settlType, Record, Value);
setFieldInRecord(allocationReport, settlDate, Record, Value)->
    erlang:setelement(#allocationReport.settlDate, Record, Value);
setFieldInRecord(allocationReport, bookingType, Record, Value)->
    erlang:setelement(#allocationReport.bookingType, Record, Value);
setFieldInRecord(allocationReport, grossTradeAmt, Record, Value)->
    erlang:setelement(#allocationReport.grossTradeAmt, Record, Value);
setFieldInRecord(allocationReport, concession, Record, Value)->
    erlang:setelement(#allocationReport.concession, Record, Value);
setFieldInRecord(allocationReport, totalTakedown, Record, Value)->
    erlang:setelement(#allocationReport.totalTakedown, Record, Value);
setFieldInRecord(allocationReport, netMoney, Record, Value)->
    erlang:setelement(#allocationReport.netMoney, Record, Value);
setFieldInRecord(allocationReport, positionEffect, Record, Value)->
    erlang:setelement(#allocationReport.positionEffect, Record, Value);
setFieldInRecord(allocationReport, autoAcceptIndicator, Record, Value)->
    erlang:setelement(#allocationReport.autoAcceptIndicator, Record, Value);
setFieldInRecord(allocationReport, text, Record, Value)->
    erlang:setelement(#allocationReport.text, Record, Value);
setFieldInRecord(allocationReport, encodedTextLen, Record, Value)->
    erlang:setelement(#allocationReport.encodedTextLen, Record, Value);
setFieldInRecord(allocationReport, encodedText, Record, Value)->
    erlang:setelement(#allocationReport.encodedText, Record, Value);
setFieldInRecord(allocationReport, numDaysInterest, Record, Value)->
    erlang:setelement(#allocationReport.numDaysInterest, Record, Value);
setFieldInRecord(allocationReport, accruedInterestRate, Record, Value)->
    erlang:setelement(#allocationReport.accruedInterestRate, Record, Value);
setFieldInRecord(allocationReport, accruedInterestAmt, Record, Value)->
    erlang:setelement(#allocationReport.accruedInterestAmt, Record, Value);
setFieldInRecord(allocationReport, totalAccruedInterestAmt, Record, Value)->
    erlang:setelement(#allocationReport.totalAccruedInterestAmt, Record, Value);
setFieldInRecord(allocationReport, interestAtMaturity, Record, Value)->
    erlang:setelement(#allocationReport.interestAtMaturity, Record, Value);
setFieldInRecord(allocationReport, endAccruedInterestAmt, Record, Value)->
    erlang:setelement(#allocationReport.endAccruedInterestAmt, Record, Value);
setFieldInRecord(allocationReport, startCash, Record, Value)->
    erlang:setelement(#allocationReport.startCash, Record, Value);
setFieldInRecord(allocationReport, endCash, Record, Value)->
    erlang:setelement(#allocationReport.endCash, Record, Value);
setFieldInRecord(allocationReport, legalConfirm, Record, Value)->
    erlang:setelement(#allocationReport.legalConfirm, Record, Value);
setFieldInRecord(allocationReport, stipulations, Record, Value)->
    erlang:setelement(#allocationReport.stipulations, Record, Value);
setFieldInRecord(allocationReport, yieldData, Record, Value)->
    erlang:setelement(#allocationReport.yieldData, Record, Value);
setFieldInRecord(allocationReport, totNoAllocs, Record, Value)->
    erlang:setelement(#allocationReport.totNoAllocs, Record, Value);
setFieldInRecord(allocationReport, lastFragment, Record, Value)->
    erlang:setelement(#allocationReport.lastFragment, Record, Value);
setFieldInRecord(allocationReport, allocGrp, Record, Value)->
    erlang:setelement(#allocationReport.allocGrp, Record, Value);
setFieldInRecord(allocationReport, standardTrailer, Record, Value)->
    erlang:setelement(#allocationReport.standardTrailer, Record, Value);
setFieldInRecord(allocationReportAck, standardHeader, Record, Value)->
    erlang:setelement(#allocationReportAck.standardHeader, Record, Value);
setFieldInRecord(allocationReportAck, allocReportID, Record, Value)->
    erlang:setelement(#allocationReportAck.allocReportID, Record, Value);
setFieldInRecord(allocationReportAck, allocID, Record, Value)->
    erlang:setelement(#allocationReportAck.allocID, Record, Value);
setFieldInRecord(allocationReportAck, parties, Record, Value)->
    erlang:setelement(#allocationReportAck.parties, Record, Value);
setFieldInRecord(allocationReportAck, secondaryAllocID, Record, Value)->
    erlang:setelement(#allocationReportAck.secondaryAllocID, Record, Value);
setFieldInRecord(allocationReportAck, tradeDate, Record, Value)->
    erlang:setelement(#allocationReportAck.tradeDate, Record, Value);
setFieldInRecord(allocationReportAck, transactTime, Record, Value)->
    erlang:setelement(#allocationReportAck.transactTime, Record, Value);
setFieldInRecord(allocationReportAck, allocStatus, Record, Value)->
    erlang:setelement(#allocationReportAck.allocStatus, Record, Value);
setFieldInRecord(allocationReportAck, allocRejCode, Record, Value)->
    erlang:setelement(#allocationReportAck.allocRejCode, Record, Value);
setFieldInRecord(allocationReportAck, allocReportType, Record, Value)->
    erlang:setelement(#allocationReportAck.allocReportType, Record, Value);
setFieldInRecord(allocationReportAck, allocIntermedReqType, Record, Value)->
    erlang:setelement(#allocationReportAck.allocIntermedReqType, Record, Value);
setFieldInRecord(allocationReportAck, matchStatus, Record, Value)->
    erlang:setelement(#allocationReportAck.matchStatus, Record, Value);
setFieldInRecord(allocationReportAck, produkt, Record, Value)->
    erlang:setelement(#allocationReportAck.produkt, Record, Value);
setFieldInRecord(allocationReportAck, securityType, Record, Value)->
    erlang:setelement(#allocationReportAck.securityType, Record, Value);
setFieldInRecord(allocationReportAck, text, Record, Value)->
    erlang:setelement(#allocationReportAck.text, Record, Value);
setFieldInRecord(allocationReportAck, encodedTextLen, Record, Value)->
    erlang:setelement(#allocationReportAck.encodedTextLen, Record, Value);
setFieldInRecord(allocationReportAck, encodedText, Record, Value)->
    erlang:setelement(#allocationReportAck.encodedText, Record, Value);
setFieldInRecord(allocationReportAck, allocAckGrp, Record, Value)->
    erlang:setelement(#allocationReportAck.allocAckGrp, Record, Value);
setFieldInRecord(allocationReportAck, standardTrailer, Record, Value)->
    erlang:setelement(#allocationReportAck.standardTrailer, Record, Value);
setFieldInRecord(confirmationAck, standardHeader, Record, Value)->
    erlang:setelement(#confirmationAck.standardHeader, Record, Value);
setFieldInRecord(confirmationAck, confirmID, Record, Value)->
    erlang:setelement(#confirmationAck.confirmID, Record, Value);
setFieldInRecord(confirmationAck, tradeDate, Record, Value)->
    erlang:setelement(#confirmationAck.tradeDate, Record, Value);
setFieldInRecord(confirmationAck, transactTime, Record, Value)->
    erlang:setelement(#confirmationAck.transactTime, Record, Value);
setFieldInRecord(confirmationAck, affirmStatus, Record, Value)->
    erlang:setelement(#confirmationAck.affirmStatus, Record, Value);
setFieldInRecord(confirmationAck, confirmRejReason, Record, Value)->
    erlang:setelement(#confirmationAck.confirmRejReason, Record, Value);
setFieldInRecord(confirmationAck, matchStatus, Record, Value)->
    erlang:setelement(#confirmationAck.matchStatus, Record, Value);
setFieldInRecord(confirmationAck, text, Record, Value)->
    erlang:setelement(#confirmationAck.text, Record, Value);
setFieldInRecord(confirmationAck, encodedTextLen, Record, Value)->
    erlang:setelement(#confirmationAck.encodedTextLen, Record, Value);
setFieldInRecord(confirmationAck, encodedText, Record, Value)->
    erlang:setelement(#confirmationAck.encodedText, Record, Value);
setFieldInRecord(confirmationAck, standardTrailer, Record, Value)->
    erlang:setelement(#confirmationAck.standardTrailer, Record, Value);
setFieldInRecord(settlementInstructionRequest, standardHeader, Record, Value)->
    erlang:setelement(#settlementInstructionRequest.standardHeader, Record, Value);
setFieldInRecord(settlementInstructionRequest, settlInstReqID, Record, Value)->
    erlang:setelement(#settlementInstructionRequest.settlInstReqID, Record, Value);
setFieldInRecord(settlementInstructionRequest, transactTime, Record, Value)->
    erlang:setelement(#settlementInstructionRequest.transactTime, Record, Value);
setFieldInRecord(settlementInstructionRequest, parties, Record, Value)->
    erlang:setelement(#settlementInstructionRequest.parties, Record, Value);
setFieldInRecord(settlementInstructionRequest, allocAccount, Record, Value)->
    erlang:setelement(#settlementInstructionRequest.allocAccount, Record, Value);
setFieldInRecord(settlementInstructionRequest, allocAcctIDSource, Record, Value)->
    erlang:setelement(#settlementInstructionRequest.allocAcctIDSource, Record, Value);
setFieldInRecord(settlementInstructionRequest, side, Record, Value)->
    erlang:setelement(#settlementInstructionRequest.side, Record, Value);
setFieldInRecord(settlementInstructionRequest, produkt, Record, Value)->
    erlang:setelement(#settlementInstructionRequest.produkt, Record, Value);
setFieldInRecord(settlementInstructionRequest, securityType, Record, Value)->
    erlang:setelement(#settlementInstructionRequest.securityType, Record, Value);
setFieldInRecord(settlementInstructionRequest, cFICode, Record, Value)->
    erlang:setelement(#settlementInstructionRequest.cFICode, Record, Value);
setFieldInRecord(settlementInstructionRequest, effectiveTime, Record, Value)->
    erlang:setelement(#settlementInstructionRequest.effectiveTime, Record, Value);
setFieldInRecord(settlementInstructionRequest, expireTime, Record, Value)->
    erlang:setelement(#settlementInstructionRequest.expireTime, Record, Value);
setFieldInRecord(settlementInstructionRequest, lastUpdateTime, Record, Value)->
    erlang:setelement(#settlementInstructionRequest.lastUpdateTime, Record, Value);
setFieldInRecord(settlementInstructionRequest, standInstDbType, Record, Value)->
    erlang:setelement(#settlementInstructionRequest.standInstDbType, Record, Value);
setFieldInRecord(settlementInstructionRequest, standInstDbName, Record, Value)->
    erlang:setelement(#settlementInstructionRequest.standInstDbName, Record, Value);
setFieldInRecord(settlementInstructionRequest, standInstDbID, Record, Value)->
    erlang:setelement(#settlementInstructionRequest.standInstDbID, Record, Value);
setFieldInRecord(settlementInstructionRequest, standardTrailer, Record, Value)->
    erlang:setelement(#settlementInstructionRequest.standardTrailer, Record, Value);
setFieldInRecord(assignmentReport, standardHeader, Record, Value)->
    erlang:setelement(#assignmentReport.standardHeader, Record, Value);
setFieldInRecord(assignmentReport, asgnRptID, Record, Value)->
    erlang:setelement(#assignmentReport.asgnRptID, Record, Value);
setFieldInRecord(assignmentReport, totNumAssignmentReports, Record, Value)->
    erlang:setelement(#assignmentReport.totNumAssignmentReports, Record, Value);
setFieldInRecord(assignmentReport, lastRptRequested, Record, Value)->
    erlang:setelement(#assignmentReport.lastRptRequested, Record, Value);
setFieldInRecord(assignmentReport, parties, Record, Value)->
    erlang:setelement(#assignmentReport.parties, Record, Value);
setFieldInRecord(assignmentReport, account, Record, Value)->
    erlang:setelement(#assignmentReport.account, Record, Value);
setFieldInRecord(assignmentReport, accountType, Record, Value)->
    erlang:setelement(#assignmentReport.accountType, Record, Value);
setFieldInRecord(assignmentReport, instrument, Record, Value)->
    erlang:setelement(#assignmentReport.instrument, Record, Value);
setFieldInRecord(assignmentReport, currency, Record, Value)->
    erlang:setelement(#assignmentReport.currency, Record, Value);
setFieldInRecord(assignmentReport, instrmtLegGrp, Record, Value)->
    erlang:setelement(#assignmentReport.instrmtLegGrp, Record, Value);
setFieldInRecord(assignmentReport, undInstrmtGrp, Record, Value)->
    erlang:setelement(#assignmentReport.undInstrmtGrp, Record, Value);
setFieldInRecord(assignmentReport, positionQty, Record, Value)->
    erlang:setelement(#assignmentReport.positionQty, Record, Value);
setFieldInRecord(assignmentReport, positionAmountData, Record, Value)->
    erlang:setelement(#assignmentReport.positionAmountData, Record, Value);
setFieldInRecord(assignmentReport, thresholdAmount, Record, Value)->
    erlang:setelement(#assignmentReport.thresholdAmount, Record, Value);
setFieldInRecord(assignmentReport, settlPrice, Record, Value)->
    erlang:setelement(#assignmentReport.settlPrice, Record, Value);
setFieldInRecord(assignmentReport, settlPriceType, Record, Value)->
    erlang:setelement(#assignmentReport.settlPriceType, Record, Value);
setFieldInRecord(assignmentReport, underlyingSettlPrice, Record, Value)->
    erlang:setelement(#assignmentReport.underlyingSettlPrice, Record, Value);
setFieldInRecord(assignmentReport, expireDate, Record, Value)->
    erlang:setelement(#assignmentReport.expireDate, Record, Value);
setFieldInRecord(assignmentReport, assignmentMethod, Record, Value)->
    erlang:setelement(#assignmentReport.assignmentMethod, Record, Value);
setFieldInRecord(assignmentReport, assignmentUnit, Record, Value)->
    erlang:setelement(#assignmentReport.assignmentUnit, Record, Value);
setFieldInRecord(assignmentReport, openInterest, Record, Value)->
    erlang:setelement(#assignmentReport.openInterest, Record, Value);
setFieldInRecord(assignmentReport, exerciseMethod, Record, Value)->
    erlang:setelement(#assignmentReport.exerciseMethod, Record, Value);
setFieldInRecord(assignmentReport, settlSessID, Record, Value)->
    erlang:setelement(#assignmentReport.settlSessID, Record, Value);
setFieldInRecord(assignmentReport, settlSessSubID, Record, Value)->
    erlang:setelement(#assignmentReport.settlSessSubID, Record, Value);
setFieldInRecord(assignmentReport, clearingBusinessDate, Record, Value)->
    erlang:setelement(#assignmentReport.clearingBusinessDate, Record, Value);
setFieldInRecord(assignmentReport, text, Record, Value)->
    erlang:setelement(#assignmentReport.text, Record, Value);
setFieldInRecord(assignmentReport, encodedTextLen, Record, Value)->
    erlang:setelement(#assignmentReport.encodedTextLen, Record, Value);
setFieldInRecord(assignmentReport, encodedText, Record, Value)->
    erlang:setelement(#assignmentReport.encodedText, Record, Value);
setFieldInRecord(assignmentReport, standardTrailer, Record, Value)->
    erlang:setelement(#assignmentReport.standardTrailer, Record, Value);
setFieldInRecord(collateralRequest, standardHeader, Record, Value)->
    erlang:setelement(#collateralRequest.standardHeader, Record, Value);
setFieldInRecord(collateralRequest, collReqID, Record, Value)->
    erlang:setelement(#collateralRequest.collReqID, Record, Value);
setFieldInRecord(collateralRequest, collAsgnReason, Record, Value)->
    erlang:setelement(#collateralRequest.collAsgnReason, Record, Value);
setFieldInRecord(collateralRequest, transactTime, Record, Value)->
    erlang:setelement(#collateralRequest.transactTime, Record, Value);
setFieldInRecord(collateralRequest, expireTime, Record, Value)->
    erlang:setelement(#collateralRequest.expireTime, Record, Value);
setFieldInRecord(collateralRequest, parties, Record, Value)->
    erlang:setelement(#collateralRequest.parties, Record, Value);
setFieldInRecord(collateralRequest, account, Record, Value)->
    erlang:setelement(#collateralRequest.account, Record, Value);
setFieldInRecord(collateralRequest, accountType, Record, Value)->
    erlang:setelement(#collateralRequest.accountType, Record, Value);
setFieldInRecord(collateralRequest, clOrdID, Record, Value)->
    erlang:setelement(#collateralRequest.clOrdID, Record, Value);
setFieldInRecord(collateralRequest, orderID, Record, Value)->
    erlang:setelement(#collateralRequest.orderID, Record, Value);
setFieldInRecord(collateralRequest, secondaryOrderID, Record, Value)->
    erlang:setelement(#collateralRequest.secondaryOrderID, Record, Value);
setFieldInRecord(collateralRequest, secondaryClOrdID, Record, Value)->
    erlang:setelement(#collateralRequest.secondaryClOrdID, Record, Value);
setFieldInRecord(collateralRequest, execCollGrp, Record, Value)->
    erlang:setelement(#collateralRequest.execCollGrp, Record, Value);
setFieldInRecord(collateralRequest, trdCollGrp, Record, Value)->
    erlang:setelement(#collateralRequest.trdCollGrp, Record, Value);
setFieldInRecord(collateralRequest, instrument, Record, Value)->
    erlang:setelement(#collateralRequest.instrument, Record, Value);
setFieldInRecord(collateralRequest, financingDetails, Record, Value)->
    erlang:setelement(#collateralRequest.financingDetails, Record, Value);
setFieldInRecord(collateralRequest, settlDate, Record, Value)->
    erlang:setelement(#collateralRequest.settlDate, Record, Value);
setFieldInRecord(collateralRequest, quantity, Record, Value)->
    erlang:setelement(#collateralRequest.quantity, Record, Value);
setFieldInRecord(collateralRequest, qtyType, Record, Value)->
    erlang:setelement(#collateralRequest.qtyType, Record, Value);
setFieldInRecord(collateralRequest, currency, Record, Value)->
    erlang:setelement(#collateralRequest.currency, Record, Value);
setFieldInRecord(collateralRequest, instrmtLegGrp, Record, Value)->
    erlang:setelement(#collateralRequest.instrmtLegGrp, Record, Value);
setFieldInRecord(collateralRequest, undInstrmtCollGrp, Record, Value)->
    erlang:setelement(#collateralRequest.undInstrmtCollGrp, Record, Value);
setFieldInRecord(collateralRequest, marginExcess, Record, Value)->
    erlang:setelement(#collateralRequest.marginExcess, Record, Value);
setFieldInRecord(collateralRequest, totalNetValue, Record, Value)->
    erlang:setelement(#collateralRequest.totalNetValue, Record, Value);
setFieldInRecord(collateralRequest, cashOutstanding, Record, Value)->
    erlang:setelement(#collateralRequest.cashOutstanding, Record, Value);
setFieldInRecord(collateralRequest, trdRegTimestamps, Record, Value)->
    erlang:setelement(#collateralRequest.trdRegTimestamps, Record, Value);
setFieldInRecord(collateralRequest, side, Record, Value)->
    erlang:setelement(#collateralRequest.side, Record, Value);
setFieldInRecord(collateralRequest, miscFeesGrp, Record, Value)->
    erlang:setelement(#collateralRequest.miscFeesGrp, Record, Value);
setFieldInRecord(collateralRequest, price, Record, Value)->
    erlang:setelement(#collateralRequest.price, Record, Value);
setFieldInRecord(collateralRequest, priceType, Record, Value)->
    erlang:setelement(#collateralRequest.priceType, Record, Value);
setFieldInRecord(collateralRequest, accruedInterestAmt, Record, Value)->
    erlang:setelement(#collateralRequest.accruedInterestAmt, Record, Value);
setFieldInRecord(collateralRequest, endAccruedInterestAmt, Record, Value)->
    erlang:setelement(#collateralRequest.endAccruedInterestAmt, Record, Value);
setFieldInRecord(collateralRequest, startCash, Record, Value)->
    erlang:setelement(#collateralRequest.startCash, Record, Value);
setFieldInRecord(collateralRequest, endCash, Record, Value)->
    erlang:setelement(#collateralRequest.endCash, Record, Value);
setFieldInRecord(collateralRequest, spreadOrBenchmarkCurveData, Record, Value)->
    erlang:setelement(#collateralRequest.spreadOrBenchmarkCurveData, Record, Value);
setFieldInRecord(collateralRequest, stipulations, Record, Value)->
    erlang:setelement(#collateralRequest.stipulations, Record, Value);
setFieldInRecord(collateralRequest, tradingSessionID, Record, Value)->
    erlang:setelement(#collateralRequest.tradingSessionID, Record, Value);
setFieldInRecord(collateralRequest, tradingSessionSubID, Record, Value)->
    erlang:setelement(#collateralRequest.tradingSessionSubID, Record, Value);
setFieldInRecord(collateralRequest, settlSessID, Record, Value)->
    erlang:setelement(#collateralRequest.settlSessID, Record, Value);
setFieldInRecord(collateralRequest, settlSessSubID, Record, Value)->
    erlang:setelement(#collateralRequest.settlSessSubID, Record, Value);
setFieldInRecord(collateralRequest, clearingBusinessDate, Record, Value)->
    erlang:setelement(#collateralRequest.clearingBusinessDate, Record, Value);
setFieldInRecord(collateralRequest, text, Record, Value)->
    erlang:setelement(#collateralRequest.text, Record, Value);
setFieldInRecord(collateralRequest, encodedTextLen, Record, Value)->
    erlang:setelement(#collateralRequest.encodedTextLen, Record, Value);
setFieldInRecord(collateralRequest, encodedText, Record, Value)->
    erlang:setelement(#collateralRequest.encodedText, Record, Value);
setFieldInRecord(collateralRequest, standardTrailer, Record, Value)->
    erlang:setelement(#collateralRequest.standardTrailer, Record, Value);
setFieldInRecord(collateralAssignment, standardHeader, Record, Value)->
    erlang:setelement(#collateralAssignment.standardHeader, Record, Value);
setFieldInRecord(collateralAssignment, collAsgnID, Record, Value)->
    erlang:setelement(#collateralAssignment.collAsgnID, Record, Value);
setFieldInRecord(collateralAssignment, collReqID, Record, Value)->
    erlang:setelement(#collateralAssignment.collReqID, Record, Value);
setFieldInRecord(collateralAssignment, collAsgnReason, Record, Value)->
    erlang:setelement(#collateralAssignment.collAsgnReason, Record, Value);
setFieldInRecord(collateralAssignment, collAsgnTransType, Record, Value)->
    erlang:setelement(#collateralAssignment.collAsgnTransType, Record, Value);
setFieldInRecord(collateralAssignment, collAsgnRefID, Record, Value)->
    erlang:setelement(#collateralAssignment.collAsgnRefID, Record, Value);
setFieldInRecord(collateralAssignment, transactTime, Record, Value)->
    erlang:setelement(#collateralAssignment.transactTime, Record, Value);
setFieldInRecord(collateralAssignment, expireTime, Record, Value)->
    erlang:setelement(#collateralAssignment.expireTime, Record, Value);
setFieldInRecord(collateralAssignment, parties, Record, Value)->
    erlang:setelement(#collateralAssignment.parties, Record, Value);
setFieldInRecord(collateralAssignment, account, Record, Value)->
    erlang:setelement(#collateralAssignment.account, Record, Value);
setFieldInRecord(collateralAssignment, accountType, Record, Value)->
    erlang:setelement(#collateralAssignment.accountType, Record, Value);
setFieldInRecord(collateralAssignment, clOrdID, Record, Value)->
    erlang:setelement(#collateralAssignment.clOrdID, Record, Value);
setFieldInRecord(collateralAssignment, orderID, Record, Value)->
    erlang:setelement(#collateralAssignment.orderID, Record, Value);
setFieldInRecord(collateralAssignment, secondaryOrderID, Record, Value)->
    erlang:setelement(#collateralAssignment.secondaryOrderID, Record, Value);
setFieldInRecord(collateralAssignment, secondaryClOrdID, Record, Value)->
    erlang:setelement(#collateralAssignment.secondaryClOrdID, Record, Value);
setFieldInRecord(collateralAssignment, execCollGrp, Record, Value)->
    erlang:setelement(#collateralAssignment.execCollGrp, Record, Value);
setFieldInRecord(collateralAssignment, trdCollGrp, Record, Value)->
    erlang:setelement(#collateralAssignment.trdCollGrp, Record, Value);
setFieldInRecord(collateralAssignment, instrument, Record, Value)->
    erlang:setelement(#collateralAssignment.instrument, Record, Value);
setFieldInRecord(collateralAssignment, financingDetails, Record, Value)->
    erlang:setelement(#collateralAssignment.financingDetails, Record, Value);
setFieldInRecord(collateralAssignment, settlDate, Record, Value)->
    erlang:setelement(#collateralAssignment.settlDate, Record, Value);
setFieldInRecord(collateralAssignment, quantity, Record, Value)->
    erlang:setelement(#collateralAssignment.quantity, Record, Value);
setFieldInRecord(collateralAssignment, qtyType, Record, Value)->
    erlang:setelement(#collateralAssignment.qtyType, Record, Value);
setFieldInRecord(collateralAssignment, currency, Record, Value)->
    erlang:setelement(#collateralAssignment.currency, Record, Value);
setFieldInRecord(collateralAssignment, instrmtLegGrp, Record, Value)->
    erlang:setelement(#collateralAssignment.instrmtLegGrp, Record, Value);
setFieldInRecord(collateralAssignment, undInstrmtCollGrp, Record, Value)->
    erlang:setelement(#collateralAssignment.undInstrmtCollGrp, Record, Value);
setFieldInRecord(collateralAssignment, marginExcess, Record, Value)->
    erlang:setelement(#collateralAssignment.marginExcess, Record, Value);
setFieldInRecord(collateralAssignment, totalNetValue, Record, Value)->
    erlang:setelement(#collateralAssignment.totalNetValue, Record, Value);
setFieldInRecord(collateralAssignment, cashOutstanding, Record, Value)->
    erlang:setelement(#collateralAssignment.cashOutstanding, Record, Value);
setFieldInRecord(collateralAssignment, trdRegTimestamps, Record, Value)->
    erlang:setelement(#collateralAssignment.trdRegTimestamps, Record, Value);
setFieldInRecord(collateralAssignment, side, Record, Value)->
    erlang:setelement(#collateralAssignment.side, Record, Value);
setFieldInRecord(collateralAssignment, miscFeesGrp, Record, Value)->
    erlang:setelement(#collateralAssignment.miscFeesGrp, Record, Value);
setFieldInRecord(collateralAssignment, price, Record, Value)->
    erlang:setelement(#collateralAssignment.price, Record, Value);
setFieldInRecord(collateralAssignment, priceType, Record, Value)->
    erlang:setelement(#collateralAssignment.priceType, Record, Value);
setFieldInRecord(collateralAssignment, accruedInterestAmt, Record, Value)->
    erlang:setelement(#collateralAssignment.accruedInterestAmt, Record, Value);
setFieldInRecord(collateralAssignment, endAccruedInterestAmt, Record, Value)->
    erlang:setelement(#collateralAssignment.endAccruedInterestAmt, Record, Value);
setFieldInRecord(collateralAssignment, startCash, Record, Value)->
    erlang:setelement(#collateralAssignment.startCash, Record, Value);
setFieldInRecord(collateralAssignment, endCash, Record, Value)->
    erlang:setelement(#collateralAssignment.endCash, Record, Value);
setFieldInRecord(collateralAssignment, spreadOrBenchmarkCurveData, Record, Value)->
    erlang:setelement(#collateralAssignment.spreadOrBenchmarkCurveData, Record, Value);
setFieldInRecord(collateralAssignment, stipulations, Record, Value)->
    erlang:setelement(#collateralAssignment.stipulations, Record, Value);
setFieldInRecord(collateralAssignment, settlInstructionsData, Record, Value)->
    erlang:setelement(#collateralAssignment.settlInstructionsData, Record, Value);
setFieldInRecord(collateralAssignment, tradingSessionID, Record, Value)->
    erlang:setelement(#collateralAssignment.tradingSessionID, Record, Value);
setFieldInRecord(collateralAssignment, tradingSessionSubID, Record, Value)->
    erlang:setelement(#collateralAssignment.tradingSessionSubID, Record, Value);
setFieldInRecord(collateralAssignment, settlSessID, Record, Value)->
    erlang:setelement(#collateralAssignment.settlSessID, Record, Value);
setFieldInRecord(collateralAssignment, settlSessSubID, Record, Value)->
    erlang:setelement(#collateralAssignment.settlSessSubID, Record, Value);
setFieldInRecord(collateralAssignment, clearingBusinessDate, Record, Value)->
    erlang:setelement(#collateralAssignment.clearingBusinessDate, Record, Value);
setFieldInRecord(collateralAssignment, text, Record, Value)->
    erlang:setelement(#collateralAssignment.text, Record, Value);
setFieldInRecord(collateralAssignment, encodedTextLen, Record, Value)->
    erlang:setelement(#collateralAssignment.encodedTextLen, Record, Value);
setFieldInRecord(collateralAssignment, encodedText, Record, Value)->
    erlang:setelement(#collateralAssignment.encodedText, Record, Value);
setFieldInRecord(collateralAssignment, standardTrailer, Record, Value)->
    erlang:setelement(#collateralAssignment.standardTrailer, Record, Value);
setFieldInRecord(collateralResponse, standardHeader, Record, Value)->
    erlang:setelement(#collateralResponse.standardHeader, Record, Value);
setFieldInRecord(collateralResponse, collRespID, Record, Value)->
    erlang:setelement(#collateralResponse.collRespID, Record, Value);
setFieldInRecord(collateralResponse, collAsgnID, Record, Value)->
    erlang:setelement(#collateralResponse.collAsgnID, Record, Value);
setFieldInRecord(collateralResponse, collReqID, Record, Value)->
    erlang:setelement(#collateralResponse.collReqID, Record, Value);
setFieldInRecord(collateralResponse, collAsgnReason, Record, Value)->
    erlang:setelement(#collateralResponse.collAsgnReason, Record, Value);
setFieldInRecord(collateralResponse, collAsgnTransType, Record, Value)->
    erlang:setelement(#collateralResponse.collAsgnTransType, Record, Value);
setFieldInRecord(collateralResponse, collAsgnRespType, Record, Value)->
    erlang:setelement(#collateralResponse.collAsgnRespType, Record, Value);
setFieldInRecord(collateralResponse, collAsgnRejectReason, Record, Value)->
    erlang:setelement(#collateralResponse.collAsgnRejectReason, Record, Value);
setFieldInRecord(collateralResponse, transactTime, Record, Value)->
    erlang:setelement(#collateralResponse.transactTime, Record, Value);
setFieldInRecord(collateralResponse, parties, Record, Value)->
    erlang:setelement(#collateralResponse.parties, Record, Value);
setFieldInRecord(collateralResponse, account, Record, Value)->
    erlang:setelement(#collateralResponse.account, Record, Value);
setFieldInRecord(collateralResponse, accountType, Record, Value)->
    erlang:setelement(#collateralResponse.accountType, Record, Value);
setFieldInRecord(collateralResponse, clOrdID, Record, Value)->
    erlang:setelement(#collateralResponse.clOrdID, Record, Value);
setFieldInRecord(collateralResponse, orderID, Record, Value)->
    erlang:setelement(#collateralResponse.orderID, Record, Value);
setFieldInRecord(collateralResponse, secondaryOrderID, Record, Value)->
    erlang:setelement(#collateralResponse.secondaryOrderID, Record, Value);
setFieldInRecord(collateralResponse, secondaryClOrdID, Record, Value)->
    erlang:setelement(#collateralResponse.secondaryClOrdID, Record, Value);
setFieldInRecord(collateralResponse, execCollGrp, Record, Value)->
    erlang:setelement(#collateralResponse.execCollGrp, Record, Value);
setFieldInRecord(collateralResponse, trdCollGrp, Record, Value)->
    erlang:setelement(#collateralResponse.trdCollGrp, Record, Value);
setFieldInRecord(collateralResponse, instrument, Record, Value)->
    erlang:setelement(#collateralResponse.instrument, Record, Value);
setFieldInRecord(collateralResponse, financingDetails, Record, Value)->
    erlang:setelement(#collateralResponse.financingDetails, Record, Value);
setFieldInRecord(collateralResponse, settlDate, Record, Value)->
    erlang:setelement(#collateralResponse.settlDate, Record, Value);
setFieldInRecord(collateralResponse, quantity, Record, Value)->
    erlang:setelement(#collateralResponse.quantity, Record, Value);
setFieldInRecord(collateralResponse, qtyType, Record, Value)->
    erlang:setelement(#collateralResponse.qtyType, Record, Value);
setFieldInRecord(collateralResponse, currency, Record, Value)->
    erlang:setelement(#collateralResponse.currency, Record, Value);
setFieldInRecord(collateralResponse, instrmtLegGrp, Record, Value)->
    erlang:setelement(#collateralResponse.instrmtLegGrp, Record, Value);
setFieldInRecord(collateralResponse, undInstrmtCollGrp, Record, Value)->
    erlang:setelement(#collateralResponse.undInstrmtCollGrp, Record, Value);
setFieldInRecord(collateralResponse, marginExcess, Record, Value)->
    erlang:setelement(#collateralResponse.marginExcess, Record, Value);
setFieldInRecord(collateralResponse, totalNetValue, Record, Value)->
    erlang:setelement(#collateralResponse.totalNetValue, Record, Value);
setFieldInRecord(collateralResponse, cashOutstanding, Record, Value)->
    erlang:setelement(#collateralResponse.cashOutstanding, Record, Value);
setFieldInRecord(collateralResponse, trdRegTimestamps, Record, Value)->
    erlang:setelement(#collateralResponse.trdRegTimestamps, Record, Value);
setFieldInRecord(collateralResponse, side, Record, Value)->
    erlang:setelement(#collateralResponse.side, Record, Value);
setFieldInRecord(collateralResponse, miscFeesGrp, Record, Value)->
    erlang:setelement(#collateralResponse.miscFeesGrp, Record, Value);
setFieldInRecord(collateralResponse, price, Record, Value)->
    erlang:setelement(#collateralResponse.price, Record, Value);
setFieldInRecord(collateralResponse, priceType, Record, Value)->
    erlang:setelement(#collateralResponse.priceType, Record, Value);
setFieldInRecord(collateralResponse, accruedInterestAmt, Record, Value)->
    erlang:setelement(#collateralResponse.accruedInterestAmt, Record, Value);
setFieldInRecord(collateralResponse, endAccruedInterestAmt, Record, Value)->
    erlang:setelement(#collateralResponse.endAccruedInterestAmt, Record, Value);
setFieldInRecord(collateralResponse, startCash, Record, Value)->
    erlang:setelement(#collateralResponse.startCash, Record, Value);
setFieldInRecord(collateralResponse, endCash, Record, Value)->
    erlang:setelement(#collateralResponse.endCash, Record, Value);
setFieldInRecord(collateralResponse, spreadOrBenchmarkCurveData, Record, Value)->
    erlang:setelement(#collateralResponse.spreadOrBenchmarkCurveData, Record, Value);
setFieldInRecord(collateralResponse, stipulations, Record, Value)->
    erlang:setelement(#collateralResponse.stipulations, Record, Value);
setFieldInRecord(collateralResponse, text, Record, Value)->
    erlang:setelement(#collateralResponse.text, Record, Value);
setFieldInRecord(collateralResponse, encodedTextLen, Record, Value)->
    erlang:setelement(#collateralResponse.encodedTextLen, Record, Value);
setFieldInRecord(collateralResponse, encodedText, Record, Value)->
    erlang:setelement(#collateralResponse.encodedText, Record, Value);
setFieldInRecord(collateralResponse, standardTrailer, Record, Value)->
    erlang:setelement(#collateralResponse.standardTrailer, Record, Value);
setFieldInRecord(collateralReport, standardHeader, Record, Value)->
    erlang:setelement(#collateralReport.standardHeader, Record, Value);
setFieldInRecord(collateralReport, collRptID, Record, Value)->
    erlang:setelement(#collateralReport.collRptID, Record, Value);
setFieldInRecord(collateralReport, collInquiryID, Record, Value)->
    erlang:setelement(#collateralReport.collInquiryID, Record, Value);
setFieldInRecord(collateralReport, collStatus, Record, Value)->
    erlang:setelement(#collateralReport.collStatus, Record, Value);
setFieldInRecord(collateralReport, totNumReports, Record, Value)->
    erlang:setelement(#collateralReport.totNumReports, Record, Value);
setFieldInRecord(collateralReport, lastRptRequested, Record, Value)->
    erlang:setelement(#collateralReport.lastRptRequested, Record, Value);
setFieldInRecord(collateralReport, parties, Record, Value)->
    erlang:setelement(#collateralReport.parties, Record, Value);
setFieldInRecord(collateralReport, account, Record, Value)->
    erlang:setelement(#collateralReport.account, Record, Value);
setFieldInRecord(collateralReport, accountType, Record, Value)->
    erlang:setelement(#collateralReport.accountType, Record, Value);
setFieldInRecord(collateralReport, clOrdID, Record, Value)->
    erlang:setelement(#collateralReport.clOrdID, Record, Value);
setFieldInRecord(collateralReport, orderID, Record, Value)->
    erlang:setelement(#collateralReport.orderID, Record, Value);
setFieldInRecord(collateralReport, secondaryOrderID, Record, Value)->
    erlang:setelement(#collateralReport.secondaryOrderID, Record, Value);
setFieldInRecord(collateralReport, secondaryClOrdID, Record, Value)->
    erlang:setelement(#collateralReport.secondaryClOrdID, Record, Value);
setFieldInRecord(collateralReport, execCollGrp, Record, Value)->
    erlang:setelement(#collateralReport.execCollGrp, Record, Value);
setFieldInRecord(collateralReport, trdCollGrp, Record, Value)->
    erlang:setelement(#collateralReport.trdCollGrp, Record, Value);
setFieldInRecord(collateralReport, instrument, Record, Value)->
    erlang:setelement(#collateralReport.instrument, Record, Value);
setFieldInRecord(collateralReport, financingDetails, Record, Value)->
    erlang:setelement(#collateralReport.financingDetails, Record, Value);
setFieldInRecord(collateralReport, settlDate, Record, Value)->
    erlang:setelement(#collateralReport.settlDate, Record, Value);
setFieldInRecord(collateralReport, quantity, Record, Value)->
    erlang:setelement(#collateralReport.quantity, Record, Value);
setFieldInRecord(collateralReport, qtyType, Record, Value)->
    erlang:setelement(#collateralReport.qtyType, Record, Value);
setFieldInRecord(collateralReport, currency, Record, Value)->
    erlang:setelement(#collateralReport.currency, Record, Value);
setFieldInRecord(collateralReport, instrmtLegGrp, Record, Value)->
    erlang:setelement(#collateralReport.instrmtLegGrp, Record, Value);
setFieldInRecord(collateralReport, undInstrmtGrp, Record, Value)->
    erlang:setelement(#collateralReport.undInstrmtGrp, Record, Value);
setFieldInRecord(collateralReport, marginExcess, Record, Value)->
    erlang:setelement(#collateralReport.marginExcess, Record, Value);
setFieldInRecord(collateralReport, totalNetValue, Record, Value)->
    erlang:setelement(#collateralReport.totalNetValue, Record, Value);
setFieldInRecord(collateralReport, cashOutstanding, Record, Value)->
    erlang:setelement(#collateralReport.cashOutstanding, Record, Value);
setFieldInRecord(collateralReport, trdRegTimestamps, Record, Value)->
    erlang:setelement(#collateralReport.trdRegTimestamps, Record, Value);
setFieldInRecord(collateralReport, side, Record, Value)->
    erlang:setelement(#collateralReport.side, Record, Value);
setFieldInRecord(collateralReport, miscFeesGrp, Record, Value)->
    erlang:setelement(#collateralReport.miscFeesGrp, Record, Value);
setFieldInRecord(collateralReport, price, Record, Value)->
    erlang:setelement(#collateralReport.price, Record, Value);
setFieldInRecord(collateralReport, priceType, Record, Value)->
    erlang:setelement(#collateralReport.priceType, Record, Value);
setFieldInRecord(collateralReport, accruedInterestAmt, Record, Value)->
    erlang:setelement(#collateralReport.accruedInterestAmt, Record, Value);
setFieldInRecord(collateralReport, endAccruedInterestAmt, Record, Value)->
    erlang:setelement(#collateralReport.endAccruedInterestAmt, Record, Value);
setFieldInRecord(collateralReport, startCash, Record, Value)->
    erlang:setelement(#collateralReport.startCash, Record, Value);
setFieldInRecord(collateralReport, endCash, Record, Value)->
    erlang:setelement(#collateralReport.endCash, Record, Value);
setFieldInRecord(collateralReport, spreadOrBenchmarkCurveData, Record, Value)->
    erlang:setelement(#collateralReport.spreadOrBenchmarkCurveData, Record, Value);
setFieldInRecord(collateralReport, stipulations, Record, Value)->
    erlang:setelement(#collateralReport.stipulations, Record, Value);
setFieldInRecord(collateralReport, settlInstructionsData, Record, Value)->
    erlang:setelement(#collateralReport.settlInstructionsData, Record, Value);
setFieldInRecord(collateralReport, tradingSessionID, Record, Value)->
    erlang:setelement(#collateralReport.tradingSessionID, Record, Value);
setFieldInRecord(collateralReport, tradingSessionSubID, Record, Value)->
    erlang:setelement(#collateralReport.tradingSessionSubID, Record, Value);
setFieldInRecord(collateralReport, settlSessID, Record, Value)->
    erlang:setelement(#collateralReport.settlSessID, Record, Value);
setFieldInRecord(collateralReport, settlSessSubID, Record, Value)->
    erlang:setelement(#collateralReport.settlSessSubID, Record, Value);
setFieldInRecord(collateralReport, clearingBusinessDate, Record, Value)->
    erlang:setelement(#collateralReport.clearingBusinessDate, Record, Value);
setFieldInRecord(collateralReport, text, Record, Value)->
    erlang:setelement(#collateralReport.text, Record, Value);
setFieldInRecord(collateralReport, encodedTextLen, Record, Value)->
    erlang:setelement(#collateralReport.encodedTextLen, Record, Value);
setFieldInRecord(collateralReport, encodedText, Record, Value)->
    erlang:setelement(#collateralReport.encodedText, Record, Value);
setFieldInRecord(collateralReport, standardTrailer, Record, Value)->
    erlang:setelement(#collateralReport.standardTrailer, Record, Value);
setFieldInRecord(collateralInquiry, standardHeader, Record, Value)->
    erlang:setelement(#collateralInquiry.standardHeader, Record, Value);
setFieldInRecord(collateralInquiry, collInquiryID, Record, Value)->
    erlang:setelement(#collateralInquiry.collInquiryID, Record, Value);
setFieldInRecord(collateralInquiry, collInqQualGrp, Record, Value)->
    erlang:setelement(#collateralInquiry.collInqQualGrp, Record, Value);
setFieldInRecord(collateralInquiry, subscriptionRequestType, Record, Value)->
    erlang:setelement(#collateralInquiry.subscriptionRequestType, Record, Value);
setFieldInRecord(collateralInquiry, responseTransportType, Record, Value)->
    erlang:setelement(#collateralInquiry.responseTransportType, Record, Value);
setFieldInRecord(collateralInquiry, responseDestination, Record, Value)->
    erlang:setelement(#collateralInquiry.responseDestination, Record, Value);
setFieldInRecord(collateralInquiry, parties, Record, Value)->
    erlang:setelement(#collateralInquiry.parties, Record, Value);
setFieldInRecord(collateralInquiry, account, Record, Value)->
    erlang:setelement(#collateralInquiry.account, Record, Value);
setFieldInRecord(collateralInquiry, accountType, Record, Value)->
    erlang:setelement(#collateralInquiry.accountType, Record, Value);
setFieldInRecord(collateralInquiry, clOrdID, Record, Value)->
    erlang:setelement(#collateralInquiry.clOrdID, Record, Value);
setFieldInRecord(collateralInquiry, orderID, Record, Value)->
    erlang:setelement(#collateralInquiry.orderID, Record, Value);
setFieldInRecord(collateralInquiry, secondaryOrderID, Record, Value)->
    erlang:setelement(#collateralInquiry.secondaryOrderID, Record, Value);
setFieldInRecord(collateralInquiry, secondaryClOrdID, Record, Value)->
    erlang:setelement(#collateralInquiry.secondaryClOrdID, Record, Value);
setFieldInRecord(collateralInquiry, execCollGrp, Record, Value)->
    erlang:setelement(#collateralInquiry.execCollGrp, Record, Value);
setFieldInRecord(collateralInquiry, trdCollGrp, Record, Value)->
    erlang:setelement(#collateralInquiry.trdCollGrp, Record, Value);
setFieldInRecord(collateralInquiry, instrument, Record, Value)->
    erlang:setelement(#collateralInquiry.instrument, Record, Value);
setFieldInRecord(collateralInquiry, financingDetails, Record, Value)->
    erlang:setelement(#collateralInquiry.financingDetails, Record, Value);
setFieldInRecord(collateralInquiry, settlDate, Record, Value)->
    erlang:setelement(#collateralInquiry.settlDate, Record, Value);
setFieldInRecord(collateralInquiry, quantity, Record, Value)->
    erlang:setelement(#collateralInquiry.quantity, Record, Value);
setFieldInRecord(collateralInquiry, qtyType, Record, Value)->
    erlang:setelement(#collateralInquiry.qtyType, Record, Value);
setFieldInRecord(collateralInquiry, currency, Record, Value)->
    erlang:setelement(#collateralInquiry.currency, Record, Value);
setFieldInRecord(collateralInquiry, instrmtLegGrp, Record, Value)->
    erlang:setelement(#collateralInquiry.instrmtLegGrp, Record, Value);
setFieldInRecord(collateralInquiry, undInstrmtGrp, Record, Value)->
    erlang:setelement(#collateralInquiry.undInstrmtGrp, Record, Value);
setFieldInRecord(collateralInquiry, marginExcess, Record, Value)->
    erlang:setelement(#collateralInquiry.marginExcess, Record, Value);
setFieldInRecord(collateralInquiry, totalNetValue, Record, Value)->
    erlang:setelement(#collateralInquiry.totalNetValue, Record, Value);
setFieldInRecord(collateralInquiry, cashOutstanding, Record, Value)->
    erlang:setelement(#collateralInquiry.cashOutstanding, Record, Value);
setFieldInRecord(collateralInquiry, trdRegTimestamps, Record, Value)->
    erlang:setelement(#collateralInquiry.trdRegTimestamps, Record, Value);
setFieldInRecord(collateralInquiry, side, Record, Value)->
    erlang:setelement(#collateralInquiry.side, Record, Value);
setFieldInRecord(collateralInquiry, price, Record, Value)->
    erlang:setelement(#collateralInquiry.price, Record, Value);
setFieldInRecord(collateralInquiry, priceType, Record, Value)->
    erlang:setelement(#collateralInquiry.priceType, Record, Value);
setFieldInRecord(collateralInquiry, accruedInterestAmt, Record, Value)->
    erlang:setelement(#collateralInquiry.accruedInterestAmt, Record, Value);
setFieldInRecord(collateralInquiry, endAccruedInterestAmt, Record, Value)->
    erlang:setelement(#collateralInquiry.endAccruedInterestAmt, Record, Value);
setFieldInRecord(collateralInquiry, startCash, Record, Value)->
    erlang:setelement(#collateralInquiry.startCash, Record, Value);
setFieldInRecord(collateralInquiry, endCash, Record, Value)->
    erlang:setelement(#collateralInquiry.endCash, Record, Value);
setFieldInRecord(collateralInquiry, spreadOrBenchmarkCurveData, Record, Value)->
    erlang:setelement(#collateralInquiry.spreadOrBenchmarkCurveData, Record, Value);
setFieldInRecord(collateralInquiry, stipulations, Record, Value)->
    erlang:setelement(#collateralInquiry.stipulations, Record, Value);
setFieldInRecord(collateralInquiry, settlInstructionsData, Record, Value)->
    erlang:setelement(#collateralInquiry.settlInstructionsData, Record, Value);
setFieldInRecord(collateralInquiry, tradingSessionID, Record, Value)->
    erlang:setelement(#collateralInquiry.tradingSessionID, Record, Value);
setFieldInRecord(collateralInquiry, tradingSessionSubID, Record, Value)->
    erlang:setelement(#collateralInquiry.tradingSessionSubID, Record, Value);
setFieldInRecord(collateralInquiry, settlSessID, Record, Value)->
    erlang:setelement(#collateralInquiry.settlSessID, Record, Value);
setFieldInRecord(collateralInquiry, settlSessSubID, Record, Value)->
    erlang:setelement(#collateralInquiry.settlSessSubID, Record, Value);
setFieldInRecord(collateralInquiry, clearingBusinessDate, Record, Value)->
    erlang:setelement(#collateralInquiry.clearingBusinessDate, Record, Value);
setFieldInRecord(collateralInquiry, text, Record, Value)->
    erlang:setelement(#collateralInquiry.text, Record, Value);
setFieldInRecord(collateralInquiry, encodedTextLen, Record, Value)->
    erlang:setelement(#collateralInquiry.encodedTextLen, Record, Value);
setFieldInRecord(collateralInquiry, encodedText, Record, Value)->
    erlang:setelement(#collateralInquiry.encodedText, Record, Value);
setFieldInRecord(collateralInquiry, standardTrailer, Record, Value)->
    erlang:setelement(#collateralInquiry.standardTrailer, Record, Value);
setFieldInRecord(networkCounterpartySystemStatusRequest, standardHeader, Record, Value)->
    erlang:setelement(#networkCounterpartySystemStatusRequest.standardHeader, Record, Value);
setFieldInRecord(networkCounterpartySystemStatusRequest, networkRequestType, Record, Value)->
    erlang:setelement(#networkCounterpartySystemStatusRequest.networkRequestType, Record, Value);
setFieldInRecord(networkCounterpartySystemStatusRequest, networkRequestID, Record, Value)->
    erlang:setelement(#networkCounterpartySystemStatusRequest.networkRequestID, Record, Value);
setFieldInRecord(networkCounterpartySystemStatusRequest, compIDReqGrp, Record, Value)->
    erlang:setelement(#networkCounterpartySystemStatusRequest.compIDReqGrp, Record, Value);
setFieldInRecord(networkCounterpartySystemStatusRequest, standardTrailer, Record, Value)->
    erlang:setelement(#networkCounterpartySystemStatusRequest.standardTrailer, Record, Value);
setFieldInRecord(networkCounterpartySystemStatusResponse, standardHeader, Record, Value)->
    erlang:setelement(#networkCounterpartySystemStatusResponse.standardHeader, Record, Value);
setFieldInRecord(networkCounterpartySystemStatusResponse, networkStatusResponseType, Record, Value)->
    erlang:setelement(#networkCounterpartySystemStatusResponse.networkStatusResponseType, Record, Value);
setFieldInRecord(networkCounterpartySystemStatusResponse, networkRequestID, Record, Value)->
    erlang:setelement(#networkCounterpartySystemStatusResponse.networkRequestID, Record, Value);
setFieldInRecord(networkCounterpartySystemStatusResponse, networkResponseID, Record, Value)->
    erlang:setelement(#networkCounterpartySystemStatusResponse.networkResponseID, Record, Value);
setFieldInRecord(networkCounterpartySystemStatusResponse, lastNetworkResponseID, Record, Value)->
    erlang:setelement(#networkCounterpartySystemStatusResponse.lastNetworkResponseID, Record, Value);
setFieldInRecord(networkCounterpartySystemStatusResponse, compIDStatGrp, Record, Value)->
    erlang:setelement(#networkCounterpartySystemStatusResponse.compIDStatGrp, Record, Value);
setFieldInRecord(networkCounterpartySystemStatusResponse, standardTrailer, Record, Value)->
    erlang:setelement(#networkCounterpartySystemStatusResponse.standardTrailer, Record, Value);
setFieldInRecord(userRequest, standardHeader, Record, Value)->
    erlang:setelement(#userRequest.standardHeader, Record, Value);
setFieldInRecord(userRequest, userRequestID, Record, Value)->
    erlang:setelement(#userRequest.userRequestID, Record, Value);
setFieldInRecord(userRequest, userRequestType, Record, Value)->
    erlang:setelement(#userRequest.userRequestType, Record, Value);
setFieldInRecord(userRequest, username, Record, Value)->
    erlang:setelement(#userRequest.username, Record, Value);
setFieldInRecord(userRequest, password, Record, Value)->
    erlang:setelement(#userRequest.password, Record, Value);
setFieldInRecord(userRequest, newPassword, Record, Value)->
    erlang:setelement(#userRequest.newPassword, Record, Value);
setFieldInRecord(userRequest, rawDataLength, Record, Value)->
    erlang:setelement(#userRequest.rawDataLength, Record, Value);
setFieldInRecord(userRequest, rawData, Record, Value)->
    erlang:setelement(#userRequest.rawData, Record, Value);
setFieldInRecord(userRequest, standardTrailer, Record, Value)->
    erlang:setelement(#userRequest.standardTrailer, Record, Value);
setFieldInRecord(userResponse, standardHeader, Record, Value)->
    erlang:setelement(#userResponse.standardHeader, Record, Value);
setFieldInRecord(userResponse, userRequestID, Record, Value)->
    erlang:setelement(#userResponse.userRequestID, Record, Value);
setFieldInRecord(userResponse, username, Record, Value)->
    erlang:setelement(#userResponse.username, Record, Value);
setFieldInRecord(userResponse, userStatus, Record, Value)->
    erlang:setelement(#userResponse.userStatus, Record, Value);
setFieldInRecord(userResponse, userStatusText, Record, Value)->
    erlang:setelement(#userResponse.userStatusText, Record, Value);
setFieldInRecord(userResponse, standardTrailer, Record, Value)->
    erlang:setelement(#userResponse.standardTrailer, Record, Value);
setFieldInRecord(collateralInquiryAck, standardHeader, Record, Value)->
    erlang:setelement(#collateralInquiryAck.standardHeader, Record, Value);
setFieldInRecord(collateralInquiryAck, collInquiryID, Record, Value)->
    erlang:setelement(#collateralInquiryAck.collInquiryID, Record, Value);
setFieldInRecord(collateralInquiryAck, collInquiryStatus, Record, Value)->
    erlang:setelement(#collateralInquiryAck.collInquiryStatus, Record, Value);
setFieldInRecord(collateralInquiryAck, collInquiryResult, Record, Value)->
    erlang:setelement(#collateralInquiryAck.collInquiryResult, Record, Value);
setFieldInRecord(collateralInquiryAck, collInqQualGrp, Record, Value)->
    erlang:setelement(#collateralInquiryAck.collInqQualGrp, Record, Value);
setFieldInRecord(collateralInquiryAck, totNumReports, Record, Value)->
    erlang:setelement(#collateralInquiryAck.totNumReports, Record, Value);
setFieldInRecord(collateralInquiryAck, parties, Record, Value)->
    erlang:setelement(#collateralInquiryAck.parties, Record, Value);
setFieldInRecord(collateralInquiryAck, account, Record, Value)->
    erlang:setelement(#collateralInquiryAck.account, Record, Value);
setFieldInRecord(collateralInquiryAck, accountType, Record, Value)->
    erlang:setelement(#collateralInquiryAck.accountType, Record, Value);
setFieldInRecord(collateralInquiryAck, clOrdID, Record, Value)->
    erlang:setelement(#collateralInquiryAck.clOrdID, Record, Value);
setFieldInRecord(collateralInquiryAck, orderID, Record, Value)->
    erlang:setelement(#collateralInquiryAck.orderID, Record, Value);
setFieldInRecord(collateralInquiryAck, secondaryOrderID, Record, Value)->
    erlang:setelement(#collateralInquiryAck.secondaryOrderID, Record, Value);
setFieldInRecord(collateralInquiryAck, secondaryClOrdID, Record, Value)->
    erlang:setelement(#collateralInquiryAck.secondaryClOrdID, Record, Value);
setFieldInRecord(collateralInquiryAck, execCollGrp, Record, Value)->
    erlang:setelement(#collateralInquiryAck.execCollGrp, Record, Value);
setFieldInRecord(collateralInquiryAck, trdCollGrp, Record, Value)->
    erlang:setelement(#collateralInquiryAck.trdCollGrp, Record, Value);
setFieldInRecord(collateralInquiryAck, instrument, Record, Value)->
    erlang:setelement(#collateralInquiryAck.instrument, Record, Value);
setFieldInRecord(collateralInquiryAck, financingDetails, Record, Value)->
    erlang:setelement(#collateralInquiryAck.financingDetails, Record, Value);
setFieldInRecord(collateralInquiryAck, settlDate, Record, Value)->
    erlang:setelement(#collateralInquiryAck.settlDate, Record, Value);
setFieldInRecord(collateralInquiryAck, quantity, Record, Value)->
    erlang:setelement(#collateralInquiryAck.quantity, Record, Value);
setFieldInRecord(collateralInquiryAck, qtyType, Record, Value)->
    erlang:setelement(#collateralInquiryAck.qtyType, Record, Value);
setFieldInRecord(collateralInquiryAck, currency, Record, Value)->
    erlang:setelement(#collateralInquiryAck.currency, Record, Value);
setFieldInRecord(collateralInquiryAck, instrmtLegGrp, Record, Value)->
    erlang:setelement(#collateralInquiryAck.instrmtLegGrp, Record, Value);
setFieldInRecord(collateralInquiryAck, undInstrmtGrp, Record, Value)->
    erlang:setelement(#collateralInquiryAck.undInstrmtGrp, Record, Value);
setFieldInRecord(collateralInquiryAck, tradingSessionID, Record, Value)->
    erlang:setelement(#collateralInquiryAck.tradingSessionID, Record, Value);
setFieldInRecord(collateralInquiryAck, tradingSessionSubID, Record, Value)->
    erlang:setelement(#collateralInquiryAck.tradingSessionSubID, Record, Value);
setFieldInRecord(collateralInquiryAck, settlSessID, Record, Value)->
    erlang:setelement(#collateralInquiryAck.settlSessID, Record, Value);
setFieldInRecord(collateralInquiryAck, settlSessSubID, Record, Value)->
    erlang:setelement(#collateralInquiryAck.settlSessSubID, Record, Value);
setFieldInRecord(collateralInquiryAck, clearingBusinessDate, Record, Value)->
    erlang:setelement(#collateralInquiryAck.clearingBusinessDate, Record, Value);
setFieldInRecord(collateralInquiryAck, responseTransportType, Record, Value)->
    erlang:setelement(#collateralInquiryAck.responseTransportType, Record, Value);
setFieldInRecord(collateralInquiryAck, responseDestination, Record, Value)->
    erlang:setelement(#collateralInquiryAck.responseDestination, Record, Value);
setFieldInRecord(collateralInquiryAck, text, Record, Value)->
    erlang:setelement(#collateralInquiryAck.text, Record, Value);
setFieldInRecord(collateralInquiryAck, encodedTextLen, Record, Value)->
    erlang:setelement(#collateralInquiryAck.encodedTextLen, Record, Value);
setFieldInRecord(collateralInquiryAck, encodedText, Record, Value)->
    erlang:setelement(#collateralInquiryAck.encodedText, Record, Value);
setFieldInRecord(collateralInquiryAck, standardTrailer, Record, Value)->
    erlang:setelement(#collateralInquiryAck.standardTrailer, Record, Value);
setFieldInRecord(confirmationRequest, standardHeader, Record, Value)->
    erlang:setelement(#confirmationRequest.standardHeader, Record, Value);
setFieldInRecord(confirmationRequest, confirmReqID, Record, Value)->
    erlang:setelement(#confirmationRequest.confirmReqID, Record, Value);
setFieldInRecord(confirmationRequest, confirmType, Record, Value)->
    erlang:setelement(#confirmationRequest.confirmType, Record, Value);
setFieldInRecord(confirmationRequest, ordAllocGrp, Record, Value)->
    erlang:setelement(#confirmationRequest.ordAllocGrp, Record, Value);
setFieldInRecord(confirmationRequest, allocID, Record, Value)->
    erlang:setelement(#confirmationRequest.allocID, Record, Value);
setFieldInRecord(confirmationRequest, secondaryAllocID, Record, Value)->
    erlang:setelement(#confirmationRequest.secondaryAllocID, Record, Value);
setFieldInRecord(confirmationRequest, individualAllocID, Record, Value)->
    erlang:setelement(#confirmationRequest.individualAllocID, Record, Value);
setFieldInRecord(confirmationRequest, transactTime, Record, Value)->
    erlang:setelement(#confirmationRequest.transactTime, Record, Value);
setFieldInRecord(confirmationRequest, allocAccount, Record, Value)->
    erlang:setelement(#confirmationRequest.allocAccount, Record, Value);
setFieldInRecord(confirmationRequest, allocAcctIDSource, Record, Value)->
    erlang:setelement(#confirmationRequest.allocAcctIDSource, Record, Value);
setFieldInRecord(confirmationRequest, allocAccountType, Record, Value)->
    erlang:setelement(#confirmationRequest.allocAccountType, Record, Value);
setFieldInRecord(confirmationRequest, text, Record, Value)->
    erlang:setelement(#confirmationRequest.text, Record, Value);
setFieldInRecord(confirmationRequest, encodedTextLen, Record, Value)->
    erlang:setelement(#confirmationRequest.encodedTextLen, Record, Value);
setFieldInRecord(confirmationRequest, encodedText, Record, Value)->
    erlang:setelement(#confirmationRequest.encodedText, Record, Value);
setFieldInRecord(confirmationRequest, standardTrailer, Record, Value)->
    erlang:setelement(#confirmationRequest.standardTrailer, Record, Value);
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
    multilegOrderCancelReplace;
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
getMessageName(<<"AJ">>) -> 
    quoteResponse;
getMessageName(<<"AK">>) -> 
    confirmation;
getMessageName(<<"AL">>) -> 
    positionMaintenanceRequest;
getMessageName(<<"AM">>) -> 
    positionMaintenanceReport;
getMessageName(<<"AN">>) -> 
    requestForPositions;
getMessageName(<<"AO">>) -> 
    requestForPositionsAck;
getMessageName(<<"AP">>) -> 
    positionReport;
getMessageName(<<"AQ">>) -> 
    tradeCaptureReportRequestAck;
getMessageName(<<"AR">>) -> 
    tradeCaptureReportAck;
getMessageName(<<"AS">>) -> 
    allocationReport;
getMessageName(<<"AT">>) -> 
    allocationReportAck;
getMessageName(<<"AU">>) -> 
    confirmationAck;
getMessageName(<<"AV">>) -> 
    settlementInstructionRequest;
getMessageName(<<"AW">>) -> 
    assignmentReport;
getMessageName(<<"AX">>) -> 
    collateralRequest;
getMessageName(<<"AY">>) -> 
    collateralAssignment;
getMessageName(<<"AZ">>) -> 
    collateralResponse;
getMessageName(<<"BA">>) -> 
    collateralReport;
getMessageName(<<"BB">>) -> 
    collateralInquiry;
getMessageName(<<"BC">>) -> 
    networkCounterpartySystemStatusRequest;
getMessageName(<<"BD">>) -> 
    networkCounterpartySystemStatusResponse;
getMessageName(<<"BE">>) -> 
    userRequest;
getMessageName(<<"BF">>) -> 
    userResponse;
getMessageName(<<"BG">>) -> 
    collateralInquiryAck;
getMessageName(<<"BH">>) -> 
    confirmationRequest;
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
    iOIID;
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
    noLinesOfText;
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
    settlType;
getFieldName(<<"64">>) ->
    settlDate;
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
    avgPxPrecision;
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
getFieldName(<<"85">>) ->
    noDlvyInst;
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
    settlDate2;
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
    pegOffsetValue;
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
    openCloseSettlFlag;
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
    totNoQuoteEntries;
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
getFieldName(<<"318">>) ->
    underlyingCurrency;
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
    discretionOffsetValue;
getFieldName(<<"390">>) ->
    bidID;
getFieldName(<<"391">>) ->
    clientBidID;
getFieldName(<<"392">>) ->
    listName;
getFieldName(<<"393">>) ->
    totNoRelatedSym;
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
    bidTradeType;
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
    cardIssNum;
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
getFieldName(<<"502">>) ->
    cashDistribAgentAcctName;
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
    registDtls;
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
    totNoSecurityTypes;
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
    legSettlType;
getFieldName(<<"588">>) ->
    legSettlDate;
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
getFieldName(<<"660">>) ->
    acctIDSource;
getFieldName(<<"661">>) ->
    allocAcctIDSource;
getFieldName(<<"662">>) ->
    benchmarkPrice;
getFieldName(<<"663">>) ->
    benchmarkPriceType;
getFieldName(<<"664">>) ->
    confirmID;
getFieldName(<<"665">>) ->
    confirmStatus;
getFieldName(<<"666">>) ->
    confirmTransType;
getFieldName(<<"667">>) ->
    contractSettlMonth;
getFieldName(<<"668">>) ->
    deliveryForm;
getFieldName(<<"669">>) ->
    lastParPx;
getFieldName(<<"670">>) ->
    noLegAllocs;
getFieldName(<<"671">>) ->
    legAllocAccount;
getFieldName(<<"672">>) ->
    legIndividualAllocID;
getFieldName(<<"673">>) ->
    legAllocQty;
getFieldName(<<"674">>) ->
    legAllocAcctIDSource;
getFieldName(<<"675">>) ->
    legSettlCurrency;
getFieldName(<<"676">>) ->
    legBenchmarkCurveCurrency;
getFieldName(<<"677">>) ->
    legBenchmarkCurveName;
getFieldName(<<"678">>) ->
    legBenchmarkCurvePoint;
getFieldName(<<"679">>) ->
    legBenchmarkPrice;
getFieldName(<<"680">>) ->
    legBenchmarkPriceType;
getFieldName(<<"681">>) ->
    legBidPx;
getFieldName(<<"682">>) ->
    legIOIQty;
getFieldName(<<"683">>) ->
    noLegStipulations;
getFieldName(<<"684">>) ->
    legOfferPx;
getFieldName(<<"686">>) ->
    legPriceType;
getFieldName(<<"687">>) ->
    legQty;
getFieldName(<<"688">>) ->
    legStipulationType;
getFieldName(<<"689">>) ->
    legStipulationValue;
getFieldName(<<"690">>) ->
    legSwapType;
getFieldName(<<"691">>) ->
    pool;
getFieldName(<<"692">>) ->
    quotePriceType;
getFieldName(<<"693">>) ->
    quoteRespID;
getFieldName(<<"694">>) ->
    quoteRespType;
getFieldName(<<"695">>) ->
    quoteQualifier;
getFieldName(<<"696">>) ->
    yieldRedemptionDate;
getFieldName(<<"697">>) ->
    yieldRedemptionPrice;
getFieldName(<<"698">>) ->
    yieldRedemptionPriceType;
getFieldName(<<"699">>) ->
    benchmarkSecurityID;
getFieldName(<<"700">>) ->
    reversalIndicator;
getFieldName(<<"701">>) ->
    yieldCalcDate;
getFieldName(<<"702">>) ->
    noPositions;
getFieldName(<<"703">>) ->
    posType;
getFieldName(<<"704">>) ->
    longQty;
getFieldName(<<"705">>) ->
    shortQty;
getFieldName(<<"706">>) ->
    posQtyStatus;
getFieldName(<<"707">>) ->
    posAmtType;
getFieldName(<<"708">>) ->
    posAmt;
getFieldName(<<"709">>) ->
    posTransType;
getFieldName(<<"710">>) ->
    posReqID;
getFieldName(<<"711">>) ->
    noUnderlyings;
getFieldName(<<"712">>) ->
    posMaintAction;
getFieldName(<<"713">>) ->
    origPosReqRefID;
getFieldName(<<"714">>) ->
    posMaintRptRefID;
getFieldName(<<"715">>) ->
    clearingBusinessDate;
getFieldName(<<"716">>) ->
    settlSessID;
getFieldName(<<"717">>) ->
    settlSessSubID;
getFieldName(<<"718">>) ->
    adjustmentType;
getFieldName(<<"719">>) ->
    contraryInstructionIndicator;
getFieldName(<<"720">>) ->
    priorSpreadIndicator;
getFieldName(<<"721">>) ->
    posMaintRptID;
getFieldName(<<"722">>) ->
    posMaintStatus;
getFieldName(<<"723">>) ->
    posMaintResult;
getFieldName(<<"724">>) ->
    posReqType;
getFieldName(<<"725">>) ->
    responseTransportType;
getFieldName(<<"726">>) ->
    responseDestination;
getFieldName(<<"727">>) ->
    totalNumPosReports;
getFieldName(<<"728">>) ->
    posReqResult;
getFieldName(<<"729">>) ->
    posReqStatus;
getFieldName(<<"730">>) ->
    settlPrice;
getFieldName(<<"731">>) ->
    settlPriceType;
getFieldName(<<"732">>) ->
    underlyingSettlPrice;
getFieldName(<<"733">>) ->
    underlyingSettlPriceType;
getFieldName(<<"734">>) ->
    priorSettlPrice;
getFieldName(<<"735">>) ->
    noQuoteQualifiers;
getFieldName(<<"736">>) ->
    allocSettlCurrency;
getFieldName(<<"737">>) ->
    allocSettlCurrAmt;
getFieldName(<<"738">>) ->
    interestAtMaturity;
getFieldName(<<"739">>) ->
    legDatedDate;
getFieldName(<<"740">>) ->
    legPool;
getFieldName(<<"741">>) ->
    allocInterestAtMaturity;
getFieldName(<<"742">>) ->
    allocAccruedInterestAmt;
getFieldName(<<"743">>) ->
    deliveryDate;
getFieldName(<<"744">>) ->
    assignmentMethod;
getFieldName(<<"745">>) ->
    assignmentUnit;
getFieldName(<<"746">>) ->
    openInterest;
getFieldName(<<"747">>) ->
    exerciseMethod;
getFieldName(<<"748">>) ->
    totNumTradeReports;
getFieldName(<<"749">>) ->
    tradeRequestResult;
getFieldName(<<"750">>) ->
    tradeRequestStatus;
getFieldName(<<"751">>) ->
    tradeReportRejectReason;
getFieldName(<<"752">>) ->
    sideMultiLegReportingType;
getFieldName(<<"753">>) ->
    noPosAmt;
getFieldName(<<"754">>) ->
    autoAcceptIndicator;
getFieldName(<<"755">>) ->
    allocReportID;
getFieldName(<<"756">>) ->
    noNested2PartyIDs;
getFieldName(<<"757">>) ->
    nested2PartyID;
getFieldName(<<"758">>) ->
    nested2PartyIDSource;
getFieldName(<<"759">>) ->
    nested2PartyRole;
getFieldName(<<"760">>) ->
    nested2PartySubID;
getFieldName(<<"761">>) ->
    benchmarkSecurityIDSource;
getFieldName(<<"762">>) ->
    securitySubType;
getFieldName(<<"763">>) ->
    underlyingSecuritySubType;
getFieldName(<<"764">>) ->
    legSecuritySubType;
getFieldName(<<"765">>) ->
    allowableOneSidednessPct;
getFieldName(<<"766">>) ->
    allowableOneSidednessValue;
getFieldName(<<"767">>) ->
    allowableOneSidednessCurr;
getFieldName(<<"768">>) ->
    noTrdRegTimestamps;
getFieldName(<<"769">>) ->
    trdRegTimestamp;
getFieldName(<<"770">>) ->
    trdRegTimestampType;
getFieldName(<<"771">>) ->
    trdRegTimestampOrigin;
getFieldName(<<"772">>) ->
    confirmRefID;
getFieldName(<<"773">>) ->
    confirmType;
getFieldName(<<"774">>) ->
    confirmRejReason;
getFieldName(<<"775">>) ->
    bookingType;
getFieldName(<<"776">>) ->
    individualAllocRejCode;
getFieldName(<<"777">>) ->
    settlInstMsgID;
getFieldName(<<"778">>) ->
    noSettlInst;
getFieldName(<<"779">>) ->
    lastUpdateTime;
getFieldName(<<"780">>) ->
    allocSettlInstType;
getFieldName(<<"781">>) ->
    noSettlPartyIDs;
getFieldName(<<"782">>) ->
    settlPartyID;
getFieldName(<<"783">>) ->
    settlPartyIDSource;
getFieldName(<<"784">>) ->
    settlPartyRole;
getFieldName(<<"785">>) ->
    settlPartySubID;
getFieldName(<<"786">>) ->
    settlPartySubIDType;
getFieldName(<<"787">>) ->
    dlvyInstType;
getFieldName(<<"788">>) ->
    terminationType;
getFieldName(<<"789">>) ->
    nextExpectedMsgSeqNum;
getFieldName(<<"790">>) ->
    ordStatusReqID;
getFieldName(<<"791">>) ->
    settlInstReqID;
getFieldName(<<"792">>) ->
    settlInstReqRejCode;
getFieldName(<<"793">>) ->
    secondaryAllocID;
getFieldName(<<"794">>) ->
    allocReportType;
getFieldName(<<"795">>) ->
    allocReportRefID;
getFieldName(<<"796">>) ->
    allocCancReplaceReason;
getFieldName(<<"797">>) ->
    copyMsgIndicator;
getFieldName(<<"798">>) ->
    allocAccountType;
getFieldName(<<"799">>) ->
    orderAvgPx;
getFieldName(<<"800">>) ->
    orderBookingQty;
getFieldName(<<"801">>) ->
    noSettlPartySubIDs;
getFieldName(<<"802">>) ->
    noPartySubIDs;
getFieldName(<<"803">>) ->
    partySubIDType;
getFieldName(<<"804">>) ->
    noNestedPartySubIDs;
getFieldName(<<"805">>) ->
    nestedPartySubIDType;
getFieldName(<<"806">>) ->
    noNested2PartySubIDs;
getFieldName(<<"807">>) ->
    nested2PartySubIDType;
getFieldName(<<"808">>) ->
    allocIntermedReqType;
getFieldName(<<"810">>) ->
    underlyingPx;
getFieldName(<<"811">>) ->
    priceDelta;
getFieldName(<<"812">>) ->
    applQueueMax;
getFieldName(<<"813">>) ->
    applQueueDepth;
getFieldName(<<"814">>) ->
    applQueueResolution;
getFieldName(<<"815">>) ->
    applQueueAction;
getFieldName(<<"816">>) ->
    noAltMDSource;
getFieldName(<<"817">>) ->
    altMDSourceID;
getFieldName(<<"818">>) ->
    secondaryTradeReportID;
getFieldName(<<"819">>) ->
    avgPxIndicator;
getFieldName(<<"820">>) ->
    tradeLinkID;
getFieldName(<<"821">>) ->
    orderInputDevice;
getFieldName(<<"822">>) ->
    underlyingTradingSessionID;
getFieldName(<<"823">>) ->
    underlyingTradingSessionSubID;
getFieldName(<<"824">>) ->
    tradeLegRefID;
getFieldName(<<"825">>) ->
    exchangeRule;
getFieldName(<<"826">>) ->
    tradeAllocIndicator;
getFieldName(<<"827">>) ->
    expirationCycle;
getFieldName(<<"828">>) ->
    trdType;
getFieldName(<<"829">>) ->
    trdSubType;
getFieldName(<<"830">>) ->
    transferReason;
getFieldName(<<"832">>) ->
    totNumAssignmentReports;
getFieldName(<<"833">>) ->
    asgnRptID;
getFieldName(<<"834">>) ->
    thresholdAmount;
getFieldName(<<"835">>) ->
    pegMoveType;
getFieldName(<<"836">>) ->
    pegOffsetType;
getFieldName(<<"837">>) ->
    pegLimitType;
getFieldName(<<"838">>) ->
    pegRoundDirection;
getFieldName(<<"839">>) ->
    peggedPrice;
getFieldName(<<"840">>) ->
    pegScope;
getFieldName(<<"841">>) ->
    discretionMoveType;
getFieldName(<<"842">>) ->
    discretionOffsetType;
getFieldName(<<"843">>) ->
    discretionLimitType;
getFieldName(<<"844">>) ->
    discretionRoundDirection;
getFieldName(<<"845">>) ->
    discretionPrice;
getFieldName(<<"846">>) ->
    discretionScope;
getFieldName(<<"847">>) ->
    targetStrategy;
getFieldName(<<"848">>) ->
    targetStrategyParameters;
getFieldName(<<"849">>) ->
    participationRate;
getFieldName(<<"850">>) ->
    targetStrategyPerformance;
getFieldName(<<"851">>) ->
    lastLiquidityInd;
getFieldName(<<"852">>) ->
    publishTrdIndicator;
getFieldName(<<"853">>) ->
    shortSaleReason;
getFieldName(<<"854">>) ->
    qtyType;
getFieldName(<<"855">>) ->
    secondaryTrdType;
getFieldName(<<"856">>) ->
    tradeReportType;
getFieldName(<<"857">>) ->
    allocNoOrdersType;
getFieldName(<<"858">>) ->
    sharedCommission;
getFieldName(<<"859">>) ->
    confirmReqID;
getFieldName(<<"860">>) ->
    avgParPx;
getFieldName(<<"861">>) ->
    reportedPx;
getFieldName(<<"862">>) ->
    noCapacities;
getFieldName(<<"863">>) ->
    orderCapacityQty;
getFieldName(<<"864">>) ->
    noEvents;
getFieldName(<<"865">>) ->
    eventType;
getFieldName(<<"866">>) ->
    eventDate;
getFieldName(<<"867">>) ->
    eventPx;
getFieldName(<<"868">>) ->
    eventText;
getFieldName(<<"869">>) ->
    pctAtRisk;
getFieldName(<<"870">>) ->
    noInstrAttrib;
getFieldName(<<"871">>) ->
    instrAttribType;
getFieldName(<<"872">>) ->
    instrAttribValue;
getFieldName(<<"873">>) ->
    datedDate;
getFieldName(<<"874">>) ->
    interestAccrualDate;
getFieldName(<<"875">>) ->
    cPProgram;
getFieldName(<<"876">>) ->
    cPRegType;
getFieldName(<<"877">>) ->
    underlyingCPProgram;
getFieldName(<<"878">>) ->
    underlyingCPRegType;
getFieldName(<<"879">>) ->
    underlyingQty;
getFieldName(<<"880">>) ->
    trdMatchID;
getFieldName(<<"881">>) ->
    secondaryTradeReportRefID;
getFieldName(<<"882">>) ->
    underlyingDirtyPrice;
getFieldName(<<"883">>) ->
    underlyingEndPrice;
getFieldName(<<"884">>) ->
    underlyingStartValue;
getFieldName(<<"885">>) ->
    underlyingCurrentValue;
getFieldName(<<"886">>) ->
    underlyingEndValue;
getFieldName(<<"887">>) ->
    noUnderlyingStips;
getFieldName(<<"888">>) ->
    underlyingStipType;
getFieldName(<<"889">>) ->
    underlyingStipValue;
getFieldName(<<"890">>) ->
    maturityNetMoney;
getFieldName(<<"891">>) ->
    miscFeeBasis;
getFieldName(<<"892">>) ->
    totNoAllocs;
getFieldName(<<"893">>) ->
    lastFragment;
getFieldName(<<"894">>) ->
    collReqID;
getFieldName(<<"895">>) ->
    collAsgnReason;
getFieldName(<<"896">>) ->
    collInquiryQualifier;
getFieldName(<<"897">>) ->
    noTrades;
getFieldName(<<"898">>) ->
    marginRatio;
getFieldName(<<"899">>) ->
    marginExcess;
getFieldName(<<"900">>) ->
    totalNetValue;
getFieldName(<<"901">>) ->
    cashOutstanding;
getFieldName(<<"902">>) ->
    collAsgnID;
getFieldName(<<"903">>) ->
    collAsgnTransType;
getFieldName(<<"904">>) ->
    collRespID;
getFieldName(<<"905">>) ->
    collAsgnRespType;
getFieldName(<<"906">>) ->
    collAsgnRejectReason;
getFieldName(<<"907">>) ->
    collAsgnRefID;
getFieldName(<<"908">>) ->
    collRptID;
getFieldName(<<"909">>) ->
    collInquiryID;
getFieldName(<<"910">>) ->
    collStatus;
getFieldName(<<"911">>) ->
    totNumReports;
getFieldName(<<"912">>) ->
    lastRptRequested;
getFieldName(<<"913">>) ->
    agreementDesc;
getFieldName(<<"914">>) ->
    agreementID;
getFieldName(<<"915">>) ->
    agreementDate;
getFieldName(<<"916">>) ->
    startDate;
getFieldName(<<"917">>) ->
    endDate;
getFieldName(<<"918">>) ->
    agreementCurrency;
getFieldName(<<"919">>) ->
    deliveryType;
getFieldName(<<"920">>) ->
    endAccruedInterestAmt;
getFieldName(<<"921">>) ->
    startCash;
getFieldName(<<"922">>) ->
    endCash;
getFieldName(<<"923">>) ->
    userRequestID;
getFieldName(<<"924">>) ->
    userRequestType;
getFieldName(<<"925">>) ->
    newPassword;
getFieldName(<<"926">>) ->
    userStatus;
getFieldName(<<"927">>) ->
    userStatusText;
getFieldName(<<"928">>) ->
    statusValue;
getFieldName(<<"929">>) ->
    statusText;
getFieldName(<<"930">>) ->
    refCompID;
getFieldName(<<"931">>) ->
    refSubID;
getFieldName(<<"932">>) ->
    networkResponseID;
getFieldName(<<"933">>) ->
    networkRequestID;
getFieldName(<<"934">>) ->
    lastNetworkResponseID;
getFieldName(<<"935">>) ->
    networkRequestType;
getFieldName(<<"936">>) ->
    noCompIDs;
getFieldName(<<"937">>) ->
    networkStatusResponseType;
getFieldName(<<"938">>) ->
    noCollInquiryQualifier;
getFieldName(<<"939">>) ->
    trdRptStatus;
getFieldName(<<"940">>) ->
    affirmStatus;
getFieldName(<<"941">>) ->
    underlyingStrikeCurrency;
getFieldName(<<"942">>) ->
    legStrikeCurrency;
getFieldName(<<"943">>) ->
    timeBracket;
getFieldName(<<"944">>) ->
    collAction;
getFieldName(<<"945">>) ->
    collInquiryStatus;
getFieldName(<<"946">>) ->
    collInquiryResult;
getFieldName(<<"947">>) ->
    strikeCurrency;
getFieldName(<<"948">>) ->
    noNested3PartyIDs;
getFieldName(<<"949">>) ->
    nested3PartyID;
getFieldName(<<"950">>) ->
    nested3PartyIDSource;
getFieldName(<<"951">>) ->
    nested3PartyRole;
getFieldName(<<"952">>) ->
    noNested3PartySubIDs;
getFieldName(<<"953">>) ->
    nested3PartySubID;
getFieldName(<<"954">>) ->
    nested3PartySubIDType;
getFieldName(<<"955">>) ->
    legContractSettlMonth;
getFieldName(<<"956">>) ->
    legInterestAccrualDate;
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
getTagId(iOIID) ->
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
getTagId(noLinesOfText) ->
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
getTagId(settlType) ->
    <<"63">>;
getTagId(settlDate) ->
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
getTagId(avgPxPrecision) ->
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
getTagId(noDlvyInst) ->
    <<"85">>;
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
getTagId(settlDate2) ->
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
getTagId(pegOffsetValue) ->
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
getTagId(openCloseSettlFlag) ->
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
getTagId(totNoQuoteEntries) ->
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
getTagId(underlyingCurrency) ->
    <<"318">>;
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
getTagId(discretionOffsetValue) ->
    <<"389">>;
getTagId(bidID) ->
    <<"390">>;
getTagId(clientBidID) ->
    <<"391">>;
getTagId(listName) ->
    <<"392">>;
getTagId(totNoRelatedSym) ->
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
getTagId(bidTradeType) ->
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
getTagId(cardIssNum) ->
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
getTagId(cashDistribAgentAcctName) ->
    <<"502">>;
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
getTagId(registDtls) ->
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
getTagId(totNoSecurityTypes) ->
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
getTagId(legSettlType) ->
    <<"587">>;
getTagId(legSettlDate) ->
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
getTagId(acctIDSource) ->
    <<"660">>;
getTagId(allocAcctIDSource) ->
    <<"661">>;
getTagId(benchmarkPrice) ->
    <<"662">>;
getTagId(benchmarkPriceType) ->
    <<"663">>;
getTagId(confirmID) ->
    <<"664">>;
getTagId(confirmStatus) ->
    <<"665">>;
getTagId(confirmTransType) ->
    <<"666">>;
getTagId(contractSettlMonth) ->
    <<"667">>;
getTagId(deliveryForm) ->
    <<"668">>;
getTagId(lastParPx) ->
    <<"669">>;
getTagId(noLegAllocs) ->
    <<"670">>;
getTagId(legAllocAccount) ->
    <<"671">>;
getTagId(legIndividualAllocID) ->
    <<"672">>;
getTagId(legAllocQty) ->
    <<"673">>;
getTagId(legAllocAcctIDSource) ->
    <<"674">>;
getTagId(legSettlCurrency) ->
    <<"675">>;
getTagId(legBenchmarkCurveCurrency) ->
    <<"676">>;
getTagId(legBenchmarkCurveName) ->
    <<"677">>;
getTagId(legBenchmarkCurvePoint) ->
    <<"678">>;
getTagId(legBenchmarkPrice) ->
    <<"679">>;
getTagId(legBenchmarkPriceType) ->
    <<"680">>;
getTagId(legBidPx) ->
    <<"681">>;
getTagId(legIOIQty) ->
    <<"682">>;
getTagId(noLegStipulations) ->
    <<"683">>;
getTagId(legOfferPx) ->
    <<"684">>;
getTagId(legPriceType) ->
    <<"686">>;
getTagId(legQty) ->
    <<"687">>;
getTagId(legStipulationType) ->
    <<"688">>;
getTagId(legStipulationValue) ->
    <<"689">>;
getTagId(legSwapType) ->
    <<"690">>;
getTagId(pool) ->
    <<"691">>;
getTagId(quotePriceType) ->
    <<"692">>;
getTagId(quoteRespID) ->
    <<"693">>;
getTagId(quoteRespType) ->
    <<"694">>;
getTagId(quoteQualifier) ->
    <<"695">>;
getTagId(yieldRedemptionDate) ->
    <<"696">>;
getTagId(yieldRedemptionPrice) ->
    <<"697">>;
getTagId(yieldRedemptionPriceType) ->
    <<"698">>;
getTagId(benchmarkSecurityID) ->
    <<"699">>;
getTagId(reversalIndicator) ->
    <<"700">>;
getTagId(yieldCalcDate) ->
    <<"701">>;
getTagId(noPositions) ->
    <<"702">>;
getTagId(posType) ->
    <<"703">>;
getTagId(longQty) ->
    <<"704">>;
getTagId(shortQty) ->
    <<"705">>;
getTagId(posQtyStatus) ->
    <<"706">>;
getTagId(posAmtType) ->
    <<"707">>;
getTagId(posAmt) ->
    <<"708">>;
getTagId(posTransType) ->
    <<"709">>;
getTagId(posReqID) ->
    <<"710">>;
getTagId(noUnderlyings) ->
    <<"711">>;
getTagId(posMaintAction) ->
    <<"712">>;
getTagId(origPosReqRefID) ->
    <<"713">>;
getTagId(posMaintRptRefID) ->
    <<"714">>;
getTagId(clearingBusinessDate) ->
    <<"715">>;
getTagId(settlSessID) ->
    <<"716">>;
getTagId(settlSessSubID) ->
    <<"717">>;
getTagId(adjustmentType) ->
    <<"718">>;
getTagId(contraryInstructionIndicator) ->
    <<"719">>;
getTagId(priorSpreadIndicator) ->
    <<"720">>;
getTagId(posMaintRptID) ->
    <<"721">>;
getTagId(posMaintStatus) ->
    <<"722">>;
getTagId(posMaintResult) ->
    <<"723">>;
getTagId(posReqType) ->
    <<"724">>;
getTagId(responseTransportType) ->
    <<"725">>;
getTagId(responseDestination) ->
    <<"726">>;
getTagId(totalNumPosReports) ->
    <<"727">>;
getTagId(posReqResult) ->
    <<"728">>;
getTagId(posReqStatus) ->
    <<"729">>;
getTagId(settlPrice) ->
    <<"730">>;
getTagId(settlPriceType) ->
    <<"731">>;
getTagId(underlyingSettlPrice) ->
    <<"732">>;
getTagId(underlyingSettlPriceType) ->
    <<"733">>;
getTagId(priorSettlPrice) ->
    <<"734">>;
getTagId(noQuoteQualifiers) ->
    <<"735">>;
getTagId(allocSettlCurrency) ->
    <<"736">>;
getTagId(allocSettlCurrAmt) ->
    <<"737">>;
getTagId(interestAtMaturity) ->
    <<"738">>;
getTagId(legDatedDate) ->
    <<"739">>;
getTagId(legPool) ->
    <<"740">>;
getTagId(allocInterestAtMaturity) ->
    <<"741">>;
getTagId(allocAccruedInterestAmt) ->
    <<"742">>;
getTagId(deliveryDate) ->
    <<"743">>;
getTagId(assignmentMethod) ->
    <<"744">>;
getTagId(assignmentUnit) ->
    <<"745">>;
getTagId(openInterest) ->
    <<"746">>;
getTagId(exerciseMethod) ->
    <<"747">>;
getTagId(totNumTradeReports) ->
    <<"748">>;
getTagId(tradeRequestResult) ->
    <<"749">>;
getTagId(tradeRequestStatus) ->
    <<"750">>;
getTagId(tradeReportRejectReason) ->
    <<"751">>;
getTagId(sideMultiLegReportingType) ->
    <<"752">>;
getTagId(noPosAmt) ->
    <<"753">>;
getTagId(autoAcceptIndicator) ->
    <<"754">>;
getTagId(allocReportID) ->
    <<"755">>;
getTagId(noNested2PartyIDs) ->
    <<"756">>;
getTagId(nested2PartyID) ->
    <<"757">>;
getTagId(nested2PartyIDSource) ->
    <<"758">>;
getTagId(nested2PartyRole) ->
    <<"759">>;
getTagId(nested2PartySubID) ->
    <<"760">>;
getTagId(benchmarkSecurityIDSource) ->
    <<"761">>;
getTagId(securitySubType) ->
    <<"762">>;
getTagId(underlyingSecuritySubType) ->
    <<"763">>;
getTagId(legSecuritySubType) ->
    <<"764">>;
getTagId(allowableOneSidednessPct) ->
    <<"765">>;
getTagId(allowableOneSidednessValue) ->
    <<"766">>;
getTagId(allowableOneSidednessCurr) ->
    <<"767">>;
getTagId(noTrdRegTimestamps) ->
    <<"768">>;
getTagId(trdRegTimestamp) ->
    <<"769">>;
getTagId(trdRegTimestampType) ->
    <<"770">>;
getTagId(trdRegTimestampOrigin) ->
    <<"771">>;
getTagId(confirmRefID) ->
    <<"772">>;
getTagId(confirmType) ->
    <<"773">>;
getTagId(confirmRejReason) ->
    <<"774">>;
getTagId(bookingType) ->
    <<"775">>;
getTagId(individualAllocRejCode) ->
    <<"776">>;
getTagId(settlInstMsgID) ->
    <<"777">>;
getTagId(noSettlInst) ->
    <<"778">>;
getTagId(lastUpdateTime) ->
    <<"779">>;
getTagId(allocSettlInstType) ->
    <<"780">>;
getTagId(noSettlPartyIDs) ->
    <<"781">>;
getTagId(settlPartyID) ->
    <<"782">>;
getTagId(settlPartyIDSource) ->
    <<"783">>;
getTagId(settlPartyRole) ->
    <<"784">>;
getTagId(settlPartySubID) ->
    <<"785">>;
getTagId(settlPartySubIDType) ->
    <<"786">>;
getTagId(dlvyInstType) ->
    <<"787">>;
getTagId(terminationType) ->
    <<"788">>;
getTagId(nextExpectedMsgSeqNum) ->
    <<"789">>;
getTagId(ordStatusReqID) ->
    <<"790">>;
getTagId(settlInstReqID) ->
    <<"791">>;
getTagId(settlInstReqRejCode) ->
    <<"792">>;
getTagId(secondaryAllocID) ->
    <<"793">>;
getTagId(allocReportType) ->
    <<"794">>;
getTagId(allocReportRefID) ->
    <<"795">>;
getTagId(allocCancReplaceReason) ->
    <<"796">>;
getTagId(copyMsgIndicator) ->
    <<"797">>;
getTagId(allocAccountType) ->
    <<"798">>;
getTagId(orderAvgPx) ->
    <<"799">>;
getTagId(orderBookingQty) ->
    <<"800">>;
getTagId(noSettlPartySubIDs) ->
    <<"801">>;
getTagId(noPartySubIDs) ->
    <<"802">>;
getTagId(partySubIDType) ->
    <<"803">>;
getTagId(noNestedPartySubIDs) ->
    <<"804">>;
getTagId(nestedPartySubIDType) ->
    <<"805">>;
getTagId(noNested2PartySubIDs) ->
    <<"806">>;
getTagId(nested2PartySubIDType) ->
    <<"807">>;
getTagId(allocIntermedReqType) ->
    <<"808">>;
getTagId(underlyingPx) ->
    <<"810">>;
getTagId(priceDelta) ->
    <<"811">>;
getTagId(applQueueMax) ->
    <<"812">>;
getTagId(applQueueDepth) ->
    <<"813">>;
getTagId(applQueueResolution) ->
    <<"814">>;
getTagId(applQueueAction) ->
    <<"815">>;
getTagId(noAltMDSource) ->
    <<"816">>;
getTagId(altMDSourceID) ->
    <<"817">>;
getTagId(secondaryTradeReportID) ->
    <<"818">>;
getTagId(avgPxIndicator) ->
    <<"819">>;
getTagId(tradeLinkID) ->
    <<"820">>;
getTagId(orderInputDevice) ->
    <<"821">>;
getTagId(underlyingTradingSessionID) ->
    <<"822">>;
getTagId(underlyingTradingSessionSubID) ->
    <<"823">>;
getTagId(tradeLegRefID) ->
    <<"824">>;
getTagId(exchangeRule) ->
    <<"825">>;
getTagId(tradeAllocIndicator) ->
    <<"826">>;
getTagId(expirationCycle) ->
    <<"827">>;
getTagId(trdType) ->
    <<"828">>;
getTagId(trdSubType) ->
    <<"829">>;
getTagId(transferReason) ->
    <<"830">>;
getTagId(totNumAssignmentReports) ->
    <<"832">>;
getTagId(asgnRptID) ->
    <<"833">>;
getTagId(thresholdAmount) ->
    <<"834">>;
getTagId(pegMoveType) ->
    <<"835">>;
getTagId(pegOffsetType) ->
    <<"836">>;
getTagId(pegLimitType) ->
    <<"837">>;
getTagId(pegRoundDirection) ->
    <<"838">>;
getTagId(peggedPrice) ->
    <<"839">>;
getTagId(pegScope) ->
    <<"840">>;
getTagId(discretionMoveType) ->
    <<"841">>;
getTagId(discretionOffsetType) ->
    <<"842">>;
getTagId(discretionLimitType) ->
    <<"843">>;
getTagId(discretionRoundDirection) ->
    <<"844">>;
getTagId(discretionPrice) ->
    <<"845">>;
getTagId(discretionScope) ->
    <<"846">>;
getTagId(targetStrategy) ->
    <<"847">>;
getTagId(targetStrategyParameters) ->
    <<"848">>;
getTagId(participationRate) ->
    <<"849">>;
getTagId(targetStrategyPerformance) ->
    <<"850">>;
getTagId(lastLiquidityInd) ->
    <<"851">>;
getTagId(publishTrdIndicator) ->
    <<"852">>;
getTagId(shortSaleReason) ->
    <<"853">>;
getTagId(qtyType) ->
    <<"854">>;
getTagId(secondaryTrdType) ->
    <<"855">>;
getTagId(tradeReportType) ->
    <<"856">>;
getTagId(allocNoOrdersType) ->
    <<"857">>;
getTagId(sharedCommission) ->
    <<"858">>;
getTagId(confirmReqID) ->
    <<"859">>;
getTagId(avgParPx) ->
    <<"860">>;
getTagId(reportedPx) ->
    <<"861">>;
getTagId(noCapacities) ->
    <<"862">>;
getTagId(orderCapacityQty) ->
    <<"863">>;
getTagId(noEvents) ->
    <<"864">>;
getTagId(eventType) ->
    <<"865">>;
getTagId(eventDate) ->
    <<"866">>;
getTagId(eventPx) ->
    <<"867">>;
getTagId(eventText) ->
    <<"868">>;
getTagId(pctAtRisk) ->
    <<"869">>;
getTagId(noInstrAttrib) ->
    <<"870">>;
getTagId(instrAttribType) ->
    <<"871">>;
getTagId(instrAttribValue) ->
    <<"872">>;
getTagId(datedDate) ->
    <<"873">>;
getTagId(interestAccrualDate) ->
    <<"874">>;
getTagId(cPProgram) ->
    <<"875">>;
getTagId(cPRegType) ->
    <<"876">>;
getTagId(underlyingCPProgram) ->
    <<"877">>;
getTagId(underlyingCPRegType) ->
    <<"878">>;
getTagId(underlyingQty) ->
    <<"879">>;
getTagId(trdMatchID) ->
    <<"880">>;
getTagId(secondaryTradeReportRefID) ->
    <<"881">>;
getTagId(underlyingDirtyPrice) ->
    <<"882">>;
getTagId(underlyingEndPrice) ->
    <<"883">>;
getTagId(underlyingStartValue) ->
    <<"884">>;
getTagId(underlyingCurrentValue) ->
    <<"885">>;
getTagId(underlyingEndValue) ->
    <<"886">>;
getTagId(noUnderlyingStips) ->
    <<"887">>;
getTagId(underlyingStipType) ->
    <<"888">>;
getTagId(underlyingStipValue) ->
    <<"889">>;
getTagId(maturityNetMoney) ->
    <<"890">>;
getTagId(miscFeeBasis) ->
    <<"891">>;
getTagId(totNoAllocs) ->
    <<"892">>;
getTagId(lastFragment) ->
    <<"893">>;
getTagId(collReqID) ->
    <<"894">>;
getTagId(collAsgnReason) ->
    <<"895">>;
getTagId(collInquiryQualifier) ->
    <<"896">>;
getTagId(noTrades) ->
    <<"897">>;
getTagId(marginRatio) ->
    <<"898">>;
getTagId(marginExcess) ->
    <<"899">>;
getTagId(totalNetValue) ->
    <<"900">>;
getTagId(cashOutstanding) ->
    <<"901">>;
getTagId(collAsgnID) ->
    <<"902">>;
getTagId(collAsgnTransType) ->
    <<"903">>;
getTagId(collRespID) ->
    <<"904">>;
getTagId(collAsgnRespType) ->
    <<"905">>;
getTagId(collAsgnRejectReason) ->
    <<"906">>;
getTagId(collAsgnRefID) ->
    <<"907">>;
getTagId(collRptID) ->
    <<"908">>;
getTagId(collInquiryID) ->
    <<"909">>;
getTagId(collStatus) ->
    <<"910">>;
getTagId(totNumReports) ->
    <<"911">>;
getTagId(lastRptRequested) ->
    <<"912">>;
getTagId(agreementDesc) ->
    <<"913">>;
getTagId(agreementID) ->
    <<"914">>;
getTagId(agreementDate) ->
    <<"915">>;
getTagId(startDate) ->
    <<"916">>;
getTagId(endDate) ->
    <<"917">>;
getTagId(agreementCurrency) ->
    <<"918">>;
getTagId(deliveryType) ->
    <<"919">>;
getTagId(endAccruedInterestAmt) ->
    <<"920">>;
getTagId(startCash) ->
    <<"921">>;
getTagId(endCash) ->
    <<"922">>;
getTagId(userRequestID) ->
    <<"923">>;
getTagId(userRequestType) ->
    <<"924">>;
getTagId(newPassword) ->
    <<"925">>;
getTagId(userStatus) ->
    <<"926">>;
getTagId(userStatusText) ->
    <<"927">>;
getTagId(statusValue) ->
    <<"928">>;
getTagId(statusText) ->
    <<"929">>;
getTagId(refCompID) ->
    <<"930">>;
getTagId(refSubID) ->
    <<"931">>;
getTagId(networkResponseID) ->
    <<"932">>;
getTagId(networkRequestID) ->
    <<"933">>;
getTagId(lastNetworkResponseID) ->
    <<"934">>;
getTagId(networkRequestType) ->
    <<"935">>;
getTagId(noCompIDs) ->
    <<"936">>;
getTagId(networkStatusResponseType) ->
    <<"937">>;
getTagId(noCollInquiryQualifier) ->
    <<"938">>;
getTagId(trdRptStatus) ->
    <<"939">>;
getTagId(affirmStatus) ->
    <<"940">>;
getTagId(underlyingStrikeCurrency) ->
    <<"941">>;
getTagId(legStrikeCurrency) ->
    <<"942">>;
getTagId(timeBracket) ->
    <<"943">>;
getTagId(collAction) ->
    <<"944">>;
getTagId(collInquiryStatus) ->
    <<"945">>;
getTagId(collInquiryResult) ->
    <<"946">>;
getTagId(strikeCurrency) ->
    <<"947">>;
getTagId(noNested3PartyIDs) ->
    <<"948">>;
getTagId(nested3PartyID) ->
    <<"949">>;
getTagId(nested3PartyIDSource) ->
    <<"950">>;
getTagId(nested3PartyRole) ->
    <<"951">>;
getTagId(noNested3PartySubIDs) ->
    <<"952">>;
getTagId(nested3PartySubID) ->
    <<"953">>;
getTagId(nested3PartySubIDType) ->
    <<"954">>;
getTagId(legContractSettlMonth) ->
    <<"955">>;
getTagId(legInterestAccrualDate) ->
    <<"956">>;
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
    erlang:integer_to_list(Int);
reconvert(bodyLength, Int) -> 
    erlang:integer_to_list(Int);
reconvert(commType, perUnit) -> 
    <<"1">>;
reconvert(commType, percent) -> 
    <<"2">>;
reconvert(commType, absolute) -> 
    <<"3">>;
reconvert(commType, percentageWaivedCashDiscount) -> 
    <<"4">>;
reconvert(commType, percentageWaivedEnhancedUnits) -> 
    <<"5">>;
reconvert(commType, pointsPerBondOrContract) -> 
    <<"6">>;
reconvert(endSeqNo, Int) -> 
    erlang:integer_to_list(Int);
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
reconvert(execInst, stayOnOfferSide) -> 
    <<"0">>;
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
reconvert(execInst, midPricePeg) -> 
    <<"M">>;
reconvert(execInst, nonNegotiable) -> 
    <<"N">>;
reconvert(execInst, openingPeg) -> 
    <<"O">>;
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
reconvert(execInst, tryToStop) -> 
    <<"Y">>;
reconvert(execInst, cancelIfNotBest) -> 
    <<"Z">>;
reconvert(execInst, trailingStopPeg) -> 
    <<"a">>;
reconvert(execInst, strictLimit) -> 
    <<"b">>;
reconvert(execInst, ignorePriceValidityChecks) -> 
    <<"c">>;
reconvert(execInst, pegToLimitPrice) -> 
    <<"d">>;
reconvert(execInst, workToTargetStrategy) -> 
    <<"e">>;
reconvert(handlInst, automatedExecutionNoIntervention) -> 
    <<"1">>;
reconvert(handlInst, automatedExecutionInterventionOK) -> 
    <<"2">>;
reconvert(handlInst, manualOrder) -> 
    <<"3">>;
reconvert(securityIDSource, cUSIP) -> 
    <<"1">>;
reconvert(securityIDSource, sEDOL) -> 
    <<"2">>;
reconvert(securityIDSource, qUIK) -> 
    <<"3">>;
reconvert(securityIDSource, iSINNumber) -> 
    <<"4">>;
reconvert(securityIDSource, rICCode) -> 
    <<"5">>;
reconvert(securityIDSource, iSOCurrencyCode) -> 
    <<"6">>;
reconvert(securityIDSource, iSOCountryCode) -> 
    <<"7">>;
reconvert(securityIDSource, exchangeSymbol) -> 
    <<"8">>;
reconvert(securityIDSource, consolidatedTapeAssociation) -> 
    <<"9">>;
reconvert(securityIDSource, bloombergSymbol) -> 
    <<"A">>;
reconvert(securityIDSource, wertpapier) -> 
    <<"B">>;
reconvert(securityIDSource, dutch) -> 
    <<"C">>;
reconvert(securityIDSource, valoren) -> 
    <<"D">>;
reconvert(securityIDSource, sicovam) -> 
    <<"E">>;
reconvert(securityIDSource, belgian) -> 
    <<"F">>;
reconvert(securityIDSource, common) -> 
    <<"G">>;
reconvert(securityIDSource, clearingHouse) -> 
    <<"H">>;
reconvert(securityIDSource, iSDAFpMLSpecification) -> 
    <<"I">>;
reconvert(securityIDSource, optionPriceReportingAuthority) -> 
    <<"J">>;
reconvert(iOIQltyInd, low) -> 
    <<"L">>;
reconvert(iOIQltyInd, medium) -> 
    <<"M">>;
reconvert(iOIQltyInd, high) -> 
    <<"H">>;
reconvert(iOIQty, small) -> 
    <<"S">>;
reconvert(iOIQty, medium) -> 
    <<"M">>;
reconvert(iOIQty, large) -> 
    <<"L">>;
reconvert(iOITransType, new) -> 
    <<"N">>;
reconvert(iOITransType, cancel) -> 
    <<"C">>;
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
reconvert(noLinesOfText, Int) -> 
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
reconvert(msgType, newOrderSingle) -> 
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
reconvert(msgType, massQuoteAcknowledgement) -> 
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
reconvert(msgType, xMLnonFIX) -> 
    <<"n">>;
reconvert(msgType, registrationInstructions) -> 
    <<"o">>;
reconvert(msgType, registrationInstructionsResponse) -> 
    <<"p">>;
reconvert(msgType, orderMassCancelRequest) -> 
    <<"q">>;
reconvert(msgType, orderMassCancelReport) -> 
    <<"r">>;
reconvert(msgType, newOrderCross) -> 
    <<"s">>;
reconvert(msgType, crossOrderCancelReplaceRequest) -> 
    <<"t">>;
reconvert(msgType, crossOrderCancelRequest) -> 
    <<"u">>;
reconvert(msgType, securityTypeRequest) -> 
    <<"v">>;
reconvert(msgType, securityTypes) -> 
    <<"w">>;
reconvert(msgType, securityListRequest) -> 
    <<"x">>;
reconvert(msgType, securityList) -> 
    <<"y">>;
reconvert(msgType, derivativeSecurityListRequest) -> 
    <<"z">>;
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
reconvert(msgType, quoteResponse) -> 
    <<"AJ">>;
reconvert(msgType, confirmation) -> 
    <<"AK">>;
reconvert(msgType, positionMaintenanceRequest) -> 
    <<"AL">>;
reconvert(msgType, positionMaintenanceReport) -> 
    <<"AM">>;
reconvert(msgType, requestForPositions) -> 
    <<"AN">>;
reconvert(msgType, requestForPositionsAck) -> 
    <<"AO">>;
reconvert(msgType, positionReport) -> 
    <<"AP">>;
reconvert(msgType, tradeCaptureReportRequestAck) -> 
    <<"AQ">>;
reconvert(msgType, tradeCaptureReportAck) -> 
    <<"AR">>;
reconvert(msgType, allocationReport) -> 
    <<"AS">>;
reconvert(msgType, allocationReportAck) -> 
    <<"AT">>;
reconvert(msgType, confirmationAck) -> 
    <<"AU">>;
reconvert(msgType, settlementInstructionRequest) -> 
    <<"AV">>;
reconvert(msgType, assignmentReport) -> 
    <<"AW">>;
reconvert(msgType, collateralRequest) -> 
    <<"AX">>;
reconvert(msgType, collateralAssignment) -> 
    <<"AY">>;
reconvert(msgType, collateralResponse) -> 
    <<"AZ">>;
reconvert(msgType, collateralReport) -> 
    <<"BA">>;
reconvert(msgType, collateralInquiry) -> 
    <<"BB">>;
reconvert(msgType, networkCounterpartySystemStatusRequest) -> 
    <<"BC">>;
reconvert(msgType, networkCounterpartySystemStatusResponse) -> 
    <<"BD">>;
reconvert(msgType, userRequest) -> 
    <<"BE">>;
reconvert(msgType, userResponse) -> 
    <<"BF">>;
reconvert(msgType, collateralInquiryAck) -> 
    <<"BG">>;
reconvert(msgType, confirmationRequest) -> 
    <<"BH">>;
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
reconvert(ordType, withOrWithout) -> 
    <<"6">>;
reconvert(ordType, limitOrBetter) -> 
    <<"7">>;
reconvert(ordType, limitWithOrWithout) -> 
    <<"8">>;
reconvert(ordType, onBasis) -> 
    <<"9">>;
reconvert(ordType, previouslyQuoted) -> 
    <<"D">>;
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
reconvert(origTime, DateTime) -> 
    fix_convertor_utils:datetime_to_fixstring(DateTime);
reconvert(possDupFlag, possibleDuplicate) -> 
    <<"Y">>;
reconvert(possDupFlag, originalTransmission) -> 
    <<"N">>;
reconvert(refSeqNum, Int) -> 
    erlang:integer_to_list(Int);
reconvert(sendingTime, DateTime) -> 
    fix_convertor_utils:datetime_to_fixstring(DateTime);
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
reconvert(side, crossShortExempt) -> 
    <<"A">>;
reconvert(side, asDefined) -> 
    <<"B">>;
reconvert(side, opposite) -> 
    <<"C">>;
reconvert(side, subscribe) -> 
    <<"D">>;
reconvert(side, redeem) -> 
    <<"E">>;
reconvert(side, lend) -> 
    <<"F">>;
reconvert(side, borrow) -> 
    <<"G">>;
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
reconvert(timeInForce, atTheClose) -> 
    <<"7">>;
reconvert(transactTime, DateTime) -> 
    fix_convertor_utils:datetime_to_fixstring(DateTime);
reconvert(urgency, normal) -> 
    <<"0">>;
reconvert(urgency, flash) -> 
    <<"1">>;
reconvert(urgency, background) -> 
    <<"2">>;
reconvert(validUntilTime, DateTime) -> 
    fix_convertor_utils:datetime_to_fixstring(DateTime);
reconvert(settlType, regular) -> 
    <<"0">>;
reconvert(settlType, cash) -> 
    <<"1">>;
reconvert(settlType, nextDay) -> 
    <<"2">>;
reconvert(settlType, tPlus2) -> 
    <<"3">>;
reconvert(settlType, tPlus3) -> 
    <<"4">>;
reconvert(settlType, tPlus4) -> 
    <<"5">>;
reconvert(settlType, future) -> 
    <<"6">>;
reconvert(settlType, whenAndIfIssued) -> 
    <<"7">>;
reconvert(settlType, sellersOption) -> 
    <<"8">>;
reconvert(settlType, tPlus5) -> 
    <<"9">>;
reconvert(settlDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
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
reconvert(noOrders, Int) -> 
    erlang:integer_to_list(Int);
reconvert(avgPxPrecision, Int) -> 
    erlang:integer_to_list(Int);
reconvert(tradeDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(positionEffect, open) -> 
    <<"O">>;
reconvert(positionEffect, close) -> 
    <<"C">>;
reconvert(positionEffect, rolled) -> 
    <<"R">>;
reconvert(positionEffect, fIFO) -> 
    <<"F">>;
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
reconvert(allocStatus, incomplete) -> 
    <<"4">>;
reconvert(allocStatus, rejectedByIntermediary) -> 
    <<"5">>;
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
reconvert(allocRejCode, incorrectAllocatedQuantity) -> 
    <<"8">>;
reconvert(allocRejCode, calculationDifference) -> 
    <<"9">>;
reconvert(allocRejCode, unknownOrStaleExecID) -> 
    <<"10">>;
reconvert(allocRejCode, mismatchedData) -> 
    <<"11">>;
reconvert(allocRejCode, unknownClOrdID) -> 
    <<"12">>;
reconvert(allocRejCode, warehouseRequestRejected) -> 
    <<"13">>;
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
reconvert(possResend, possibleResend) -> 
    <<"Y">>;
reconvert(possResend, originalTransmission) -> 
    <<"N">>;
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
reconvert(cxlRejReason, unableToProcessOrderMassCancelRequest) -> 
    <<"4">>;
reconvert(cxlRejReason, origOrdModTime) -> 
    <<"5">>;
reconvert(cxlRejReason, duplicateClOrdID) -> 
    <<"6">>;
reconvert(cxlRejReason, other) -> 
    <<"99">>;
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
reconvert(ordRejReason, tradeAlongRequired) -> 
    <<"9">>;
reconvert(ordRejReason, invalidInvestorID) -> 
    <<"10">>;
reconvert(ordRejReason, unsupportedOrderCharacteristic) -> 
    <<"11">>;
reconvert(ordRejReason, incorrectQuantity) -> 
    <<"13">>;
reconvert(ordRejReason, incorrectAllocatedQuantity) -> 
    <<"14">>;
reconvert(ordRejReason, unknownAccount) -> 
    <<"15">>;
reconvert(ordRejReason, other) -> 
    <<"99">>;
reconvert(iOIQualifier, allOrNone) -> 
    <<"A">>;
reconvert(iOIQualifier, marketOnClose) -> 
    <<"B">>;
reconvert(iOIQualifier, atTheClose) -> 
    <<"C">>;
reconvert(iOIQualifier, vWAP) -> 
    <<"D">>;
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
reconvert(origSendingTime, DateTime) -> 
    fix_convertor_utils:datetime_to_fixstring(DateTime);
reconvert(gapFillFlag, gapFillMessage) -> 
    <<"Y">>;
reconvert(gapFillFlag, sequenceReset) -> 
    <<"N">>;
reconvert(noExecs, Int) -> 
    erlang:integer_to_list(Int);
reconvert(expireTime, DateTime) -> 
    fix_convertor_utils:datetime_to_fixstring(DateTime);
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
reconvert(dKReason, calculationDifference) -> 
    <<"F">>;
reconvert(dKReason, other) -> 
    <<"Z">>;
reconvert(iOINaturalFlag, natural) -> 
    <<"Y">>;
reconvert(iOINaturalFlag, notNatural) -> 
    <<"N">>;
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
reconvert(miscFeeType, perTransaction) -> 
    <<"10">>;
reconvert(miscFeeType, conversion) -> 
    <<"11">>;
reconvert(miscFeeType, agent) -> 
    <<"12">>;
reconvert(resetSeqNumFlag, yes) -> 
    <<"Y">>;
reconvert(resetSeqNumFlag, no) -> 
    <<"N">>;
reconvert(noRelatedSym, Int) -> 
    erlang:integer_to_list(Int);
reconvert(execType, new) -> 
    <<"0">>;
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
reconvert(execType, trade) -> 
    <<"F">>;
reconvert(execType, tradeCorrect) -> 
    <<"G">>;
reconvert(execType, tradeCancel) -> 
    <<"H">>;
reconvert(execType, orderStatus) -> 
    <<"I">>;
reconvert(settlCurrFxRateCalc, multiply) -> 
    <<"M">>;
reconvert(settlCurrFxRateCalc, divide) -> 
    <<"D">>;
reconvert(numDaysInterest, Int) -> 
    erlang:integer_to_list(Int);
reconvert(settlInstMode, standingInstructionsProvided) -> 
    <<"1">>;
reconvert(settlInstMode, specificOrderForASingleAccount) -> 
    <<"4">>;
reconvert(settlInstMode, requestReject) -> 
    <<"5">>;
reconvert(settlInstTransType, new) -> 
    <<"N">>;
reconvert(settlInstTransType, cancel) -> 
    <<"C">>;
reconvert(settlInstTransType, replace) -> 
    <<"R">>;
reconvert(settlInstTransType, restate) -> 
    <<"T">>;
reconvert(settlInstSource, brokerCredit) -> 
    <<"1">>;
reconvert(settlInstSource, institution) -> 
    <<"2">>;
reconvert(settlInstSource, investor) -> 
    <<"3">>;
reconvert(securityType, euroSupranationalCoupons) -> 
    <<"EUSUPRA">>;
reconvert(securityType, federalAgencyCoupon) -> 
    <<"FAC">>;
reconvert(securityType, federalAgencyDiscountNote) -> 
    <<"FADN">>;
reconvert(securityType, privateExportFunding) -> 
    <<"PEF">>;
reconvert(securityType, uSDSupranationalCoupons) -> 
    <<"SUPRA">>;
reconvert(securityType, corporateBond) -> 
    <<"CORP">>;
reconvert(securityType, corporatePrivatePlacement) -> 
    <<"CPP">>;
reconvert(securityType, convertibleBond) -> 
    <<"CB">>;
reconvert(securityType, dualCurrency) -> 
    <<"DUAL">>;
reconvert(securityType, euroCorporateBond) -> 
    <<"EUCORP">>;
reconvert(securityType, indexedLinked) -> 
    <<"XLINKD">>;
reconvert(securityType, structuredNotes) -> 
    <<"STRUCT">>;
reconvert(securityType, yankeeCorporateBond) -> 
    <<"YANK">>;
reconvert(securityType, foreignExchangeContract) -> 
    <<"FOR">>;
reconvert(securityType, commonStock) -> 
    <<"CS">>;
reconvert(securityType, preferredStock) -> 
    <<"PS">>;
reconvert(securityType, bradyBond) -> 
    <<"BRADY">>;
reconvert(securityType, euroSovereigns) -> 
    <<"EUSOV">>;
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
reconvert(securityType, uSTreasuryNote) -> 
    <<"TNOTE">>;
reconvert(securityType, uSTreasuryBill) -> 
    <<"TBILL">>;
reconvert(securityType, repurchase) -> 
    <<"REPO">>;
reconvert(securityType, forward) -> 
    <<"FORWARD">>;
reconvert(securityType, buySellback) -> 
    <<"BUYSELL">>;
reconvert(securityType, securitiesLoan) -> 
    <<"SECLOAN">>;
reconvert(securityType, securitiesPledge) -> 
    <<"SECPLEDGE">>;
reconvert(securityType, termLoan) -> 
    <<"TERM">>;
reconvert(securityType, revolverLoan) -> 
    <<"RVLV">>;
reconvert(securityType, revolver) -> 
    <<"RVLVTRM">>;
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
reconvert(securityType, replaced) -> 
    <<"REPLACD">>;
reconvert(securityType, matured) -> 
    <<"MATURED">>;
reconvert(securityType, amended) -> 
    <<"AMENDED">>;
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
reconvert(securityType, commercialPaper) -> 
    <<"CP">>;
reconvert(securityType, depositNotes) -> 
    <<"DN">>;
reconvert(securityType, euroCertificateOfDeposit) -> 
    <<"EUCD">>;
reconvert(securityType, euroCommercialPaper) -> 
    <<"EUCP">>;
reconvert(securityType, liquidityNote) -> 
    <<"LQN">>;
reconvert(securityType, mediumTermNotes) -> 
    <<"MTN">>;
reconvert(securityType, overnight) -> 
    <<"ONITE">>;
reconvert(securityType, promissoryNote) -> 
    <<"PN">>;
reconvert(securityType, plazosFijos) -> 
    <<"PZFJ">>;
reconvert(securityType, shortTermLoanNote) -> 
    <<"STN">>;
reconvert(securityType, timeDeposit) -> 
    <<"TD">>;
reconvert(securityType, extendedCommNote) -> 
    <<"XCN">>;
reconvert(securityType, yankeeCertificateOfDeposit) -> 
    <<"YCD">>;
reconvert(securityType, assetBackedSecurities) -> 
    <<"ABS">>;
reconvert(securityType, corp) -> 
    <<"CMBS">>;
reconvert(securityType, collateralizedMortgageObligation) -> 
    <<"CMO">>;
reconvert(securityType, iOETTEMortgage) -> 
    <<"IET">>;
reconvert(securityType, mortgageBackedSecurities) -> 
    <<"MBS">>;
reconvert(securityType, mortgageInterestOnly) -> 
    <<"MIO">>;
reconvert(securityType, mortgagePrincipalOnly) -> 
    <<"MPO">>;
reconvert(securityType, mortgagePrivatePlacement) -> 
    <<"MPP">>;
reconvert(securityType, miscellaneousPassThrough) -> 
    <<"MPT">>;
reconvert(securityType, pfandbriefe) -> 
    <<"PFAND">>;
reconvert(securityType, toBeAnnounced) -> 
    <<"TBA">>;
reconvert(securityType, otherAnticipationNotes) -> 
    <<"AN">>;
reconvert(securityType, certificateOfObligation) -> 
    <<"COFO">>;
reconvert(securityType, certificateOfParticipation) -> 
    <<"COFP">>;
reconvert(securityType, generalObligationBonds) -> 
    <<"GO">>;
reconvert(securityType, mandatoryTender) -> 
    <<"MT">>;
reconvert(securityType, revenueAnticipationNote) -> 
    <<"RAN">>;
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
reconvert(securityType, taxExemptCommercialPaper) -> 
    <<"TECP">>;
reconvert(securityType, taxRevenueAnticipationNote) -> 
    <<"TRAN">>;
reconvert(securityType, variableRateDemandNote) -> 
    <<"VRDN">>;
reconvert(securityType, warrant) -> 
    <<"WAR">>;
reconvert(securityType, mutualFund) -> 
    <<"MF">>;
reconvert(securityType, multilegInstrument) -> 
    <<"MLEG">>;
reconvert(securityType, noSecurityType) -> 
    <<"NONE">>;
reconvert(securityType, future) -> 
    <<"FUT">>;
reconvert(securityType, option) -> 
    <<"OPT">>;
reconvert(effectiveTime, DateTime) -> 
    fix_convertor_utils:datetime_to_fixstring(DateTime);
reconvert(standInstDbType, other) -> 
    <<"0">>;
reconvert(standInstDbType, dTCSID) -> 
    <<"1">>;
reconvert(standInstDbType, thomsonALERT) -> 
    <<"2">>;
reconvert(standInstDbType, aGlobalCustodian) -> 
    <<"3">>;
reconvert(standInstDbType, accountNet) -> 
    <<"4">>;
reconvert(settlDeliveryType, versus) -> 
    <<"0">>;
reconvert(settlDeliveryType, free) -> 
    <<"1">>;
reconvert(settlDeliveryType, triParty) -> 
    <<"2">>;
reconvert(settlDeliveryType, holdInCustody) -> 
    <<"3">>;
reconvert(settlDate2, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(allocLinkType, fXNetting) -> 
    <<"0">>;
reconvert(allocLinkType, fXSwap) -> 
    <<"1">>;
reconvert(noIOIQualifiers, Int) -> 
    erlang:integer_to_list(Int);
reconvert(maturityMonthYear, DateTime) -> 
    fix_convertor_utils:monthyear2fixstring(DateTime);
reconvert(putOrCall, put) -> 
    <<"0">>;
reconvert(putOrCall, call) -> 
    <<"1">>;
reconvert(coveredOrUncovered, covered) -> 
    <<"0">>;
reconvert(coveredOrUncovered, uncovered) -> 
    <<"1">>;
reconvert(notifyBrokerOfCredit, detailsShouldBeCommunicated) -> 
    <<"Y">>;
reconvert(notifyBrokerOfCredit, detailsShouldNotBeCommunicated) -> 
    <<"N">>;
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
reconvert(couponPaymentDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(issueDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(repurchaseTerm, Int) -> 
    erlang:integer_to_list(Int);
reconvert(tradeOriginationDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(exDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(noStipulations, Int) -> 
    erlang:integer_to_list(Int);
reconvert(stipulationType, alternativeMinimumTax) -> 
    <<"AMT">>;
reconvert(stipulationType, autoReinvestment) -> 
    <<"AUTOREINV">>;
reconvert(stipulationType, bankQualified) -> 
    <<"BANKQUAL">>;
reconvert(stipulationType, bargainConditions) -> 
    <<"BGNCON">>;
reconvert(stipulationType, couponRange) -> 
    <<"COUPON">>;
reconvert(stipulationType, iSOCurrencyCode) -> 
    <<"CURRENCY">>;
reconvert(stipulationType, customStart) -> 
    <<"CUSTOMDATE">>;
reconvert(stipulationType, geographics) -> 
    <<"GEOG">>;
reconvert(stipulationType, valuationDiscount) -> 
    <<"HAIRCUT">>;
reconvert(stipulationType, insured) -> 
    <<"INSURED">>;
reconvert(stipulationType, issueDate) -> 
    <<"ISSUE">>;
reconvert(stipulationType, issuer) -> 
    <<"ISSUER">>;
reconvert(stipulationType, issueSizeRange) -> 
    <<"ISSUESIZE">>;
reconvert(stipulationType, lookbackDays) -> 
    <<"LOOKBACK">>;
reconvert(stipulationType, explicitLotIdentifier) -> 
    <<"LOT">>;
reconvert(stipulationType, lotVariance) -> 
    <<"LOTVAR">>;
reconvert(stipulationType, maturityYearAndMonth) -> 
    <<"MAT">>;
reconvert(stipulationType, maturityRange) -> 
    <<"MATURITY">>;
reconvert(stipulationType, maximumSubstitutions) -> 
    <<"MAXSUBS">>;
reconvert(stipulationType, minimumQuantity) -> 
    <<"MINQTY">>;
reconvert(stipulationType, minimumIncrement) -> 
    <<"MININCR">>;
reconvert(stipulationType, minimumDenomination) -> 
    <<"MINDNOM">>;
reconvert(stipulationType, paymentFrequency) -> 
    <<"PAYFREQ">>;
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
reconvert(stipulationType, priceRange) -> 
    <<"PRICE">>;
reconvert(stipulationType, pricingFrequency) -> 
    <<"PRICEFREQ">>;
reconvert(stipulationType, productionYear) -> 
    <<"PROD">>;
reconvert(stipulationType, callProtection) -> 
    <<"PROTECT">>;
reconvert(stipulationType, purpose) -> 
    <<"PURPOSE">>;
reconvert(stipulationType, benchmarkPriceSource) -> 
    <<"PXSOURCE">>;
reconvert(stipulationType, ratingSourceAndRange) -> 
    <<"RATING">>;
reconvert(stipulationType, typeOfRedemption) -> 
    <<"REDEMPTION">>;
reconvert(stipulationType, restricted) -> 
    <<"RESTRICTED">>;
reconvert(stipulationType, marketSector) -> 
    <<"SECTOR">>;
reconvert(stipulationType, securityTypeIncludedOrExcluded) -> 
    <<"SECTYPE">>;
reconvert(stipulationType, structure) -> 
    <<"STRUCT">>;
reconvert(stipulationType, substitutionsFrequency) -> 
    <<"SUBSFREQ">>;
reconvert(stipulationType, substitutionsLeft) -> 
    <<"SUBSLEFT">>;
reconvert(stipulationType, freeformText) -> 
    <<"TEXT">>;
reconvert(stipulationType, tradeVariance) -> 
    <<"TRDVAR">>;
reconvert(stipulationType, weightedAverageCoupon) -> 
    <<"WAC">>;
reconvert(stipulationType, weightedAverageLifeCoupon) -> 
    <<"WAL">>;
reconvert(stipulationType, weightedAverageLoanAge) -> 
    <<"WALA">>;
reconvert(stipulationType, weightedAverageMaturity) -> 
    <<"WAM">>;
reconvert(stipulationType, wholePool) -> 
    <<"WHOLE">>;
reconvert(stipulationType, yieldRange) -> 
    <<"YIELD">>;
reconvert(yieldType, afterTaxYield) -> 
    <<"AFTERTAX">>;
reconvert(yieldType, annualYield) -> 
    <<"ANNUAL">>;
reconvert(yieldType, yieldAtIssue) -> 
    <<"ATISSUE">>;
reconvert(yieldType, yieldToAverageMaturity) -> 
    <<"AVGMATURITY">>;
reconvert(yieldType, bookYield) -> 
    <<"BOOK">>;
reconvert(yieldType, yieldToNextCall) -> 
    <<"CALL">>;
reconvert(yieldType, yieldChangeSinceClose) -> 
    <<"CHANGE">>;
reconvert(yieldType, closingYield) -> 
    <<"CLOSE">>;
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
reconvert(yieldType, mostRecentClosingYield) -> 
    <<"LASTCLOSE">>;
reconvert(yieldType, closingYieldMostRecentMonth) -> 
    <<"LASTMONTH">>;
reconvert(yieldType, closingYieldMostRecentQuarter) -> 
    <<"LASTQUARTER">>;
reconvert(yieldType, closingYieldMostRecentYear) -> 
    <<"LASTYEAR">>;
reconvert(yieldType, yieldToLongestAverageLife) -> 
    <<"LONGAVGLIFE">>;
reconvert(yieldType, markToMarketYield) -> 
    <<"MARK">>;
reconvert(yieldType, yieldToMaturity) -> 
    <<"MATURITY">>;
reconvert(yieldType, yieldToNextRefund) -> 
    <<"NEXTREFUND">>;
reconvert(yieldType, openAverageYield) -> 
    <<"OPENAVG">>;
reconvert(yieldType, yieldToNextPut) -> 
    <<"PUT">>;
reconvert(yieldType, previousCloseYield) -> 
    <<"PREVCLOSE">>;
reconvert(yieldType, proceedsYield) -> 
    <<"PROCEEDS">>;
reconvert(yieldType, semiAnnualYield) -> 
    <<"SEMIANNUAL">>;
reconvert(yieldType, yieldToShortestAverageLife) -> 
    <<"SHORTAVGLIFE">>;
reconvert(yieldType, simpleYield) -> 
    <<"SIMPLE">>;
reconvert(yieldType, taxEquivalentYield) -> 
    <<"TAXEQUIV">>;
reconvert(yieldType, yieldToTenderDate) -> 
    <<"TENDER">>;
reconvert(yieldType, trueYield) -> 
    <<"TRUE">>;
reconvert(yieldType, yieldValueOf132) -> 
    <<"VALUE1/32">>;
reconvert(yieldType, yieldToWorst) -> 
    <<"WORST">>;
reconvert(redemptionDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(underlyingCouponPaymentDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(underlyingIssueDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(underlyingRepurchaseTerm, Int) -> 
    erlang:integer_to_list(Int);
reconvert(underlyingRedemptionDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(legCouponPaymentDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(legIssueDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(legRepurchaseTerm, Int) -> 
    erlang:integer_to_list(Int);
reconvert(legRedemptionDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(tradedFlatSwitch, tradedFlat) -> 
    <<"Y">>;
reconvert(tradedFlatSwitch, notTradedFlat) -> 
    <<"N">>;
reconvert(basisFeatureDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
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
reconvert(aggregatedBook, bookEntriesToBeAggregated) -> 
    <<"Y">>;
reconvert(aggregatedBook, bookEntriesShouldNotBeAggregated) -> 
    <<"N">>;
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
reconvert(mDEntryType, imbalance) -> 
    <<"A">>;
reconvert(mDEntryType, tradeVolume) -> 
    <<"B">>;
reconvert(mDEntryType, openInterest) -> 
    <<"C">>;
reconvert(mDEntryDate, DateTime) -> 
    fix_convertor_utils:utcdate2fixstring(DateTime);
reconvert(mDEntryTime, DateTime) -> 
    fix_convertor_utils:utctime2fixstring(DateTime);
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
reconvert(tradeCondition, imbalanceMoreBuyers) -> 
    <<"P">>;
reconvert(tradeCondition, imbalanceMoreSellers) -> 
    <<"Q">>;
reconvert(tradeCondition, openingPrice) -> 
    <<"R">>;
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
reconvert(mDReqRejReason, unsupportedTradingSessionID) -> 
    <<"9">>;
reconvert(mDReqRejReason, unsupportedScope) -> 
    <<"A">>;
reconvert(mDReqRejReason, unsupportedOpenCloseSettleFlag) -> 
    <<"B">>;
reconvert(mDReqRejReason, unsupportedMDImplicitDelete) -> 
    <<"C">>;
reconvert(deleteReason, cancellation) -> 
    <<"0">>;
reconvert(deleteReason, error) -> 
    <<"1">>;
reconvert(openCloseSettlFlag, dailyOpen) -> 
    <<"0">>;
reconvert(openCloseSettlFlag, sessionOpen) -> 
    <<"1">>;
reconvert(openCloseSettlFlag, deliverySettlementEntry) -> 
    <<"2">>;
reconvert(openCloseSettlFlag, expectedEntry) -> 
    <<"3">>;
reconvert(openCloseSettlFlag, entryFromPreviousBusinessDay) -> 
    <<"4">>;
reconvert(openCloseSettlFlag, theoreticalPriceValue) -> 
    <<"5">>;
reconvert(sellerDays, Int) -> 
    erlang:integer_to_list(Int);
reconvert(mDEntryPositionNo, Int) -> 
    erlang:integer_to_list(Int);
reconvert(financialStatus, bankrupt) -> 
    <<"1">>;
reconvert(financialStatus, pendingDelisting) -> 
    <<"2">>;
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
reconvert(quoteStatus, accepted) -> 
    <<"0">>;
reconvert(quoteStatus, cancelForSymbol) -> 
    <<"1">>;
reconvert(quoteStatus, canceledForSecurityType) -> 
    <<"2">>;
reconvert(quoteStatus, canceledForUnderlying) -> 
    <<"3">>;
reconvert(quoteStatus, canceledAll) -> 
    <<"4">>;
reconvert(quoteStatus, rejected) -> 
    <<"5">>;
reconvert(quoteStatus, removedFromMarket) -> 
    <<"6">>;
reconvert(quoteStatus, expired) -> 
    <<"7">>;
reconvert(quoteStatus, queryqueryFix) -> 
    <<"8">>;
reconvert(quoteStatus, quoteNotFound) -> 
    <<"9">>;
reconvert(quoteStatus, pending) -> 
    <<"10">>;
reconvert(quoteStatus, pass) -> 
    <<"11">>;
reconvert(quoteStatus, lockedMarketWarning) -> 
    <<"12">>;
reconvert(quoteStatus, crossMarketWarning) -> 
    <<"13">>;
reconvert(quoteStatus, canceledDueToLockMarket) -> 
    <<"14">>;
reconvert(quoteStatus, canceledDueToCrossMarket) -> 
    <<"15">>;
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
reconvert(quoteRejectReason, other) -> 
    <<"99">>;
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
reconvert(totNoQuoteEntries, Int) -> 
    erlang:integer_to_list(Int);
reconvert(underlyingMaturityMonthYear, DateTime) -> 
    fix_convertor_utils:monthyear2fixstring(DateTime);
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
reconvert(securityResponseType, rejectSecurityProposal) -> 
    <<"5">>;
reconvert(securityResponseType, cannotMatchSelectionCriteria) -> 
    <<"6">>;
reconvert(unsolicitedIndicator, messageIsBeingSentUnsolicited) -> 
    <<"Y">>;
reconvert(unsolicitedIndicator, messageIsBeingSentAsAResultOfAPriorRequest) -> 
    <<"N">>;
reconvert(securityTradingStatus, openingDelay) -> 
    <<"1">>;
reconvert(securityTradingStatus, tradingHalt) -> 
    <<"2">>;
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
reconvert(securityTradingStatus, unknownOrInvalid) -> 
    <<"20">>;
reconvert(securityTradingStatus, preOpen) -> 
    <<"21">>;
reconvert(securityTradingStatus, openingRotation) -> 
    <<"22">>;
reconvert(securityTradingStatus, fastMarket) -> 
    <<"23">>;
reconvert(haltReason, orderImbalance) -> 
    <<"I">>;
reconvert(haltReason, equipmentChangeover) -> 
    <<"X">>;
reconvert(haltReason, newsPending) -> 
    <<"P">>;
reconvert(haltReason, newsDissemination) -> 
    <<"D">>;
reconvert(haltReason, orderInflux) -> 
    <<"E">>;
reconvert(haltReason, additionalInformation) -> 
    <<"M">>;
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
reconvert(tradSesStatus, unknown) -> 
    <<"0">>;
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
reconvert(tradSesStatus, requestRejected) -> 
    <<"6">>;
reconvert(tradSesStartTime, DateTime) -> 
    fix_convertor_utils:datetime_to_fixstring(DateTime);
reconvert(tradSesOpenTime, DateTime) -> 
    fix_convertor_utils:datetime_to_fixstring(DateTime);
reconvert(tradSesPreCloseTime, DateTime) -> 
    fix_convertor_utils:datetime_to_fixstring(DateTime);
reconvert(tradSesCloseTime, DateTime) -> 
    fix_convertor_utils:datetime_to_fixstring(DateTime);
reconvert(tradSesEndTime, DateTime) -> 
    fix_convertor_utils:datetime_to_fixstring(DateTime);
reconvert(numberOfOrders, Int) -> 
    erlang:integer_to_list(Int);
reconvert(messageEncoding, iSO2022JP) -> 
    <<"ISO-2022-JP">>;
reconvert(messageEncoding, eUCJP) -> 
    <<"EUC-JP">>;
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
reconvert(quoteSetValidUntilTime, DateTime) -> 
    fix_convertor_utils:datetime_to_fixstring(DateTime);
reconvert(quoteEntryRejectReason, Int) -> 
    erlang:integer_to_list(Int);
reconvert(lastMsgSeqNumProcessed, Int) -> 
    erlang:integer_to_list(Int);
reconvert(refTagID, Int) -> 
    erlang:integer_to_list(Int);
reconvert(sessionRejectReason, invalidTagNumber) -> 
    <<"0">>;
reconvert(sessionRejectReason, requiredTagMissing) -> 
    <<"1">>;
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
reconvert(sessionRejectReason, sendingTimeAccuracyProblem) -> 
    <<"10">>;
reconvert(sessionRejectReason, invalidMsgType) -> 
    <<"11">>;
reconvert(sessionRejectReason, xMLValidationError) -> 
    <<"12">>;
reconvert(sessionRejectReason, tagAppearsMoreThanOnce) -> 
    <<"13">>;
reconvert(sessionRejectReason, tagSpecifiedOutOfRequiredOrder) -> 
    <<"14">>;
reconvert(sessionRejectReason, repeatingGroupFieldsOutOfOrder) -> 
    <<"15">>;
reconvert(sessionRejectReason, incorrectNumInGroupCountForRepeatingGroup) -> 
    <<"16">>;
reconvert(sessionRejectReason, non) -> 
    <<"17">>;
reconvert(sessionRejectReason, other) -> 
    <<"99">>;
reconvert(bidRequestTransType, new) -> 
    <<"N">>;
reconvert(bidRequestTransType, cancel) -> 
    <<"C">>;
reconvert(solicitedFlag, wasSolicited) -> 
    <<"Y">>;
reconvert(solicitedFlag, wasNotSolicited) -> 
    <<"N">>;
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
reconvert(execRestatementReason, cancelOnTradingHalt) -> 
    <<"6">>;
reconvert(execRestatementReason, cancelOnSystemFailure) -> 
    <<"7">>;
reconvert(execRestatementReason, market) -> 
    <<"8">>;
reconvert(execRestatementReason, canceled) -> 
    <<"9">>;
reconvert(execRestatementReason, warehouseRecap) -> 
    <<"10">>;
reconvert(execRestatementReason, other) -> 
    <<"99">>;
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
reconvert(businessRejectReason, notAuthorized) -> 
    <<"6">>;
reconvert(businessRejectReason, deliverToFirmNotAvailableAtThisTime) -> 
    <<"7">>;
reconvert(noContraBrokers, Int) -> 
    erlang:integer_to_list(Int);
reconvert(maxMessageSize, Int) -> 
    erlang:integer_to_list(Int);
reconvert(noMsgTypes, Int) -> 
    erlang:integer_to_list(Int);
reconvert(msgDirection, send) -> 
    <<"S">>;
reconvert(msgDirection, receivereceiveFix) -> 
    <<"R">>;
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
reconvert(discretionInst, relatedToVWAP) -> 
    <<"6">>;
reconvert(totNoRelatedSym, Int) -> 
    erlang:integer_to_list(Int);
reconvert(bidType, nonDisclosed) -> 
    <<"1">>;
reconvert(bidType, disclosed) -> 
    <<"2">>;
reconvert(bidType, noBiddingProcess) -> 
    <<"3">>;
reconvert(numTickets, Int) -> 
    erlang:integer_to_list(Int);
reconvert(noBidDescriptors, Int) -> 
    erlang:integer_to_list(Int);
reconvert(bidDescriptorType, sector) -> 
    <<"1">>;
reconvert(bidDescriptorType, countrycountryFix) -> 
    <<"2">>;
reconvert(bidDescriptorType, index) -> 
    <<"3">>;
reconvert(sideValueInd, sideValue1) -> 
    <<"1">>;
reconvert(sideValueInd, sideValue2) -> 
    <<"2">>;
reconvert(liquidityIndType, fiveDayMovingAverage) -> 
    <<"1">>;
reconvert(liquidityIndType, twentyDayMovingAverage) -> 
    <<"2">>;
reconvert(liquidityIndType, normalMarketSize) -> 
    <<"3">>;
reconvert(liquidityIndType, other) -> 
    <<"4">>;
reconvert(exchangeForPhysical, true) -> 
    <<"Y">>;
reconvert(exchangeForPhysical, false) -> 
    <<"N">>;
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
reconvert(bidTradeType, riskTrade) -> 
    <<"R">>;
reconvert(bidTradeType, vWAPGuarantee) -> 
    <<"G">>;
reconvert(bidTradeType, agency) -> 
    <<"A">>;
reconvert(bidTradeType, guaranteedClose) -> 
    <<"J">>;
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
reconvert(priceType, discount) -> 
    <<"4">>;
reconvert(priceType, premium) -> 
    <<"5">>;
reconvert(priceType, spread) -> 
    <<"6">>;
reconvert(priceType, tEDPrice) -> 
    <<"7">>;
reconvert(priceType, tEDYield) -> 
    <<"8">>;
reconvert(priceType, yield) -> 
    <<"9">>;
reconvert(priceType, fixedCabinetTradePrice) -> 
    <<"10">>;
reconvert(priceType, variableCabinetTradePrice) -> 
    <<"11">>;
reconvert(gTBookingInst, bookOutAllTradesOnDayOfExecution) -> 
    <<"0">>;
reconvert(gTBookingInst, accumulateUntilFilledOrExpired) -> 
    <<"1">>;
reconvert(gTBookingInst, accumulateUntilVerballlyNotifiedOtherwise) -> 
    <<"2">>;
reconvert(noStrikes, Int) -> 
    erlang:integer_to_list(Int);
reconvert(listStatusType, ack) -> 
    <<"1">>;
reconvert(listStatusType, response) -> 
    <<"2">>;
reconvert(listStatusType, timed) -> 
    <<"3">>;
reconvert(listStatusType, execStarted) -> 
    <<"4">>;
reconvert(listStatusType, allDone) -> 
    <<"5">>;
reconvert(listStatusType, alert) -> 
    <<"6">>;
reconvert(netGrossInd, net) -> 
    <<"1">>;
reconvert(netGrossInd, gross) -> 
    <<"2">>;
reconvert(listOrderStatus, inBiddingProcess) -> 
    <<"1">>;
reconvert(listOrderStatus, receivedForExecution) -> 
    <<"2">>;
reconvert(listOrderStatus, executing) -> 
    <<"3">>;
reconvert(listOrderStatus, cancelling) -> 
    <<"4">>;
reconvert(listOrderStatus, alert) -> 
    <<"5">>;
reconvert(listOrderStatus, allDone) -> 
    <<"6">>;
reconvert(listOrderStatus, reject) -> 
    <<"7">>;
reconvert(expireDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(listExecInstType, immediate) -> 
    <<"1">>;
reconvert(listExecInstType, waitForInstruction) -> 
    <<"2">>;
reconvert(listExecInstType, sellDriven) -> 
    <<"3">>;
reconvert(listExecInstType, buyDrivenCashTopUp) -> 
    <<"4">>;
reconvert(listExecInstType, buyDrivenCashWithdraw) -> 
    <<"5">>;
reconvert(cxlRejResponseTo, orderCancelRequest) -> 
    <<"1">>;
reconvert(cxlRejResponseTo, orderCancel) -> 
    <<"2">>;
reconvert(contraTradeTime, DateTime) -> 
    fix_convertor_utils:datetime_to_fixstring(DateTime);
reconvert(liquidityNumSecurities, Int) -> 
    erlang:integer_to_list(Int);
reconvert(multiLegReportingType, singleSecurity) -> 
    <<"1">>;
reconvert(multiLegReportingType, individualLegOfAMultiLegSecurity) -> 
    <<"2">>;
reconvert(multiLegReportingType, multiLegSecurity) -> 
    <<"3">>;
reconvert(strikeTime, DateTime) -> 
    fix_convertor_utils:datetime_to_fixstring(DateTime);
reconvert(encodedListStatusTextLen, Int) -> 
    erlang:integer_to_list(Int);
reconvert(partyIDSource, bIC) -> 
    <<"B">>;
reconvert(partyIDSource, generalIdentifier) -> 
    <<"C">>;
reconvert(partyIDSource, proprietary) -> 
    <<"D">>;
reconvert(partyIDSource, iSOCountryCode) -> 
    <<"E">>;
reconvert(partyIDSource, settlementEntityLocation) -> 
    <<"F">>;
reconvert(partyIDSource, mIC) -> 
    <<"G">>;
reconvert(partyIDSource, cSDParticipant) -> 
    <<"H">>;
reconvert(partyIDSource, koreanInvestorID) -> 
    <<"1">>;
reconvert(partyIDSource, taiwaneseForeignInvestorID) -> 
    <<"2">>;
reconvert(partyIDSource, taiwaneseTradingAcct) -> 
    <<"3">>;
reconvert(partyIDSource, malaysianCentralDepository) -> 
    <<"4">>;
reconvert(partyIDSource, chineseInvestorID) -> 
    <<"5">>;
reconvert(partyIDSource, uKNationalInsuranceOrPensionNumber) -> 
    <<"6">>;
reconvert(partyIDSource, uSSocialSecurityNumber) -> 
    <<"7">>;
reconvert(partyIDSource, uSEmployerOrTaxIDNumber) -> 
    <<"8">>;
reconvert(partyIDSource, australianBusinessNumber) -> 
    <<"9">>;
reconvert(partyIDSource, australianTaxFileNumber) -> 
    <<"A">>;
reconvert(partyIDSource, iSITCAcronym) -> 
    <<"I">>;
reconvert(partyRole, executingFirm) -> 
    <<"1">>;
reconvert(partyRole, brokerOfCredit) -> 
    <<"2">>;
reconvert(partyRole, clientID) -> 
    <<"3">>;
reconvert(partyRole, clearingFirm) -> 
    <<"4">>;
reconvert(partyRole, investorID) -> 
    <<"5">>;
reconvert(partyRole, introducingFirm) -> 
    <<"6">>;
reconvert(partyRole, enteringFirm) -> 
    <<"7">>;
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
reconvert(partyRole, giveupClearingFirm) -> 
    <<"14">>;
reconvert(partyRole, correspondantClearingFirm) -> 
    <<"15">>;
reconvert(partyRole, executingSystem) -> 
    <<"16">>;
reconvert(partyRole, contraFirm) -> 
    <<"17">>;
reconvert(partyRole, contraClearingFirm) -> 
    <<"18">>;
reconvert(partyRole, sponsoringFirm) -> 
    <<"19">>;
reconvert(partyRole, underlyingContraFirm) -> 
    <<"20">>;
reconvert(partyRole, clearingOrganization) -> 
    <<"21">>;
reconvert(partyRole, exchange) -> 
    <<"22">>;
reconvert(partyRole, customerAccount) -> 
    <<"24">>;
reconvert(partyRole, correspondentClearingOrganization) -> 
    <<"25">>;
reconvert(partyRole, correspondentBroker) -> 
    <<"26">>;
reconvert(partyRole, buyer) -> 
    <<"27">>;
reconvert(partyRole, custodian) -> 
    <<"28">>;
reconvert(partyRole, intermediary) -> 
    <<"29">>;
reconvert(partyRole, agent) -> 
    <<"30">>;
reconvert(partyRole, subCustodian) -> 
    <<"31">>;
reconvert(partyRole, beneficiary) -> 
    <<"32">>;
reconvert(partyRole, interestedParty) -> 
    <<"33">>;
reconvert(partyRole, regulatoryBody) -> 
    <<"34">>;
reconvert(partyRole, liquidityProvider) -> 
    <<"35">>;
reconvert(partyRole, enteringTrader) -> 
    <<"36">>;
reconvert(partyRole, contraTrader) -> 
    <<"37">>;
reconvert(partyRole, positionAccount) -> 
    <<"38">>;
reconvert(noPartyIDs, Int) -> 
    erlang:integer_to_list(Int);
reconvert(noSecurityAltID, Int) -> 
    erlang:integer_to_list(Int);
reconvert(noUnderlyingSecurityAltID, Int) -> 
    erlang:integer_to_list(Int);
reconvert(produkt, aGENCY) -> 
    <<"1">>;
reconvert(produkt, cOMMODITY) -> 
    <<"2">>;
reconvert(produkt, cORPORATE) -> 
    <<"3">>;
reconvert(produkt, cURRENCY) -> 
    <<"4">>;
reconvert(produkt, eQUITY) -> 
    <<"5">>;
reconvert(produkt, gOVERNMENT) -> 
    <<"6">>;
reconvert(produkt, iNDEX) -> 
    <<"7">>;
reconvert(produkt, lOAN) -> 
    <<"8">>;
reconvert(produkt, mONEYMARKET) -> 
    <<"9">>;
reconvert(produkt, mORTGAGE) -> 
    <<"10">>;
reconvert(produkt, mUNICIPAL) -> 
    <<"11">>;
reconvert(produkt, oTHER) -> 
    <<"12">>;
reconvert(produkt, fINANCING) -> 
    <<"13">>;
reconvert(underlyingProduct, Int) -> 
    erlang:integer_to_list(Int);
reconvert(testMessageIndicator, true) -> 
    <<"Y">>;
reconvert(testMessageIndicator, fales) -> 
    <<"N">>;
reconvert(roundingDirection, roundToNearest) -> 
    <<"0">>;
reconvert(roundingDirection, roundDown) -> 
    <<"1">>;
reconvert(roundingDirection, roundUp) -> 
    <<"2">>;
reconvert(noRegistDtls, Int) -> 
    erlang:integer_to_list(Int);
reconvert(distribPaymentMethod, cREST) -> 
    <<"1">>;
reconvert(distribPaymentMethod, nSCC) -> 
    <<"2">>;
reconvert(distribPaymentMethod, euroclear) -> 
    <<"3">>;
reconvert(distribPaymentMethod, clearstream) -> 
    <<"4">>;
reconvert(distribPaymentMethod, cheque) -> 
    <<"5">>;
reconvert(distribPaymentMethod, telegraphicTransfer) -> 
    <<"6">>;
reconvert(distribPaymentMethod, fedWire) -> 
    <<"7">>;
reconvert(distribPaymentMethod, directCredit) -> 
    <<"8">>;
reconvert(distribPaymentMethod, aCHCredit) -> 
    <<"9">>;
reconvert(distribPaymentMethod, bPAY) -> 
    <<"10">>;
reconvert(distribPaymentMethod, highValueClearingSystemHVACS) -> 
    <<"11">>;
reconvert(distribPaymentMethod, reinvestInFund) -> 
    <<"12">>;
reconvert(cancellationRights, yes) -> 
    <<"Y">>;
reconvert(cancellationRights, noExecutionOnly) -> 
    <<"N">>;
reconvert(cancellationRights, noWaiverAgreement) -> 
    <<"M">>;
reconvert(cancellationRights, noInstitutional) -> 
    <<"O">>;
reconvert(moneyLaunderingStatus, passed) -> 
    <<"Y">>;
reconvert(moneyLaunderingStatus, notChecked) -> 
    <<"N">>;
reconvert(moneyLaunderingStatus, exemptBelowLimit) -> 
    <<"1">>;
reconvert(moneyLaunderingStatus, exemptMoneyType) -> 
    <<"2">>;
reconvert(moneyLaunderingStatus, exemptAuthorised) -> 
    <<"3">>;
reconvert(transBkdTime, DateTime) -> 
    fix_convertor_utils:datetime_to_fixstring(DateTime);
reconvert(execPriceType, bidPrice) -> 
    <<"B">>;
reconvert(execPriceType, creationPrice) -> 
    <<"C">>;
reconvert(execPriceType, creationPricePlusAdjustmentPercent) -> 
    <<"D">>;
reconvert(execPriceType, creationPricePlusAdjustmentAmount) -> 
    <<"E">>;
reconvert(execPriceType, offerPrice) -> 
    <<"O">>;
reconvert(execPriceType, offerPriceMinusAdjustmentPercent) -> 
    <<"P">>;
reconvert(execPriceType, offerPriceMinusAdjustmentAmount) -> 
    <<"Q">>;
reconvert(execPriceType, singlePrice) -> 
    <<"S">>;
reconvert(dateOfBirth, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(tradeReportTransType, Int) -> 
    erlang:integer_to_list(Int);
reconvert(cardExpDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(paymentMethod, cREST) -> 
    <<"1">>;
reconvert(paymentMethod, nSCC) -> 
    <<"2">>;
reconvert(paymentMethod, euroclear) -> 
    <<"3">>;
reconvert(paymentMethod, clearstream) -> 
    <<"4">>;
reconvert(paymentMethod, cheque) -> 
    <<"5">>;
reconvert(paymentMethod, telegraphicTransfer) -> 
    <<"6">>;
reconvert(paymentMethod, fedWire) -> 
    <<"7">>;
reconvert(paymentMethod, debitCard) -> 
    <<"8">>;
reconvert(paymentMethod, directDebit) -> 
    <<"9">>;
reconvert(paymentMethod, directCredit) -> 
    <<"10">>;
reconvert(paymentMethod, creditCard) -> 
    <<"11">>;
reconvert(paymentMethod, aCHDebit) -> 
    <<"12">>;
reconvert(paymentMethod, aCHCredit) -> 
    <<"13">>;
reconvert(paymentMethod, bPAY) -> 
    <<"14">>;
reconvert(paymentMethod, highValueClearingSystem) -> 
    <<"15">>;
reconvert(taxAdvantageType, none) -> 
    <<"0">>;
reconvert(taxAdvantageType, maxiISA) -> 
    <<"1">>;
reconvert(taxAdvantageType, tESSA) -> 
    <<"2">>;
reconvert(taxAdvantageType, miniCashISA) -> 
    <<"3">>;
reconvert(taxAdvantageType, miniStocksAndSharesISA) -> 
    <<"4">>;
reconvert(taxAdvantageType, miniInsuranceISA) -> 
    <<"5">>;
reconvert(taxAdvantageType, currentYearPayment) -> 
    <<"6">>;
reconvert(taxAdvantageType, priorYearPayment) -> 
    <<"7">>;
reconvert(taxAdvantageType, assetTransfer) -> 
    <<"8">>;
reconvert(taxAdvantageType, employeePriorYear) -> 
    <<"9">>;
reconvert(taxAdvantageType, employeeCurrentYear) -> 
    <<"10">>;
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
reconvert(taxAdvantageType, iRA) -> 
    <<"16">>;
reconvert(taxAdvantageType, iRARollover) -> 
    <<"17">>;
reconvert(taxAdvantageType, kEOGH) -> 
    <<"18">>;
reconvert(taxAdvantageType, profitSharingPlan) -> 
    <<"19">>;
reconvert(taxAdvantageType, uS401K) -> 
    <<"20">>;
reconvert(taxAdvantageType, selfDirectedIRA) -> 
    <<"21">>;
reconvert(taxAdvantageType, uS403b) -> 
    <<"22">>;
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
reconvert(fundRenewWaiv, yes) -> 
    <<"Y">>;
reconvert(fundRenewWaiv, no) -> 
    <<"N">>;
reconvert(cardStartDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(paymentDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(registStatus, accepted) -> 
    <<"A">>;
reconvert(registStatus, rejected) -> 
    <<"R">>;
reconvert(registStatus, held) -> 
    <<"H">>;
reconvert(registStatus, reminder) -> 
    <<"N">>;
reconvert(registRejReasonCode, invalidAccountType) -> 
    <<"1">>;
reconvert(registRejReasonCode, invalidTaxExemptType) -> 
    <<"2">>;
reconvert(registRejReasonCode, invalidOwnershipType) -> 
    <<"3">>;
reconvert(registRejReasonCode, noRegDetails) -> 
    <<"4">>;
reconvert(registRejReasonCode, invalidRegSeqNo) -> 
    <<"5">>;
reconvert(registRejReasonCode, invalidRegDetails) -> 
    <<"6">>;
reconvert(registRejReasonCode, invalidMailingDetails) -> 
    <<"7">>;
reconvert(registRejReasonCode, invalidMailingInstructions) -> 
    <<"8">>;
reconvert(registRejReasonCode, invalidInvestorID) -> 
    <<"9">>;
reconvert(registRejReasonCode, invalidInvestorIDSource) -> 
    <<"10">>;
reconvert(registRejReasonCode, invalidDateOfBirth) -> 
    <<"11">>;
reconvert(registRejReasonCode, invalidCountry) -> 
    <<"12">>;
reconvert(registRejReasonCode, invalidDistribInstns) -> 
    <<"13">>;
reconvert(registRejReasonCode, invalidPercentage) -> 
    <<"14">>;
reconvert(registRejReasonCode, invalidPaymentMethod) -> 
    <<"15">>;
reconvert(registRejReasonCode, invalidAccountName) -> 
    <<"16">>;
reconvert(registRejReasonCode, invalidAgentCode) -> 
    <<"17">>;
reconvert(registRejReasonCode, invalidAccountNum) -> 
    <<"18">>;
reconvert(registRejReasonCode, other) -> 
    <<"99">>;
reconvert(noDistribInsts, Int) -> 
    erlang:integer_to_list(Int);
reconvert(registTransType, new) -> 
    <<"0">>;
reconvert(registTransType, replace) -> 
    <<"1">>;
reconvert(registTransType, cancel) -> 
    <<"2">>;
reconvert(execValuationPoint, DateTime) -> 
    fix_convertor_utils:datetime_to_fixstring(DateTime);
reconvert(ownershipType, jointInvestors) -> 
    <<"J">>;
reconvert(ownershipType, tenantsInCommon) -> 
    <<"T">>;
reconvert(ownershipType, jointTrustees) -> 
    <<"2">>;
reconvert(noContAmts, Int) -> 
    erlang:integer_to_list(Int);
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
reconvert(contAmtType, fundBasedRenewalCommissionOnOrder) -> 
    <<"13">>;
reconvert(contAmtType, fundBasedRenewalCommissionOnFund) -> 
    <<"14">>;
reconvert(contAmtType, netSettlementAmount) -> 
    <<"15">>;
reconvert(ownerType, individualInvestor) -> 
    <<"1">>;
reconvert(ownerType, publicCompany) -> 
    <<"2">>;
reconvert(ownerType, privateCompany) -> 
    <<"3">>;
reconvert(ownerType, individualTrustee) -> 
    <<"4">>;
reconvert(ownerType, companyTrustee) -> 
    <<"5">>;
reconvert(ownerType, pensionPlan) -> 
    <<"6">>;
reconvert(ownerType, custodianUnderGiftsToMinorsAct) -> 
    <<"7">>;
reconvert(ownerType, trusts) -> 
    <<"8">>;
reconvert(ownerType, fiduciaries) -> 
    <<"9">>;
reconvert(ownerType, networkingSubAccount) -> 
    <<"10">>;
reconvert(ownerType, nonProfitOrganization) -> 
    <<"11">>;
reconvert(ownerType, corporateBody) -> 
    <<"12">>;
reconvert(ownerType, nominee) -> 
    <<"13">>;
reconvert(orderCapacity, agency) -> 
    <<"A">>;
reconvert(orderCapacity, proprietary) -> 
    <<"G">>;
reconvert(orderCapacity, individual) -> 
    <<"I">>;
reconvert(orderCapacity, principal) -> 
    <<"P">>;
reconvert(orderCapacity, risklessPrincipal) -> 
    <<"R">>;
reconvert(orderCapacity, agentForOtherMember) -> 
    <<"W">>;
reconvert(orderRestrictions, programTrade) -> 
    <<"1">>;
reconvert(orderRestrictions, indexArbitrage) -> 
    <<"2">>;
reconvert(orderRestrictions, nonIndexArbitrage) -> 
    <<"3">>;
reconvert(orderRestrictions, competingMarketMaker) -> 
    <<"4">>;
reconvert(orderRestrictions, actingAsMarketMakerOrSpecialistInSecurity) -> 
    <<"5">>;
reconvert(orderRestrictions, actingAsMarketMakerOrSpecialistInUnderlying) -> 
    <<"6">>;
reconvert(orderRestrictions, foreignEntity) -> 
    <<"7">>;
reconvert(orderRestrictions, externalMarketParticipant) -> 
    <<"8">>;
reconvert(orderRestrictions, externalInterConnectedMarketLinkage) -> 
    <<"9">>;
reconvert(orderRestrictions, risklessArbitrage) -> 
    <<"A">>;
reconvert(massCancelRequestType, cancelOrdersForASecurity) -> 
    <<"1">>;
reconvert(massCancelRequestType, cancelOrdersForAnUnderlyingSecurity) -> 
    <<"2">>;
reconvert(massCancelRequestType, cancelOrdersForAProduct) -> 
    <<"3">>;
reconvert(massCancelRequestType, cancelOrdersForACFICode) -> 
    <<"4">>;
reconvert(massCancelRequestType, cancelOrdersForASecurityType) -> 
    <<"5">>;
reconvert(massCancelRequestType, cancelOrdersForATradingSession) -> 
    <<"6">>;
reconvert(massCancelRequestType, cancelAllOrders) -> 
    <<"7">>;
reconvert(massCancelResponse, cancelRequestRejected) -> 
    <<"0">>;
reconvert(massCancelResponse, cancelOrdersForASecurity) -> 
    <<"1">>;
reconvert(massCancelResponse, cancelOrdersForAnUnderlyingSecurity) -> 
    <<"2">>;
reconvert(massCancelResponse, cancelOrdersForAProduct) -> 
    <<"3">>;
reconvert(massCancelResponse, cancelOrdersForACFICode) -> 
    <<"4">>;
reconvert(massCancelResponse, cancelOrdersForASecurityType) -> 
    <<"5">>;
reconvert(massCancelResponse, cancelOrdersForATradingSession) -> 
    <<"6">>;
reconvert(massCancelResponse, cancelAllOrders) -> 
    <<"7">>;
reconvert(massCancelRejectReason, massCancelNotSupported) -> 
    <<"0">>;
reconvert(massCancelRejectReason, invalidOrUnknownSecurity) -> 
    <<"1">>;
reconvert(massCancelRejectReason, invalidOrUnkownUnderlyingSecurity) -> 
    <<"2">>;
reconvert(massCancelRejectReason, invalidOrUnknownProduct) -> 
    <<"3">>;
reconvert(massCancelRejectReason, invalidOrUnknownCFICode) -> 
    <<"4">>;
reconvert(massCancelRejectReason, invalidOrUnknownSecurityType) -> 
    <<"5">>;
reconvert(massCancelRejectReason, invalidOrUnknownTradingSession) -> 
    <<"6">>;
reconvert(massCancelRejectReason, other) -> 
    <<"99">>;
reconvert(totalAffectedOrders, Int) -> 
    erlang:integer_to_list(Int);
reconvert(noAffectedOrders, Int) -> 
    erlang:integer_to_list(Int);
reconvert(quoteType, indicative) -> 
    <<"0">>;
reconvert(quoteType, tradeable) -> 
    <<"1">>;
reconvert(quoteType, restrictedTradeable) -> 
    <<"2">>;
reconvert(quoteType, counter) -> 
    <<"3">>;
reconvert(nestedPartyRole, Int) -> 
    erlang:integer_to_list(Int);
reconvert(noNestedPartyIDs, Int) -> 
    erlang:integer_to_list(Int);
reconvert(maturityDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(underlyingMaturityDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(cashMargin, cash) -> 
    <<"1">>;
reconvert(cashMargin, marginOpen) -> 
    <<"2">>;
reconvert(cashMargin, marginClose) -> 
    <<"3">>;
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
reconvert(crossPrioritization, none) -> 
    <<"0">>;
reconvert(crossPrioritization, buySideIsPrioritized) -> 
    <<"1">>;
reconvert(crossPrioritization, sellSideIsPrioritized) -> 
    <<"2">>;
reconvert(noSides, oneSide) -> 
    <<"1">>;
reconvert(noSides, bothSides) -> 
    <<"2">>;
reconvert(noLegs, Int) -> 
    erlang:integer_to_list(Int);
reconvert(totNoSecurityTypes, Int) -> 
    erlang:integer_to_list(Int);
reconvert(noSecurityTypes, Int) -> 
    erlang:integer_to_list(Int);
reconvert(securityListRequestType, symbol) -> 
    <<"0">>;
reconvert(securityListRequestType, securityTypeAnd) -> 
    <<"1">>;
reconvert(securityListRequestType, produkt) -> 
    <<"2">>;
reconvert(securityListRequestType, tradingSessionID) -> 
    <<"3">>;
reconvert(securityListRequestType, allSecurities) -> 
    <<"4">>;
reconvert(securityRequestResult, validRequest) -> 
    <<"0">>;
reconvert(securityRequestResult, invalidOrUnsupportedRequest) -> 
    <<"1">>;
reconvert(securityRequestResult, noInstrumentsFound) -> 
    <<"2">>;
reconvert(securityRequestResult, notAuthorizedToRetrieveInstrumentData) -> 
    <<"3">>;
reconvert(securityRequestResult, instrumentDataTemporarilyUnavailable) -> 
    <<"4">>;
reconvert(securityRequestResult, requestForInstrumentDataNotSupported) -> 
    <<"5">>;
reconvert(multiLegRptTypeReq, reportByMulitlegSecurityOnly) -> 
    <<"0">>;
reconvert(multiLegRptTypeReq, reportByMultilegSecurityAndInstrumentLegs) -> 
    <<"1">>;
reconvert(multiLegRptTypeReq, reportByInstrumentLegsOnly) -> 
    <<"2">>;
reconvert(legCoveredOrUncovered, Int) -> 
    erlang:integer_to_list(Int);
reconvert(tradSesStatusRejReason, unknownOrInvalidTradingSessionID) -> 
    <<"1">>;
reconvert(tradSesStatusRejReason, other) -> 
    <<"99">>;
reconvert(tradeRequestType, allTrades) -> 
    <<"0">>;
reconvert(tradeRequestType, matchedTradesMatchingCriteria) -> 
    <<"1">>;
reconvert(tradeRequestType, unmatchedTradesThatMatchCriteria) -> 
    <<"2">>;
reconvert(tradeRequestType, unreportedTradesThatMatchCriteria) -> 
    <<"3">>;
reconvert(tradeRequestType, advisoriesThatMatchCriteria) -> 
    <<"4">>;
reconvert(previouslyReported, perviouslyReportedToCounterparty) -> 
    <<"Y">>;
reconvert(previouslyReported, notReportedToCounterparty) -> 
    <<"N">>;
reconvert(matchStatus, compared) -> 
    <<"0">>;
reconvert(matchStatus, uncompared) -> 
    <<"1">>;
reconvert(matchStatus, advisoryOrAlert) -> 
    <<"2">>;
reconvert(matchType, exactMatchPlus4BadgesExecTime) -> 
    <<"A1">>;
reconvert(matchType, exactMatchPlus4Badges) -> 
    <<"A2">>;
reconvert(matchType, exactMatchPlus2BadgesExecTime) -> 
    <<"A3">>;
reconvert(matchType, exactMatchPlus2Badges) -> 
    <<"A4">>;
reconvert(matchType, exactMatchPlusExecTime) -> 
    <<"A5">>;
reconvert(matchType, stampedAdvisoriesOrSpecialistAccepts) -> 
    <<"AQ">>;
reconvert(matchType, a1ExactMatchSummarizedQuantity) -> 
    <<"S1">>;
reconvert(matchType, a2ExactMatchSummarizedQuantity) -> 
    <<"S2">>;
reconvert(matchType, a3ExactMatchSummarizedQuantity) -> 
    <<"S3">>;
reconvert(matchType, a4ExactMatchSummarizedQuantity) -> 
    <<"S4">>;
reconvert(matchType, a5ExactMatchSummarizedQuantity) -> 
    <<"S5">>;
reconvert(matchType, exactMatchMinusBadgesTimes) -> 
    <<"M1">>;
reconvert(matchType, summarizedMatchMinusBadgesTimes) -> 
    <<"M2">>;
reconvert(matchType, oCSLockedIn) -> 
    <<"MT">>;
reconvert(matchType, aCTAcceptedTrade) -> 
    <<"M3">>;
reconvert(matchType, aCTDefaultTrade) -> 
    <<"M4">>;
reconvert(matchType, aCTDefaultAfterM2) -> 
    <<"M5">>;
reconvert(matchType, aCTM6Match) -> 
    <<"M6">>;
reconvert(oddLot, treatAsOddLot) -> 
    <<"Y">>;
reconvert(oddLot, treatAsRoundLot) -> 
    <<"N">>;
reconvert(noClearingInstructions, Int) -> 
    erlang:integer_to_list(Int);
reconvert(clearingInstruction, processNormally) -> 
    <<"0">>;
reconvert(clearingInstruction, excludeFromAllNetting) -> 
    <<"1">>;
reconvert(clearingInstruction, bilateralNettingOnly) -> 
    <<"2">>;
reconvert(clearingInstruction, exClearing) -> 
    <<"3">>;
reconvert(clearingInstruction, specialTrade) -> 
    <<"4">>;
reconvert(clearingInstruction, multilateralNetting) -> 
    <<"5">>;
reconvert(clearingInstruction, clearAgainstCentralCounterparty) -> 
    <<"6">>;
reconvert(clearingInstruction, excludeFromCentralCounterparty) -> 
    <<"7">>;
reconvert(clearingInstruction, manualMode) -> 
    <<"8">>;
reconvert(clearingInstruction, automaticPostingMode) -> 
    <<"9">>;
reconvert(clearingInstruction, automaticGiveUpMode) -> 
    <<"10">>;
reconvert(clearingInstruction, qualifiedServiceRepresentativeQSR) -> 
    <<"11">>;
reconvert(clearingInstruction, customerTrade) -> 
    <<"12">>;
reconvert(clearingInstruction, selfClearing) -> 
    <<"13">>;
reconvert(noDates, Int) -> 
    erlang:integer_to_list(Int);
reconvert(accountType, carriedCustomerSide) -> 
    <<"1">>;
reconvert(accountType, carriedNonCustomerSide) -> 
    <<"2">>;
reconvert(accountType, houseTrader) -> 
    <<"3">>;
reconvert(accountType, floorTrader) -> 
    <<"4">>;
reconvert(accountType, carriedNonCustomerSideCrossMargined) -> 
    <<"6">>;
reconvert(accountType, houseTraderCrossMargined) -> 
    <<"7">>;
reconvert(accountType, jointBackOfficeAccount) -> 
    <<"8">>;
reconvert(custOrderCapacity, memberTradingForTheirOwnAccount) -> 
    <<"1">>;
reconvert(custOrderCapacity, clearingFirmTradingForItsProprietaryAccount) -> 
    <<"2">>;
reconvert(custOrderCapacity, memberTradingForAnotherMember) -> 
    <<"3">>;
reconvert(custOrderCapacity, allOther) -> 
    <<"4">>;
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
reconvert(massStatusReqType, statusForAllOrders) -> 
    <<"7">>;
reconvert(massStatusReqType, statusForOrdersForAPartyID) -> 
    <<"8">>;
reconvert(origOrdModTime, DateTime) -> 
    fix_convertor_utils:datetime_to_fixstring(DateTime);
reconvert(legSettlDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(dayBookingInst, auto) -> 
    <<"0">>;
reconvert(dayBookingInst, speakWithOrderInitiatorBeforeBooking) -> 
    <<"1">>;
reconvert(dayBookingInst, accumulate) -> 
    <<"2">>;
reconvert(bookingUnit, eachPartialExecutionIsABookableUnit) -> 
    <<"0">>;
reconvert(bookingUnit, aggregatePartialExecutionsOnThisOrder) -> 
    <<"1">>;
reconvert(bookingUnit, aggregateExecutionsForThisSymbol) -> 
    <<"2">>;
reconvert(preallocMethod, proRata) -> 
    <<"0">>;
reconvert(preallocMethod, doNotProRata) -> 
    <<"1">>;
reconvert(noLegSecurityAltID, Int) -> 
    erlang:integer_to_list(Int);
reconvert(legProduct, Int) -> 
    erlang:integer_to_list(Int);
reconvert(legMaturityMonthYear, DateTime) -> 
    fix_convertor_utils:monthyear2fixstring(DateTime);
reconvert(legMaturityDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(encodedLegIssuerLen, Int) -> 
    erlang:integer_to_list(Int);
reconvert(encodedLegSecurityDescLen, Int) -> 
    erlang:integer_to_list(Int);
reconvert(allocType, calculated) -> 
    <<"1">>;
reconvert(allocType, preliminary) -> 
    <<"2">>;
reconvert(allocType, readyToBook) -> 
    <<"5">>;
reconvert(allocType, warehouseInstruction) -> 
    <<"7">>;
reconvert(allocType, requestToIntermediary) -> 
    <<"8">>;
reconvert(noHops, Int) -> 
    erlang:integer_to_list(Int);
reconvert(hopSendingTime, DateTime) -> 
    fix_convertor_utils:datetime_to_fixstring(DateTime);
reconvert(hopRefID, Int) -> 
    erlang:integer_to_list(Int);
reconvert(clearingFeeIndicator, cBOEMember) -> 
    <<"B">>;
reconvert(clearingFeeIndicator, nonMemberAndCustomer) -> 
    <<"C">>;
reconvert(clearingFeeIndicator, equityMemberAndClearingMember) -> 
    <<"E">>;
reconvert(clearingFeeIndicator, fullAndAssociateMember) -> 
    <<"F">>;
reconvert(clearingFeeIndicator, firms106HAnd106J) -> 
    <<"H">>;
reconvert(clearingFeeIndicator, gIM) -> 
    <<"I">>;
reconvert(clearingFeeIndicator, lessee106FEmployees) -> 
    <<"L">>;
reconvert(clearingFeeIndicator, allOtherOwnershipTypes) -> 
    <<"M">>;
reconvert(clearingFeeIndicator, firstYearDelegate) -> 
    <<"1">>;
reconvert(clearingFeeIndicator, secondYearDelegate) -> 
    <<"2">>;
reconvert(clearingFeeIndicator, thirdYearDelegate) -> 
    <<"3">>;
reconvert(clearingFeeIndicator, fourthYearDelegate) -> 
    <<"4">>;
reconvert(clearingFeeIndicator, fifthYearDelegate) -> 
    <<"5">>;
reconvert(clearingFeeIndicator, sixthYearDelegate) -> 
    <<"9">>;
reconvert(workingIndicator, working) -> 
    <<"Y">>;
reconvert(workingIndicator, notWorking) -> 
    <<"N">>;
reconvert(priorityIndicator, priorityUnchanged) -> 
    <<"0">>;
reconvert(priorityIndicator, lostPriorityAsResultOfOrderChange) -> 
    <<"1">>;
reconvert(legalConfirm, legalConfirmTrue) -> 
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
reconvert(quoteRequestRejectReason, noMatchForInquiry) -> 
    <<"7">>;
reconvert(quoteRequestRejectReason, noMarketForInstrument) -> 
    <<"8">>;
reconvert(quoteRequestRejectReason, noInventory) -> 
    <<"9">>;
reconvert(quoteRequestRejectReason, pass) -> 
    <<"10">>;
reconvert(quoteRequestRejectReason, other) -> 
    <<"99">>;
reconvert(acctIDSource, bIC) -> 
    <<"1">>;
reconvert(acctIDSource, sIDCode) -> 
    <<"2">>;
reconvert(acctIDSource, tFM) -> 
    <<"3">>;
reconvert(acctIDSource, oMGEO) -> 
    <<"4">>;
reconvert(acctIDSource, dTCCCode) -> 
    <<"5">>;
reconvert(acctIDSource, other) -> 
    <<"99">>;
reconvert(allocAcctIDSource, Int) -> 
    erlang:integer_to_list(Int);
reconvert(benchmarkPriceType, Int) -> 
    erlang:integer_to_list(Int);
reconvert(confirmStatus, received) -> 
    <<"1">>;
reconvert(confirmStatus, mismatchedAccount) -> 
    <<"2">>;
reconvert(confirmStatus, missingSettlementInstructions) -> 
    <<"3">>;
reconvert(confirmStatus, confirmed) -> 
    <<"4">>;
reconvert(confirmStatus, requestRejected) -> 
    <<"5">>;
reconvert(confirmTransType, new) -> 
    <<"0">>;
reconvert(confirmTransType, replace) -> 
    <<"1">>;
reconvert(confirmTransType, cancel) -> 
    <<"2">>;
reconvert(contractSettlMonth, DateTime) -> 
    fix_convertor_utils:monthyear2fixstring(DateTime);
reconvert(deliveryForm, bookEntry) -> 
    <<"1">>;
reconvert(deliveryForm, bearer) -> 
    <<"2">>;
reconvert(noLegAllocs, Int) -> 
    erlang:integer_to_list(Int);
reconvert(legBenchmarkPriceType, Int) -> 
    erlang:integer_to_list(Int);
reconvert(noLegStipulations, Int) -> 
    erlang:integer_to_list(Int);
reconvert(legPriceType, Int) -> 
    erlang:integer_to_list(Int);
reconvert(legSwapType, parForPar) -> 
    <<"1">>;
reconvert(legSwapType, modifiedDuration) -> 
    <<"2">>;
reconvert(legSwapType, risk) -> 
    <<"4">>;
reconvert(legSwapType, proceeds) -> 
    <<"5">>;
reconvert(quotePriceType, percent) -> 
    <<"1">>;
reconvert(quotePriceType, perShare) -> 
    <<"2">>;
reconvert(quotePriceType, fixedAmount) -> 
    <<"3">>;
reconvert(quotePriceType, discount) -> 
    <<"4">>;
reconvert(quotePriceType, premium) -> 
    <<"5">>;
reconvert(quotePriceType, spread) -> 
    <<"6">>;
reconvert(quotePriceType, tEDPrice) -> 
    <<"7">>;
reconvert(quotePriceType, tEDYield) -> 
    <<"8">>;
reconvert(quotePriceType, yieldSpread) -> 
    <<"9">>;
reconvert(quotePriceType, yield) -> 
    <<"10">>;
reconvert(quoteRespType, hit) -> 
    <<"1">>;
reconvert(quoteRespType, counter) -> 
    <<"2">>;
reconvert(quoteRespType, expired) -> 
    <<"3">>;
reconvert(quoteRespType, cover) -> 
    <<"4">>;
reconvert(quoteRespType, doneAway) -> 
    <<"5">>;
reconvert(quoteRespType, pass) -> 
    <<"6">>;
reconvert(yieldRedemptionDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(yieldRedemptionPriceType, Int) -> 
    erlang:integer_to_list(Int);
reconvert(reversalIndicator, true) -> 
    <<"Y">>;
reconvert(reversalIndicator, false) -> 
    <<"N">>;
reconvert(yieldCalcDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(noPositions, Int) -> 
    erlang:integer_to_list(Int);
reconvert(posType, transactionQuantity) -> 
    <<"TQ">>;
reconvert(posType, intraSpreadQty) -> 
    <<"IAS">>;
reconvert(posType, interSpreadQty) -> 
    <<"IES">>;
reconvert(posType, endOfDayQty) -> 
    <<"FIN">>;
reconvert(posType, startOfDayQty) -> 
    <<"SOD">>;
reconvert(posType, optionExerciseQty) -> 
    <<"EX">>;
reconvert(posType, optionAssignment) -> 
    <<"AS">>;
reconvert(posType, transactionFromExercise) -> 
    <<"TX">>;
reconvert(posType, transactionFromAssignment) -> 
    <<"TA">>;
reconvert(posType, pitTradeQty) -> 
    <<"PIT">>;
reconvert(posType, transferTradeQty) -> 
    <<"TRF">>;
reconvert(posType, electronicTradeQty) -> 
    <<"ETR">>;
reconvert(posType, allocationTradeQty) -> 
    <<"ALC">>;
reconvert(posType, adjustmentQty) -> 
    <<"PA">>;
reconvert(posType, asOfTradeQty) -> 
    <<"ASF">>;
reconvert(posType, deliveryQty) -> 
    <<"DLV">>;
reconvert(posType, totalTransactionQty) -> 
    <<"TOT">>;
reconvert(posType, crossMarginQty) -> 
    <<"XM">>;
reconvert(posType, integralSplit) -> 
    <<"SPL">>;
reconvert(posQtyStatus, submitted) -> 
    <<"0">>;
reconvert(posQtyStatus, accepted) -> 
    <<"1">>;
reconvert(posQtyStatus, rejected) -> 
    <<"2">>;
reconvert(posAmtType, finalMarkToMarketAmount) -> 
    <<"FMTM">>;
reconvert(posAmtType, incrementalMarkToMarketAmount) -> 
    <<"IMTM">>;
reconvert(posAmtType, tradeVariationAmount) -> 
    <<"TVAR">>;
reconvert(posAmtType, startOfDayMarkToMarketAmount) -> 
    <<"SMTM">>;
reconvert(posAmtType, premiumAmount) -> 
    <<"PREM">>;
reconvert(posAmtType, cashResidualAmount) -> 
    <<"CRES">>;
reconvert(posAmtType, cashAmount) -> 
    <<"CASH">>;
reconvert(posAmtType, valueAdjustedAmount) -> 
    <<"VADJ">>;
reconvert(posTransType, exercise) -> 
    <<"1">>;
reconvert(posTransType, doNotExercise) -> 
    <<"2">>;
reconvert(posTransType, positionAdjustment) -> 
    <<"3">>;
reconvert(posTransType, positionChangeSubmission) -> 
    <<"4">>;
reconvert(posTransType, pledge) -> 
    <<"5">>;
reconvert(noUnderlyings, Int) -> 
    erlang:integer_to_list(Int);
reconvert(posMaintAction, new) -> 
    <<"1">>;
reconvert(posMaintAction, replace) -> 
    <<"2">>;
reconvert(posMaintAction, cancel) -> 
    <<"3">>;
reconvert(clearingBusinessDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(settlSessID, intraday) -> 
    <<"ITD">>;
reconvert(settlSessID, regularTradingHours) -> 
    <<"RTH">>;
reconvert(settlSessID, electronicTradingHours) -> 
    <<"ETH">>;
reconvert(adjustmentType, processRequestAsMarginDisposition) -> 
    <<"0">>;
reconvert(adjustmentType, deltaPlus) -> 
    <<"1">>;
reconvert(adjustmentType, deltaMinus) -> 
    <<"2">>;
reconvert(adjustmentType, final) -> 
    <<"3">>;
reconvert(contraryInstructionIndicator, true) -> 
    <<"Y">>;
reconvert(contraryInstructionIndicator, false) -> 
    <<"N">>;
reconvert(priorSpreadIndicator, true) -> 
    <<"Y">>;
reconvert(priorSpreadIndicator, false) -> 
    <<"N">>;
reconvert(posMaintStatus, accepted) -> 
    <<"0">>;
reconvert(posMaintStatus, acceptedWithWarnings) -> 
    <<"1">>;
reconvert(posMaintStatus, rejected) -> 
    <<"2">>;
reconvert(posMaintStatus, completed) -> 
    <<"3">>;
reconvert(posMaintStatus, completedWithWarnings) -> 
    <<"4">>;
reconvert(posMaintResult, successfulCompletion) -> 
    <<"0">>;
reconvert(posMaintResult, rejected) -> 
    <<"1">>;
reconvert(posMaintResult, other) -> 
    <<"99">>;
reconvert(posReqType, positions) -> 
    <<"0">>;
reconvert(posReqType, trades) -> 
    <<"1">>;
reconvert(posReqType, exercises) -> 
    <<"2">>;
reconvert(posReqType, assignments) -> 
    <<"3">>;
reconvert(responseTransportType, inband) -> 
    <<"0">>;
reconvert(responseTransportType, outOfBand) -> 
    <<"1">>;
reconvert(totalNumPosReports, Int) -> 
    erlang:integer_to_list(Int);
reconvert(posReqResult, validRequest) -> 
    <<"0">>;
reconvert(posReqResult, invalidOrUnsupportedRequest) -> 
    <<"1">>;
reconvert(posReqResult, noPositionsFoundThatMatchCriteria) -> 
    <<"2">>;
reconvert(posReqResult, notAuthorizedToRequestPositions) -> 
    <<"3">>;
reconvert(posReqResult, requestForPositionNotSupported) -> 
    <<"4">>;
reconvert(posReqResult, other) -> 
    <<"99">>;
reconvert(posReqStatus, completed) -> 
    <<"0">>;
reconvert(posReqStatus, completedWithWarnings) -> 
    <<"1">>;
reconvert(posReqStatus, rejected) -> 
    <<"2">>;
reconvert(settlPriceType, final) -> 
    <<"1">>;
reconvert(settlPriceType, theoretical) -> 
    <<"2">>;
reconvert(underlyingSettlPriceType, Int) -> 
    erlang:integer_to_list(Int);
reconvert(noQuoteQualifiers, Int) -> 
    erlang:integer_to_list(Int);
reconvert(legDatedDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(deliveryDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(assignmentMethod, random) -> 
    <<"R">>;
reconvert(assignmentMethod, proRata) -> 
    <<"P">>;
reconvert(exerciseMethod, automatic) -> 
    <<"A">>;
reconvert(exerciseMethod, manual) -> 
    <<"M">>;
reconvert(totNumTradeReports, Int) -> 
    erlang:integer_to_list(Int);
reconvert(tradeRequestResult, successful) -> 
    <<"0">>;
reconvert(tradeRequestResult, invalidOrUnknownInstrument) -> 
    <<"1">>;
reconvert(tradeRequestResult, invalidTypeOfTradeRequested) -> 
    <<"2">>;
reconvert(tradeRequestResult, invalidParties) -> 
    <<"3">>;
reconvert(tradeRequestResult, invalidTransportTypeRequested) -> 
    <<"4">>;
reconvert(tradeRequestResult, invalidDestinationRequested) -> 
    <<"5">>;
reconvert(tradeRequestResult, tradeRequestTypeNotSupported) -> 
    <<"8">>;
reconvert(tradeRequestResult, notAuthorized) -> 
    <<"9">>;
reconvert(tradeRequestResult, other) -> 
    <<"99">>;
reconvert(tradeRequestStatus, accepted) -> 
    <<"0">>;
reconvert(tradeRequestStatus, completed) -> 
    <<"1">>;
reconvert(tradeRequestStatus, rejected) -> 
    <<"2">>;
reconvert(tradeReportRejectReason, successful) -> 
    <<"0">>;
reconvert(tradeReportRejectReason, invalidPartyOnformation) -> 
    <<"1">>;
reconvert(tradeReportRejectReason, unknownInstrument) -> 
    <<"2">>;
reconvert(tradeReportRejectReason, unauthorizedToReportTrades) -> 
    <<"3">>;
reconvert(tradeReportRejectReason, invalidTradeType) -> 
    <<"4">>;
reconvert(tradeReportRejectReason, other) -> 
    <<"99">>;
reconvert(sideMultiLegReportingType, singleSecurity) -> 
    <<"1">>;
reconvert(sideMultiLegReportingType, individualLegOfAMultilegSecurity) -> 
    <<"2">>;
reconvert(sideMultiLegReportingType, multilegSecurity) -> 
    <<"3">>;
reconvert(noPosAmt, Int) -> 
    erlang:integer_to_list(Int);
reconvert(autoAcceptIndicator, true) -> 
    <<"Y">>;
reconvert(autoAcceptIndicator, false) -> 
    <<"N">>;
reconvert(noNested2PartyIDs, Int) -> 
    erlang:integer_to_list(Int);
reconvert(nested2PartyRole, Int) -> 
    erlang:integer_to_list(Int);
reconvert(noTrdRegTimestamps, Int) -> 
    erlang:integer_to_list(Int);
reconvert(trdRegTimestamp, DateTime) -> 
    fix_convertor_utils:datetime_to_fixstring(DateTime);
reconvert(trdRegTimestampType, executionTime) -> 
    <<"1">>;
reconvert(trdRegTimestampType, timeIn) -> 
    <<"2">>;
reconvert(trdRegTimestampType, timeOut) -> 
    <<"3">>;
reconvert(trdRegTimestampType, brokerReceipt) -> 
    <<"4">>;
reconvert(trdRegTimestampType, brokerExecution) -> 
    <<"5">>;
reconvert(confirmType, status) -> 
    <<"1">>;
reconvert(confirmType, confirmation) -> 
    <<"2">>;
reconvert(confirmType, confirmationRequestRejected) -> 
    <<"3">>;
reconvert(confirmRejReason, mismatchedAccount) -> 
    <<"1">>;
reconvert(confirmRejReason, missingSettlementInstructions) -> 
    <<"2">>;
reconvert(confirmRejReason, other) -> 
    <<"99">>;
reconvert(bookingType, regularBooking) -> 
    <<"0">>;
reconvert(bookingType, cFD) -> 
    <<"1">>;
reconvert(bookingType, totalReturnSwap) -> 
    <<"2">>;
reconvert(individualAllocRejCode, Int) -> 
    erlang:integer_to_list(Int);
reconvert(noSettlInst, Int) -> 
    erlang:integer_to_list(Int);
reconvert(lastUpdateTime, DateTime) -> 
    fix_convertor_utils:datetime_to_fixstring(DateTime);
reconvert(allocSettlInstType, useDefaultInstructions) -> 
    <<"0">>;
reconvert(allocSettlInstType, deriveFromParametersProvided) -> 
    <<"1">>;
reconvert(allocSettlInstType, fullDetailsProvided) -> 
    <<"2">>;
reconvert(allocSettlInstType, sSIDBIDsProvided) -> 
    <<"3">>;
reconvert(allocSettlInstType, phoneForInstructions) -> 
    <<"4">>;
reconvert(noSettlPartyIDs, Int) -> 
    erlang:integer_to_list(Int);
reconvert(settlPartyRole, Int) -> 
    erlang:integer_to_list(Int);
reconvert(settlPartySubIDType, Int) -> 
    erlang:integer_to_list(Int);
reconvert(dlvyInstType, securities) -> 
    <<"S">>;
reconvert(dlvyInstType, cash) -> 
    <<"C">>;
reconvert(terminationType, overnight) -> 
    <<"1">>;
reconvert(terminationType, term) -> 
    <<"2">>;
reconvert(terminationType, flexible) -> 
    <<"3">>;
reconvert(terminationType, open) -> 
    <<"4">>;
reconvert(nextExpectedMsgSeqNum, Int) -> 
    erlang:integer_to_list(Int);
reconvert(settlInstReqRejCode, unableToProcessRequest) -> 
    <<"0">>;
reconvert(settlInstReqRejCode, unknownAccount) -> 
    <<"1">>;
reconvert(settlInstReqRejCode, noMatchingSettlementInstructionsFound) -> 
    <<"2">>;
reconvert(settlInstReqRejCode, other) -> 
    <<"99">>;
reconvert(allocReportType, sellsideCalculatedUsingPreliminary) -> 
    <<"3">>;
reconvert(allocReportType, sellsideCalculatedWithoutPreliminary) -> 
    <<"4">>;
reconvert(allocReportType, warehouseRecap) -> 
    <<"5">>;
reconvert(allocReportType, requestToIntermediary) -> 
    <<"8">>;
reconvert(allocCancReplaceReason, originalDetailsIncomplete) -> 
    <<"1">>;
reconvert(allocCancReplaceReason, changeInUnderlyingOrderDetails) -> 
    <<"2">>;
reconvert(allocCancReplaceReason, other) -> 
    <<"99">>;
reconvert(copyMsgIndicator, true) -> 
    <<"Y">>;
reconvert(copyMsgIndicator, false) -> 
    <<"N">>;
reconvert(allocAccountType, carriedCustomerSide) -> 
    <<"1">>;
reconvert(allocAccountType, carriedNonCustomerSide) -> 
    <<"2">>;
reconvert(allocAccountType, houseTrader) -> 
    <<"3">>;
reconvert(allocAccountType, floorTrader) -> 
    <<"4">>;
reconvert(allocAccountType, carriedNonCustomerSideCrossMargined) -> 
    <<"6">>;
reconvert(allocAccountType, houseTraderCrossMargined) -> 
    <<"7">>;
reconvert(allocAccountType, jointBackOfficeAccount) -> 
    <<"8">>;
reconvert(noSettlPartySubIDs, Int) -> 
    erlang:integer_to_list(Int);
reconvert(noPartySubIDs, Int) -> 
    erlang:integer_to_list(Int);
reconvert(partySubIDType, firm) -> 
    <<"1">>;
reconvert(partySubIDType, person) -> 
    <<"2">>;
reconvert(partySubIDType, system) -> 
    <<"3">>;
reconvert(partySubIDType, application) -> 
    <<"4">>;
reconvert(partySubIDType, fullLegalNameOfFirm) -> 
    <<"5">>;
reconvert(partySubIDType, postalAddress) -> 
    <<"6">>;
reconvert(partySubIDType, phoneNumber) -> 
    <<"7">>;
reconvert(partySubIDType, emailAddress) -> 
    <<"8">>;
reconvert(partySubIDType, contactName) -> 
    <<"9">>;
reconvert(partySubIDType, securitiesAccountNumber) -> 
    <<"10">>;
reconvert(partySubIDType, registrationNumber) -> 
    <<"11">>;
reconvert(partySubIDType, registeredAddressForConfirmation) -> 
    <<"12">>;
reconvert(partySubIDType, regulatoryStatus) -> 
    <<"13">>;
reconvert(partySubIDType, registrationName) -> 
    <<"14">>;
reconvert(partySubIDType, cashAccountNumber) -> 
    <<"15">>;
reconvert(partySubIDType, bIC) -> 
    <<"16">>;
reconvert(partySubIDType, cSDParticipantMemberCode) -> 
    <<"17">>;
reconvert(partySubIDType, registeredAddress) -> 
    <<"18">>;
reconvert(partySubIDType, fundAccountName) -> 
    <<"19">>;
reconvert(partySubIDType, telexNumber) -> 
    <<"20">>;
reconvert(partySubIDType, faxNumber) -> 
    <<"21">>;
reconvert(partySubIDType, securitiesAccountName) -> 
    <<"22">>;
reconvert(partySubIDType, cashAccountName) -> 
    <<"23">>;
reconvert(partySubIDType, department) -> 
    <<"24">>;
reconvert(partySubIDType, locationDesk) -> 
    <<"25">>;
reconvert(partySubIDType, positionAccountType) -> 
    <<"26">>;
reconvert(noNestedPartySubIDs, Int) -> 
    erlang:integer_to_list(Int);
reconvert(nestedPartySubIDType, Int) -> 
    erlang:integer_to_list(Int);
reconvert(noNested2PartySubIDs, Int) -> 
    erlang:integer_to_list(Int);
reconvert(nested2PartySubIDType, Int) -> 
    erlang:integer_to_list(Int);
reconvert(allocIntermedReqType, pendingAccept) -> 
    <<"1">>;
reconvert(allocIntermedReqType, pendingRelease) -> 
    <<"2">>;
reconvert(allocIntermedReqType, pendingReversal) -> 
    <<"3">>;
reconvert(allocIntermedReqType, accept) -> 
    <<"4">>;
reconvert(allocIntermedReqType, blockLevelReject) -> 
    <<"5">>;
reconvert(allocIntermedReqType, accountLevelReject) -> 
    <<"6">>;
reconvert(applQueueMax, Int) -> 
    erlang:integer_to_list(Int);
reconvert(applQueueDepth, Int) -> 
    erlang:integer_to_list(Int);
reconvert(applQueueResolution, noActionTaken) -> 
    <<"0">>;
reconvert(applQueueResolution, queueFlushed) -> 
    <<"1">>;
reconvert(applQueueResolution, overlayLast) -> 
    <<"2">>;
reconvert(applQueueResolution, endSession) -> 
    <<"3">>;
reconvert(applQueueAction, noActionTaken) -> 
    <<"0">>;
reconvert(applQueueAction, queueFlushed) -> 
    <<"1">>;
reconvert(applQueueAction, overlayLast) -> 
    <<"2">>;
reconvert(applQueueAction, endSession) -> 
    <<"3">>;
reconvert(noAltMDSource, Int) -> 
    erlang:integer_to_list(Int);
reconvert(avgPxIndicator, noAveragePricing) -> 
    <<"0">>;
reconvert(avgPxIndicator, trade) -> 
    <<"1">>;
reconvert(avgPxIndicator, lastTrade) -> 
    <<"2">>;
reconvert(tradeAllocIndicator, allocationNotRequired) -> 
    <<"0">>;
reconvert(tradeAllocIndicator, allocationRequired) -> 
    <<"1">>;
reconvert(tradeAllocIndicator, useAllocationProvidedWithTheTrade) -> 
    <<"2">>;
reconvert(expirationCycle, expireOnTradingSessionClose) -> 
    <<"0">>;
reconvert(expirationCycle, expireOnTradingSessionOpen) -> 
    <<"1">>;
reconvert(trdType, regularTrade) -> 
    <<"0">>;
reconvert(trdType, blockTrade) -> 
    <<"1">>;
reconvert(trdType, eFP) -> 
    <<"2">>;
reconvert(trdType, transfer) -> 
    <<"3">>;
reconvert(trdType, lateTrade) -> 
    <<"4">>;
reconvert(trdType, tTrade) -> 
    <<"5">>;
reconvert(trdType, weightedAveragePriceTrade) -> 
    <<"6">>;
reconvert(trdType, bunchedTrade) -> 
    <<"7">>;
reconvert(trdType, lateBunchedTrade) -> 
    <<"8">>;
reconvert(trdType, priorReferencePriceTrade) -> 
    <<"9">>;
reconvert(trdType, afterHoursTrade) -> 
    <<"10">>;
reconvert(trdSubType, Int) -> 
    erlang:integer_to_list(Int);
reconvert(totNumAssignmentReports, Int) -> 
    erlang:integer_to_list(Int);
reconvert(pegMoveType, floating) -> 
    <<"0">>;
reconvert(pegMoveType, fixed) -> 
    <<"1">>;
reconvert(pegOffsetType, pricepriceFix) -> 
    <<"0">>;
reconvert(pegOffsetType, basisPoints) -> 
    <<"1">>;
reconvert(pegOffsetType, ticks) -> 
    <<"2">>;
reconvert(pegOffsetType, priceTier) -> 
    <<"3">>;
reconvert(pegLimitType, orBetter) -> 
    <<"0">>;
reconvert(pegLimitType, strict) -> 
    <<"1">>;
reconvert(pegLimitType, orWorse) -> 
    <<"2">>;
reconvert(pegRoundDirection, moreAggressive) -> 
    <<"1">>;
reconvert(pegRoundDirection, morePassive) -> 
    <<"2">>;
reconvert(pegScope, local) -> 
    <<"1">>;
reconvert(pegScope, national) -> 
    <<"2">>;
reconvert(pegScope, global) -> 
    <<"3">>;
reconvert(pegScope, nationalExcludingLocal) -> 
    <<"4">>;
reconvert(discretionMoveType, floating) -> 
    <<"0">>;
reconvert(discretionMoveType, fixed) -> 
    <<"1">>;
reconvert(discretionOffsetType, pricepriceFix) -> 
    <<"0">>;
reconvert(discretionOffsetType, basisPoints) -> 
    <<"1">>;
reconvert(discretionOffsetType, ticks) -> 
    <<"2">>;
reconvert(discretionOffsetType, priceTier) -> 
    <<"3">>;
reconvert(discretionLimitType, orBetter) -> 
    <<"0">>;
reconvert(discretionLimitType, strict) -> 
    <<"1">>;
reconvert(discretionLimitType, orWorse) -> 
    <<"2">>;
reconvert(discretionRoundDirection, moreAggressive) -> 
    <<"1">>;
reconvert(discretionRoundDirection, morePassive) -> 
    <<"2">>;
reconvert(discretionScope, local) -> 
    <<"1">>;
reconvert(discretionScope, national) -> 
    <<"2">>;
reconvert(discretionScope, global) -> 
    <<"3">>;
reconvert(discretionScope, nationalExcludingLocal) -> 
    <<"4">>;
reconvert(targetStrategy, vWAP) -> 
    <<"1">>;
reconvert(targetStrategy, participate) -> 
    <<"2">>;
reconvert(targetStrategy, mininizeMarketImpact) -> 
    <<"3">>;
reconvert(lastLiquidityInd, addedLiquidity) -> 
    <<"1">>;
reconvert(lastLiquidityInd, removedLiquidity) -> 
    <<"2">>;
reconvert(lastLiquidityInd, liquidityRoutedOut) -> 
    <<"3">>;
reconvert(publishTrdIndicator, reportTrade) -> 
    <<"Y">>;
reconvert(publishTrdIndicator, doNotReportTrade) -> 
    <<"N">>;
reconvert(shortSaleReason, dealerSoldShort) -> 
    <<"0">>;
reconvert(shortSaleReason, dealerSoldShortExempt) -> 
    <<"1">>;
reconvert(shortSaleReason, sellingCustomerSoldShort) -> 
    <<"2">>;
reconvert(shortSaleReason, sellingCustomerSoldShortExempt) -> 
    <<"3">>;
reconvert(shortSaleReason, qualifiedServiceRepresentative) -> 
    <<"4">>;
reconvert(shortSaleReason, qSROrAGUContraSideSoldShortExempt) -> 
    <<"5">>;
reconvert(qtyType, units) -> 
    <<"0">>;
reconvert(qtyType, contracts) -> 
    <<"1">>;
reconvert(secondaryTrdType, Int) -> 
    erlang:integer_to_list(Int);
reconvert(tradeReportType, submit) -> 
    <<"0">>;
reconvert(tradeReportType, alleged) -> 
    <<"1">>;
reconvert(tradeReportType, accept) -> 
    <<"2">>;
reconvert(tradeReportType, decline) -> 
    <<"3">>;
reconvert(tradeReportType, addendum) -> 
    <<"4">>;
reconvert(tradeReportType, no) -> 
    <<"5">>;
reconvert(tradeReportType, tradeReportCancel) -> 
    <<"6">>;
reconvert(tradeReportType, lockedIn) -> 
    <<"7">>;
reconvert(allocNoOrdersType, notSpecified) -> 
    <<"0">>;
reconvert(allocNoOrdersType, explicitListProvided) -> 
    <<"1">>;
reconvert(noCapacities, Int) -> 
    erlang:integer_to_list(Int);
reconvert(noEvents, Int) -> 
    erlang:integer_to_list(Int);
reconvert(eventType, put) -> 
    <<"1">>;
reconvert(eventType, call) -> 
    <<"2">>;
reconvert(eventType, tender) -> 
    <<"3">>;
reconvert(eventType, sinkingFundCall) -> 
    <<"4">>;
reconvert(eventType, other) -> 
    <<"99">>;
reconvert(eventDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(noInstrAttrib, Int) -> 
    erlang:integer_to_list(Int);
reconvert(instrAttribType, flat) -> 
    <<"1">>;
reconvert(instrAttribType, zeroCoupon) -> 
    <<"2">>;
reconvert(instrAttribType, interestBearing) -> 
    <<"3">>;
reconvert(instrAttribType, noPeriodicPayments) -> 
    <<"4">>;
reconvert(instrAttribType, variableRate) -> 
    <<"5">>;
reconvert(instrAttribType, lessFeeForPut) -> 
    <<"6">>;
reconvert(instrAttribType, steppedCoupon) -> 
    <<"7">>;
reconvert(instrAttribType, couponPeriod) -> 
    <<"8">>;
reconvert(instrAttribType, whenwhenFix) -> 
    <<"9">>;
reconvert(instrAttribType, originalIssueDiscount) -> 
    <<"10">>;
reconvert(instrAttribType, callable) -> 
    <<"11">>;
reconvert(instrAttribType, escrowedToMaturity) -> 
    <<"12">>;
reconvert(instrAttribType, escrowedToRedemptionDate) -> 
    <<"13">>;
reconvert(instrAttribType, preRefunded) -> 
    <<"14">>;
reconvert(instrAttribType, inDefault) -> 
    <<"15">>;
reconvert(instrAttribType, unrated) -> 
    <<"16">>;
reconvert(instrAttribType, taxable) -> 
    <<"17">>;
reconvert(instrAttribType, indexed) -> 
    <<"18">>;
reconvert(instrAttribType, subjectToAlternativeMinimumTax) -> 
    <<"19">>;
reconvert(instrAttribType, originalIssueDiscountPrice) -> 
    <<"20">>;
reconvert(instrAttribType, callableBelowMaturityValue) -> 
    <<"21">>;
reconvert(instrAttribType, callableWithoutNotice) -> 
    <<"22">>;
reconvert(instrAttribType, text) -> 
    <<"99">>;
reconvert(datedDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(interestAccrualDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(cPProgram, program3a3) -> 
    <<"1">>;
reconvert(cPProgram, program42) -> 
    <<"2">>;
reconvert(cPProgram, other) -> 
    <<"99">>;
reconvert(noUnderlyingStips, Int) -> 
    erlang:integer_to_list(Int);
reconvert(miscFeeBasis, absolute) -> 
    <<"0">>;
reconvert(miscFeeBasis, perUnit) -> 
    <<"1">>;
reconvert(miscFeeBasis, percentage) -> 
    <<"2">>;
reconvert(totNoAllocs, Int) -> 
    erlang:integer_to_list(Int);
reconvert(lastFragment, lastMessage) -> 
    <<"Y">>;
reconvert(lastFragment, notLastMessage) -> 
    <<"N">>;
reconvert(collAsgnReason, initial) -> 
    <<"0">>;
reconvert(collAsgnReason, scheduled) -> 
    <<"1">>;
reconvert(collAsgnReason, timeWarning) -> 
    <<"2">>;
reconvert(collAsgnReason, marginDeficiency) -> 
    <<"3">>;
reconvert(collAsgnReason, marginExcess) -> 
    <<"4">>;
reconvert(collAsgnReason, forwardCollateralDemand) -> 
    <<"5">>;
reconvert(collAsgnReason, eventOfDefault) -> 
    <<"6">>;
reconvert(collAsgnReason, adverseTaxEvent) -> 
    <<"7">>;
reconvert(collInquiryQualifier, tradeDate) -> 
    <<"0">>;
reconvert(collInquiryQualifier, gCInstrument) -> 
    <<"1">>;
reconvert(collInquiryQualifier, collateralInstrument) -> 
    <<"2">>;
reconvert(collInquiryQualifier, substitutionEligible) -> 
    <<"3">>;
reconvert(collInquiryQualifier, notAssigned) -> 
    <<"4">>;
reconvert(collInquiryQualifier, partiallyAssigned) -> 
    <<"5">>;
reconvert(collInquiryQualifier, fullyAssigned) -> 
    <<"6">>;
reconvert(collInquiryQualifier, outstandingTrades) -> 
    <<"7">>;
reconvert(noTrades, Int) -> 
    erlang:integer_to_list(Int);
reconvert(collAsgnTransType, new) -> 
    <<"0">>;
reconvert(collAsgnTransType, replace) -> 
    <<"1">>;
reconvert(collAsgnTransType, cancel) -> 
    <<"2">>;
reconvert(collAsgnTransType, release) -> 
    <<"3">>;
reconvert(collAsgnTransType, reverse) -> 
    <<"4">>;
reconvert(collAsgnRespType, received) -> 
    <<"0">>;
reconvert(collAsgnRespType, accepted) -> 
    <<"1">>;
reconvert(collAsgnRespType, declined) -> 
    <<"2">>;
reconvert(collAsgnRespType, rejected) -> 
    <<"3">>;
reconvert(collAsgnRejectReason, unknownDeal) -> 
    <<"0">>;
reconvert(collAsgnRejectReason, unknownOrInvalidInstrument) -> 
    <<"1">>;
reconvert(collAsgnRejectReason, unauthorizedTransaction) -> 
    <<"2">>;
reconvert(collAsgnRejectReason, insufficientCollateral) -> 
    <<"3">>;
reconvert(collAsgnRejectReason, invalidTypeOfCollateral) -> 
    <<"4">>;
reconvert(collAsgnRejectReason, excessiveSubstitution) -> 
    <<"5">>;
reconvert(collAsgnRejectReason, other) -> 
    <<"99">>;
reconvert(collStatus, unassigned) -> 
    <<"0">>;
reconvert(collStatus, partiallyAssigned) -> 
    <<"1">>;
reconvert(collStatus, assignmentProposed) -> 
    <<"2">>;
reconvert(collStatus, assigned) -> 
    <<"3">>;
reconvert(collStatus, challenged) -> 
    <<"4">>;
reconvert(totNumReports, Int) -> 
    erlang:integer_to_list(Int);
reconvert(lastRptRequested, true) -> 
    <<"Y">>;
reconvert(lastRptRequested, false) -> 
    <<"N">>;
reconvert(agreementDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(startDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(endDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(deliveryType, versusPayment) -> 
    <<"0">>;
reconvert(deliveryType, free) -> 
    <<"1">>;
reconvert(deliveryType, triParty) -> 
    <<"2">>;
reconvert(deliveryType, holdInCustody) -> 
    <<"3">>;
reconvert(userRequestType, logOnUser) -> 
    <<"1">>;
reconvert(userRequestType, logOffUser) -> 
    <<"2">>;
reconvert(userRequestType, changePasswordForUser) -> 
    <<"3">>;
reconvert(userRequestType, requestIndividualUserStatus) -> 
    <<"4">>;
reconvert(userStatus, loggedIn) -> 
    <<"1">>;
reconvert(userStatus, notLoggedIn) -> 
    <<"2">>;
reconvert(userStatus, userNotRecognised) -> 
    <<"3">>;
reconvert(userStatus, passwordIncorrect) -> 
    <<"4">>;
reconvert(userStatus, passwordChanged) -> 
    <<"5">>;
reconvert(userStatus, other) -> 
    <<"6">>;
reconvert(statusValue, connected) -> 
    <<"1">>;
reconvert(statusValue, notConnectedUnexpected) -> 
    <<"2">>;
reconvert(statusValue, notConnectedExpected) -> 
    <<"3">>;
reconvert(statusValue, inProcess) -> 
    <<"4">>;
reconvert(networkRequestType, snapshot) -> 
    <<"1">>;
reconvert(networkRequestType, subscribe) -> 
    <<"2">>;
reconvert(networkRequestType, stopSubscribing) -> 
    <<"4">>;
reconvert(networkRequestType, levelOfDetail) -> 
    <<"8">>;
reconvert(noCompIDs, Int) -> 
    erlang:integer_to_list(Int);
reconvert(networkStatusResponseType, full) -> 
    <<"1">>;
reconvert(networkStatusResponseType, incrementalUpdate) -> 
    <<"2">>;
reconvert(noCollInquiryQualifier, Int) -> 
    erlang:integer_to_list(Int);
reconvert(trdRptStatus, accepted) -> 
    <<"0">>;
reconvert(trdRptStatus, rejected) -> 
    <<"1">>;
reconvert(affirmStatus, received) -> 
    <<"1">>;
reconvert(affirmStatus, confirmRejected) -> 
    <<"2">>;
reconvert(affirmStatus, affirmed) -> 
    <<"3">>;
reconvert(collAction, retain) -> 
    <<"0">>;
reconvert(collAction, add) -> 
    <<"1">>;
reconvert(collAction, remove) -> 
    <<"2">>;
reconvert(collInquiryStatus, accepted) -> 
    <<"0">>;
reconvert(collInquiryStatus, acceptedWithWarnings) -> 
    <<"1">>;
reconvert(collInquiryStatus, completed) -> 
    <<"2">>;
reconvert(collInquiryStatus, completedWithWarnings) -> 
    <<"3">>;
reconvert(collInquiryStatus, rejected) -> 
    <<"4">>;
reconvert(collInquiryResult, successful) -> 
    <<"0">>;
reconvert(collInquiryResult, invalidOrUnknownInstrument) -> 
    <<"1">>;
reconvert(collInquiryResult, invalidOrUnknownCollateralType) -> 
    <<"2">>;
reconvert(collInquiryResult, invalidParties) -> 
    <<"3">>;
reconvert(collInquiryResult, invalidTransportTypeRequested) -> 
    <<"4">>;
reconvert(collInquiryResult, invalidDestinationRequested) -> 
    <<"5">>;
reconvert(collInquiryResult, noCollateralFoundForTheTradeSpecified) -> 
    <<"6">>;
reconvert(collInquiryResult, noCollateralFoundForTheOrderSpecified) -> 
    <<"7">>;
reconvert(collInquiryResult, collateralInquiryTypeNotSupported) -> 
    <<"8">>;
reconvert(collInquiryResult, unauthorizedForCollateralInquiry) -> 
    <<"9">>;
reconvert(collInquiryResult, other) -> 
    <<"99">>;
reconvert(noNested3PartyIDs, Int) -> 
    erlang:integer_to_list(Int);
reconvert(nested3PartyRole, Int) -> 
    erlang:integer_to_list(Int);
reconvert(noNested3PartySubIDs, Int) -> 
    erlang:integer_to_list(Int);
reconvert(nested3PartySubIDType, Int) -> 
    erlang:integer_to_list(Int);
reconvert(legContractSettlMonth, DateTime) -> 
    fix_convertor_utils:monthyear2fixstring(DateTime);
reconvert(legInterestAccrualDate, DateTime) -> 
    fix_convertor_utils:localmktdate2fixstring(DateTime);
reconvert(_Name, Bin) ->
    Bin.
