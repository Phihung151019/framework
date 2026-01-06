.class public Lgov/nist/javax/sip/SipProviderImpl;
.super Ljava/lang/Object;
.source "SipProviderImpl.java"

# interfaces
.implements Ljavax/sip/SipProvider;
.implements Lgov/nist/javax/sip/SipProviderExt;
.implements Lgov/nist/javax/sip/stack/SIPTransactionEventListener;
.implements Lgov/nist/javax/sip/stack/SIPDialogEventListener;


# instance fields
.field private greylist IN6_ADDR_ANY:Ljava/lang/String;

.field private greylist IN_ADDR_ANY:Ljava/lang/String;

.field private greylist address:Ljava/lang/String;

.field private greylist automaticDialogSupportEnabled:Z

.field private greylist dialogErrorsAutomaticallyHandled:Z

.field private greylist eventScanner:Lgov/nist/javax/sip/EventScanner;

.field private greylist listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

.field private greylist port:I

.field private greylist sipListener:Ljavax/sip/SipListener;

.field protected greylist sipStack:Lgov/nist/javax/sip/SipStackImpl;


# direct methods
.method private constructor greylist <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->IN_ADDR_ANY:Ljava/lang/String;

    .line 122
    const-string v0, "::0"

    iput-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->IN6_ADDR_ANY:Ljava/lang/String;

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    .line 128
    return-void
.end method

.method protected constructor greylist <init>(Lgov/nist/javax/sip/SipStackImpl;)V
    .locals 1
    .param p1, "sipStack"    # Lgov/nist/javax/sip/SipStackImpl;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->IN_ADDR_ANY:Ljava/lang/String;

    .line 122
    const-string v0, "::0"

    iput-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->IN6_ADDR_ANY:Ljava/lang/String;

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    .line 198
    invoke-virtual {p1}, Lgov/nist/javax/sip/SipStackImpl;->getEventScanner()Lgov/nist/javax/sip/EventScanner;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    .line 199
    iput-object p1, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 200
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    invoke-virtual {v0}, Lgov/nist/javax/sip/EventScanner;->incrementRefcount()V

    .line 201
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    .line 202
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 203
    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->automaticDialogSupportEnabled:Z

    .line 204
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isAutomaticDialogErrorHandlingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    .line 205
    return-void
.end method


# virtual methods
.method public declared-synchronized greylist addListeningPoint(Ljavax/sip/ListeningPoint;)V
    .locals 4
    .param p1, "listeningPoint"    # Ljavax/sip/ListeningPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    monitor-enter p0

    .line 1018
    :try_start_0
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/ListeningPointImpl;

    .line 1019
    .local v0, "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    iget-object v1, v0, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    if-ne v1, p0, :cond_0

    goto :goto_0

    .line 1020
    :cond_0
    new-instance v1, Ljavax/sip/ObjectInUseException;

    const-string v2, "Listening point assigned to another provider"

    invoke-direct {v1, v2}, Ljavax/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1022
    .end local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lgov/nist/javax/sip/ListeningPointImpl;->getTransport()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 1023
    .local v1, "transport":Ljava/lang/String;
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1026
    invoke-interface {p1}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->address:Ljava/lang/String;

    .line 1027
    invoke-interface {p1}, Ljavax/sip/ListeningPoint;->getPort()I

    move-result v2

    iput v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->port:I

    goto :goto_1

    .line 1029
    :cond_2
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->address:Ljava/lang/String;

    invoke-interface {p1}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->port:I

    .line 1030
    invoke-interface {p1}, Ljavax/sip/ListeningPoint;->getPort()I

    move-result v3

    if-ne v2, v3, :cond_5

    .line 1035
    :goto_1
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1036
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_3

    goto :goto_2

    .line 1037
    :cond_3
    new-instance v2, Ljavax/sip/ObjectInUseException;

    const-string v3, "Listening point already assigned for transport!"

    invoke-direct {v2, v3}, Ljavax/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1041
    :cond_4
    :goto_2
    iput-object p0, v0, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    .line 1043
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1045
    monitor-exit p0

    return-void

    .line 1031
    :cond_5
    :try_start_1
    new-instance v2, Ljavax/sip/ObjectInUseException;

    const-string v3, "Provider already has different IP Address associated"

    invoke-direct {v2, v3}, Ljavax/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1017
    .end local v0    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    .end local v1    # "transport":Ljava/lang/String;
    .end local p1    # "listeningPoint":Ljavax/sip/ListeningPoint;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public greylist addSipListener(Ljavax/sip/SipListener;)V
    .locals 3
    .param p1, "sipListener"    # Ljavax/sip/SipListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/TooManyListenersException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iget-object v0, v0, Lgov/nist/javax/sip/SipStackImpl;->sipListener:Ljavax/sip/SipListener;

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iput-object p1, v0, Lgov/nist/javax/sip/SipStackImpl;->sipListener:Ljavax/sip/SipListener;

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iget-object v0, v0, Lgov/nist/javax/sip/SipStackImpl;->sipListener:Ljavax/sip/SipListener;

    if-ne v0, p1, :cond_2

    .line 232
    :goto_0
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add SipListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 234
    :cond_1
    iput-object p1, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipListener:Ljavax/sip/SipListener;

    .line 236
    return-void

    .line 228
    :cond_2
    new-instance v0, Ljava/util/TooManyListenersException;

    const-string v1, "Stack already has a listener. Only one listener per stack allowed"

    invoke-direct {v0, v1}, Ljava/util/TooManyListenersException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public declared-synchronized greylist dialogErrorEvent(Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;)V
    .locals 5
    .param p1, "dialogErrorEvent"    # Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;

    monitor-enter p0

    .line 982
    :try_start_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPDialog;

    .line 983
    .local v0, "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    sget-object v1, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->AckNotReceived:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    .line 984
    .local v1, "reason":Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;->getErrorID()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 985
    sget-object v2, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->AckNotSent:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    move-object v1, v2

    goto :goto_0

    .line 986
    .end local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    :cond_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;->getErrorID()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 987
    sget-object v2, Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;->ReInviteTimeout:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    move-object v1, v2

    .line 989
    :cond_1
    :goto_0
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 990
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dialog TimeoutError occured on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 993
    :cond_2
    new-instance v2, Lgov/nist/javax/sip/DialogTimeoutEvent;

    invoke-direct {v2, p0, v0, v1}, Lgov/nist/javax/sip/DialogTimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/Dialog;Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;)V

    .line 995
    .local v2, "ev":Lgov/nist/javax/sip/DialogTimeoutEvent;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 996
    monitor-exit p0

    return-void

    .line 981
    .end local v0    # "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v1    # "reason":Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;
    .end local v2    # "ev":Lgov/nist/javax/sip/DialogTimeoutEvent;
    .end local p1    # "dialogErrorEvent":Lgov/nist/javax/sip/stack/SIPDialogErrorEvent;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public greylist getListeningPoint()Ljavax/sip/ListeningPoint;
    .locals 1

    .line 245
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 246
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 247
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/sip/ListeningPoint;

    .line 246
    return-object v0

    .line 249
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;
    .locals 2
    .param p1, "transport"    # Ljava/lang/String;

    .line 152
    if-eqz p1, :cond_0

    .line 154
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/sip/ListeningPoint;

    return-object v0

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null transport param"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized greylist getListeningPoints()[Ljavax/sip/ListeningPoint;
    .locals 2

    monitor-enter p0

    .line 1005
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1006
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    new-array v0, v0, [Lgov/nist/javax/sip/ListeningPointImpl;

    .line 1007
    .local v0, "retval":[Ljavax/sip/ListeningPoint;
    iget-object v1, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    monitor-exit p0

    return-object v0

    .line 1004
    .end local v0    # "retval":[Ljavax/sip/ListeningPoint;
    .end local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public greylist getNewCallId()Ljavax/sip/header/CallIdHeader;
    .locals 3

    .line 258
    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint()Ljavax/sip/ListeningPoint;

    move-result-object v1

    .line 259
    invoke-interface {v1}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/Utils;->generateCallIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "callId":Ljava/lang/String;
    new-instance v1, Lgov/nist/javax/sip/header/CallID;

    invoke-direct {v1}, Lgov/nist/javax/sip/header/CallID;-><init>()V

    .line 262
    .local v1, "callid":Lgov/nist/javax/sip/header/CallID;
    :try_start_0
    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/header/CallID;->setCallId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    goto :goto_0

    .line 263
    :catch_0
    move-exception v2

    .line 265
    :goto_0
    return-object v1
.end method

.method public greylist getNewClientTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ClientTransaction;
    .locals 12
    .param p1, "request"    # Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransactionUnavailableException;
        }
    .end annotation

    .line 276
    const-string v0, "Unexpected Exception FIXME! "

    const-string v1, "Cannot resolve next hop -- transaction unavailable"

    if-eqz p1, :cond_13

    .line 278
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 281
    move-object v2, p1

    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    .line 282
    .local v2, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getTransaction()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_11

    .line 285
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ACK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 290
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v3

    if-nez v3, :cond_0

    .line 291
    nop

    .line 292
    const-string v3, "udp"

    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/ListeningPointImpl;

    .line 293
    .local v3, "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    invoke-virtual {v3}, Lgov/nist/javax/sip/ListeningPointImpl;->getViaHeader()Lgov/nist/javax/sip/header/Via;

    move-result-object v4

    .line 294
    .local v4, "via":Lgov/nist/javax/sip/header/Via;
    invoke-interface {p1, v4}, Ljavax/sip/message/Request;->setHeader(Ljavax/sip/header/Header;)V

    .line 298
    .end local v3    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    .end local v4    # "via":Lgov/nist/javax/sip/header/Via;
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->checkHeaders()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_4

    .line 301
    nop

    .line 307
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v3

    const-string v4, "z9hG4bK"

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    .line 308
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v3

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v6, p1

    check-cast v6, Lgov/nist/javax/sip/message/SIPRequest;

    .line 310
    invoke-virtual {v3, v6, v5}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 311
    :cond_1
    new-instance v0, Ljavax/sip/TransactionUnavailableException;

    const-string v1, "Transaction already exists!"

    invoke-direct {v0, v1}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v6, "CANCEL"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 319
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v6, p1

    check-cast v6, Lgov/nist/javax/sip/message/SIPRequest;

    .line 320
    invoke-virtual {v3, v6, v5}, Lgov/nist/javax/sip/SipStackImpl;->findCancelTransaction(Lgov/nist/javax/sip/message/SIPRequest;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 321
    .local v3, "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-eqz v3, :cond_4

    .line 322
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    .line 323
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getMessageChannel()Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v4

    .line 322
    invoke-virtual {v0, v1, v4}, Lgov/nist/javax/sip/SipStackImpl;->createClientTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v0

    .line 325
    .local v0, "retval":Ljavax/sip/ClientTransaction;
    move-object v1, v0

    check-cast v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v1, p0}, Lgov/nist/javax/sip/stack/SIPTransaction;->addEventListener(Lgov/nist/javax/sip/stack/SIPTransactionEventListener;)V

    .line 326
    iget-object v1, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v4, v0

    check-cast v4, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    invoke-virtual {v1, v4}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPClientTransaction;)V

    .line 327
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 328
    move-object v1, v0

    check-cast v1, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 329
    invoke-virtual {v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/stack/SIPDialog;

    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v5

    .line 328
    invoke-virtual {v1, v4, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 332
    :cond_3
    return-object v0

    .line 336
    .end local v0    # "retval":Ljavax/sip/ClientTransaction;
    .end local v3    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_4
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 337
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not find existing transaction for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, p1

    check-cast v7, Lgov/nist/javax/sip/message/SIPRequest;

    .line 339
    invoke-virtual {v7}, Lgov/nist/javax/sip/message/SIPRequest;->getFirstLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " creating a new one "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 337
    invoke-interface {v3, v6}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 344
    :cond_5
    const/4 v3, 0x0

    .line 346
    .local v3, "hop":Ljavax/sip/address/Hop;
    :try_start_1
    iget-object v6, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v7, p1

    check-cast v7, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v6, v7}, Lgov/nist/javax/sip/SipStackImpl;->getNextHop(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Hop;

    move-result-object v6
    :try_end_1
    .catch Ljavax/sip/SipException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v6

    .line 347
    if-eqz v3, :cond_f

    .line 353
    nop

    .line 354
    invoke-interface {v3}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "transport":Ljava/lang/String;
    nop

    .line 356
    invoke-virtual {p0, v1}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/ListeningPointImpl;

    .line 358
    .local v6, "listeningPoint":Lgov/nist/javax/sip/ListeningPointImpl;
    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v7

    .line 359
    .local v7, "dialogId":Ljava/lang/String;
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8, v7}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v8

    .line 360
    .local v8, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lgov/nist/javax/sip/stack/SIPDialog;->getState()Ljavax/sip/DialogState;

    move-result-object v9

    sget-object v10, Ljavax/sip/DialogState;->TERMINATED:Ljavax/sip/DialogState;

    if-ne v9, v10, :cond_6

    .line 365
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v9, v8}, Lgov/nist/javax/sip/SipStackImpl;->removeDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    .line 378
    :cond_6
    const/4 v9, 0x0

    .line 379
    .local v9, "branchId":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v10

    invoke-virtual {v10}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 380
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v10

    invoke-virtual {v10}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 382
    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->checkBranchId()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 383
    :cond_7
    invoke-static {}, Lgov/nist/javax/sip/Utils;->getInstance()Lgov/nist/javax/sip/Utils;

    move-result-object v4

    invoke-virtual {v4}, Lgov/nist/javax/sip/Utils;->generateBranchId()Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    .line 385
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v4

    invoke-virtual {v4, v9}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V

    .line 387
    :cond_8
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v4

    .line 390
    .local v4, "topmostVia":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_9

    .line 391
    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/header/Via;->setTransport(Ljava/lang/String;)V

    .line 393
    :cond_9
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getPort()I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_a

    .line 394
    invoke-virtual {v6}, Lgov/nist/javax/sip/ListeningPointImpl;->getPort()I

    move-result v10

    invoke-virtual {v4, v10}, Lgov/nist/javax/sip/header/Via;->setPort(I)V

    .line 395
    :cond_a
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v10

    invoke-virtual {v10}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v10

    .line 397
    .end local v9    # "branchId":Ljava/lang/String;
    .local v10, "branchId":Ljava/lang/String;
    iget-object v9, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 399
    invoke-virtual {v6}, Lgov/nist/javax/sip/ListeningPointImpl;->getMessageProcessor()Lgov/nist/javax/sip/stack/MessageProcessor;

    move-result-object v11

    .line 398
    invoke-virtual {v9, v2, v11, v3}, Lgov/nist/javax/sip/SipStackImpl;->createMessageChannel(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/stack/MessageProcessor;Ljavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v9

    check-cast v9, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 400
    .local v9, "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-eqz v9, :cond_e

    .line 402
    invoke-virtual {v9, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setNextHop(Ljavax/sip/address/Hop;)V

    .line 403
    invoke-virtual {v9, v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 404
    invoke-virtual {v9, v10}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setBranch(Ljava/lang/String;)V

    .line 406
    invoke-interface {p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lgov/nist/javax/sip/SipStackImpl;->isDialogCreated(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 412
    if-eqz v8, :cond_b

    .line 413
    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v8, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    goto :goto_1

    .line 414
    :cond_b
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 415
    iget-object v11, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v11, v9}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v11

    .line 416
    .local v11, "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v11, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 417
    .end local v11    # "sipDialog":Lgov/nist/javax/sip/stack/SIPDialog;
    goto :goto_1

    .line 419
    :cond_c
    if-eqz v8, :cond_d

    .line 420
    invoke-virtual {v2, v5}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v8, v5}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 426
    :cond_d
    :goto_1
    invoke-virtual {v9, p0}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->addEventListener(Lgov/nist/javax/sip/stack/SIPTransactionEventListener;)V

    .line 427
    return-object v9

    .line 401
    :cond_e
    new-instance v5, Ljavax/sip/TransactionUnavailableException;

    const-string v11, "Cound not create tx"

    invoke-direct {v5, v11}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    .end local v1    # "transport":Ljava/lang/String;
    .end local v2    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v3    # "hop":Ljavax/sip/address/Hop;
    .end local v6    # "listeningPoint":Lgov/nist/javax/sip/ListeningPointImpl;
    .end local v7    # "dialogId":Ljava/lang/String;
    .end local v8    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .end local p1    # "request":Ljavax/sip/message/Request;
    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 438
    .end local v4    # "topmostVia":Lgov/nist/javax/sip/header/Via;
    .end local v9    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v10    # "branchId":Ljava/lang/String;
    .restart local v1    # "transport":Ljava/lang/String;
    .restart local v2    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v3    # "hop":Ljavax/sip/address/Hop;
    .restart local v6    # "listeningPoint":Lgov/nist/javax/sip/ListeningPointImpl;
    .restart local v7    # "dialogId":Ljava/lang/String;
    .restart local v8    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .restart local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .restart local p1    # "request":Ljavax/sip/message/Request;
    :catch_0
    move-exception v4

    .line 439
    .local v4, "ex":Ljavax/sip/InvalidArgumentException;
    invoke-static {v4}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 440
    new-instance v5, Ljavax/sip/TransactionUnavailableException;

    invoke-direct {v5, v0, v4}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 434
    .end local v4    # "ex":Ljavax/sip/InvalidArgumentException;
    :catch_1
    move-exception v4

    .line 435
    .local v4, "ex":Ljava/text/ParseException;
    invoke-static {v4}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 436
    new-instance v5, Ljavax/sip/TransactionUnavailableException;

    invoke-direct {v5, v0, v4}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 428
    .end local v4    # "ex":Ljava/text/ParseException;
    :catch_2
    move-exception v0

    .line 430
    .local v0, "ex":Ljava/io/IOException;
    new-instance v4, Ljavax/sip/TransactionUnavailableException;

    const-string v5, "Could not resolve next hop or listening point unavailable! "

    invoke-direct {v4, v5, v0}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 348
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "transport":Ljava/lang/String;
    .end local v6    # "listeningPoint":Lgov/nist/javax/sip/ListeningPointImpl;
    .end local v7    # "dialogId":Ljava/lang/String;
    .end local v8    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_f
    :try_start_3
    new-instance v0, Ljavax/sip/TransactionUnavailableException;

    invoke-direct {v0, v1}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    .end local v2    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v3    # "hop":Ljavax/sip/address/Hop;
    .end local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .end local p1    # "request":Ljavax/sip/message/Request;
    throw v0
    :try_end_3
    .catch Ljavax/sip/SipException; {:try_start_3 .. :try_end_3} :catch_3

    .line 350
    .restart local v2    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v3    # "hop":Ljavax/sip/address/Hop;
    .restart local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .restart local p1    # "request":Ljavax/sip/message/Request;
    :catch_3
    move-exception v0

    .line 351
    .local v0, "ex":Ljavax/sip/SipException;
    new-instance v4, Ljavax/sip/TransactionUnavailableException;

    invoke-direct {v4, v1, v0}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 299
    .end local v0    # "ex":Ljavax/sip/SipException;
    .end local v3    # "hop":Ljavax/sip/address/Hop;
    :catch_4
    move-exception v0

    .line 300
    .local v0, "ex":Ljava/text/ParseException;
    new-instance v1, Ljavax/sip/TransactionUnavailableException;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 286
    .end local v0    # "ex":Ljava/text/ParseException;
    :cond_10
    new-instance v0, Ljavax/sip/TransactionUnavailableException;

    const-string v1, "Cannot create client transaction for  ACK"

    invoke-direct {v0, v1}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_11
    new-instance v0, Ljavax/sip/TransactionUnavailableException;

    const-string v1, "Transaction already assigned to request"

    invoke-direct {v0, v1}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    .end local v2    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    :cond_12
    new-instance v0, Ljavax/sip/TransactionUnavailableException;

    const-string v1, "Stack is stopped"

    invoke-direct {v0, v1}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null request"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getNewDialog(Ljavax/sip/Transaction;)Ljavax/sip/Dialog;
    .locals 9
    .param p1, "transaction"    # Ljavax/sip/Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 823
    if-eqz p1, :cond_a

    .line 826
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 829
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 832
    invoke-interface {p1}, Ljavax/sip/Transaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v0

    invoke-interface {v0}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/javax/sip/SipStackImpl;->isDialogCreated(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 836
    const/4 v0, 0x0

    .line 837
    .local v0, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 839
    .local v1, "sipTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    instance-of v2, p1, Ljavax/sip/ServerTransaction;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 840
    move-object v2, p1

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 841
    .local v2, "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v4

    .line 842
    .local v4, "response":Ljavax/sip/message/Response;
    if-eqz v4, :cond_1

    .line 843
    invoke-interface {v4}, Ljavax/sip/message/Response;->getStatusCode()I

    move-result v5

    const/16 v6, 0x64

    if-ne v5, v6, :cond_0

    goto :goto_0

    .line 844
    :cond_0
    new-instance v3, Ljavax/sip/SipException;

    const-string v5, "Cannot set dialog after response has been sent"

    invoke-direct {v3, v5}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 847
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljavax/sip/Transaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/message/SIPRequest;

    .line 848
    .local v5, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v7

    .line 849
    .local v7, "dialogId":Ljava/lang/String;
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v8, v7}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v0

    .line 850
    if-nez v0, :cond_2

    .line 851
    iget-object v6, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v8, p1

    check-cast v8, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {v6, v8}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v0

    .line 853
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 854
    invoke-virtual {v0, v5}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 855
    invoke-virtual {v1, v0, v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    goto :goto_1

    .line 858
    :cond_2
    invoke-virtual {v5, v6}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lgov/nist/javax/sip/stack/SIPTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 860
    :goto_1
    invoke-virtual {v5}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v6, "INVITE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 861
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, v2, v5}, Lgov/nist/javax/sip/SipStackImpl;->putInMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 863
    .end local v2    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v4    # "response":Ljavax/sip/message/Response;
    .end local v5    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v7    # "dialogId":Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 865
    :cond_4
    move-object v2, p1

    check-cast v2, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 867
    .local v2, "sipClientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getLastResponse()Lgov/nist/javax/sip/message/SIPResponse;

    move-result-object v4

    .line 869
    .local v4, "response":Lgov/nist/javax/sip/message/SIPResponse;
    if-nez v4, :cond_6

    .line 872
    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/message/SIPRequest;

    .line 874
    .local v5, "request":Lgov/nist/javax/sip/message/SIPRequest;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v6

    .line 875
    .local v6, "dialogId":Ljava/lang/String;
    iget-object v7, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7, v6}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v0

    .line 876
    if-nez v0, :cond_5

    .line 879
    iget-object v7, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v7, v1}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v0

    .line 881
    invoke-virtual {v2, v0, v3}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 883
    .end local v5    # "request":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v6    # "dialogId":Ljava/lang/String;
    nop

    .line 888
    .end local v2    # "sipClientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v4    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    :goto_2
    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/stack/SIPDialog;->addEventListener(Lgov/nist/javax/sip/stack/SIPDialogEventListener;)V

    .line 889
    return-object v0

    .line 877
    .restart local v2    # "sipClientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .restart local v4    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    .restart local v5    # "request":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local v6    # "dialogId":Ljava/lang/String;
    :cond_5
    new-instance v3, Ljavax/sip/SipException;

    const-string v7, "Dialog already exists!"

    invoke-direct {v3, v7}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 884
    .end local v5    # "request":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v6    # "dialogId":Ljava/lang/String;
    :cond_6
    new-instance v3, Ljavax/sip/SipException;

    const-string v5, "Cannot call this method after response is received!"

    invoke-direct {v3, v5}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 833
    .end local v0    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    .end local v1    # "sipTransaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    .end local v2    # "sipClientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    .end local v4    # "response":Lgov/nist/javax/sip/message/SIPResponse;
    :cond_7
    new-instance v0, Ljavax/sip/SipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dialog cannot be created for this method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 834
    invoke-interface {p1}, Ljavax/sip/Transaction;->getRequest()Ljavax/sip/message/Request;

    move-result-object v2

    invoke-interface {v2}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_8
    new-instance v0, Ljavax/sip/SipException;

    const-string v1, " Error - AUTOMATIC_DIALOG_SUPPORT is on"

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 827
    :cond_9
    new-instance v0, Ljavax/sip/SipException;

    const-string v1, "Stack is stopped."

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 824
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null transaction!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getNewServerTransaction(Ljavax/sip/message/Request;)Ljavax/sip/ServerTransaction;
    .locals 6
    .param p1, "request"    # Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/TransactionAlreadyExistsException;,
            Ljavax/sip/TransactionUnavailableException;
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/message/SIPRequest;

    .line 460
    .local v1, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    :try_start_0
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->checkHeaders()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2

    .line 463
    nop

    .line 465
    invoke-interface {p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 466
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    const-string v3, "Creating server transaction for ACK -- makes no sense!"

    invoke-interface {v2, v3}, Lgov/nist/core/StackLogger;->logError(Ljava/lang/String;)V

    .line 468
    :cond_0
    new-instance v2, Ljavax/sip/TransactionUnavailableException;

    const-string v3, "Cannot create Server transaction for ACK "

    invoke-direct {v2, v3}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 473
    :cond_1
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NOTIFY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 474
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 475
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 477
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 478
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint()Ljavax/sip/ListeningPoint;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/ListeningPointImpl;

    .line 477
    invoke-virtual {v2, v1, v3}, Lgov/nist/javax/sip/SipStackImpl;->findSubscribeTransaction(Lgov/nist/javax/sip/message/SIPRequest;Lgov/nist/javax/sip/ListeningPointImpl;)Lgov/nist/javax/sip/stack/SIPClientTransaction;

    move-result-object v2

    .line 480
    .local v2, "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    if-nez v2, :cond_3

    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iget-boolean v3, v3, Lgov/nist/javax/sip/SipStackImpl;->deliverUnsolicitedNotify:Z

    if-eqz v3, :cond_2

    goto :goto_0

    .line 481
    :cond_2
    new-instance v3, Ljavax/sip/TransactionUnavailableException;

    const-string v4, "Cannot find matching Subscription (and gov.nist.javax.sip.DELIVER_UNSOLICITED_NOTIFY not set)"

    invoke-direct {v3, v4}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 485
    .end local v2    # "ct":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    :cond_3
    :goto_0
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->acquireSem()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 490
    :try_start_1
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgov/nist/javax/sip/SipStackImpl;->isDialogCreated(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    .line 491
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v4, p1

    check-cast v4, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v2, v4, v3}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v2

    if-nez v2, :cond_9

    .line 495
    move-object v2, p1

    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    .line 496
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getTransaction()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object v0, v2

    .line 497
    if-eqz v0, :cond_8

    .line 500
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v2

    if-nez v2, :cond_4

    .line 501
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    :cond_4
    :try_start_2
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 507
    nop

    .line 509
    :try_start_3
    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->addEventListener(Lgov/nist/javax/sip/stack/SIPTransactionEventListener;)V

    .line 510
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 513
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v2

    .line 514
    .local v2, "dialogId":Ljava/lang/String;
    iget-object v4, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4, v2}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v4

    .line 515
    .local v4, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-nez v4, :cond_5

    .line 516
    iget-object v5, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5, v0}, Lgov/nist/javax/sip/SipStackImpl;->createDialog(Lgov/nist/javax/sip/stack/SIPTransaction;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v5

    move-object v4, v5

    .line 519
    :cond_5
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V

    .line 520
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v5, "INVITE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->isDialogErrorsAutomaticallyHandled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 521
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, v0, v1}, Lgov/nist/javax/sip/SipStackImpl;->putInMergeTable(Lgov/nist/javax/sip/stack/SIPServerTransaction;Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 523
    :cond_6
    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 524
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->getRemoteTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 525
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPDialog;->getLocalTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 526
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/SipStackImpl;->putDialog(Lgov/nist/javax/sip/stack/SIPDialog;)V

    .line 528
    .end local v2    # "dialogId":Ljava/lang/String;
    .end local v4    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_7
    goto :goto_1

    .line 504
    :catch_0
    move-exception v2

    .line 505
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Ljavax/sip/TransactionUnavailableException;

    const-string v4, "Error sending provisional response"

    invoke-direct {v3, v4}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v1    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .end local p1    # "request":Ljavax/sip/message/Request;
    throw v3

    .line 498
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v0    # "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local v1    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .restart local p1    # "request":Ljavax/sip/message/Request;
    :cond_8
    new-instance v2, Ljavax/sip/TransactionUnavailableException;

    const-string v3, "Transaction not available"

    invoke-direct {v2, v3}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v1    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .end local p1    # "request":Ljavax/sip/message/Request;
    throw v2

    .line 492
    .restart local v0    # "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local v1    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .restart local p1    # "request":Ljavax/sip/message/Request;
    :cond_9
    new-instance v2, Ljavax/sip/TransactionAlreadyExistsException;

    const-string v3, "server transaction already exists!"

    invoke-direct {v2, v3}, Ljavax/sip/TransactionAlreadyExistsException;-><init>(Ljava/lang/String;)V

    .end local v0    # "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v1    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .end local p1    # "request":Ljavax/sip/message/Request;
    throw v2

    .line 531
    .restart local v0    # "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local v1    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .restart local p1    # "request":Ljavax/sip/message/Request;
    :cond_a
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v4, "Transaction exists! "

    if-eqz v2, :cond_10

    .line 537
    :try_start_4
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v5, p1

    check-cast v5, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v2, v5, v3}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object v0, v2

    .line 539
    if-nez v0, :cond_f

    .line 542
    move-object v2, p1

    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    .line 543
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getTransaction()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object v0, v2

    .line 544
    if-eqz v0, :cond_e

    .line 547
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v2

    if-nez v2, :cond_b

    .line 548
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 551
    :cond_b
    :try_start_5
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/SipStackImpl;->addTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 555
    nop

    .line 559
    :try_start_6
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v2

    .line 560
    .local v2, "dialogId":Ljava/lang/String;
    iget-object v4, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4, v2}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v4

    .line 561
    .restart local v4    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v4, :cond_c

    .line 562
    invoke-virtual {v4, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 563
    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 564
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 567
    .end local v2    # "dialogId":Ljava/lang/String;
    .end local v4    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_c
    nop

    .line 622
    :cond_d
    :goto_1
    nop

    .line 624
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->releaseSem()V

    .line 622
    return-object v0

    .line 552
    :catch_1
    move-exception v2

    .line 553
    .local v2, "ex":Ljava/io/IOException;
    :try_start_7
    new-instance v3, Ljavax/sip/TransactionUnavailableException;

    const-string v4, "Could not send back provisional response!"

    invoke-direct {v3, v4}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v1    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .end local p1    # "request":Ljavax/sip/message/Request;
    throw v3

    .line 545
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v0    # "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local v1    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .restart local p1    # "request":Ljavax/sip/message/Request;
    :cond_e
    new-instance v2, Ljavax/sip/TransactionUnavailableException;

    const-string v3, "Transaction not available!"

    invoke-direct {v2, v3}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v1    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .end local p1    # "request":Ljavax/sip/message/Request;
    throw v2

    .line 540
    .restart local v0    # "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local v1    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .restart local p1    # "request":Ljavax/sip/message/Request;
    :cond_f
    new-instance v2, Ljavax/sip/TransactionAlreadyExistsException;

    invoke-direct {v2, v4}, Ljavax/sip/TransactionAlreadyExistsException;-><init>(Ljava/lang/String;)V

    .end local v0    # "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v1    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .end local p1    # "request":Ljavax/sip/message/Request;
    throw v2

    .line 568
    .restart local v0    # "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local v1    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .restart local p1    # "request":Ljavax/sip/message/Request;
    :cond_10
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v5, p1

    check-cast v5, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v2, v5, v3}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object v0, v2

    .line 570
    if-nez v0, :cond_16

    .line 573
    move-object v2, p1

    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    .line 574
    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getTransaction()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-object v0, v2

    .line 575
    if-eqz v0, :cond_13

    .line 576
    invoke-virtual {v0}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getOriginalRequest()Lgov/nist/javax/sip/message/SIPRequest;

    move-result-object v2

    if-nez v2, :cond_11

    .line 577
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 579
    :cond_11
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/SipStackImpl;->mapTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 583
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v2

    .line 584
    .local v2, "dialogId":Ljava/lang/String;
    iget-object v4, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4, v2}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v4

    .line 585
    .restart local v4    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v4, :cond_12

    .line 586
    invoke-virtual {v4, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 587
    invoke-virtual {v4, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 588
    nop

    .line 589
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    .line 588
    invoke-virtual {v0, v4, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 592
    :cond_12
    nop

    .line 624
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->releaseSem()V

    .line 592
    return-object v0

    .line 596
    .end local v2    # "dialogId":Ljava/lang/String;
    .end local v4    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_13
    nop

    .line 597
    :try_start_8
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/SIPRequest;->getMessageChannel()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/MessageChannel;

    .line 598
    .local v2, "mc":Lgov/nist/javax/sip/stack/MessageChannel;
    iget-object v4, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4, v2}, Lgov/nist/javax/sip/SipStackImpl;->createServerTransaction(Lgov/nist/javax/sip/stack/MessageChannel;)Lgov/nist/javax/sip/stack/SIPServerTransaction;

    move-result-object v4

    move-object v0, v4

    .line 599
    if-eqz v0, :cond_15

    .line 603
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setOriginalRequest(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 604
    iget-object v4, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4, v0}, Lgov/nist/javax/sip/SipStackImpl;->mapTransaction(Lgov/nist/javax/sip/stack/SIPServerTransaction;)V

    .line 608
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v4

    .line 609
    .local v4, "dialogId":Ljava/lang/String;
    iget-object v5, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5, v4}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v5

    .line 610
    .local v5, "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    if-eqz v5, :cond_14

    .line 611
    invoke-virtual {v5, v0}, Lgov/nist/javax/sip/stack/SIPDialog;->addTransaction(Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 612
    invoke-virtual {v5, v1}, Lgov/nist/javax/sip/stack/SIPDialog;->addRoute(Lgov/nist/javax/sip/message/SIPRequest;)V

    .line 613
    nop

    .line 614
    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    .line 613
    invoke-virtual {v0, v5, v3}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->setDialog(Lgov/nist/javax/sip/stack/SIPDialog;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 617
    :cond_14
    nop

    .line 624
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->releaseSem()V

    .line 617
    return-object v0

    .line 600
    .end local v4    # "dialogId":Ljava/lang/String;
    .end local v5    # "dialog":Lgov/nist/javax/sip/stack/SIPDialog;
    :cond_15
    :try_start_9
    new-instance v3, Ljavax/sip/TransactionUnavailableException;

    const-string v4, "Transaction unavailable -- too many servrer transactions"

    invoke-direct {v3, v4}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v1    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .end local p1    # "request":Ljavax/sip/message/Request;
    throw v3

    .line 571
    .end local v2    # "mc":Lgov/nist/javax/sip/stack/MessageChannel;
    .restart local v0    # "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local v1    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .restart local p1    # "request":Ljavax/sip/message/Request;
    :cond_16
    new-instance v2, Ljavax/sip/TransactionAlreadyExistsException;

    invoke-direct {v2, v4}, Ljavax/sip/TransactionAlreadyExistsException;-><init>(Ljava/lang/String;)V

    .end local v0    # "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v1    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .end local p1    # "request":Ljavax/sip/message/Request;
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 624
    .restart local v0    # "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local v1    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .restart local p1    # "request":Ljavax/sip/message/Request;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->releaseSem()V

    .line 625
    throw v2

    .line 486
    :cond_17
    new-instance v2, Ljavax/sip/TransactionUnavailableException;

    const-string v3, "Transaction not available -- could not acquire stack lock"

    invoke-direct {v2, v3}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 461
    :catch_2
    move-exception v2

    .line 462
    .local v2, "ex":Ljava/text/ParseException;
    new-instance v3, Ljavax/sip/TransactionUnavailableException;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 456
    .end local v0    # "transaction":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v1    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local v2    # "ex":Ljava/text/ParseException;
    :cond_18
    new-instance v0, Ljavax/sip/TransactionUnavailableException;

    const-string v1, "Stack is stopped"

    invoke-direct {v0, v1}, Ljavax/sip/TransactionUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getSipListener()Ljavax/sip/SipListener;
    .locals 1

    .line 1112
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipListener:Ljavax/sip/SipListener;

    return-object v0
.end method

.method public greylist getSipStack()Ljavax/sip/SipStack;
    .locals 1

    .line 635
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    return-object v0
.end method

.method public greylist handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V
    .locals 4
    .param p1, "sipEvent"    # Ljava/util/EventObject;
    .param p2, "transaction"    # Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 169
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "currentTransaction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "this.sipListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 173
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sipEvent.source = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 174
    invoke-virtual {p1}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 175
    instance-of v0, p1, Ljavax/sip/RequestEvent;

    const-string v1, "Dialog = "

    if-eqz v0, :cond_0

    .line 176
    move-object v0, p1

    check-cast v0, Ljavax/sip/RequestEvent;

    invoke-virtual {v0}, Ljavax/sip/RequestEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    .line 177
    .local v0, "dialog":Ljavax/sip/Dialog;
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    .end local v0    # "dialog":Ljavax/sip/Dialog;
    :cond_0
    instance-of v0, p1, Ljavax/sip/ResponseEvent;

    if-eqz v0, :cond_1

    .line 179
    move-object v0, p1

    check-cast v0, Ljavax/sip/ResponseEvent;

    invoke-virtual {v0}, Ljavax/sip/ResponseEvent;->getDialog()Ljavax/sip/Dialog;

    move-result-object v0

    .line 180
    .restart local v0    # "dialog":Ljavax/sip/Dialog;
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    .line 178
    .end local v0    # "dialog":Ljavax/sip/Dialog;
    :cond_1
    :goto_0
    nop

    .line 182
    :cond_2
    :goto_1
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    invoke-interface {v0}, Lgov/nist/core/StackLogger;->logStackTrace()V

    .line 185
    :cond_3
    new-instance v0, Lgov/nist/javax/sip/EventWrapper;

    invoke-direct {v0, p1, p2}, Lgov/nist/javax/sip/EventWrapper;-><init>(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 187
    .local v0, "eventWrapper":Lgov/nist/javax/sip/EventWrapper;
    iget-object v1, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iget-boolean v1, v1, Lgov/nist/javax/sip/SipStackImpl;->reEntrantListener:Z

    if-nez v1, :cond_4

    .line 189
    iget-object v1, p0, Lgov/nist/javax/sip/SipProviderImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/EventScanner;->addEvent(Lgov/nist/javax/sip/EventWrapper;)V

    goto :goto_2

    .line 192
    :cond_4
    iget-object v1, p0, Lgov/nist/javax/sip/SipProviderImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    invoke-virtual {v1, v0}, Lgov/nist/javax/sip/EventScanner;->deliverEvent(Lgov/nist/javax/sip/EventWrapper;)V

    .line 194
    :goto_2
    return-void
.end method

.method public greylist isAutomaticDialogSupportEnabled()Z
    .locals 1

    .line 1092
    iget-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->automaticDialogSupportEnabled:Z

    return v0
.end method

.method public greylist isDialogErrorsAutomaticallyHandled()Z
    .locals 1

    .line 1104
    iget-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    return v0
.end method

.method public declared-synchronized greylist removeListeningPoint(Ljavax/sip/ListeningPoint;)V
    .locals 3
    .param p1, "listeningPoint"    # Ljavax/sip/ListeningPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/ObjectInUseException;
        }
    .end annotation

    monitor-enter p0

    .line 1054
    :try_start_0
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/ListeningPointImpl;

    .line 1055
    .local v0, "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    iget-object v1, v0, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v1}, Lgov/nist/javax/sip/stack/MessageProcessor;->inUse()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1057
    iget-object v1, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lgov/nist/javax/sip/ListeningPointImpl;->getTransport()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1059
    monitor-exit p0

    return-void

    .line 1056
    .end local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    :cond_0
    :try_start_1
    new-instance v1, Ljavax/sip/ObjectInUseException;

    const-string v2, "Object is in use"

    invoke-direct {v1, v2}, Ljavax/sip/ObjectInUseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1053
    .end local v0    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    .end local p1    # "listeningPoint":Ljavax/sip/ListeningPoint;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized greylist removeListeningPoints()V
    .locals 3

    monitor-enter p0

    .line 1066
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1067
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1068
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/ListeningPointImpl;

    .line 1069
    .local v1, "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    iget-object v2, v1, Lgov/nist/javax/sip/ListeningPointImpl;->messageProcessor:Lgov/nist/javax/sip/stack/MessageProcessor;

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/MessageProcessor;->stop()V

    .line 1070
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1071
    .end local v1    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    goto :goto_0

    .line 1073
    .end local v0    # "it":Ljava/util/Iterator;
    .end local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    :cond_0
    monitor-exit p0

    return-void

    .line 1065
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public greylist removeSipListener(Ljavax/sip/SipListener;)V
    .locals 5
    .param p1, "sipListener"    # Ljavax/sip/SipListener;

    .line 644
    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 645
    iput-object v1, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipListener:Ljavax/sip/SipListener;

    .line 648
    :cond_0
    const/4 v0, 0x0

    .line 650
    .local v0, "found":Z
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->getSipProviders()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/SipProviderImpl;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 651
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/SipProviderImpl;

    .line 652
    .local v3, "nextProvider":Lgov/nist/javax/sip/SipProviderImpl;
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipProviderImpl;->getSipListener()Ljavax/sip/SipListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 653
    const/4 v0, 0x1

    .line 654
    .end local v3    # "nextProvider":Lgov/nist/javax/sip/SipProviderImpl;
    :cond_1
    goto :goto_0

    .line 655
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/SipProviderImpl;>;"
    :cond_2
    if-nez v0, :cond_3

    .line 656
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    iput-object v1, v2, Lgov/nist/javax/sip/SipStackImpl;->sipListener:Ljavax/sip/SipListener;

    .line 658
    :cond_3
    return-void
.end method

.method public greylist sendRequest(Ljavax/sip/message/Request;)V
    .locals 8
    .param p1, "request"    # Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 666
    const-string v0, " to hop "

    const-string v1, "done sending "

    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v2}, Lgov/nist/javax/sip/SipStackImpl;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 671
    move-object v2, p1

    check-cast v2, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v2}, Lgov/nist/javax/sip/message/SIPRequest;->getRequestLine()Lgov/nist/javax/sip/header/RequestLine;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 672
    invoke-interface {p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 673
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v3, p1

    check-cast v3, Lgov/nist/javax/sip/message/SIPRequest;

    .line 674
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lgov/nist/javax/sip/message/SIPRequest;->getDialogId(Z)Ljava/lang/String;

    move-result-object v3

    .line 673
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/SipStackImpl;->getDialog(Ljava/lang/String;)Lgov/nist/javax/sip/stack/SIPDialog;

    move-result-object v2

    .line 675
    .local v2, "dialog":Ljavax/sip/Dialog;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljavax/sip/Dialog;->getState()Ljavax/sip/DialogState;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 676
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 677
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dialog exists -- you may want to use Dialog.sendAck() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 679
    invoke-interface {v2}, Ljavax/sip/Dialog;->getState()Ljavax/sip/DialogState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 677
    invoke-interface {v3, v4}, Lgov/nist/core/StackLogger;->logWarning(Ljava/lang/String;)V

    .line 682
    .end local v2    # "dialog":Ljavax/sip/Dialog;
    :cond_0
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v3, p1

    check-cast v3, Lgov/nist/javax/sip/message/SIPRequest;

    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/SipStackImpl;->getRouter(Lgov/nist/javax/sip/message/SIPRequest;)Ljavax/sip/address/Router;

    move-result-object v2

    invoke-interface {v2, p1}, Ljavax/sip/address/Router;->getNextHop(Ljavax/sip/message/Request;)Ljavax/sip/address/Hop;

    move-result-object v2

    .line 683
    .local v2, "hop":Ljavax/sip/address/Hop;
    if-eqz v2, :cond_a

    .line 685
    move-object v3, p1

    check-cast v3, Lgov/nist/javax/sip/message/SIPRequest;

    .line 688
    .local v3, "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPRequest;->isNullRequest()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 689
    :cond_1
    new-instance v0, Ljavax/sip/SipException;

    const-string v1, "Invalid SipRequest -- no via header!"

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPRequest;->isNullRequest()Z

    move-result v4

    if-nez v4, :cond_4

    .line 698
    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPRequest;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v4

    .line 699
    .local v4, "via":Lgov/nist/javax/sip/header/Via;
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v5

    .line 700
    .local v5, "branch":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 701
    :cond_3
    invoke-virtual {v3}, Lgov/nist/javax/sip/message/SIPRequest;->getTransactionId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lgov/nist/javax/sip/header/Via;->setBranch(Ljava/lang/String;)V

    .line 704
    .end local v4    # "via":Lgov/nist/javax/sip/header/Via;
    .end local v5    # "branch":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    .line 705
    .local v4, "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    iget-object v5, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v6

    .line 706
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 705
    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 707
    iget-object v5, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 708
    invoke-interface {v2}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v6

    invoke-interface {v6}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v6

    .line 709
    invoke-interface {v2}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v7

    invoke-interface {v7}, Ljavax/sip/ListeningPoint;->getPort()I

    move-result v7

    .line 707
    invoke-virtual {v5, v6, v7, v2}, Lgov/nist/javax/sip/SipStackImpl;->createRawMessageChannel(Ljava/lang/String;ILjavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v5

    move-object v4, v5

    .line 710
    :cond_5
    if-eqz v4, :cond_6

    .line 711
    invoke-virtual {v4, v3, v2}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;Ljavax/sip/address/Hop;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    .end local v4    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    iget-object v4, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 729
    iget-object v4, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 713
    .restart local v4    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    :cond_6
    :try_start_1
    new-instance v5, Ljavax/sip/SipException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not create a message channel for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 715
    invoke-interface {v2}, Ljavax/sip/address/Hop;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local v2    # "hop":Ljavax/sip/address/Hop;
    .end local v3    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .end local p1    # "request":Ljavax/sip/message/Request;
    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 728
    .end local v4    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    .restart local v2    # "hop":Ljavax/sip/address/Hop;
    .restart local v3    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .restart local p1    # "request":Ljavax/sip/message/Request;
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 725
    :catch_0
    move-exception v4

    .line 726
    .local v4, "ex1":Ljava/text/ParseException;
    :try_start_2
    invoke-static {v4}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 728
    .end local v4    # "ex1":Ljava/text/ParseException;
    iget-object v4, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 729
    iget-object v4, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v4}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 730
    invoke-interface {p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 729
    invoke-interface {v4, v0}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 733
    :cond_7
    return-void

    .line 717
    :catch_1
    move-exception v4

    .line 718
    .local v4, "ex":Ljava/io/IOException;
    :try_start_3
    iget-object v5, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 719
    iget-object v5, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    invoke-interface {v5, v4}, Lgov/nist/core/StackLogger;->logException(Ljava/lang/Throwable;)V

    .line 722
    :cond_8
    new-instance v5, Ljavax/sip/SipException;

    const-string v6, "IO Exception occured while Sending Request"

    invoke-direct {v5, v6, v4}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "hop":Ljavax/sip/address/Hop;
    .end local v3    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .end local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .end local p1    # "request":Ljavax/sip/message/Request;
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 728
    .end local v4    # "ex":Ljava/io/IOException;
    .restart local v2    # "hop":Ljavax/sip/address/Hop;
    .restart local v3    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    .restart local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .restart local p1    # "request":Ljavax/sip/message/Request;
    :goto_2
    iget-object v5, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 729
    iget-object v5, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 730
    invoke-interface {p1}, Ljavax/sip/message/Request;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 729
    invoke-interface {v5, v0}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 732
    :cond_9
    throw v4

    .line 684
    .end local v3    # "sipRequest":Lgov/nist/javax/sip/message/SIPRequest;
    :cond_a
    new-instance v0, Ljavax/sip/SipException;

    const-string v1, "could not determine next hop!"

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    .end local v2    # "hop":Ljavax/sip/address/Hop;
    :cond_b
    new-instance v0, Ljavax/sip/SipException;

    const-string v1, "Stack is stopped."

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist sendResponse(Ljavax/sip/message/Response;)V
    .locals 11
    .param p1, "response"    # Ljavax/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;
        }
    .end annotation

    .line 741
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 743
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/message/SIPResponse;

    .line 744
    .local v0, "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    invoke-virtual {v0}, Lgov/nist/javax/sip/message/SIPResponse;->getTopmostVia()Lgov/nist/javax/sip/header/Via;

    move-result-object v1

    .line 745
    .local v1, "via":Lgov/nist/javax/sip/header/Via;
    if-eqz v1, :cond_7

    .line 747
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    move-object v3, p1

    check-cast v3, Lgov/nist/javax/sip/message/SIPMessage;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lgov/nist/javax/sip/SipStackImpl;->findTransaction(Lgov/nist/javax/sip/message/SIPMessage;Z)Lgov/nist/javax/sip/stack/SIPTransaction;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    .line 748
    .local v2, "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lgov/nist/javax/sip/stack/SIPServerTransaction;->getState()Ljavax/sip/TransactionState;

    move-result-object v3

    sget-object v4, Ljavax/sip/TransactionState;->TERMINATED:Ljavax/sip/TransactionState;

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Lgov/nist/javax/sip/SipProviderImpl;->isAutomaticDialogSupportEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 749
    :cond_0
    new-instance v3, Ljavax/sip/SipException;

    const-string v4, "Transaction exists -- cannot send response statelessly"

    invoke-direct {v3, v4}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 751
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getTransport()Ljava/lang/String;

    move-result-object v3

    .line 756
    .local v3, "transport":Ljava/lang/String;
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getReceived()Ljava/lang/String;

    move-result-object v4

    .line 758
    .local v4, "host":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 759
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 762
    :cond_2
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getRPort()I

    move-result v5

    .line 763
    .local v5, "port":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    .line 764
    invoke-virtual {v1}, Lgov/nist/javax/sip/header/Via;->getPort()I

    move-result v5

    .line 765
    if-ne v5, v6, :cond_4

    .line 766
    const-string v6, "TLS"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 767
    const/16 v5, 0x13c5

    goto :goto_1

    .line 769
    :cond_3
    const/16 v5, 0x13c4

    .line 774
    :cond_4
    :goto_1
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_5

    .line 775
    const-string v6, "["

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_5

    .line 776
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 778
    :cond_5
    iget-object v6, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getAddressResolver()Lgov/nist/core/net/AddressResolver;

    move-result-object v6

    new-instance v7, Lgov/nist/javax/sip/stack/HopImpl;

    invoke-direct {v7, v4, v5, v3}, Lgov/nist/javax/sip/stack/HopImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v6, v7}, Lgov/nist/core/net/AddressResolver;->resolveAddress(Ljavax/sip/address/Hop;)Ljavax/sip/address/Hop;

    move-result-object v6

    .line 782
    .local v6, "hop":Ljavax/sip/address/Hop;
    nop

    .line 783
    :try_start_0
    invoke-virtual {p0, v3}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/ListeningPointImpl;

    .line 784
    .local v7, "listeningPoint":Lgov/nist/javax/sip/ListeningPointImpl;
    if-eqz v7, :cond_6

    .line 788
    iget-object v8, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 789
    invoke-interface {v6}, Ljavax/sip/address/Hop;->getTransport()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov/nist/javax/sip/SipProviderImpl;->getListeningPoint(Ljava/lang/String;)Ljavax/sip/ListeningPoint;

    move-result-object v9

    invoke-interface {v9}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v9

    iget v10, v7, Lgov/nist/javax/sip/ListeningPointImpl;->port:I

    .line 788
    invoke-virtual {v8, v9, v10, v6}, Lgov/nist/javax/sip/SipStackImpl;->createRawMessageChannel(Ljava/lang/String;ILjavax/sip/address/Hop;)Lgov/nist/javax/sip/stack/MessageChannel;

    move-result-object v8

    .line 791
    .local v8, "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    invoke-virtual {v8, v0}, Lgov/nist/javax/sip/stack/MessageChannel;->sendMessage(Lgov/nist/javax/sip/message/SIPMessage;)V

    .line 794
    .end local v7    # "listeningPoint":Lgov/nist/javax/sip/ListeningPointImpl;
    .end local v8    # "messageChannel":Lgov/nist/javax/sip/stack/MessageChannel;
    nop

    .line 795
    return-void

    .line 785
    .restart local v7    # "listeningPoint":Lgov/nist/javax/sip/ListeningPointImpl;
    :cond_6
    new-instance v8, Ljavax/sip/SipException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "whoopsa daisy! no listening point found for transport "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    .end local v0    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v1    # "via":Lgov/nist/javax/sip/header/Via;
    .end local v2    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v3    # "transport":Ljava/lang/String;
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "port":I
    .end local v6    # "hop":Ljavax/sip/address/Hop;
    .end local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .end local p1    # "response":Ljavax/sip/message/Response;
    throw v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    .end local v7    # "listeningPoint":Lgov/nist/javax/sip/ListeningPointImpl;
    .restart local v0    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .restart local v1    # "via":Lgov/nist/javax/sip/header/Via;
    .restart local v2    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .restart local v3    # "transport":Ljava/lang/String;
    .restart local v4    # "host":Ljava/lang/String;
    .restart local v5    # "port":I
    .restart local v6    # "hop":Ljavax/sip/address/Hop;
    .restart local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .restart local p1    # "response":Ljavax/sip/message/Response;
    :catch_0
    move-exception v7

    .line 793
    .local v7, "ex":Ljava/io/IOException;
    new-instance v8, Ljavax/sip/SipException;

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 746
    .end local v2    # "st":Lgov/nist/javax/sip/stack/SIPServerTransaction;
    .end local v3    # "transport":Ljava/lang/String;
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "port":I
    .end local v6    # "hop":Ljavax/sip/address/Hop;
    .end local v7    # "ex":Ljava/io/IOException;
    :cond_7
    new-instance v2, Ljavax/sip/SipException;

    const-string v3, "No via header in response!"

    invoke-direct {v2, v3}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 742
    .end local v0    # "sipResponse":Lgov/nist/javax/sip/message/SIPResponse;
    .end local v1    # "via":Lgov/nist/javax/sip/header/Via;
    :cond_8
    new-instance v0, Ljavax/sip/SipException;

    const-string v1, "Stack is stopped"

    invoke-direct {v0, v1}, Ljavax/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist setAutomaticDialogSupportEnabled(Z)V
    .locals 1
    .param p1, "automaticDialogSupportEnabled"    # Z

    .line 1082
    iput-boolean p1, p0, Lgov/nist/javax/sip/SipProviderImpl;->automaticDialogSupportEnabled:Z

    .line 1083
    iget-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->automaticDialogSupportEnabled:Z

    if-eqz v0, :cond_0

    .line 1084
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    .line 1086
    :cond_0
    return-void
.end method

.method public greylist setDialogErrorsAutomaticallyHandled()V
    .locals 1

    .line 1100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->dialogErrorsAutomaticallyHandled:Z

    .line 1101
    return-void
.end method

.method public declared-synchronized greylist setListeningPoint(Ljavax/sip/ListeningPoint;)V
    .locals 3
    .param p1, "listeningPoint"    # Ljavax/sip/ListeningPoint;

    monitor-enter p0

    .line 803
    if-eqz p1, :cond_0

    .line 805
    :try_start_0
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/ListeningPointImpl;

    .line 806
    .local v0, "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    iput-object p0, v0, Lgov/nist/javax/sip/ListeningPointImpl;->sipProvider:Lgov/nist/javax/sip/SipProviderImpl;

    .line 807
    invoke-virtual {v0}, Lgov/nist/javax/sip/ListeningPointImpl;->getTransport()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 808
    .local v1, "transport":Ljava/lang/String;
    invoke-interface {p1}, Ljavax/sip/ListeningPoint;->getIPAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->address:Ljava/lang/String;

    .line 809
    invoke-interface {p1}, Ljavax/sip/ListeningPoint;->getPort()I

    move-result v2

    iput v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->port:I

    .line 811
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 812
    iget-object v2, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    monitor-exit p0

    return-void

    .line 802
    .end local v0    # "lp":Lgov/nist/javax/sip/ListeningPointImpl;
    .end local v1    # "transport":Ljava/lang/String;
    .end local p0    # "this":Lgov/nist/javax/sip/SipProviderImpl;
    .end local p1    # "listeningPoint":Ljavax/sip/ListeningPoint;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 804
    .restart local p1    # "listeningPoint":Ljavax/sip/ListeningPoint;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null listening point"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    .end local p1    # "listeningPoint":Ljavax/sip/ListeningPoint;
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected greylist stop()V
    .locals 2

    .line 136
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v0}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v0

    const-string v1, "Exiting provider"

    invoke-interface {v0, v1}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->listeningPoints:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/ListeningPointImpl;

    .line 140
    .local v1, "listeningPoint":Lgov/nist/javax/sip/ListeningPointImpl;
    invoke-virtual {v1}, Lgov/nist/javax/sip/ListeningPointImpl;->removeSipProvider()V

    .line 141
    .end local v1    # "listeningPoint":Lgov/nist/javax/sip/ListeningPointImpl;
    goto :goto_0

    .line 142
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/SipProviderImpl;->eventScanner:Lgov/nist/javax/sip/EventScanner;

    invoke-virtual {v0}, Lgov/nist/javax/sip/EventScanner;->stop()V

    .line 144
    return-void
.end method

.method public greylist transactionErrorEvent(Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;)V
    .locals 8
    .param p1, "transactionErrorEvent"    # Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;

    .line 902
    nop

    .line 903
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/stack/SIPTransaction;

    .line 905
    .local v0, "transaction":Lgov/nist/javax/sip/stack/SIPTransaction;
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getErrorID()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 907
    iget-object v1, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 908
    iget-object v1, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v1}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TransportError occured on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lgov/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    .line 912
    :cond_0
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    .line 913
    .local v1, "errorObject":Ljava/lang/Object;
    sget-object v2, Ljavax/sip/Timeout;->TRANSACTION:Ljavax/sip/Timeout;

    .line 914
    .local v2, "timeout":Ljavax/sip/Timeout;
    const/4 v3, 0x0

    .line 916
    .local v3, "ev":Ljavax/sip/TimeoutEvent;
    instance-of v4, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v4, :cond_1

    .line 917
    new-instance v4, Ljavax/sip/TimeoutEvent;

    move-object v5, v1

    check-cast v5, Ljavax/sip/ServerTransaction;

    invoke-direct {v4, p0, v5, v2}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Timeout;)V

    .end local v3    # "ev":Ljavax/sip/TimeoutEvent;
    .local v4, "ev":Ljavax/sip/TimeoutEvent;
    goto :goto_0

    .line 920
    .end local v4    # "ev":Ljavax/sip/TimeoutEvent;
    .restart local v3    # "ev":Ljavax/sip/TimeoutEvent;
    :cond_1
    move-object v4, v1

    check-cast v4, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 921
    .local v4, "clientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getNextHop()Ljavax/sip/address/Hop;

    move-result-object v5

    .line 922
    .local v5, "hop":Ljavax/sip/address/Hop;
    iget-object v6, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getRouter()Ljavax/sip/address/Router;

    move-result-object v6

    instance-of v6, v6, Lgov/nist/javax/sip/address/RouterExt;

    if-eqz v6, :cond_2

    .line 923
    iget-object v6, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getRouter()Ljavax/sip/address/Router;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/address/RouterExt;

    invoke-interface {v6, v5}, Lgov/nist/javax/sip/address/RouterExt;->transactionTimeout(Ljavax/sip/address/Hop;)V

    .line 925
    :cond_2
    new-instance v6, Ljavax/sip/TimeoutEvent;

    move-object v7, v1

    check-cast v7, Ljavax/sip/ClientTransaction;

    invoke-direct {v6, p0, v7, v2}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;Ljavax/sip/Timeout;)V

    move-object v4, v6

    .line 929
    .end local v3    # "ev":Ljavax/sip/TimeoutEvent;
    .end local v5    # "hop":Ljavax/sip/address/Hop;
    .local v4, "ev":Ljavax/sip/TimeoutEvent;
    :goto_0
    move-object v3, v1

    check-cast v3, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {p0, v4, v3}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .line 930
    .end local v1    # "errorObject":Ljava/lang/Object;
    .end local v2    # "timeout":Ljavax/sip/Timeout;
    .end local v4    # "ev":Ljavax/sip/TimeoutEvent;
    goto/16 :goto_4

    :cond_3
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getErrorID()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 932
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    .line 933
    .restart local v1    # "errorObject":Ljava/lang/Object;
    sget-object v2, Ljavax/sip/Timeout;->TRANSACTION:Ljavax/sip/Timeout;

    .line 934
    .restart local v2    # "timeout":Ljavax/sip/Timeout;
    const/4 v3, 0x0

    .line 936
    .restart local v3    # "ev":Ljavax/sip/TimeoutEvent;
    instance-of v4, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v4, :cond_4

    .line 937
    new-instance v4, Ljavax/sip/TimeoutEvent;

    move-object v5, v1

    check-cast v5, Ljavax/sip/ServerTransaction;

    invoke-direct {v4, p0, v5, v2}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Timeout;)V

    .end local v3    # "ev":Ljavax/sip/TimeoutEvent;
    .restart local v4    # "ev":Ljavax/sip/TimeoutEvent;
    goto :goto_1

    .line 940
    .end local v4    # "ev":Ljavax/sip/TimeoutEvent;
    .restart local v3    # "ev":Ljavax/sip/TimeoutEvent;
    :cond_4
    move-object v4, v1

    check-cast v4, Lgov/nist/javax/sip/stack/SIPClientTransaction;

    .line 941
    .local v4, "clientTx":Lgov/nist/javax/sip/stack/SIPClientTransaction;
    invoke-virtual {v4}, Lgov/nist/javax/sip/stack/SIPClientTransaction;->getNextHop()Ljavax/sip/address/Hop;

    move-result-object v5

    .line 942
    .restart local v5    # "hop":Ljavax/sip/address/Hop;
    iget-object v6, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getRouter()Ljavax/sip/address/Router;

    move-result-object v6

    instance-of v6, v6, Lgov/nist/javax/sip/address/RouterExt;

    if-eqz v6, :cond_5

    .line 943
    iget-object v6, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    invoke-virtual {v6}, Lgov/nist/javax/sip/SipStackImpl;->getRouter()Ljavax/sip/address/Router;

    move-result-object v6

    check-cast v6, Lgov/nist/javax/sip/address/RouterExt;

    invoke-interface {v6, v5}, Lgov/nist/javax/sip/address/RouterExt;->transactionTimeout(Ljavax/sip/address/Hop;)V

    .line 946
    :cond_5
    new-instance v6, Ljavax/sip/TimeoutEvent;

    move-object v7, v1

    check-cast v7, Ljavax/sip/ClientTransaction;

    invoke-direct {v6, p0, v7, v2}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;Ljavax/sip/Timeout;)V

    move-object v4, v6

    .line 949
    .end local v3    # "ev":Ljavax/sip/TimeoutEvent;
    .end local v5    # "hop":Ljavax/sip/address/Hop;
    .local v4, "ev":Ljavax/sip/TimeoutEvent;
    :goto_1
    move-object v3, v1

    check-cast v3, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {p0, v4, v3}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    .end local v1    # "errorObject":Ljava/lang/Object;
    .end local v2    # "timeout":Ljavax/sip/Timeout;
    .end local v4    # "ev":Ljavax/sip/TimeoutEvent;
    goto :goto_3

    .line 951
    :cond_6
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getErrorID()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 956
    invoke-virtual {p1}, Lgov/nist/javax/sip/stack/SIPTransactionErrorEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    .line 957
    .restart local v1    # "errorObject":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Ljavax/sip/Transaction;

    .line 959
    .local v2, "tx":Ljavax/sip/Transaction;
    invoke-interface {v2}, Ljavax/sip/Transaction;->getDialog()Ljavax/sip/Dialog;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 960
    iget-object v3, p0, Lgov/nist/javax/sip/SipProviderImpl;->sipStack:Lgov/nist/javax/sip/SipStackImpl;

    .line 961
    invoke-virtual {v3}, Lgov/nist/javax/sip/SipStackImpl;->getStackLogger()Lgov/nist/core/StackLogger;

    move-result-object v3

    .line 960
    const-string v4, "Unexpected event !"

    invoke-static {v4, v3}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;Lgov/nist/core/StackLogger;)V

    .line 963
    :cond_7
    sget-object v3, Ljavax/sip/Timeout;->RETRANSMIT:Ljavax/sip/Timeout;

    .line 964
    .local v3, "timeout":Ljavax/sip/Timeout;
    const/4 v4, 0x0

    .line 966
    .restart local v4    # "ev":Ljavax/sip/TimeoutEvent;
    instance-of v5, v1, Lgov/nist/javax/sip/stack/SIPServerTransaction;

    if-eqz v5, :cond_8

    .line 967
    new-instance v5, Ljavax/sip/TimeoutEvent;

    move-object v6, v1

    check-cast v6, Ljavax/sip/ServerTransaction;

    invoke-direct {v5, p0, v6, v3}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ServerTransaction;Ljavax/sip/Timeout;)V

    .end local v4    # "ev":Ljavax/sip/TimeoutEvent;
    .local v5, "ev":Ljavax/sip/TimeoutEvent;
    goto :goto_2

    .line 970
    .end local v5    # "ev":Ljavax/sip/TimeoutEvent;
    .restart local v4    # "ev":Ljavax/sip/TimeoutEvent;
    :cond_8
    new-instance v5, Ljavax/sip/TimeoutEvent;

    move-object v6, v1

    check-cast v6, Ljavax/sip/ClientTransaction;

    invoke-direct {v5, p0, v6, v3}, Ljavax/sip/TimeoutEvent;-><init>(Ljava/lang/Object;Ljavax/sip/ClientTransaction;Ljavax/sip/Timeout;)V

    .line 973
    .end local v4    # "ev":Ljavax/sip/TimeoutEvent;
    .restart local v5    # "ev":Ljavax/sip/TimeoutEvent;
    :goto_2
    move-object v4, v1

    check-cast v4, Lgov/nist/javax/sip/stack/SIPTransaction;

    invoke-virtual {p0, v5, v4}, Lgov/nist/javax/sip/SipProviderImpl;->handleEvent(Ljava/util/EventObject;Lgov/nist/javax/sip/stack/SIPTransaction;)V

    goto :goto_4

    .line 951
    .end local v1    # "errorObject":Ljava/lang/Object;
    .end local v2    # "tx":Ljavax/sip/Transaction;
    .end local v3    # "timeout":Ljavax/sip/Timeout;
    .end local v5    # "ev":Ljavax/sip/TimeoutEvent;
    :cond_9
    :goto_3
    nop

    .line 975
    :goto_4
    return-void
.end method
