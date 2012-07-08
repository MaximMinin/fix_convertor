-type length () :: int().
-type localmmktdate () :: string().
-type int () :: number().
-type time () :: string().
-type date () :: string().
-type data () :: string().
-type account () :: char.
-type advId () :: int.
-type advRefID () :: int.
-type advSide () :: buy|sell|trade|cross.
-type advTransType () :: cancel|new|replace.
-type avgPx () :: float.
-type beginSeqNo () :: int.
-type beginString () :: char.
-type bodyLength () :: int.
-type checkSum () :: char.
-type clOrdID () :: char.
-type commission () :: float.
-type commType () :: perUnit|percent|absolute.
-type cumQty () :: int.
-type currency () :: char.
-type endSeqNo () :: int.
-type execID () :: int.
-type execInst () :: stayOnOfferSide|notHeld|work|goAlong|overTheDay|held|participateDoNotInitiate|strictScale|tryToScale|stayOnBidSide|noCross|oKToCross|callFirst|percentOfVolume|doNotIncrease|doNotReduce|allOrNone|institutionsOnly|lastPeg|midPricePeg|nonNegotiable|openingPeg|marketPeg|primaryPeg|suspend.
-type execRefID () :: int.
-type execTransType () :: new|cancel|correct|status.
-type handlInst () :: automatedExecutionNoIntervention|automatedExecutionInterventionOK|manualOrder.
-type iDSource () :: cUSIP|sEDOL|qUIK|iSINNumber|rICCode.
-type iOIid () :: int.
-type iOIOthSvc () :: autex|bridge.
-type iOIQltyInd () :: high|low|medium.
-type iOIRefID () :: int.
-type iOIShares () :: large|medium|small.
-type iOITransType () :: cancel|new|replace.
-type lastCapacity () :: agent|crossAsAgent|crossAsPrincipal|principal.
-type lastMkt () :: char.
-type lastPx () :: float.
-type lastShares () :: int.
-type linesOfText () :: int.
-type msgSeqNum () :: int.
-type msgType () :: heartbeat|testRequest|resendRequest|reject|sequenceReset|logout|iOI|advertisement|executionReport|orderCancelReject|logon|news|email|newOrderSingle|newOrderList|orderCancelRequest|orderCancelReplaceRequest|orderStatusRequest|allocationInstruction|listCancelRequest|listExecute|listStatusRequest|listStatus|allocationInstructionAck|dontKnowTrade|quoteRequest|quote.
-type newSeqNo () :: int.
-type orderID () :: char.
-type orderQty () :: int.
-type ordStatus () :: new|partiallyFilled|filled|doneForDay|canceled|replaced|pendingCancel|stopped|rejected|suspended|pendingNew|calculated|expired.
-type ordType () :: market|limit|stop|stopLimit|marketOnClose|withOrWithout|limitOrBetter|limitWithOrWithout|onBasis|onClose|limitOnClose|forexMarket|previouslyQuoted|previouslyIndicated|pegged.
-type origClOrdID () :: char.
-type origTime () :: time.
-type possDupFlag () :: originalTransmission|possibleDuplicate.
-type price () :: float.
-type refSeqNum () :: int.
-type relatdSym () :: char.
-type rule80A () :: agencySingleOrder|proprietaryNonAlgo|programOrderMember|individualInvestor|proprietaryAlgo|agencyAlgo|programOrderOtherMember|agentForOtherMember|agencyIndexArb|allOtherOrdersAsAgentForOtherMember|agencyNonAlgo.
-type securityID () :: char.
-type senderCompID () :: char.
-type senderSubID () :: char.
-type sendingTime () :: time.
-type shares () :: int.
-type side () :: buy|sell|buyMinus|sellPlus|sellShort|sellShortExempt.
-type symbol () :: char.
-type targetCompID () :: char.
-type targetSubID () :: char.
-type text () :: char.
-type timeInForce () :: day|goodTillCancel|atTheOpening|immediateOrCancel|fillOrKill|goodTillCrossing|goodTillDate.
-type transactTime () :: time.
-type urgency () :: normal|flash|background.
-type validUntilTime () :: time.
-type settlmntTyp () :: regular|cash|nextDay|tPlus2|tPlus3|tPlus4|future|whenAndIfIssued|sellersOption|tPlus5.
-type futSettDate () :: date.
-type symbolSfx () :: char.
-type listID () :: char.
-type listSeqNo () :: int.
-type listNoOrds () :: int.
-type listExecInst () :: char.
-type allocID () :: int.
-type allocTransType () :: new|replace|cancel.
-type refAllocID () :: int.
-type noOrders () :: int.
-type avgPrxPrecision () :: int.
-type tradeDate () :: date.
-type execBroker () :: char.
-type openClose () :: char.
-type noAllocs () :: int.
-type allocAccount () :: char.
-type allocShares () :: int.
-type processCode () :: regular|softDollar|stepIn|stepOut|softDollarStepIn|softDollarStepOut|planSponsor.
-type noRpts () :: int.
-type rptSeq () :: int.
-type cxlQty () :: int.
-type noDlvyInst () :: int.
-type dlvyInst () :: char.
-type allocStatus () :: accepted|blockLevelReject|accountLevelReject|received.
-type allocRejCode () :: unknownAccount|incorrectQuantity|incorrectAveragegPrice|unknownExecutingBrokerMnemonic|commissionDifference|unknownOrderID|unknownListID|otherSeeText.
-type signature () :: data.
-type secureDataLen () :: length.
-type secureData () :: data.
-type brokerOfCredit () :: char.
-type signatureLength () :: length.
-type emailType () :: new|reply|adminReply.
-type rawDataLength () :: length.
-type rawData () :: data.
-type possResend () :: char.
-type encryptMethod () :: none|pKCS|dES|pKCSDES|pGPDES|pGPDESMD5|pEM.
-type stopPx () :: float.
-type exDestination () :: none|pOSIT.
-type cxlRejReason () :: tooLateToCancel|unknownOrder.
-type ordRejReason () :: brokerCredit|unknownSymbol|exchangeClosed|orderExceedsLimit|tooLateToEnter.
-type iOIQualifier () :: allOrNone|atTheClose|inTouchWith|limit|moreBehind|atTheOpen|takingAPosition|atTheMarket|portfolioShown|throughTheDay|versus|indication|crossingOpportunity.
-type waveNo () :: char.
-type issuer () :: char.
-type securityDesc () :: char.
-type heartBtInt () :: int.
-type clientID () :: char.
-type minQty () :: int.
-type maxFloor () :: int.
-type testReqID () :: char.
-type reportToExch () :: senderReports|receiverReports.
-type locateReqd () :: no|yes.
-type onBehalfOfCompID () :: char.
-type onBehalfOfSubID () :: char.
-type quoteID () :: char.
-type netMoney () :: float.
-type settlCurrAmt () :: float.
-type settlCurrency () :: char.
-type forexReq () :: doNotExecuteForexAfterSecurityTrade|executeForexAfterSecurityTrade.
-type origSendingTime () :: time.
-type gapFillFlag () :: sequenceReset|gapFillMessage.
-type noExecs () :: int.
-type cxlType () :: fullRemainingQuantity|partialCancel.
-type expireTime () :: time.
-type dKReason () :: unknownSymbol|wrongSide|quantityExceedsOrder|noMatchingOrder|priceExceedsLimit|other.
-type deliverToCompID () :: char.
-type deliverToSubID () :: char.
-type iOINaturalFlag () :: notNatural|natural.
-type quoteReqID () :: char.
-type bidPx () :: float.
-type offerPx () :: float.
-type bidSize () :: int.
-type offerSize () :: int.
-type noMiscFees () :: int.
-type miscFeeAmt () :: float.
-type miscFeeCurr () :: char.
-type miscFeeType () :: regulatory|tax|localCommission|exchangeFees|stamp|levy|other.
-type prevClosePx () :: float.
-record( standardHeader, {beginString :: beginString(), bodyLength :: bodyLength(), msgType :: msgType(), senderCompID :: senderCompID(), targetCompID :: targetCompID(), onBehalfOfCompID :: onBehalfOfCompID(), deliverToCompID :: deliverToCompID(), secureDataLen :: secureDataLen(), secureData :: secureData(), msgSeqNum :: msgSeqNum(), senderSubID :: senderSubID(), targetSubID :: targetSubID(), onBehalfOfSubID :: onBehalfOfSubID(), deliverToSubID :: deliverToSubID(), possDupFlag :: possDupFlag(), possResend :: possResend(), sendingTime :: sendingTime(), origSendingTime :: origSendingTime()}).
-record( standardTrailer, {signatureLength :: signatureLength(), signature :: signature(), checkSum :: checkSum()}).
-record( heartbeat, {standardHeader :: #standardHeader{}, testReqID :: testReqID(), standardTrailer :: #standardTrailer{}}).
-record( testRequest, {standardHeader :: #standardHeader{}, testReqID :: testReqID(), standardTrailer :: #standardTrailer{}}).
-record( resendRequest, {standardHeader :: #standardHeader{}, beginSeqNo :: beginSeqNo(), endSeqNo :: endSeqNo(), standardTrailer :: #standardTrailer{}}).
-record( reject, {standardHeader :: #standardHeader{}, refSeqNum :: refSeqNum(), text :: text(), standardTrailer :: #standardTrailer{}}).
-record( sequenceReset, {standardHeader :: #standardHeader{}, gapFillFlag :: gapFillFlag(), newSeqNo :: newSeqNo(), standardTrailer :: #standardTrailer{}}).
-record( logout, {standardHeader :: #standardHeader{}, text :: text(), standardTrailer :: #standardTrailer{}}).
-record( iOI, {standardHeader :: #standardHeader{}, iOIid :: iOIid(), iOITransType :: iOITransType(), iOIRefID :: iOIRefID(), symbol :: symbol(), symbolSfx :: symbolSfx(), securityID :: securityID(), iDSource :: iDSource(), issuer :: issuer(), securityDesc :: securityDesc(), side :: side(), iOIShares :: iOIShares(), price :: price(), currency :: currency(), validUntilTime :: validUntilTime(), iOIQltyInd :: iOIQltyInd(), iOIOthSvc :: iOIOthSvc(), iOINaturalFlag :: iOINaturalFlag(), iOIQualifier :: iOIQualifier(), text :: text(), standardTrailer :: #standardTrailer{}}).
-record( advertisement, {standardHeader :: #standardHeader{}, advId :: advId(), advTransType :: advTransType(), advRefID :: advRefID(), symbol :: symbol(), symbolSfx :: symbolSfx(), securityID :: securityID(), iDSource :: iDSource(), issuer :: issuer(), securityDesc :: securityDesc(), advSide :: advSide(), shares :: shares(), price :: price(), currency :: currency(), transactTime :: transactTime(), text :: text(), standardTrailer :: #standardTrailer{}}).
-record( repeatingReg_executionReport_136, {miscFeeAmt :: miscFeeAmt(), miscFeeCurr :: miscFeeCurr(), miscFeeType :: miscFeeType()}).
-record( executionReport, {standardHeader :: #standardHeader{}, orderID :: orderID(), clOrdID :: clOrdID(), clientID :: clientID(), execBroker :: execBroker(), listID :: listID(), execID :: execID(), execTransType :: execTransType(), execRefID :: execRefID(), ordStatus :: ordStatus(), ordRejReason :: ordRejReason(), account :: account(), settlmntTyp :: settlmntTyp(), futSettDate :: futSettDate(), symbol :: symbol(), symbolSfx :: symbolSfx(), securityID :: securityID(), iDSource :: iDSource(), issuer :: issuer(), securityDesc :: securityDesc(), side :: side(), orderQty :: orderQty(), ordType :: ordType(), price :: price(), stopPx :: stopPx(), currency :: currency(), timeInForce :: timeInForce(), expireTime :: expireTime(), execInst :: execInst(), rule80A :: rule80A(), lastShares :: lastShares(), lastPx :: lastPx(), lastMkt :: lastMkt(), lastCapacity :: lastCapacity(), cumQty :: cumQty(), avgPx :: avgPx(), tradeDate :: tradeDate(), transactTime :: transactTime(), reportToExch :: reportToExch(), commission :: commission(), commType :: commType(), repeatingReg_executionReport_136 = [#repeatingReg_executionReport_136{}], netMoney :: netMoney(), settlCurrAmt :: settlCurrAmt(), settlCurrency :: settlCurrency(), text :: text(), standardTrailer :: #standardTrailer{}}).
-record( orderCancelReject, {standardHeader :: #standardHeader{}, orderID :: orderID(), clOrdID :: clOrdID(), clientID :: clientID(), execBroker :: execBroker(), listID :: listID(), cxlRejReason :: cxlRejReason(), text :: text(), standardTrailer :: #standardTrailer{}}).
-record( logon, {standardHeader :: #standardHeader{}, encryptMethod :: encryptMethod(), heartBtInt :: heartBtInt(), rawDataLength :: rawDataLength(), rawData :: rawData(), standardTrailer :: #standardTrailer{}}).
-record( news, {standardHeader :: #standardHeader{}, origTime :: origTime(), urgency :: urgency(), relatdSym :: relatdSym(), linesOfText :: linesOfText(), text :: text(), rawDataLength :: rawDataLength(), rawData :: rawData(), standardTrailer :: #standardTrailer{}}).
-record( email, {standardHeader :: #standardHeader{}, emailType :: emailType(), origTime :: origTime(), relatdSym :: relatdSym(), orderID :: orderID(), clOrdID :: clOrdID(), linesOfText :: linesOfText(), text :: text(), rawDataLength :: rawDataLength(), rawData :: rawData(), standardTrailer :: #standardTrailer{}}).
-record( orderSingle, {standardHeader :: #standardHeader{}, clOrdID :: clOrdID(), clientID :: clientID(), execBroker :: execBroker(), account :: account(), settlmntTyp :: settlmntTyp(), futSettDate :: futSettDate(), handlInst :: handlInst(), execInst :: execInst(), minQty :: minQty(), maxFloor :: maxFloor(), exDestination :: exDestination(), processCode :: processCode(), symbol :: symbol(), symbolSfx :: symbolSfx(), securityID :: securityID(), iDSource :: iDSource(), issuer :: issuer(), securityDesc :: securityDesc(), prevClosePx :: prevClosePx(), side :: side(), locateReqd :: locateReqd(), orderQty :: orderQty(), ordType :: ordType(), price :: price(), stopPx :: stopPx(), currency :: currency(), iOIid :: iOIid(), quoteID :: quoteID(), timeInForce :: timeInForce(), expireTime :: expireTime(), commission :: commission(), commType :: commType(), rule80A :: rule80A(), forexReq :: forexReq(), settlCurrency :: settlCurrency(), text :: text(), standardTrailer :: #standardTrailer{}}).
-record( orderList, {standardHeader :: #standardHeader{}, listID :: listID(), waveNo :: waveNo(), listSeqNo :: listSeqNo(), listNoOrds :: listNoOrds(), listExecInst :: listExecInst(), clOrdID :: clOrdID(), clientID :: clientID(), execBroker :: execBroker(), account :: account(), settlmntTyp :: settlmntTyp(), futSettDate :: futSettDate(), handlInst :: handlInst(), execInst :: execInst(), minQty :: minQty(), maxFloor :: maxFloor(), exDestination :: exDestination(), processCode :: processCode(), symbol :: symbol(), symbolSfx :: symbolSfx(), securityID :: securityID(), iDSource :: iDSource(), issuer :: issuer(), securityDesc :: securityDesc(), prevClosePx :: prevClosePx(), side :: side(), locateReqd :: locateReqd(), orderQty :: orderQty(), ordType :: ordType(), price :: price(), stopPx :: stopPx(), currency :: currency(), timeInForce :: timeInForce(), expireTime :: expireTime(), commission :: commission(), commType :: commType(), rule80A :: rule80A(), forexReq :: forexReq(), settlCurrency :: settlCurrency(), text :: text(), standardTrailer :: #standardTrailer{}}).
-record( orderCancelRequest, {standardHeader :: #standardHeader{}, origClOrdID :: origClOrdID(), orderID :: orderID(), clOrdID :: clOrdID(), listID :: listID(), cxlType :: cxlType(), clientID :: clientID(), execBroker :: execBroker(), symbol :: symbol(), symbolSfx :: symbolSfx(), securityID :: securityID(), iDSource :: iDSource(), issuer :: issuer(), securityDesc :: securityDesc(), side :: side(), orderQty :: orderQty(), text :: text(), standardTrailer :: #standardTrailer{}}).
-record( orderCancelReplaceRequest, {standardHeader :: #standardHeader{}, orderID :: orderID(), clientID :: clientID(), execBroker :: execBroker(), origClOrdID :: origClOrdID(), clOrdID :: clOrdID(), listID :: listID(), account :: account(), settlmntTyp :: settlmntTyp(), futSettDate :: futSettDate(), handlInst :: handlInst(), execInst :: execInst(), minQty :: minQty(), maxFloor :: maxFloor(), exDestination :: exDestination(), symbol :: symbol(), symbolSfx :: symbolSfx(), securityID :: securityID(), iDSource :: iDSource(), issuer :: issuer(), securityDesc :: securityDesc(), side :: side(), orderQty :: orderQty(), ordType :: ordType(), price :: price(), stopPx :: stopPx(), currency :: currency(), timeInForce :: timeInForce(), expireTime :: expireTime(), commission :: commission(), commType :: commType(), rule80A :: rule80A(), forexReq :: forexReq(), settlCurrency :: settlCurrency(), text :: text(), standardTrailer :: #standardTrailer{}}).
-record( orderStatusRequest, {standardHeader :: #standardHeader{}, orderID :: orderID(), clOrdID :: clOrdID(), clientID :: clientID(), execBroker :: execBroker(), symbol :: symbol(), symbolSfx :: symbolSfx(), issuer :: issuer(), securityDesc :: securityDesc(), side :: side(), standardTrailer :: #standardTrailer{}}).
-record( repeatingReg_allocation_73, {clOrdID :: clOrdID(), orderID :: orderID(), listID :: listID(), waveNo :: waveNo()}).
-record( repeatingReg_allocation_124, {execID :: execID(), lastShares :: lastShares(), lastPx :: lastPx(), lastMkt :: lastMkt()}).
-record( repeatingReg_allocation_136, {miscFeeAmt :: miscFeeAmt(), miscFeeCurr :: miscFeeCurr(), miscFeeType :: miscFeeType()}).
-record( repeatingReg_allocation_78, {allocAccount :: allocAccount(), allocShares :: allocShares(), processCode :: processCode(), execBroker :: execBroker(), clientID :: clientID(), commission :: commission(), commType :: commType(), noDlvyInst :: noDlvyInst(), brokerOfCredit :: brokerOfCredit(), dlvyInst :: dlvyInst()}).
-record( allocation, {standardHeader :: #standardHeader{}, allocID :: allocID(), allocTransType :: allocTransType(), refAllocID :: refAllocID(), repeatingReg_allocation_73 = [#repeatingReg_allocation_73{}], repeatingReg_allocation_124 = [#repeatingReg_allocation_124{}], side :: side(), symbol :: symbol(), symbolSfx :: symbolSfx(), securityID :: securityID(), iDSource :: iDSource(), issuer :: issuer(), securityDesc :: securityDesc(), shares :: shares(), avgPx :: avgPx(), currency :: currency(), avgPrxPrecision :: avgPrxPrecision(), tradeDate :: tradeDate(), transactTime :: transactTime(), settlmntTyp :: settlmntTyp(), futSettDate :: futSettDate(), netMoney :: netMoney(), repeatingReg_allocation_136 = [#repeatingReg_allocation_136{}], settlCurrAmt :: settlCurrAmt(), settlCurrency :: settlCurrency(), openClose :: openClose(), text :: text(), repeatingReg_allocation_78 = [#repeatingReg_allocation_78{}], standardTrailer :: #standardTrailer{}}).
-record( listCancelRequest, {standardHeader :: #standardHeader{}, listID :: listID(), waveNo :: waveNo(), text :: text(), standardTrailer :: #standardTrailer{}}).
-record( listExecute, {standardHeader :: #standardHeader{}, listID :: listID(), waveNo :: waveNo(), text :: text(), standardTrailer :: #standardTrailer{}}).
-record( listStatusRequest, {standardHeader :: #standardHeader{}, listID :: listID(), waveNo :: waveNo(), text :: text(), standardTrailer :: #standardTrailer{}}).
-record( repeatingReg_listStatus_73, {clOrdID :: clOrdID(), cumQty :: cumQty(), cxlQty :: cxlQty(), avgPx :: avgPx()}).
-record( listStatus, {standardHeader :: #standardHeader{}, listID :: listID(), waveNo :: waveNo(), noRpts :: noRpts(), rptSeq :: rptSeq(), repeatingReg_listStatus_73 = [#repeatingReg_listStatus_73{}], standardTrailer :: #standardTrailer{}}).
-record( allocationInstructionAck, {standardHeader :: #standardHeader{}, clientID :: clientID(), execBroker :: execBroker(), allocID :: allocID(), tradeDate :: tradeDate(), transactTime :: transactTime(), allocStatus :: allocStatus(), allocRejCode :: allocRejCode(), text :: text(), standardTrailer :: #standardTrailer{}}).
-record( dontKnowTrade, {standardHeader :: #standardHeader{}, orderID :: orderID(), execID :: execID(), dKReason :: dKReason(), symbol :: symbol(), side :: side(), orderQty :: orderQty(), lastShares :: lastShares(), lastPx :: lastPx(), text :: text(), standardTrailer :: #standardTrailer{}}).
-record( quoteRequest, {standardHeader :: #standardHeader{}, quoteReqID :: quoteReqID(), symbol :: symbol(), symbolSfx :: symbolSfx(), securityID :: securityID(), iDSource :: iDSource(), issuer :: issuer(), securityDesc :: securityDesc(), prevClosePx :: prevClosePx(), side :: side(), orderQty :: orderQty(), standardTrailer :: #standardTrailer{}}).
-record( quote, {standardHeader :: #standardHeader{}, quoteReqID :: quoteReqID(), quoteID :: quoteID(), symbol :: symbol(), symbolSfx :: symbolSfx(), securityID :: securityID(), iDSource :: iDSource(), issuer :: issuer(), securityDesc :: securityDesc(), bidPx :: bidPx(), offerPx :: offerPx(), bidSize :: bidSize(), offerSize :: offerSize(), validUntilTime :: validUntilTime(), standardTrailer :: #standardTrailer{}}).
