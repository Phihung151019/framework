.class public Lgov/nist/javax/sip/stack/SIPClientTransaction;
.super Lgov/nist/javax/sip/stack/SIPTransaction;
.source "SIPClientTransaction.java"

# interfaces
.implements Lgov/nist/javax/sip/stack/ServerResponseInterface;
.implements Ljavax/sip/ClientTransaction;
.implements Lgov/nist/javax/sip/ClientTransactionExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/stack/SIPClientTransaction$TransactionTimer;
    }
.end annotation


# instance fields
.field private greylist callingStateTimeoutCount:I

.field private greylist defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

.field private greylist lastRequest:Lgov/nist/javax/sip/message/SIPRequest;

.field private greylist nextHop:Ljavax/sip/address/Hop;

.field private greylist notifyOnRetransmit:Z

.field private transient greylist respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

.field private greylist sipDialogs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lgov/nist/javax/sip/stack/SIPDialog;",
            ">;"
        }
    .end annotation
.end field

.field private greylist timeoutIfStillInCallingState:Z

.field private greylist viaHost:Ljava/lang/String;

.field private greylist viaPort:I


# direct methods
.method protected constructor greylist <init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .locals 3
    .param p1, "newSIPStack"    # Lgov/nist/javax/sip/stack/SIPTransactionStack;
    .param p2, "newChannelToUse"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .line 287
    invoke-direct {p0, p1, p2}, Lgov/nist/javax/sip/stack/SIPTransaction;-><init>(Lgov/nist/javax/sip/stack/SIPTransactionStack;Lgov/nist/javax/sip/stack/MessageChannel;)V

    .line 291
    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/Utils;->generateBranchId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setBranch(Ljava/lang/String;)V

    .line 292
    iget-object v0, p2, Lgov/nist/javax/sip/stack/MessageChannel;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    .line 293
    invoke-virtual {p0, p2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setEncapsulatedChannel(Lgov/nist/javax/sip/stack/MessageChannel;)V

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->notifyOnRetransmit:Z

    .line 295
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->timeoutIfStillInCallingState:Z

    .line 302
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating clientTransaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 307
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 308
    return-void
.end method

.method private final greylist createErrorAck()Ljavax/sip/message/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 1214
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    .line 1215
    .local v0, "originalRequest":Lgov/nist/javax/sip/message/SIPRequest;
    if-eqz v0, :cond_4

    .line 1217
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INVITE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1219
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-eqz v1, :cond_2

    .line 1221
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_1

    .line 1222
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1223
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastResponse = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1225
    :cond_0
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Cannot ACK a provisional response!"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1227
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/To;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createErrorAck(Lgov/nist/javax/sip/header/To;)Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    return-object v1

    .line 1220
    :cond_2
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "bad Transaction state"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1218
    :cond_3
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Can only ACK an INVITE!"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1216
    :cond_4
    new-instance v1, Ljavax/sip/SipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist inviteClientTransaction(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V
    .locals 7
    .param p1, "transactionResponse"    # Lgov/nist/javax/sip/message/SIPResponse;
    .param p2, "sourceChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;
    .param p3, "dialog"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 725
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v0

    .line 727
    .local v0, "statusCode":I
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 728
    const/4 v1, 0x0

    .line 729
    .local v1, "ackAlreadySent":Z
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->isAckSeen()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 730
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v2

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    .line 731
    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 732
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    move-result-object v2

    .line 733
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastAckSent()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    move-result-object v3

    .line 732
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 735
    const/4 v1, 0x1

    .line 739
    :cond_0
    if-eqz p3, :cond_2

    if-eqz v1, :cond_2

    .line 740
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 744
    :try_start_0
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 745
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "resending ACK"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 747
    :cond_1
    invoke-virtual {p3}, Lgov/nist/javax/sip/stack/SIPDialog;->resendAck()V
    :try_end_0
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    goto :goto_0

    .line 748
    :catch_0
    move-exception v2

    .line 753
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    .line 754
    return-void

    .line 755
    .end local v1    # "ackAlreadySent":Z
    :cond_3
    sget-object v1, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x2bb

    const/16 v6, 0x12c

    if-ne v1, v2, :cond_b

    .line 756
    div-int/lit8 v1, v0, 0x64

    if-ne v1, v4, :cond_5

    .line 761
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->disableRetransmissionTimer()V

    .line 762
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->disableTimeoutTimer()V

    .line 763
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 766
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    if-eqz v1, :cond_4

    .line 767
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    invoke-interface {v1, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    goto/16 :goto_7

    .line 769
    :cond_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    goto/16 :goto_7

    .line 772
    :cond_5
    div-int/lit8 v1, v0, 0x64

    if-ne v1, v3, :cond_7

    .line 773
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->disableRetransmissionTimer()V

    .line 774
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->disableTimeoutTimer()V

    .line 775
    sget-object v1, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 777
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    if-eqz v1, :cond_6

    .line 778
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    invoke-interface {v1, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    goto/16 :goto_7

    .line 780
    :cond_6
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    goto/16 :goto_7

    .line 783
    :cond_7
    if-gt v6, v0, :cond_14

    if-gt v0, v5, :cond_14

    .line 787
    :try_start_1
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->createErrorAck()Ljavax/sip/message/Request;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 793
    goto :goto_1

    .line 789
    :catch_1
    move-exception v1

    .line 790
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Unexpected Exception sending ACK -- sending error AcK "

    invoke-interface {v2, v3, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 802
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    if-eqz v1, :cond_8

    .line 803
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    invoke-interface {v1, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    goto :goto_2

    .line 805
    :cond_8
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    .line 808
    :goto_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 809
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseAckSem()V

    .line 812
    :cond_9
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v1

    if-nez v1, :cond_a

    .line 813
    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 814
    iget v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->TIMER_D:I

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V

    goto/16 :goto_7

    .line 817
    :cond_a
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    goto/16 :goto_7

    .line 820
    :cond_b
    sget-object v1, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_13

    .line 821
    div-int/lit8 v1, v0, 0x64

    if-ne v1, v3, :cond_d

    .line 822
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    if-eqz v1, :cond_c

    .line 823
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    invoke-interface {v1, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    goto/16 :goto_7

    .line 825
    :cond_c
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    goto/16 :goto_7

    .line 827
    :cond_d
    div-int/lit8 v1, v0, 0x64

    if-ne v1, v4, :cond_f

    .line 828
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 829
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    if-eqz v1, :cond_e

    .line 830
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    invoke-interface {v1, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    goto/16 :goto_7

    .line 832
    :cond_e
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    goto/16 :goto_7

    .line 835
    :cond_f
    if-gt v6, v0, :cond_14

    if-gt v0, v5, :cond_14

    .line 838
    :try_start_2
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->createErrorAck()Ljavax/sip/message/Request;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 841
    goto :goto_3

    .line 839
    :catch_2
    move-exception v1

    .line 840
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 843
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 844
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->releaseAckSem()V

    .line 847
    :cond_10
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v1

    if-nez v1, :cond_11

    .line 848
    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 849
    iget v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->TIMER_D:I

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V

    goto :goto_4

    .line 851
    :cond_11
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 855
    :goto_4
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    if-eqz v1, :cond_12

    .line 856
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    invoke-interface {v1, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    goto :goto_7

    .line 858
    :cond_12
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    goto :goto_7

    .line 866
    :cond_13
    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_14

    .line 867
    if-gt v6, v0, :cond_14

    if-gt v0, v5, :cond_14

    .line 870
    :try_start_3
    invoke-direct {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->createErrorAck()Ljavax/sip/message/Request;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 874
    :catchall_0
    move-exception v1

    goto :goto_6

    .line 871
    :catch_3
    move-exception v1

    .line 872
    .restart local v1    # "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 874
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_5
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    .line 875
    goto :goto_7

    .line 874
    :goto_6
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    .line 875
    throw v1

    .line 880
    :cond_14
    :goto_7
    return-void
.end method

.method private greylist nonInviteClientTransaction(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V
    .locals 6
    .param p1, "transactionResponse"    # Lgov/nist/javax/sip/message/SIPResponse;
    .param p2, "sourceChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;
    .param p3, "sipDialog"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v0

    .line 609
    .local v0, "statusCode":I
    sget-object v1, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    const/16 v3, 0x2bb

    const/16 v4, 0xc8

    const/4 v5, 0x1

    if-ne v1, v2, :cond_4

    .line 610
    div-int/lit8 v1, v0, 0x64

    if-ne v1, v5, :cond_1

    .line 611
    sget-object v1, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 612
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableRetransmissionTimer(I)V

    .line 613
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V

    .line 616
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    if-eqz v1, :cond_0

    .line 617
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    invoke-interface {v1, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    goto/16 :goto_2

    .line 619
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    goto/16 :goto_2

    .line 621
    :cond_1
    if-gt v4, v0, :cond_b

    if-gt v0, v3, :cond_b

    .line 623
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    if-eqz v1, :cond_2

    .line 624
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    invoke-interface {v1, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    goto :goto_0

    .line 626
    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    .line 628
    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 629
    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 630
    iget v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->TIMER_K:I

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V

    goto/16 :goto_2

    .line 632
    :cond_3
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    goto/16 :goto_2

    .line 635
    :cond_4
    sget-object v1, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_9

    .line 636
    div-int/lit8 v1, v0, 0x64

    if-ne v1, v5, :cond_6

    .line 637
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    if-eqz v1, :cond_5

    .line 638
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    invoke-interface {v1, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    goto :goto_2

    .line 640
    :cond_5
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    goto :goto_2

    .line 642
    :cond_6
    if-gt v4, v0, :cond_b

    if-gt v0, v3, :cond_b

    .line 643
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    if-eqz v1, :cond_7

    .line 644
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    invoke-interface {v1, p1, p0, p3}, Lgov/nist/javax/sip/stack/ServerResponseInterface;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    goto :goto_1

    .line 646
    :cond_7
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    .line 648
    :goto_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->disableRetransmissionTimer()V

    .line 649
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->disableTimeoutTimer()V

    .line 650
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v1

    if-nez v1, :cond_8

    .line 651
    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 652
    iget v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->TIMER_K:I

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V

    goto :goto_2

    .line 654
    :cond_8
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    goto :goto_2

    .line 658
    :cond_9
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 659
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Not sending response to TU! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 660
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 659
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 662
    :cond_a
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->semRelease()V

    .line 664
    :cond_b
    :goto_2
    return-void
.end method


# virtual methods
.method public greylist alertIfStillInCallingStateBy(I)V
    .locals 1
    .param p1, "count"    # I

    .line 1564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->timeoutIfStillInCallingState:Z

    .line 1565
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->callingStateTimeoutCount:I

    .line 1566
    return-void
.end method

.method public greylist checkFromTag(Lgov/nist/javax/sip/message/SIPResponse;)Z
    .locals 5
    .param p1, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;

    .line 1334
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    move-result-object v0

    .line 1335
    .local v0, "originalFromTag":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 1336
    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    xor-int/2addr v3, v4

    const-string v4, "From tag mismatch -- dropping response"

    if-eqz v3, :cond_3

    .line 1337
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1338
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1339
    :cond_2
    return v1

    .line 1341
    :cond_3
    if-eqz v0, :cond_5

    .line 1342
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFrom()Ljavax/sip/header/FromHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1343
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1344
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    invoke-interface {v2, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1345
    :cond_4
    return v1

    .line 1348
    :cond_5
    return v2
.end method

.method public greylist clearState()V
    .locals 0

    .line 1278
    return-void
.end method

.method public greylist createAck()Ljavax/sip/message/Request;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 1126
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    .line 1127
    .local v0, "originalRequest":Lgov/nist/javax/sip/message/SIPRequest;
    if-eqz v0, :cond_c

    .line 1129
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1131
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-eqz v1, :cond_a

    .line 1133
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_1

    .line 1134
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1135
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastResponse = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1137
    :cond_0
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Cannot ACK a provisional response!"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1139
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getTo()Ljavax/sip/header/ToHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/To;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->createAckRequest(Lgov/nist/javax/sip/header/To;)Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    .line 1141
    .local v1, "ackRequest":Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPResponse;->getRecordRouteHeaders()Lgov/nist/javax/sip/header/RecordRouteList;

    move-result-object v2

    .line 1142
    .local v2, "recordRouteList":Lgov/nist/javax/sip/header/RecordRouteList;
    if-nez v2, :cond_3

    .line 1149
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    .line 1150
    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 1151
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/Contact;

    .line 1152
    .local v3, "contact":Lgov/nist/javax/sip/header/Contact;
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/Contact;->getAddress()Ljavax/sip/address/Address;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v4

    .line 1153
    invoke-interface {v4}, Ljavax/sip/address/URI;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/sip/address/URI;

    .line 1154
    .local v4, "uri":Ljavax/sip/address/URI;
    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    .line 1156
    .end local v3    # "contact":Lgov/nist/javax/sip/header/Contact;
    .end local v4    # "uri":Ljavax/sip/address/URI;
    :cond_2
    return-object v1

    .line 1159
    :cond_3
    const-string v3, "Route"

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->removeHeader(Ljava/lang/String;)V

    .line 1160
    new-instance v3, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v3}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    .line 1162
    .local v3, "routeList":Lgov/nist/javax/sip/header/RouteList;
    invoke-virtual {v2}, Lgov/nist/javax/sip/header/RecordRouteList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Lgov/nist/javax/sip/header/RecordRouteList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 1163
    .local v4, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/RecordRoute;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1164
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/header/RecordRoute;

    .line 1166
    .local v5, "rr":Lgov/nist/javax/sip/header/RecordRoute;
    new-instance v6, Lgov/nist/javax/sip/header/Route;

    invoke-direct {v6}, Lgov/nist/javax/sip/header/Route;-><init>()V

    .line 1167
    .local v6, "route":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RecordRoute;->getAddress()Ljavax/sip/address/Address;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/address/AddressImpl;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v6, v7}, Lgov/nist/javax/sip/header/Route;->setAddress(Ljavax/sip/address/Address;)V

    .line 1168
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/RecordRoute;->getParameters()Lgov/nist/core/NameValueList;

    move-result-object v7

    invoke-virtual {v7}, Lgov/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/core/NameValueList;

    invoke-virtual {v6, v7}, Lgov/nist/javax/sip/header/Route;->setParameters(Lgov/nist/core/NameValueList;)V

    .line 1169
    invoke-virtual {v3, v6}, Lgov/nist/javax/sip/header/RouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 1170
    .end local v5    # "rr":Lgov/nist/javax/sip/header/RecordRoute;
    .end local v6    # "route":Lgov/nist/javax/sip/header/Route;
    goto :goto_0

    .line 1172
    :cond_4
    const/4 v5, 0x0

    .line 1173
    .local v5, "contact":Lgov/nist/javax/sip/header/Contact;
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 1174
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v6}, Lgov/nist/javax/sip/message/SIPResponse;->getContactHeaders()Lgov/nist/javax/sip/header/ContactList;

    move-result-object v6

    invoke-virtual {v6}, Lgov/nist/javax/sip/header/ContactList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v6

    move-object v5, v6

    check-cast v5, Lgov/nist/javax/sip/header/Contact;

    .line 1177
    :cond_5
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/header/Route;

    invoke-virtual {v6}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v6

    invoke-interface {v6}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v6

    check-cast v6, Ljavax/sip/address/SipURI;

    invoke-interface {v6}, Ljavax/sip/address/SipURI;->hasLrParam()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1181
    const/4 v6, 0x0

    .line 1182
    .restart local v6    # "route":Lgov/nist/javax/sip/header/Route;
    if-eqz v5, :cond_6

    .line 1183
    new-instance v7, Lgov/nist/javax/sip/header/Route;

    invoke-direct {v7}, Lgov/nist/javax/sip/header/Route;-><init>()V

    move-object v6, v7

    .line 1184
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Contact;->getAddress()Ljavax/sip/address/Address;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/address/AddressImpl;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/address/AddressImpl;

    invoke-virtual {v6, v7}, Lgov/nist/javax/sip/header/Route;->setAddress(Ljavax/sip/address/Address;)V

    .line 1187
    :cond_6
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RouteList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/header/Route;

    .line 1188
    .local v7, "firstRoute":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v3}, Lgov/nist/javax/sip/header/RouteList;->removeFirst()Lgov/nist/javax/sip/header/SIPHeader;

    .line 1189
    invoke-virtual {v7}, Lgov/nist/javax/sip/header/Route;->getAddress()Ljavax/sip/address/Address;

    move-result-object v8

    invoke-interface {v8}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v8

    .line 1190
    .local v8, "uri":Ljavax/sip/address/URI;
    invoke-virtual {v1, v8}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    .line 1192
    if-eqz v6, :cond_7

    .line 1193
    invoke-virtual {v3, v6}, Lgov/nist/javax/sip/header/RouteList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 1195
    :cond_7
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->addHeader(Ljavax/sip/header/Header;)V

    .line 1196
    .end local v6    # "route":Lgov/nist/javax/sip/header/Route;
    .end local v7    # "firstRoute":Lgov/nist/javax/sip/header/Route;
    .end local v8    # "uri":Ljavax/sip/address/URI;
    goto :goto_1

    .line 1197
    :cond_8
    if-eqz v5, :cond_9

    .line 1198
    invoke-virtual {v5}, Lgov/nist/javax/sip/header/Contact;->getAddress()Ljavax/sip/address/Address;

    move-result-object v6

    invoke-interface {v6}, Ljavax/sip/address/Address;->getURI()Ljavax/sip/address/URI;

    move-result-object v6

    .line 1199
    invoke-interface {v6}, Ljavax/sip/address/URI;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/sip/address/URI;

    .line 1200
    .local v6, "uri":Ljavax/sip/address/URI;
    invoke-virtual {v1, v6}, Lgov/nist/javax/sip/message/SIPRequest;->setRequestURI(Ljavax/sip/address/URI;)V

    .line 1201
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->addHeader(Ljavax/sip/header/Header;)V

    .line 1204
    .end local v6    # "uri":Ljavax/sip/address/URI;
    :cond_9
    :goto_1
    return-object v1

    .line 1132
    .end local v1    # "ackRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v2    # "recordRouteList":Lgov/nist/javax/sip/header/RecordRouteList;
    .end local v3    # "routeList":Lgov/nist/javax/sip/header/RouteList;
    .end local v4    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/RecordRoute;>;"
    .end local v5    # "contact":Lgov/nist/javax/sip/header/Contact;
    :cond_a
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "bad Transaction state"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1130
    :cond_b
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Cannot ACK an ACK!"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1128
    :cond_c
    new-instance v1, Ljavax/sip/SipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist createCancel()Ljavax/sip/message/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 1105
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    .line 1106
    .local v0, "originalRequest":Lgov/nist/javax/sip/message/SIPRequest;
    if-eqz v0, :cond_2

    .line 1108
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INVITE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1111
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1114
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->createCancelRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    .line 1115
    .local v1, "cancelRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/message/SIPRequest;->setInviteTransaction(Ljava/lang/Object;)V

    .line 1116
    return-object v1

    .line 1112
    .end local v1    # "cancelRequest":Lgov/nist/javax/sip/message/SIPRequest;
    :cond_0
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Cannot Cancel ACK!"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1109
    :cond_1
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Only INIVTE may be cancelled"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1107
    :cond_2
    new-instance v1, Ljavax/sip/SipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected greylist fireRetransmissionTimer()V
    .locals 6

    .line 985
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMapped:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 988
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isInviteTransaction()Z

    move-result v0

    .line 989
    .local v0, "inv":Z
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v1

    .line 994
    .local v1, "s":Ljavax/sip/TransactionState;
    if-eqz v0, :cond_1

    sget-object v2, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    if-eq v2, v1, :cond_2

    :cond_1
    if-nez v0, :cond_5

    sget-object v2, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    if-eq v2, v1, :cond_2

    sget-object v2, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    if-ne v2, v1, :cond_5

    .line 1000
    :cond_2
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastRequest:Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v2, :cond_5

    .line 1001
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v2, v2, Lgov/nist/javax/sip/stack/SIPTransactionStack;->generateTimeStampHeader:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastRequest:Lgov/nist/javax/sip/message/SIPRequest;

    const-string v3, "Timestamp"

    .line 1002
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1003
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1004
    .local v2, "milisec":J
    new-instance v4, Lgov/nist/javax/sip/header/TimeStamp;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/TimeStamp;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1006
    .local v4, "timeStamp":Lgov/nist/javax/sip/header/TimeStamp;
    long-to-float v5, v2

    :try_start_1
    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/header/TimeStamp;->setTimeStamp(F)V
    :try_end_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1009
    goto :goto_0

    .line 1007
    :catch_0
    move-exception v5

    .line 1008
    .local v5, "ex":Ljavax/sip/InvalidArgumentException;
    :try_start_2
    invoke-static {v5}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 1010
    .end local v5    # "ex":Ljavax/sip/InvalidArgumentException;
    :goto_0
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastRequest:Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v5, v4}, Lgov/nist/javax/sip/message/SIPRequest;->setHeader(Ljavax/sip/header/Header;)V

    .line 1012
    .end local v2    # "milisec":J
    .end local v4    # "timeStamp":Lgov/nist/javax/sip/header/TimeStamp;
    :cond_3
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastRequest:Lgov/nist/javax/sip/message/SIPRequest;

    invoke-super {p0, v2}, Lgov/nist/javax/sip/stack/SIPTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 1013
    iget-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->notifyOnRetransmit:Z

    if-eqz v2, :cond_4

    .line 1014
    new-instance v2, Ljavax/sip/TimeoutEvent;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v3

    sget-object v4, Ljavax/sip/Timeout;->RETRANSMIT:Ljavax/sip/Timeout;

    invoke-direct {v2, v3, p0, v4}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;Ljavax/sip/Timeout;)V

    .line 1016
    .local v2, "txTimeout":Ljavax/sip/TimeoutEvent;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v3

    invoke-virtual {v3, v2, p0}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1018
    .end local v2    # "txTimeout":Ljavax/sip/TimeoutEvent;
    :cond_4
    iget-boolean v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->timeoutIfStillInCallingState:Z

    if-eqz v2, :cond_5

    .line 1019
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    sget-object v3, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    if-ne v2, v3, :cond_5

    .line 1020
    iget v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->callingStateTimeoutCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->callingStateTimeoutCount:I

    .line 1021
    iget v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->callingStateTimeoutCount:I

    if-nez v2, :cond_5

    .line 1022
    new-instance v2, Ljavax/sip/TimeoutEvent;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v3

    sget-object v4, Ljavax/sip/Timeout;->RETRANSMIT:Ljavax/sip/Timeout;

    invoke-direct {v2, v3, p0, v4}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;Ljavax/sip/Timeout;)V

    .line 1024
    .local v2, "timeoutEvent":Ljavax/sip/TimeoutEvent;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v3

    invoke-virtual {v3, v2, p0}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 1025
    const/4 v3, 0x0

    iput-boolean v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->timeoutIfStillInCallingState:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1035
    .end local v0    # "inv":Z
    .end local v1    # "s":Ljavax/sip/TransactionState;
    .end local v2    # "timeoutEvent":Ljavax/sip/TimeoutEvent;
    :cond_5
    goto :goto_2

    .line 986
    :cond_6
    :goto_1
    return-void

    .line 1032
    :catch_1
    move-exception v0

    .line 1033
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->raiseIOExceptionEvent()V

    .line 1034
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->raiseErrorEvent(I)V

    .line 1037
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    return-void
.end method

.method protected greylist fireTimeoutTimer()V
    .locals 4

    .line 1044
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fireTimeoutTimer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1047
    :cond_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 1048
    .local v0, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    sget-object v1, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-eq v1, v2, :cond_1

    sget-object v1, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    .line 1049
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-eq v1, v2, :cond_1

    sget-object v1, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    .line 1050
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 1053
    :cond_1
    if-eqz v0, :cond_3

    .line 1054
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v1

    sget-object v2, Ljavax/sip/DialogState;->EARLY:Ljavax/sip/DialogState;

    if-ne v1, v2, :cond_3

    .line 1055
    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 1056
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 1055
    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1061
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V

    goto :goto_0

    .line 1063
    :cond_3
    if-eqz v0, :cond_4

    .line 1066
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BYE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1067
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->isTerminatedOnBye()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1069
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->delete()V

    .line 1073
    :cond_4
    :goto_0
    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    if-eq v1, v2, :cond_7

    .line 1074
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->raiseErrorEvent(I)V

    .line 1076
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CANCEL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1077
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    .line 1078
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getInviteTransaction()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 1079
    .local v1, "inviteTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-eqz v1, :cond_6

    .line 1080
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    sget-object v3, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    if-eq v2, v3, :cond_5

    .line 1081
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    sget-object v3, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    if-ne v2, v3, :cond_6

    .line 1082
    :cond_5
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1088
    sget-object v2, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1091
    .end local v1    # "inviteTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_6
    goto :goto_1

    .line 1094
    :cond_7
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1097
    :cond_8
    :goto_1
    return-void
.end method

.method public greylist getDefaultDialog()Lgov/nist/javax/sip/stack/SIPDialog;
    .locals 1

    .line 1524
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    return-object v0
.end method

.method public greylist getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;
    .locals 1
    .param p1, "dialogId"    # Ljava/lang/String;

    .line 1489
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 1490
    .local v0, "retval":Lgov/nist/javax/sip/stack/SIPDialog;
    return-object v0
.end method

.method public greylist getDialog()Ljavax/sip/Dialog;
    .locals 4

    .line 1461
    const/4 v0, 0x0

    .line 1462
    .local v0, "retval":Ljavax/sip/Dialog;
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    .line 1463
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    .line 1464
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    .line 1465
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v1

    .line 1466
    .local v1, "dialogId":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v0

    .line 1469
    .end local v1    # "dialogId":Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    .line 1470
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    .line 1473
    :cond_1
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1474
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sipDialogs =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " default dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " retval "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1478
    :cond_2
    return-object v0
.end method

.method public greylist getNextHop()Ljavax/sip/address/Hop;
    .locals 1

    .line 1543
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->nextHop:Ljavax/sip/address/Hop;

    return-object v0
.end method

.method public greylist getOutgoingViaHeader()Lgov/nist/javax/sip/header/Via;
    .locals 1

    .line 1262
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/MessageProcessor;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    move-result-object v0

    return-object v0
.end method

.method public greylist getRequestChannel()Lgov/nist/javax/sip/stack/MessageChannel;
    .locals 0

    .line 334
    return-object p0
.end method

.method public greylist getViaHost()Ljava/lang/String;
    .locals 1

    .line 1255
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->viaHost:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getViaPort()I
    .locals 1

    .line 1248
    iget v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->viaPort:I

    return v0
.end method

.method public greylist isMessagePartOfTransaction(Lgov/nist/javax/sip/message/SIPMessage;)Z
    .locals 8
    .param p1, "messageToTest"    # Lgov/nist/javax/sip/message/SIPMessage;

    .line 348
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v0

    .line 351
    .local v0, "viaHeaders":Lgov/nist/javax/sip/header/ViaList;
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "messageBranch":Ljava/lang/String;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v5, "z9hg4bk"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 359
    .local v2, "rfc3261Compliant":Z
    :goto_0
    const/4 v5, 0x0

    .line 360
    .local v5, "transactionMatches":Z
    sget-object v6, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v7

    if-ne v6, v7, :cond_3

    .line 361
    if-eqz v2, :cond_2

    .line 362
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    move-result-object v6

    .line 363
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {v7}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v7

    .line 362
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 364
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    move v5, v3

    goto :goto_2

    .line 366
    :cond_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_2

    .line 368
    :cond_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isTerminated()Z

    move-result v3

    if-nez v3, :cond_6

    .line 369
    if-eqz v2, :cond_4

    .line 370
    if-eqz v0, :cond_6

    .line 373
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/Via;

    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 374
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPRequest;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 375
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v4

    .line 374
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_2

    .line 381
    :cond_4
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 382
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    move-result-object v3

    .line 383
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    move-result-object v4

    .line 382
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    goto :goto_2

    .line 385
    :cond_5
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    .line 386
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPMessage;->getTransactionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 392
    :cond_6
    :goto_2
    return v5
.end method

.method public greylist isNotifyOnRetransmit()Z
    .locals 1

    .line 1560
    iget-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->notifyOnRetransmit:Z

    return v0
.end method

.method public greylist processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;)V
    .locals 9
    .param p1, "sipResponse"    # Lgov/nist/javax/sip/message/SIPResponse;
    .param p2, "incomingChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;

    .line 1362
    const/4 v0, 0x0

    .line 1363
    .local v0, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v1

    invoke-interface {v1}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 1364
    .local v1, "method":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lgov/nist/javax/sip/message/SIPResponse;->getDialogId(Z)Ljava/lang/String;

    move-result-object v2

    .line 1365
    .local v2, "dialogId":Ljava/lang/String;
    const-string v3, "CANCEL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastRequest:Lgov/nist/javax/sip/message/SIPRequest;

    if-eqz v3, :cond_1

    .line 1368
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastRequest:Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPRequest;->getInviteTransaction()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 1369
    .local v3, "ict":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-eqz v3, :cond_0

    .line 1370
    iget-object v0, v3, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    .line 1372
    .end local v3    # "ict":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_0
    goto :goto_0

    .line 1373
    :cond_1
    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v0

    .line 1377
    :goto_0
    if-nez v0, :cond_b

    .line 1378
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v3

    .line 1379
    .local v3, "code":I
    const/16 v4, 0x64

    if-le v3, v4, :cond_a

    const/16 v4, 0x12c

    if-ge v3, v4, :cond_a

    .line 1381
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getToTag()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isRfc2543Supported()Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_2
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 1382
    invoke-static {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1391
    monitor-enter p0

    .line 1396
    :try_start_0
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    if-eqz v4, :cond_8

    .line 1397
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFromTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1398
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v4

    .line 1399
    .local v4, "dialogResponse":Lgov/nist/javax/sip/message/SIPResponse;
    iget-object v5, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v5}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v5

    .line 1400
    .local v5, "defaultDialogId":Ljava/lang/String;
    if-eqz v4, :cond_4

    const-string v6, "SUBSCRIBE"

    .line 1401
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1402
    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v6

    invoke-interface {v6}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NOTIFY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1404
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 1415
    :cond_3
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6, v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v6

    move-object v0, v6

    .line 1416
    if-nez v0, :cond_5

    .line 1417
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPDialog;->isAssigned()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1422
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6, p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createDialog(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .local v6, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    goto :goto_2

    .line 1406
    .end local v6    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .restart local v0    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_4
    :goto_1
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v6, p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    .line 1407
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    move-object v0, v6

    .line 1428
    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    .line 1429
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    goto :goto_3

    .line 1431
    :cond_6
    iget-object v6, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v6}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    const-string v7, "dialog is unexpectedly null"

    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    invoke-interface {v6, v7, v8}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1433
    .end local v4    # "dialogResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v5    # "defaultDialogId":Ljava/lang/String;
    :goto_3
    goto :goto_4

    .line 1434
    :cond_7
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Response without from-tag"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v1    # "method":Ljava/lang/String;
    .end local v2    # "dialogId":Ljava/lang/String;
    .end local v3    # "code":I
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local p1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .end local p2    # "incomingChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    throw v4

    .line 1439
    .restart local v0    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .restart local v1    # "method":Ljava/lang/String;
    .restart local v2    # "dialogId":Ljava/lang/String;
    .restart local v3    # "code":I
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .restart local p1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .restart local p2    # "incomingChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    :cond_8
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    iget-boolean v4, v4, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isAutomaticDialogSupportEnabled:Z

    if-eqz v4, :cond_9

    .line 1440
    iget-object v4, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v4, p0, p1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->createDialog(Lgov/nist/javax/sip/stack/SIPClientTransaction;Lgov/nist/javax/sip/message/SIPResponse;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v4

    move-object v0, v4

    .line 1441
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 1444
    :cond_9
    :goto_4
    monitor-exit p0

    goto :goto_5

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1446
    :cond_a
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    .line 1448
    .end local v3    # "code":I
    :goto_5
    goto :goto_6

    .line 1449
    :cond_b
    invoke-virtual {v0, p0, p1}, Lgov/nist/javax/sip/stack/SIPDialog;->setLastResponse(Lgov/nist/javax/sip/stack/SIPTransaction;Lgov/nist/javax/sip/message/SIPResponse;)V

    .line 1451
    :goto_6
    invoke-virtual {p0, p1, p2, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    .line 1452
    return-void
.end method

.method public declared-synchronized greylist processResponse(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V
    .locals 3
    .param p1, "transactionResponse"    # Lgov/nist/javax/sip/message/SIPResponse;
    .param p2, "sourceChannel"    # Lgov/nist/javax/sip/stack/MessageChannel;
    .param p3, "dialog"    # Lgov/nist/javax/sip/stack/SIPDialog;

    monitor-enter p0

    .line 505
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 506
    monitor-exit p0

    return-void

    .line 509
    :cond_0
    :try_start_1
    sget-object v0, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    .line 510
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 511
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_1
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v0

    div-int/lit8 v0, v0, 0x64
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 512
    monitor-exit p0

    return-void

    .line 515
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_2
    :try_start_2
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 516
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 517
    invoke-virtual {p1}, Lgov/nist/javax/sip/message/SIPResponse;->getFirstLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 518
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 516
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 522
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_3
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastResponse:Lgov/nist/javax/sip/message/SIPResponse;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 534
    :try_start_3
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isInviteTransaction()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 535
    invoke-direct {p0, p1, p2, p3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->inviteClientTransaction(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V

    goto :goto_0

    .line 537
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->nonInviteClientTransaction(Lgov/nist/javax/sip/message/SIPResponse;Lgov/nist/javax/sip/stack/MessageChannel;Lgov/nist/javax/sip/stack/SIPDialog;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 543
    :goto_0
    goto :goto_1

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "ex":Ljava/io/IOException;
    :try_start_4
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 540
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 541
    :cond_5
    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 542
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->raiseErrorEvent(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 544
    .end local v0    # "ex":Ljava/io/IOException;
    :goto_1
    monitor-exit p0

    return-void

    .line 504
    .end local p1    # "transactionResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .end local p2    # "sourceChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .end local p3    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public greylist sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    .locals 6
    .param p1, "messageToSend"    # Lgov/nist/javax/sip/message/SIPMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    const/4 v0, 0x1

    :try_start_0
    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    .line 410
    .local v1, "transactionRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getViaHeaders()Lgov/nist/javax/sip/header/ViaList;

    move-result-object v2

    invoke-virtual {v2}, Lgov/nist/javax/sip/header/ViaList;->getFirst()Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/header/Via;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    .local v2, "topVia":Lgov/nist/javax/sip/header/Via;
    :try_start_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getBranch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    goto :goto_0

    .line 414
    :catch_0
    move-exception v3

    .line 417
    :goto_0
    :try_start_2
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 418
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending Message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 419
    iget-object v3, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TransactionState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 422
    :cond_0
    sget-object v3, Ljavax/sip/TransactionState;->PROCEEDING:Ljavax/sip/TransactionState;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "ACK"

    if-eq v3, v4, :cond_1

    :try_start_3
    sget-object v3, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    .line 423
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 426
    :cond_1
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 430
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 431
    sget-object v3, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    goto :goto_1

    .line 433
    :cond_2
    sget-object v3, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 439
    :goto_1
    invoke-super {p0, v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 485
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMapped:Z

    .line 486
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->startTransactionTimer()V

    .line 440
    return-void

    .line 448
    :cond_3
    :try_start_4
    iput-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->lastRequest:Lgov/nist/javax/sip/message/SIPRequest;

    .line 449
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v3

    if-nez v3, :cond_8

    .line 452
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 456
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "INVITE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 457
    sget-object v3, Ljavax/sip/TransactionState;->CALLING:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    goto :goto_2

    .line 458
    :cond_4
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 460
    sget-object v3, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    goto :goto_2

    .line 462
    :cond_5
    sget-object v3, Ljavax/sip/TransactionState;->TRYING:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 464
    :goto_2
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v3

    if-nez v3, :cond_6

    .line 465
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableRetransmissionTimer()V

    .line 467
    :cond_6
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isInviteTransaction()Z

    move-result v3

    const/16 v4, 0x40

    if-eqz v3, :cond_7

    .line 468
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V

    goto :goto_3

    .line 470
    :cond_7
    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->enableTimeoutTimer(I)V

    .line 476
    :cond_8
    :goto_3
    invoke-super {p0, v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 483
    nop

    .line 485
    .end local v1    # "transactionRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v2    # "topVia":Lgov/nist/javax/sip/header/Via;
    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMapped:Z

    .line 486
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->startTransactionTimer()V

    .line 488
    nop

    .line 490
    return-void

    .line 478
    .restart local v1    # "transactionRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v2    # "topVia":Lgov/nist/javax/sip/header/Via;
    :catch_1
    move-exception v3

    .line 480
    .local v3, "e":Ljava/io/IOException;
    :try_start_5
    sget-object v4, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 481
    nop

    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local p1    # "messageToSend":Lgov/nist/javax/sip/message/SIPMessage;
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 485
    .end local v1    # "transactionRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v2    # "topVia":Lgov/nist/javax/sip/header/Via;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .restart local p1    # "messageToSend":Lgov/nist/javax/sip/message/SIPMessage;
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMapped:Z

    .line 486
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->startTransactionTimer()V

    .line 488
    throw v1
.end method

.method public greylist sendRequest()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 888
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    .line 890
    .local v0, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v1

    if-nez v1, :cond_c

    .line 893
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 894
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendRequest() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 898
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->checkHeaders()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 903
    nop

    .line 905
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUBSCRIBE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 906
    const-string v1, "Expires"

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v1

    if-nez v1, :cond_1

    .line 912
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 913
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Expires header missing in outgoing subscribe -- Notifier will assume implied value on event package"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 923
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CANCEL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "INVITE"

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    :try_start_2
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 924
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isCancelClientTransactionChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 925
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    .line 926
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    .line 925
    invoke-virtual {v1, v4, v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->findCancelTransaction(Lgov/nist/javax/sip/message/SIPRequest;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 927
    .local v1, "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-eqz v1, :cond_4

    .line 934
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 937
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 940
    .end local v1    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    goto :goto_0

    .line 938
    .restart local v1    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_2
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "Cannot cancel non-invite requests RFC 3261 9.1"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local v0    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    throw v2

    .line 935
    .restart local v0    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_3
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "State is null no provisional response yet -- cannot cancel RFC 3261 9.1"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local v0    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    throw v2

    .line 933
    .restart local v0    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_4
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "Could not find original tx to cancel. RFC 3261 9.1"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local v0    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    throw v2

    .line 942
    .end local v1    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .restart local v0    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_5
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v4, "BYE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 943
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v4, "NOTIFY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 944
    :cond_6
    iget-object v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v4

    .line 945
    invoke-virtual {v4, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    .line 944
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v1

    .line 948
    .local v1, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSipProvider()Lgov/nist/javax/sip/SipProviderImpl;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v1, :cond_7

    goto :goto_0

    .line 949
    :cond_7
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "Dialog is present and AutomaticDialogSupport is enabled for  the provider -- Send the Request using the Dialog.sendRequest(transaction)"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local v0    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    throw v2

    .line 955
    .end local v1    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .restart local v0    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 956
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDefaultDialog()Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v1

    .line 958
    .restart local v1    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->isBackToBackUserAgent()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 960
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPDialog;->takeAckSem()Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_1

    .line 961
    :cond_9
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "Failed to take ACK semaphore"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local v0    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local p0    # "this":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    throw v2

    .line 966
    .end local v1    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .restart local v0    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local p0    # "this":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_a
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isMapped:Z

    .line 967
    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 973
    nop

    .line 975
    return-void

    .line 969
    :catch_0
    move-exception v1

    .line 970
    .local v1, "ex":Ljava/io/IOException;
    sget-object v2, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 971
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "IO Error sending request"

    invoke-direct {v2, v3, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 899
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 900
    .local v1, "ex":Ljava/text/ParseException;
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 901
    iget-object v2, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "missing required header"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 902
    :cond_b
    new-instance v2, Ljavax/sip/SipException;

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 891
    .end local v1    # "ex":Ljava/text/ParseException;
    :cond_c
    new-instance v1, Ljavax/sip/SipException;

    const-string v2, "Request already sent"

    invoke-direct {v1, v2}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    .locals 3
    .param p1, "sipDialog"    # Lgov/nist/javax/sip/stack/SIPDialog;
    .param p2, "dialogId"    # Ljava/lang/String;

    .line 1501
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1502
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sipDialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 1505
    :cond_0
    if-nez p1, :cond_2

    .line 1506
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1507
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "NULL DIALOG!!"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 1508
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bad dialog null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1510
    :cond_2
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    if-nez v0, :cond_3

    .line 1511
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->defaultDialog:Lgov/nist/javax/sip/stack/SIPDialog;

    .line 1512
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INVITE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    iget v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->maxForkTime:I

    if-eqz v0, :cond_3

    .line 1513
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->addForkedClientTransaction(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V

    .line 1516
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialog;->getDialogId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1517
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipDialogs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    :cond_4
    return-void
.end method

.method public greylist setNextHop(Ljavax/sip/address/Hop;)V
    .locals 0
    .param p1, "hop"    # Ljavax/sip/address/Hop;

    .line 1533
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->nextHop:Ljavax/sip/address/Hop;

    .line 1535
    return-void
.end method

.method public greylist setNotifyOnRetransmit(Z)V
    .locals 0
    .param p1, "notifyOnRetransmit"    # Z

    .line 1553
    iput-boolean p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->notifyOnRetransmit:Z

    .line 1554
    return-void
.end method

.method public greylist setResponseInterface(Lgov/nist/javax/sip/stack/ServerResponseInterface;)V
    .locals 3
    .param p1, "newRespondTo"    # Lgov/nist/javax/sip/stack/ServerResponseInterface;

    .line 316
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting response interface for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 319
    if-nez p1, :cond_0

    .line 320
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 321
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "WARNING -- setting to null!"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 325
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->respondTo:Lgov/nist/javax/sip/stack/ServerResponseInterface;

    .line 327
    return-void
.end method

.method public greylist setState(Ljavax/sip/TransactionState;)V
    .locals 2
    .param p1, "newState"    # Ljavax/sip/TransactionState;

    .line 1288
    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->isReliable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1289
    invoke-virtual {p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getSIPStack()Lgov/nist/javax/sip/stack/SIPTransactionStack;

    move-result-object v0

    iget-boolean v0, v0, Lgov/nist/javax/sip/stack/SIPTransactionStack;->cacheClientConnections:Z

    if-nez v0, :cond_0

    .line 1292
    const/16 v0, 0x40

    iput v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->collectionTime:I

    .line 1295
    :cond_0
    invoke-super {p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v0

    sget-object v1, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    if-eq v0, v1, :cond_2

    sget-object v0, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-ne p1, v0, :cond_2

    .line 1297
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->decrementActiveClientTransactionCount()V

    .line 1299
    :cond_2
    invoke-super {p0, p1}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1300
    return-void
.end method

.method protected greylist setViaHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .line 1241
    iput-object p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->viaHost:Ljava/lang/String;

    .line 1242
    return-void
.end method

.method protected greylist setViaPort(I)V
    .locals 0
    .param p1, "port"    # I

    .line 1234
    iput p1, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->viaPort:I

    .line 1235
    return-void
.end method

.method protected greylist startTransactionTimer()V
    .locals 7

    .line 1306
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->transactionTimerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1307
    new-instance v0, Lgov/nist/javax/sip/stack/SIPClientTransaction$TransactionTimer;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction$TransactionTimer;-><init>(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V

    move-object v2, v0

    .line 1308
    .local v2, "myTimer":Ljava/util/TimerTask;
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->sipStack:Lgov/nist/javax/sip/stack/SIPTransactionStack;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransactionStack;->getTimer()Ljava/util/Timer;

    move-result-object v1

    iget v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->BASE_TIMER_INTERVAL:I

    int-to-long v3, v0

    iget v0, p0, Lgov/nist/javax/sip/stack/SIPClientTransaction;->BASE_TIMER_INTERVAL:I

    int-to-long v5, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1312
    .end local v2    # "myTimer":Ljava/util/TimerTask;
    :cond_0
    return-void
.end method

.method public greylist terminate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    .line 1321
    sget-object v0, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 1323
    return-void
.end method
