.class Lgov/nist/javax/sip/EventScanner;
.super Ljava/lang/Object;
.source "EventScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private greylist eventMutex:[I

.field private greylist isStopped:Z

.field private greylist pendingEvents:Ljava/util/LinkedList;

.field private greylist refCount:I

.field private greylist sipStack:Lgov/nist/javax/sip/SipStackImpl;


# direct methods
.method public constructor greylist <init>(Lgov/nist/javax/sip/SipStackImpl;)V
    .locals 2
    .param p1, "sipStackImpl"    # Lgov/nist/javax/sip/SipStackImpl;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    .line 55
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    iput-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    .line 66
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    .line 67
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 70
    .local v1, "myThread":Ljava/lang/Thread;
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 72
    iput-object p1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 74
    const-string v0, "EventScannerThread"

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 78
    return-void
.end method


# virtual methods
.method public greylist addEvent(Lgov/nist/javax/sip/EventWrapper;)V
    .locals 3
    .param p1, "eventWrapper"    # Lgov/nist/javax/sip/EventWrapper;

    .line 81
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 90
    monitor-exit v0

    .line 92
    return-void

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist deliverEvent(Lgov/nist/javax/sip/EventWrapper;)V
    .locals 10
    .param p1, "eventWrapper"    # Lgov/nist/javax/sip/EventWrapper;

    .line 128
    const-string v0, "Calling listener "

    const-string v1, "tx = "

    const-string v2, "INVITE"

    const-string v3, "ACK"

    const-string v4, "Done processing Message "

    iget-object v5, p1, Lgov/nist/javax/sip/EventWrapper;->sipEvent:Ljava/util/EventObject;

    .line 129
    .local v5, "sipEvent":Ljava/util/EventObject;
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 130
    iget-object v6, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sipEvent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "source = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 132
    invoke-virtual {v5}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 130
    invoke-interface {v6, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 133
    :cond_0
    const/4 v6, 0x0

    .line 135
    .local v6, "sipListener":Ljavax/sip/SipListener;
    instance-of v7, v5, Ljavax/sip/IOExceptionEvent;

    if-nez v7, :cond_1

    .line 136
    invoke-virtual {v5}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/SipProviderImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v6

    goto :goto_0

    .line 138
    :cond_1
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v6

    .line 141
    :goto_0
    instance-of v7, v5, Ljavax/sip/RequestEvent;

    if-eqz v7, :cond_1e

    .line 145
    :try_start_0
    move-object v1, v5

    check-cast v1, Ljavax/sip/RequestEvent;

    .line 146
    invoke-virtual {v1}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    .line 148
    .local v1, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    iget-object v2, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    iget-object v2, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deliverEvent : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 151
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " transaction "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " sipEvent.serverTx = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v5

    check-cast v8, Ljavax/sip/RequestEvent;

    .line 156
    invoke-virtual {v8}, Ljavax/sip/RequestEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 149
    invoke-interface {v2, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 168
    :cond_2
    iget-object v2, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 169
    const/4 v7, 0x1

    invoke-virtual {v2, v1, v7}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 171
    .local v2, "tx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v7

    if-nez v7, :cond_a

    .line 180
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 181
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->isInviteTransaction()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 182
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v7

    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v7

    div-int/lit8 v7, v7, 0x64

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 183
    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->isNon2XXAckPassedToListener()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 185
    :cond_3
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 186
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 187
    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    const-string v8, "Detected broken client sending ACK with same branch! Passing..."

    .line 188
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 191
    :cond_4
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 192
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "transaction already exists! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :cond_5
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 247
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v7, v5

    check-cast v7, Ljavax/sip/RequestEvent;

    .line 250
    invoke-virtual {v7}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 247
    invoke-interface {v0, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 252
    :cond_6
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 254
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 255
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 256
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 259
    :cond_7
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v0, :cond_8

    .line 260
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iget-object v4, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v4, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 261
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/SipStackImpl;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 262
    :cond_8
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 268
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    sget-object v3, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    .line 269
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 194
    :cond_9
    return-void

    .line 196
    :cond_a
    :try_start_1
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7, v1}, Lgov/nist/javax/sip/SipStackImpl;->findPendingTransaction(Lgov/nist/javax/sip/message/SIPRequest;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 197
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 198
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v7, "transaction already exists!!"

    invoke-interface {v0, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 247
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v7, v5

    check-cast v7, Ljavax/sip/RequestEvent;

    .line 250
    invoke-virtual {v7}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 247
    invoke-interface {v0, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 252
    :cond_c
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 254
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 255
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 256
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 259
    :cond_d
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v0, :cond_e

    .line 260
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iget-object v4, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v4, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 261
    invoke-virtual {v0, v4}, Lgov/nist/javax/sip/SipStackImpl;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 262
    :cond_e
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 268
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    sget-object v3, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    .line 269
    invoke-virtual {v0, v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 201
    :cond_f
    return-void

    .line 206
    :cond_10
    :try_start_2
    iget-object v7, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v7, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 207
    .local v7, "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    iget-object v8, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8, v7}, Lgov/nist/javax/sip/SipStackImpl;->putPendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 211
    .end local v7    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :cond_11
    :goto_1
    iget-object v7, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v1, v7}, Lgov/nist/javax/sip/message/SIPRequest;->setTransaction(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    :try_start_3
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 216
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 219
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 217
    invoke-interface {v7, v8}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 220
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v8, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 223
    :cond_12
    if-eqz v6, :cond_13

    .line 224
    move-object v0, v5

    check-cast v0, Ljavax/sip/RequestEvent;

    invoke-interface {v6, v0}, Ljavax/sip/SipListener;->processRequest(Ljavax/sip/RequestEvent;)V

    .line 226
    :cond_13
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 227
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 229
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 227
    invoke-interface {v0, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 231
    :cond_14
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v0, :cond_15

    .line 233
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 234
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 235
    .local v0, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v0, :cond_15

    .line 236
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPDialog;->requestConsumed()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 244
    .end local v0    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_15
    goto :goto_2

    .line 239
    :catch_0
    move-exception v0

    .line 243
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_4
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    invoke-interface {v7, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 246
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v2    # "tx":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    :goto_2
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 247
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v5

    check-cast v2, Ljavax/sip/RequestEvent;

    .line 250
    invoke-virtual {v2}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 252
    :cond_16
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v0, :cond_17

    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 254
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 255
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v0, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 256
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 259
    :cond_17
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v0, :cond_18

    .line 260
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iget-object v1, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 261
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 262
    :cond_18
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 263
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 268
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    sget-object v1, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    .line 269
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 271
    :cond_19
    goto/16 :goto_9

    .line 246
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 247
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v4, v5

    check-cast v4, Ljavax/sip/RequestEvent;

    .line 250
    invoke-virtual {v4}, Ljavax/sip/RequestEvent;->getRequest()Ljavax/sip/message/Request;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v4}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 252
    :cond_1a
    iget-object v1, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v1, :cond_1b

    iget-object v1, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 254
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->passToListener()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 255
    iget-object v1, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 256
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->releaseSem()V

    .line 259
    :cond_1b
    iget-object v1, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v1, :cond_1c

    .line 260
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iget-object v2, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 261
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/SipStackImpl;->removePendingTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 262
    :cond_1c
    iget-object v1, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 268
    iget-object v1, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    sget-object v2, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    .line 269
    invoke-virtual {v1, v2}, Lgov/nist/javax/sip/stack/SIPTransaction;->setState(Ljavax/sip/TransactionState;)V

    .line 271
    :cond_1d
    throw v0

    .line 273
    :cond_1e
    instance-of v0, v5, Ljavax/sip/ResponseEvent;

    if-eqz v0, :cond_2b

    .line 275
    :try_start_5
    move-object v0, v5

    check-cast v0, Ljavax/sip/ResponseEvent;

    .line 276
    .local v0, "responseEvent":Ljavax/sip/ResponseEvent;
    nop

    .line 277
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getResponse()Ljavax/sip/message/Response;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/message/SIPResponse;

    .line 278
    .local v1, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/stack/SIPDialog;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 280
    .local v3, "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :try_start_6
    iget-object v4, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 282
    iget-object v4, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calling listener for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 284
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getFirstLine()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 282
    invoke-interface {v4, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 286
    :cond_1f
    if-eqz v6, :cond_21

    .line 287
    iget-object v4, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 288
    .local v4, "tx":Lgov/nist/javax/sip/stack/SIPTransaction;
    if-eqz v4, :cond_20

    .line 289
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPTransaction;->setPassToListener()V

    .line 291
    :cond_20
    move-object v7, v5

    check-cast v7, Ljavax/sip/ResponseEvent;

    invoke-interface {v6, v7}, Ljavax/sip/SipListener;->processResponse(Ljavax/sip/ResponseEvent;)V

    .line 299
    .end local v4    # "tx":Lgov/nist/javax/sip/stack/SIPTransaction;
    :cond_21
    if-eqz v3, :cond_25

    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 300
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v4

    sget-object v7, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    invoke-virtual {v4, v7}, Ljavax/sip/DialogState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 301
    :cond_22
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v4

    const/16 v7, 0x1e1

    if-eq v4, v7, :cond_23

    .line 302
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v4

    const/16 v7, 0x198

    if-ne v4, v7, :cond_25

    .line 303
    :cond_23
    iget-object v4, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 304
    iget-object v4, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v7, "Removing dialog on 408 or 481 response"

    invoke-interface {v4, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 307
    :cond_24
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPDialog;->doDeferredDelete()V

    .line 327
    :cond_25
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v4

    .line 328
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    if-eqz v3, :cond_27

    .line 330
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getStatusCode()I

    move-result v4

    const/16 v7, 0xc8

    if-ne v4, v7, :cond_27

    .line 331
    iget-object v4, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 332
    iget-object v4, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Warning! unacknowledged dialog. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 333
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 332
    invoke-interface {v4, v7}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 338
    :cond_26
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPResponse;->getCSeq()Ljavax/sip/header/CSeqHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lgov/nist/javax/sip/stack/SIPDialog;->doDeferredDeleteIfNoAckSent(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 345
    :cond_27
    goto :goto_3

    .line 340
    :catch_1
    move-exception v4

    .line 344
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_7
    iget-object v7, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v7

    invoke-interface {v7, v4}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 349
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_3
    iget-object v4, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    check-cast v4, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 350
    .local v4, "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-eqz v4, :cond_28

    sget-object v7, Ljavax/sip/TransactionState;->COMPLETED:Ljavax/sip/TransactionState;

    .line 351
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v8

    if-ne v7, v8, :cond_28

    .line 352
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v7

    if-eqz v7, :cond_28

    .line 353
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v7

    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 359
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->clearState()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 363
    .end local v0    # "responseEvent":Ljavax/sip/ResponseEvent;
    .end local v1    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v3    # "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v4    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_28
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v0, :cond_29

    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 364
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 365
    iget-object v0, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 367
    :cond_29
    goto/16 :goto_9

    .line 363
    :catchall_1
    move-exception v0

    iget-object v1, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    if-eqz v1, :cond_2a

    iget-object v1, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 364
    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->passToListener()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 365
    iget-object v1, p1, Lgov/nist/javax/sip/EventWrapper;->transaction:Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/SIPTransaction;->releaseSem()V

    .line 367
    :cond_2a
    throw v0

    .line 369
    :cond_2b
    instance-of v0, v5, Ljavax/sip/TimeoutEvent;

    if-eqz v0, :cond_2d

    .line 373
    if-eqz v6, :cond_2c

    .line 374
    :try_start_8
    move-object v0, v5

    check-cast v0, Ljavax/sip/TimeoutEvent;

    invoke-interface {v6, v0}, Ljavax/sip/SipListener;->processTimeout(Ljavax/sip/TimeoutEvent;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    .line 375
    :catch_2
    move-exception v0

    .line 379
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 380
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2c
    :goto_4
    goto/16 :goto_9

    .line 382
    :cond_2d
    instance-of v0, v5, Lgov/nist/javax/sip/DialogTimeoutEvent;

    if-eqz v0, :cond_2f

    .line 385
    if-eqz v6, :cond_2e

    :try_start_9
    instance-of v0, v6, Lgov/nist/javax/sip/SipListenerExt;

    if-eqz v0, :cond_2e

    .line 386
    move-object v0, v6

    check-cast v0, Lgov/nist/javax/sip/SipListenerExt;

    move-object v1, v5

    check-cast v1, Lgov/nist/javax/sip/DialogTimeoutEvent;

    invoke-interface {v0, v1}, Lgov/nist/javax/sip/SipListenerExt;->processDialogTimeout(Lgov/nist/javax/sip/DialogTimeoutEvent;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_5

    .line 388
    :catch_3
    move-exception v0

    .line 392
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 393
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2e
    :goto_5
    goto/16 :goto_9

    .line 395
    :cond_2f
    instance-of v0, v5, Ljavax/sip/IOExceptionEvent;

    if-eqz v0, :cond_31

    .line 397
    if-eqz v6, :cond_30

    .line 398
    :try_start_a
    move-object v0, v5

    check-cast v0, Ljavax/sip/IOExceptionEvent;

    invoke-interface {v6, v0}, Ljavax/sip/SipListener;->processIOException(Ljavax/sip/IOExceptionEvent;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_6

    .line 399
    :catch_4
    move-exception v0

    .line 400
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 401
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_30
    :goto_6
    goto/16 :goto_9

    .line 402
    :cond_31
    instance-of v0, v5, Ljavax/sip/TransactionTerminatedEvent;

    if-eqz v0, :cond_34

    .line 404
    :try_start_b
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 405
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v2, "About to deliver transactionTerminatedEvent"

    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v5

    check-cast v3, Ljavax/sip/TransactionTerminatedEvent;

    .line 410
    invoke-virtual {v3}, Ljavax/sip/TransactionTerminatedEvent;->getClientTransaction()Ljavax/sip/ClientTransaction;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-interface {v0, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v5

    check-cast v2, Ljavax/sip/TransactionTerminatedEvent;

    .line 414
    invoke-virtual {v2}, Ljavax/sip/TransactionTerminatedEvent;->getServerTransaction()Ljavax/sip/ServerTransaction;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 417
    :cond_32
    if-eqz v6, :cond_33

    .line 418
    move-object v0, v5

    check-cast v0, Ljavax/sip/TransactionTerminatedEvent;

    .line 419
    invoke-interface {v6, v0}, Ljavax/sip/SipListener;->processTransactionTerminated(Ljavax/sip/TransactionTerminatedEvent;)V
    :try_end_b
    .catch Ljava/lang/AbstractMethodError; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_7

    .line 427
    :catch_5
    move-exception v0

    .line 428
    .restart local v0    # "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 429
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_33
    :goto_7
    goto :goto_9

    .line 420
    :catch_6
    move-exception v0

    .line 422
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 423
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 424
    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    .line 425
    const-string v2, "Unable to call sipListener.processTransactionTerminated"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    goto :goto_7

    .line 430
    .end local v0    # "ame":Ljava/lang/AbstractMethodError;
    :cond_34
    instance-of v0, v5, Ljavax/sip/DialogTerminatedEvent;

    if-eqz v0, :cond_36

    .line 432
    if-eqz v6, :cond_35

    .line 433
    :try_start_c
    move-object v0, v5

    check-cast v0, Ljavax/sip/DialogTerminatedEvent;

    .line 434
    invoke-interface {v6, v0}, Ljavax/sip/SipListener;->processDialogTerminated(Ljavax/sip/DialogTerminatedEvent;)V
    :try_end_c
    .catch Ljava/lang/AbstractMethodError; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_8

    .line 440
    :catch_7
    move-exception v0

    .line 441
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .end local v0    # "ex":Ljava/lang/Exception;
    goto :goto_8

    .line 435
    :catch_8
    move-exception v0

    .line 437
    .local v0, "ame":Ljava/lang/AbstractMethodError;
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 438
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Unable to call sipListener.processDialogTerminated"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 442
    .end local v0    # "ame":Ljava/lang/AbstractMethodError;
    :cond_35
    :goto_8
    goto :goto_9

    .line 445
    :cond_36
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    .line 448
    :goto_9
    return-void
.end method

.method public greylist forceStop()V
    .locals 2

    .line 119
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    monitor-enter v0

    .line 120
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    .line 121
    const/4 v1, 0x0

    iput v1, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    .line 122
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 123
    monitor-exit v0

    .line 125
    return-void

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist incrementRefcount()V
    .locals 2

    .line 60
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    monitor-enter v0

    .line 61
    :try_start_0
    iget v1, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    .line 62
    monitor-exit v0

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist test-api run()V
    .locals 7

    .line 459
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getThreadAuditor()Lgov/nist/core/ThreadAuditor;

    move-result-object v0

    invoke-virtual {v0}, Lgov/nist/core/ThreadAuditor;->addCurrentThread()Lgov/nist/core/ThreadAuditor$ThreadHandle;

    move-result-object v0

    .line 462
    .local v0, "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    :goto_0
    const/4 v1, 0x0

    .line 465
    .local v1, "eventWrapper":Lgov/nist/javax/sip/EventWrapper;
    iget-object v2, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 467
    :goto_1
    :try_start_1
    iget-object v3, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 471
    iget-boolean v3, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    if-eqz v3, :cond_2

    .line 472
    iget-object v3, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 473
    iget-object v3, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    const-string v4, "Stopped event scanner!!"

    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 475
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 521
    iget-object v2, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 522
    iget-boolean v2, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    if-nez v2, :cond_1

    .line 523
    iget-object v2, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Event scanner exited abnormally"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    .line 475
    :cond_1
    return-void

    .line 482
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->ping()V

    .line 485
    iget-object v3, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    invoke-virtual {v0}, Lgov/nist/core/ThreadAuditor$ThreadHandle;->getPingIntervalInMillisecs()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 491
    goto :goto_1

    .line 486
    :catch_0
    move-exception v3

    .line 488
    .local v3, "ex":Ljava/lang/InterruptedException;
    :try_start_3
    iget-object v4, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 489
    iget-object v4, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    const-string v5, "Interrupted!"

    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 490
    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 521
    iget-object v2, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 522
    iget-boolean v2, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    if-nez v2, :cond_4

    .line 523
    iget-object v2, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v4, "Event scanner exited abnormally"

    invoke-interface {v2, v4}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    .line 490
    :cond_4
    return-void

    .line 499
    .end local v3    # "ex":Ljava/lang/InterruptedException;
    :cond_5
    :try_start_4
    iget-object v3, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    .line 500
    .local v3, "eventsToDeliver":Ljava/util/LinkedList;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lgov/nist/javax/sip/EventScanner;->pendingEvents:Ljava/util/LinkedList;

    .line 501
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 502
    :try_start_5
    invoke-virtual {v3}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 503
    .local v2, "iterator":Ljava/util/ListIterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 504
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/EventWrapper;

    move-object v1, v4

    .line 505
    iget-object v4, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 506
    iget-object v4, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "nevents "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 508
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 506
    invoke-interface {v4, v5}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 511
    :cond_6
    :try_start_6
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/EventScanner;->deliverEvent(Lgov/nist/javax/sip/EventWrapper;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 517
    :cond_7
    :goto_3
    goto :goto_2

    .line 512
    :catch_1
    move-exception v4

    .line 513
    .local v4, "e":Ljava/lang/Exception;
    :try_start_7
    iget-object v5, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 514
    iget-object v5, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    const-string v6, "Unexpected exception caught while delivering event -- carrying on bravely"

    invoke-interface {v5, v6, v4}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 519
    .end local v1    # "eventWrapper":Lgov/nist/javax/sip/EventWrapper;
    .end local v2    # "iterator":Ljava/util/ListIterator;
    .end local v3    # "eventsToDeliver":Ljava/util/LinkedList;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_8
    goto/16 :goto_0

    .line 501
    .restart local v1    # "eventWrapper":Lgov/nist/javax/sip/EventWrapper;
    :catchall_0
    move-exception v3

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .end local p0    # "this":Lgov/nist/javax/sip/EventScanner;
    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 521
    .end local v0    # "threadHandle":Lgov/nist/core/ThreadAuditor$ThreadHandle;
    .end local v1    # "eventWrapper":Lgov/nist/javax/sip/EventWrapper;
    .restart local p0    # "this":Lgov/nist/javax/sip/EventScanner;
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 522
    iget-boolean v1, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    if-nez v1, :cond_9

    .line 523
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    const-string v2, "Event scanner exited abnormally"

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logFatalError(Ljava/lang/String;)V

    .line 526
    :cond_9
    throw v0
.end method

.method public greylist stop()V
    .locals 3

    .line 100
    iget-object v0, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    monitor-enter v0

    .line 102
    :try_start_0
    iget v1, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    .line 103
    iget v1, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    sub-int/2addr v1, v2

    iput v1, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    .line 105
    :cond_0
    iget v1, p0, Lgov/nist/javax/sip/EventScanner;->refCount:I

    if-nez v1, :cond_1

    .line 106
    iput-boolean v2, p0, Lgov/nist/javax/sip/EventScanner;->isStopped:Z

    .line 107
    iget-object v1, p0, Lgov/nist/javax/sip/EventScanner;->eventMutex:[I

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 110
    :cond_1
    monitor-exit v0

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
