%% This module is automatically generated - do not edit it!!!
%%TODO: funktion to convert date and time types
-module(util_convert_to_record_FIXT_1_1).

%%
%% Include files
%%
-include("FIXT_1_1.hrl").
    
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

convert(beginSeqNo, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(bodyLength, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(endSeqNo, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(msgSeqNum, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(newSeqNo, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(possDupFlag, <<"N">>) -> 
    originalTransmission;
convert(possDupFlag, <<"Y">>) -> 
    possibleDuplicate;
convert(refSeqNum, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(secureDataLen, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(signatureLength, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(rawDataLength, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(possResend, <<"N">>) -> 
    originalTransmission;
convert(possResend, <<"Y">>) -> 
    possibleResend;
convert(encryptMethod, <<"0">>) -> 
    noneOther;
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
    pEMDESMD5;
convert(heartBtInt, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(gapFillFlag, <<"N">>) -> 
    sequenceResetIgnoreMsgSeqNum;
convert(gapFillFlag, <<"Y">>) -> 
    gapFillMessageMsgSeqNumFieldValid;
convert(resetSeqNumFlag, <<"N">>) -> 
    no;
convert(resetSeqNumFlag, <<"Y">>) -> 
    yesResetSequenceNumbers;
convert(xmlDataLen, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(encodedTextLen, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(lastMsgSeqNumProcessed, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(refTagID, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
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
    compidProblem;
convert(sessionRejectReason, <<"10">>) -> 
    sendingtimeAccuracyProblem;
convert(sessionRejectReason, <<"11">>) -> 
    invalidMsgtype;
convert(sessionRejectReason, <<"12">>) -> 
    xMLValidationError;
convert(sessionRejectReason, <<"13">>) -> 
    tagAppearsMoreThanOnce;
convert(sessionRejectReason, <<"14">>) -> 
    tagSpecifiedOutOfRequiredOrder;
convert(sessionRejectReason, <<"15">>) -> 
    repeatingGroupFieldsOutOfOrder;
convert(sessionRejectReason, <<"16">>) -> 
    incorrectNumingroupCountForRepeatingGroup;
convert(sessionRejectReason, <<"17">>) -> 
    nonDataValueIncludesFieldDelimiter;
convert(sessionRejectReason, <<"18">>) -> 
    invalidUnsupportedApplicationVersion;
convert(sessionRejectReason, <<"99">>) -> 
    other;
convert(maxMessageSize, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(testMessageIndicator, <<"N">>) -> 
    fales;
convert(testMessageIndicator, <<"Y">>) -> 
    true;
convert(noHops, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(hopRefID, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(nextExpectedMsgSeqNum, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(applVerID, <<"0">>) -> 
    fIX27;
convert(applVerID, <<"1">>) -> 
    fIX30;
convert(applVerID, <<"2">>) -> 
    fIX40;
convert(applVerID, <<"3">>) -> 
    fIX41;
convert(applVerID, <<"4">>) -> 
    fIX42;
convert(applVerID, <<"5">>) -> 
    fIX43;
convert(applVerID, <<"6">>) -> 
    fIX44;
convert(applVerID, <<"7">>) -> 
    fIX50;
convert(applVerID, <<"8">>) -> 
    fIX50SP1;
convert(applExtID, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(encryptedPasswordMethod, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(encryptedPasswordLen, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(encryptedNewPasswordLen, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(refApplExtID, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(defaultApplExtID, Bin) -> 
    erlang:list_to_integer(erlang:binary_to_list(Bin));
convert(sessionStatus, <<"0">>) -> 
    sessionActive;
convert(sessionStatus, <<"1">>) -> 
    sessionPasswordChanged;
convert(sessionStatus, <<"2">>) -> 
    sessionPasswordDueToExpire;
convert(sessionStatus, <<"3">>) -> 
    newSessionPasswordDoesNotComplyWithPolicy;
convert(sessionStatus, <<"4">>) -> 
    sessionLogoutComplete;
convert(sessionStatus, <<"5">>) -> 
    invalidUsernameOrPassword;
convert(sessionStatus, <<"6">>) -> 
    accountLocked;
convert(sessionStatus, <<"7">>) -> 
    logonsAreNotAllowedAtThisTime;
convert(sessionStatus, <<"8">>) -> 
    passwordExpired;
convert(_Name, Bin) ->
    Bin.
get_record_def(standardTrailer) -> 
    [standardTrailer, signatureLength, signature, checkSum];
get_record_def(rgr_hopGrp_627) -> 
    [rgr_hopGrp_627, hopCompID, hopSendingTime, hopRefID];
get_record_def(hopGrp) -> 
    [hopGrp, [[rgr_hopGrp_627]]];
get_record_def(msgTypeGrp) -> 
    [msgTypeGrp, any];
get_record_def(standardHeader) -> 
    [standardHeader, beginString, bodyLength, msgType, applVerID, applExtID, cstmApplVerID, senderCompID, targetCompID, onBehalfOfCompID, deliverToCompID, secureDataLen, secureData, msgSeqNum, senderSubID, senderLocationID, targetSubID, targetLocationID, onBehalfOfSubID, onBehalfOfLocationID, deliverToSubID, deliverToLocationID, possDupFlag, possResend, sendingTime, origSendingTime, xmlDataLen, xmlData, messageEncoding, lastMsgSeqNumProcessed, [hopGrp]];
get_record_def(heartbeat) -> 
    [heartbeat, [standardHeader], testReqID, [standardTrailer]];
get_record_def(testRequest) -> 
    [testRequest, [standardHeader], testReqID, [standardTrailer]];
get_record_def(resendRequest) -> 
    [resendRequest, [standardHeader], beginSeqNo, endSeqNo, [standardTrailer]];
get_record_def(reject) -> 
    [reject, [standardHeader], refSeqNum, refTagID, refMsgType, refApplVerID, refApplExtID, refCstmApplVerID, sessionRejectReason, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(sequenceReset) -> 
    [sequenceReset, [standardHeader], gapFillFlag, newSeqNo, [standardTrailer]];
get_record_def(logout) -> 
    [logout, [standardHeader], sessionStatus, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(logon) -> 
    [logon, [standardHeader], encryptMethod, heartBtInt, rawDataLength, rawData, resetSeqNumFlag, nextExpectedMsgSeqNum, maxMessageSize, [msgTypeGrp], testMessageIndicator, username, password, newPassword, encryptedPasswordMethod, encryptedPasswordLen, encryptedPassword, encryptedNewPasswordLen, encryptedNewPassword, sessionStatus, defaultApplVerID, defaultApplExtID, defaultCstmApplVerID, text, encodedTextLen, encodedText, [standardTrailer]];
get_record_def(xMLnonFIX) -> 
    [xMLnonFIX, any];
get_record_def(_Else) -> 
    error.

getRecord(standardTrailer)->
    #standardTrailer{};
getRecord(rgr_hopGrp_627)->
    #rgr_hopGrp_627{};
getRecord(hopGrp)->
    #hopGrp{};
getRecord(msgTypeGrp)->
    #msgTypeGrp{};
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
getRecord(logon)->
    #logon{};
getRecord(xMLnonFIX)->
    #xMLnonFIX{}.
setFieldInRecord(standardHeader, beginString, Record, Value)->
   erlang:setelement(#standardHeader.beginString, Record, Value);
setFieldInRecord(standardHeader, bodyLength, Record, Value)->
   erlang:setelement(#standardHeader.bodyLength, Record, Value);
setFieldInRecord(standardHeader, msgType, Record, Value)->
   erlang:setelement(#standardHeader.msgType, Record, Value);
setFieldInRecord(standardHeader, applVerID, Record, Value)->
   erlang:setelement(#standardHeader.applVerID, Record, Value);
setFieldInRecord(standardHeader, applExtID, Record, Value)->
   erlang:setelement(#standardHeader.applExtID, Record, Value);
setFieldInRecord(standardHeader, cstmApplVerID, Record, Value)->
   erlang:setelement(#standardHeader.cstmApplVerID, Record, Value);
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
setFieldInRecord(standardHeader, hopGrp, Record, Value)->
   erlang:setelement(#standardHeader.hopGrp, Record, Value);
setFieldInRecord(standardTrailer, signatureLength, Record, Value)->
   erlang:setelement(#standardTrailer.signatureLength, Record, Value);
setFieldInRecord(standardTrailer, signature, Record, Value)->
   erlang:setelement(#standardTrailer.signature, Record, Value);
setFieldInRecord(standardTrailer, checkSum, Record, Value)->
   erlang:setelement(#standardTrailer.checkSum, Record, Value);
setFieldInRecord(hopGrp, rgr_hopGrp_627, Record, Value)->
   erlang:setelement(#hopGrp.rgr_hopGrp_627, Record, Value);
setFieldInRecord(rgr_hopGrp_627, hopCompID, Record, Value)->
   erlang:setelement(#rgr_hopGrp_627.hopCompID, Record, Value);
setFieldInRecord(rgr_hopGrp_627, hopSendingTime, Record, Value)->
   erlang:setelement(#rgr_hopGrp_627.hopSendingTime, Record, Value);
setFieldInRecord(rgr_hopGrp_627, hopRefID, Record, Value)->
   erlang:setelement(#rgr_hopGrp_627.hopRefID, Record, Value);
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
setFieldInRecord(reject, refApplVerID, Record, Value)->
    erlang:setelement(#reject.refApplVerID, Record, Value);
setFieldInRecord(reject, refApplExtID, Record, Value)->
    erlang:setelement(#reject.refApplExtID, Record, Value);
setFieldInRecord(reject, refCstmApplVerID, Record, Value)->
    erlang:setelement(#reject.refCstmApplVerID, Record, Value);
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
setFieldInRecord(logout, sessionStatus, Record, Value)->
    erlang:setelement(#logout.sessionStatus, Record, Value);
setFieldInRecord(logout, text, Record, Value)->
    erlang:setelement(#logout.text, Record, Value);
setFieldInRecord(logout, encodedTextLen, Record, Value)->
    erlang:setelement(#logout.encodedTextLen, Record, Value);
setFieldInRecord(logout, encodedText, Record, Value)->
    erlang:setelement(#logout.encodedText, Record, Value);
setFieldInRecord(logout, standardTrailer, Record, Value)->
    erlang:setelement(#logout.standardTrailer, Record, Value);
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
setFieldInRecord(logon, msgTypeGrp, Record, Value)->
    erlang:setelement(#logon.msgTypeGrp, Record, Value);
setFieldInRecord(logon, testMessageIndicator, Record, Value)->
    erlang:setelement(#logon.testMessageIndicator, Record, Value);
setFieldInRecord(logon, username, Record, Value)->
    erlang:setelement(#logon.username, Record, Value);
setFieldInRecord(logon, password, Record, Value)->
    erlang:setelement(#logon.password, Record, Value);
setFieldInRecord(logon, newPassword, Record, Value)->
    erlang:setelement(#logon.newPassword, Record, Value);
setFieldInRecord(logon, encryptedPasswordMethod, Record, Value)->
    erlang:setelement(#logon.encryptedPasswordMethod, Record, Value);
setFieldInRecord(logon, encryptedPasswordLen, Record, Value)->
    erlang:setelement(#logon.encryptedPasswordLen, Record, Value);
setFieldInRecord(logon, encryptedPassword, Record, Value)->
    erlang:setelement(#logon.encryptedPassword, Record, Value);
setFieldInRecord(logon, encryptedNewPasswordLen, Record, Value)->
    erlang:setelement(#logon.encryptedNewPasswordLen, Record, Value);
setFieldInRecord(logon, encryptedNewPassword, Record, Value)->
    erlang:setelement(#logon.encryptedNewPassword, Record, Value);
setFieldInRecord(logon, sessionStatus, Record, Value)->
    erlang:setelement(#logon.sessionStatus, Record, Value);
setFieldInRecord(logon, defaultApplVerID, Record, Value)->
    erlang:setelement(#logon.defaultApplVerID, Record, Value);
setFieldInRecord(logon, defaultApplExtID, Record, Value)->
    erlang:setelement(#logon.defaultApplExtID, Record, Value);
setFieldInRecord(logon, defaultCstmApplVerID, Record, Value)->
    erlang:setelement(#logon.defaultCstmApplVerID, Record, Value);
setFieldInRecord(logon, text, Record, Value)->
    erlang:setelement(#logon.text, Record, Value);
setFieldInRecord(logon, encodedTextLen, Record, Value)->
    erlang:setelement(#logon.encodedTextLen, Record, Value);
setFieldInRecord(logon, encodedText, Record, Value)->
    erlang:setelement(#logon.encodedText, Record, Value);
setFieldInRecord(logon, standardTrailer, Record, Value)->
    erlang:setelement(#logon.standardTrailer, Record, Value);
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
getMessageName(<<"A">>) -> 
    logon;
getMessageName(<<"n">>) -> 
    xMLnonFIX;
getMessageName(_Id) ->
    error.
getFieldName(<<"7">>) ->
    beginSeqNo;
getFieldName(<<"8">>) ->
    beginString;
getFieldName(<<"9">>) ->
    bodyLength;
getFieldName(<<"10">>) ->
    checkSum;
getFieldName(<<"16">>) ->
    endSeqNo;
getFieldName(<<"34">>) ->
    msgSeqNum;
getFieldName(<<"35">>) ->
    msgType;
getFieldName(<<"36">>) ->
    newSeqNo;
getFieldName(<<"43">>) ->
    possDupFlag;
getFieldName(<<"45">>) ->
    refSeqNum;
getFieldName(<<"49">>) ->
    senderCompID;
getFieldName(<<"50">>) ->
    senderSubID;
getFieldName(<<"52">>) ->
    sendingTime;
getFieldName(<<"56">>) ->
    targetCompID;
getFieldName(<<"57">>) ->
    targetSubID;
getFieldName(<<"58">>) ->
    text;
getFieldName(<<"89">>) ->
    signature;
getFieldName(<<"90">>) ->
    secureDataLen;
getFieldName(<<"91">>) ->
    secureData;
getFieldName(<<"93">>) ->
    signatureLength;
getFieldName(<<"95">>) ->
    rawDataLength;
getFieldName(<<"96">>) ->
    rawData;
getFieldName(<<"97">>) ->
    possResend;
getFieldName(<<"98">>) ->
    encryptMethod;
getFieldName(<<"108">>) ->
    heartBtInt;
getFieldName(<<"112">>) ->
    testReqID;
getFieldName(<<"115">>) ->
    onBehalfOfCompID;
getFieldName(<<"116">>) ->
    onBehalfOfSubID;
getFieldName(<<"122">>) ->
    origSendingTime;
getFieldName(<<"123">>) ->
    gapFillFlag;
getFieldName(<<"128">>) ->
    deliverToCompID;
getFieldName(<<"129">>) ->
    deliverToSubID;
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
getFieldName(<<"212">>) ->
    xmlDataLen;
getFieldName(<<"213">>) ->
    xmlData;
getFieldName(<<"347">>) ->
    messageEncoding;
getFieldName(<<"354">>) ->
    encodedTextLen;
getFieldName(<<"355">>) ->
    encodedText;
getFieldName(<<"369">>) ->
    lastMsgSeqNumProcessed;
getFieldName(<<"371">>) ->
    refTagID;
getFieldName(<<"372">>) ->
    refMsgType;
getFieldName(<<"373">>) ->
    sessionRejectReason;
getFieldName(<<"383">>) ->
    maxMessageSize;
getFieldName(<<"464">>) ->
    testMessageIndicator;
getFieldName(<<"553">>) ->
    username;
getFieldName(<<"554">>) ->
    password;
getFieldName(<<"627">>) ->
    noHops;
getFieldName(<<"628">>) ->
    hopCompID;
getFieldName(<<"629">>) ->
    hopSendingTime;
getFieldName(<<"630">>) ->
    hopRefID;
getFieldName(<<"789">>) ->
    nextExpectedMsgSeqNum;
getFieldName(<<"925">>) ->
    newPassword;
getFieldName(<<"1128">>) ->
    applVerID;
getFieldName(<<"1129">>) ->
    cstmApplVerID;
getFieldName(<<"1130">>) ->
    refApplVerID;
getFieldName(<<"1131">>) ->
    refCstmApplVerID;
getFieldName(<<"1137">>) ->
    defaultApplVerID;
getFieldName(<<"1156">>) ->
    applExtID;
getFieldName(<<"1400">>) ->
    encryptedPasswordMethod;
getFieldName(<<"1401">>) ->
    encryptedPasswordLen;
getFieldName(<<"1402">>) ->
    encryptedPassword;
getFieldName(<<"1403">>) ->
    encryptedNewPasswordLen;
getFieldName(<<"1404">>) ->
    encryptedNewPassword;
getFieldName(<<"1406">>) ->
    refApplExtID;
getFieldName(<<"1407">>) ->
    defaultApplExtID;
getFieldName(<<"1408">>) ->
    defaultCstmApplVerID;
getFieldName(<<"1409">>) ->
    sessionStatus;
getFieldName(_Id) ->
    error.
getTagId(beginSeqNo) ->
    <<"7">>;
getTagId(beginString) ->
    <<"8">>;
getTagId(bodyLength) ->
    <<"9">>;
getTagId(checkSum) ->
    <<"10">>;
getTagId(endSeqNo) ->
    <<"16">>;
getTagId(msgSeqNum) ->
    <<"34">>;
getTagId(msgType) ->
    <<"35">>;
getTagId(newSeqNo) ->
    <<"36">>;
getTagId(possDupFlag) ->
    <<"43">>;
getTagId(refSeqNum) ->
    <<"45">>;
getTagId(senderCompID) ->
    <<"49">>;
getTagId(senderSubID) ->
    <<"50">>;
getTagId(sendingTime) ->
    <<"52">>;
getTagId(targetCompID) ->
    <<"56">>;
getTagId(targetSubID) ->
    <<"57">>;
getTagId(text) ->
    <<"58">>;
getTagId(signature) ->
    <<"89">>;
getTagId(secureDataLen) ->
    <<"90">>;
getTagId(secureData) ->
    <<"91">>;
getTagId(signatureLength) ->
    <<"93">>;
getTagId(rawDataLength) ->
    <<"95">>;
getTagId(rawData) ->
    <<"96">>;
getTagId(possResend) ->
    <<"97">>;
getTagId(encryptMethod) ->
    <<"98">>;
getTagId(heartBtInt) ->
    <<"108">>;
getTagId(testReqID) ->
    <<"112">>;
getTagId(onBehalfOfCompID) ->
    <<"115">>;
getTagId(onBehalfOfSubID) ->
    <<"116">>;
getTagId(origSendingTime) ->
    <<"122">>;
getTagId(gapFillFlag) ->
    <<"123">>;
getTagId(deliverToCompID) ->
    <<"128">>;
getTagId(deliverToSubID) ->
    <<"129">>;
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
getTagId(xmlDataLen) ->
    <<"212">>;
getTagId(xmlData) ->
    <<"213">>;
getTagId(messageEncoding) ->
    <<"347">>;
getTagId(encodedTextLen) ->
    <<"354">>;
getTagId(encodedText) ->
    <<"355">>;
getTagId(lastMsgSeqNumProcessed) ->
    <<"369">>;
getTagId(refTagID) ->
    <<"371">>;
getTagId(refMsgType) ->
    <<"372">>;
getTagId(sessionRejectReason) ->
    <<"373">>;
getTagId(maxMessageSize) ->
    <<"383">>;
getTagId(testMessageIndicator) ->
    <<"464">>;
getTagId(username) ->
    <<"553">>;
getTagId(password) ->
    <<"554">>;
getTagId(noHops) ->
    <<"627">>;
getTagId(hopCompID) ->
    <<"628">>;
getTagId(hopSendingTime) ->
    <<"629">>;
getTagId(hopRefID) ->
    <<"630">>;
getTagId(nextExpectedMsgSeqNum) ->
    <<"789">>;
getTagId(newPassword) ->
    <<"925">>;
getTagId(applVerID) ->
    <<"1128">>;
getTagId(cstmApplVerID) ->
    <<"1129">>;
getTagId(refApplVerID) ->
    <<"1130">>;
getTagId(refCstmApplVerID) ->
    <<"1131">>;
getTagId(defaultApplVerID) ->
    <<"1137">>;
getTagId(applExtID) ->
    <<"1156">>;
getTagId(encryptedPasswordMethod) ->
    <<"1400">>;
getTagId(encryptedPasswordLen) ->
    <<"1401">>;
getTagId(encryptedPassword) ->
    <<"1402">>;
getTagId(encryptedNewPasswordLen) ->
    <<"1403">>;
getTagId(encryptedNewPassword) ->
    <<"1404">>;
getTagId(refApplExtID) ->
    <<"1406">>;
getTagId(defaultApplExtID) ->
    <<"1407">>;
getTagId(defaultCstmApplVerID) ->
    <<"1408">>;
getTagId(sessionStatus) ->
    <<"1409">>;
getTagId(_Name) ->
    error.
reconvert(beginSeqNo, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(bodyLength, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(endSeqNo, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(msgSeqNum, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(newSeqNo, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(possDupFlag, originalTransmission) -> 
    <<"N">>;
reconvert(possDupFlag, possibleDuplicate) -> 
    <<"Y">>;
reconvert(refSeqNum, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(secureDataLen, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(signatureLength, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(rawDataLength, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(possResend, originalTransmission) -> 
    <<"N">>;
reconvert(possResend, possibleResend) -> 
    <<"Y">>;
reconvert(encryptMethod, noneOther) -> 
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
reconvert(encryptMethod, pEMDESMD5) -> 
    <<"6">>;
reconvert(heartBtInt, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(gapFillFlag, sequenceResetIgnoreMsgSeqNum) -> 
    <<"N">>;
reconvert(gapFillFlag, gapFillMessageMsgSeqNumFieldValid) -> 
    <<"Y">>;
reconvert(resetSeqNumFlag, no) -> 
    <<"N">>;
reconvert(resetSeqNumFlag, yesResetSequenceNumbers) -> 
    <<"Y">>;
reconvert(xmlDataLen, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(encodedTextLen, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(lastMsgSeqNumProcessed, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(refTagID, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
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
reconvert(sessionRejectReason, compidProblem) -> 
    <<"9">>;
reconvert(sessionRejectReason, sendingtimeAccuracyProblem) -> 
    <<"10">>;
reconvert(sessionRejectReason, invalidMsgtype) -> 
    <<"11">>;
reconvert(sessionRejectReason, xMLValidationError) -> 
    <<"12">>;
reconvert(sessionRejectReason, tagAppearsMoreThanOnce) -> 
    <<"13">>;
reconvert(sessionRejectReason, tagSpecifiedOutOfRequiredOrder) -> 
    <<"14">>;
reconvert(sessionRejectReason, repeatingGroupFieldsOutOfOrder) -> 
    <<"15">>;
reconvert(sessionRejectReason, incorrectNumingroupCountForRepeatingGroup) -> 
    <<"16">>;
reconvert(sessionRejectReason, nonDataValueIncludesFieldDelimiter) -> 
    <<"17">>;
reconvert(sessionRejectReason, invalidUnsupportedApplicationVersion) -> 
    <<"18">>;
reconvert(sessionRejectReason, other) -> 
    <<"99">>;
reconvert(maxMessageSize, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(testMessageIndicator, fales) -> 
    <<"N">>;
reconvert(testMessageIndicator, true) -> 
    <<"Y">>;
reconvert(noHops, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(hopRefID, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(nextExpectedMsgSeqNum, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(applVerID, fIX27) -> 
    <<"0">>;
reconvert(applVerID, fIX30) -> 
    <<"1">>;
reconvert(applVerID, fIX40) -> 
    <<"2">>;
reconvert(applVerID, fIX41) -> 
    <<"3">>;
reconvert(applVerID, fIX42) -> 
    <<"4">>;
reconvert(applVerID, fIX43) -> 
    <<"5">>;
reconvert(applVerID, fIX44) -> 
    <<"6">>;
reconvert(applVerID, fIX50) -> 
    <<"7">>;
reconvert(applVerID, fIX50SP1) -> 
    <<"8">>;
reconvert(applExtID, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(encryptedPasswordMethod, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(encryptedPasswordLen, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(encryptedNewPasswordLen, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(refApplExtID, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(defaultApplExtID, Int) -> 
    erlang:list_to_binary(erlang:integer_to_list(Int));
reconvert(sessionStatus, sessionActive) -> 
    <<"0">>;
reconvert(sessionStatus, sessionPasswordChanged) -> 
    <<"1">>;
reconvert(sessionStatus, sessionPasswordDueToExpire) -> 
    <<"2">>;
reconvert(sessionStatus, newSessionPasswordDoesNotComplyWithPolicy) -> 
    <<"3">>;
reconvert(sessionStatus, sessionLogoutComplete) -> 
    <<"4">>;
reconvert(sessionStatus, invalidUsernameOrPassword) -> 
    <<"5">>;
reconvert(sessionStatus, accountLocked) -> 
    <<"6">>;
reconvert(sessionStatus, logonsAreNotAllowedAtThisTime) -> 
    <<"7">>;
reconvert(sessionStatus, passwordExpired) -> 
    <<"8">>;
reconvert(_Name, Bin) ->
    Bin.
bin_to_num(Bin) ->
    N = erlang:binary_to_list(Bin),
    case string:to_float(N) of
        {error,no_float} -> erlang:list_to_integer(N);
        {F,_Rest} -> F
    end.
