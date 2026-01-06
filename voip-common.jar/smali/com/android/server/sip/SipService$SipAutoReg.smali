.class Lcom/android/server/sip/SipService$SipAutoReg;
.super Landroid/net/sip/SipSessionAdapter;
.source "SipService.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipAutoReg"
.end annotation


# static fields
.field private static final blacklist MIN_KEEPALIVE_SUCCESS_COUNT:I = 0xa

.field private static final blacklist SAR_DBG:Z = true


# instance fields
.field private blacklist SAR_TAG:Ljava/lang/String;

.field private blacklist mBackoff:I

.field private blacklist mErrorCode:I

.field private blacklist mErrorMessage:Ljava/lang/String;

.field private blacklist mExpiryTime:J

.field private blacklist mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field private blacklist mKeepAliveSuccessCount:I

.field private blacklist mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

.field private blacklist mRegistered:Z

.field private blacklist mRunning:Z

.field private blacklist mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field final synthetic blacklist this$0:Lcom/android/server/sip/SipService;


# direct methods
.method private constructor blacklist <init>(Lcom/android/server/sip/SipService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 802
    iput-object p1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Landroid/net/sip/SipSessionAdapter;-><init>()V

    .line 810
    new-instance p1, Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-direct {p1}, Lcom/android/server/sip/SipSessionListenerProxy;-><init>()V

    iput-object p1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    .line 811
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mBackoff:I

    .line 816
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    .line 818
    iput p1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$SipAutoReg;-><init>(Lcom/android/server/sip/SipService;)V

    return-void
.end method

.method private blacklist backoffDuration()I
    .locals 2

    .line 1013
    iget v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mBackoff:I

    mul-int/lit8 v0, v0, 0xa

    .line 1014
    .local v0, "duration":I
    const/16 v1, 0xe10

    if-le v0, v1, :cond_0

    .line 1015
    const/16 v0, 0xe10

    goto :goto_0

    .line 1017
    :cond_0
    iget v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mBackoff:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mBackoff:I

    .line 1019
    :goto_0
    return v0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 1124
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->SAR_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 1128
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->SAR_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    return-void
.end method

.method private blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 1132
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->SAR_TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1133
    return-void
.end method

.method private blacklist notCurrentSession(Landroid/net/sip/ISipSession;)Z
    .locals 3
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 1034
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    .line 1035
    move-object v0, p1

    check-cast v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 1036
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v0}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmMyWakeLock(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1037
    return v1

    .line 1039
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    xor-int/2addr v0, v1

    return v0
.end method

.method private blacklist restart(I)V
    .locals 2
    .param p1, "duration"    # I

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restart: duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s later."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 1008
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v0}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmTimer(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 1009
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v0}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmTimer(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    mul-int/lit16 v1, p1, 0x3e8

    invoke-virtual {v0, v1, p0}, Lcom/android/server/sip/SipWakeupTimer;->set(ILjava/lang/Runnable;)V

    .line 1010
    return-void
.end method

.method private blacklist restartLater()V
    .locals 1

    .line 1118
    const-string v0, "restartLater"

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->loge(Ljava/lang/String;)V

    .line 1119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    .line 1120
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipAutoReg;->backoffDuration()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->restart(I)V

    .line 1121
    return-void
.end method

.method private blacklist startKeepAliveProcess(I)V
    .locals 3
    .param p1, "interval"    # I

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startKeepAliveProcess: interval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->duplicate()Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    goto :goto_0

    .line 845
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 848
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->startKeepAliveProcess(ILcom/android/server/sip/SipSessionGroup$KeepAliveProcessCallback;)V
    :try_end_0
    .catch Ljavax/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    goto :goto_1

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, "e":Ljavax/sip/SipException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 852
    .end local v0    # "e":Ljavax/sip/SipException;
    :goto_1
    return-void
.end method

.method private blacklist stopKeepAliveProcess()V
    .locals 1

    .line 855
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->stopKeepAliveProcess()V

    .line 857
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 859
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    .line 860
    return-void
.end method


# virtual methods
.method public blacklist isRegistered()Z
    .locals 1

    .line 987
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    return v0
.end method

.method public blacklist onError(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->loge(Ljava/lang/String;)V

    .line 915
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->onResponse(Z)V

    .line 916
    return-void
.end method

.method public blacklist onKeepAliveIntervalChanged()V
    .locals 3

    .line 935
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v0}, Lcom/android/server/sip/SipService;->-$$Nest$mgetKeepAliveInterval(Lcom/android/server/sip/SipService;)I

    move-result v0

    .line 938
    .local v0, "newInterval":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeepAliveIntervalChanged: interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 940
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    .line 941
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->startKeepAliveProcess(I)V

    .line 943
    .end local v0    # "newInterval":I
    :cond_0
    return-void
.end method

.method public blacklist onRegistering(Landroid/net/sip/ISipSession;)V
    .locals 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistering: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 1025
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    .line 1026
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$SipAutoReg;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 1028
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    .line 1029
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V

    .line 1030
    monitor-exit v0

    .line 1031
    return-void

    .line 1030
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .locals 5
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "duration"    # I

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistrationDone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    .line 1046
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$SipAutoReg;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 1048
    :cond_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V

    .line 1050
    if-lez p2, :cond_4

    .line 1051
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    mul-int/lit16 v3, p2, 0x3e8

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mExpiryTime:J

    .line 1054
    iget-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    if-nez v1, :cond_3

    .line 1055
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    .line 1057
    add-int/lit8 p2, p2, -0x3c

    .line 1058
    const/16 v1, 0x3c

    if-ge p2, v1, :cond_1

    .line 1059
    const/16 p2, 0x3c

    .line 1061
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/sip/SipService$SipAutoReg;->restart(I)V

    .line 1063
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    .line 1064
    .local v1, "localProfile":Landroid/net/sip/SipProfile;
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v3}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmLocalIp(Lcom/android/server/sip/SipService;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/sip/SipService;->-$$Nest$misBehindNAT(Lcom/android/server/sip/SipService;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1065
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getSendKeepAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1066
    :cond_2
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v2}, Lcom/android/server/sip/SipService;->-$$Nest$mgetKeepAliveInterval(Lcom/android/server/sip/SipService;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipService$SipAutoReg;->startKeepAliveProcess(I)V

    .line 1069
    .end local v1    # "localProfile":Landroid/net/sip/SipProfile;
    :cond_3
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmMyWakeLock(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    goto :goto_0

    .line 1071
    :cond_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    .line 1072
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mExpiryTime:J

    .line 1073
    const-string v1, "Refresh registration immediately"

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p0}, Lcom/android/server/sip/SipService$SipAutoReg;->run()V

    .line 1076
    :goto_0
    monitor-exit v0

    .line 1077
    return-void

    .line 1076
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .locals 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistrationFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1083
    invoke-static {p2}, Landroid/net/sip/SipErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1082
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 1084
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    .line 1085
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$SipAutoReg;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 1087
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 1094
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipAutoReg;->restartLater()V

    goto :goto_0

    .line 1090
    :sswitch_0
    const-string v1, "   pause auto-registration"

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {p0}, Lcom/android/server/sip/SipService$SipAutoReg;->stop()V

    .line 1092
    nop

    .line 1097
    :goto_0
    iput p2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorCode:I

    .line 1098
    iput-object p3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorMessage:Ljava/lang/String;

    .line 1099
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    .line 1100
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmMyWakeLock(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1101
    monitor-exit v0

    .line 1102
    return-void

    .line 1101
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :sswitch_data_0
    .sparse-switch
        -0xc -> :sswitch_0
        -0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .locals 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;

    .line 1106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegistrationTimeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    .line 1108
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/sip/SipService$SipAutoReg;->notCurrentSession(Landroid/net/sip/ISipSession;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 1110
    :cond_0
    const/4 v1, -0x5

    iput v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorCode:I

    .line 1111
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    .line 1112
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipAutoReg;->restartLater()V

    .line 1113
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmMyWakeLock(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 1114
    monitor-exit v0

    .line 1115
    return-void

    .line 1114
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onResponse(Z)V
    .locals 5
    .param p1, "portChanged"    # Z

    .line 865
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    .line 866
    if-eqz p1, :cond_2

    .line 867
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->-$$Nest$mgetKeepAliveInterval(Lcom/android/server/sip/SipService;)I

    move-result v1

    .line 868
    .local v1, "interval":I
    iget v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 870
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResponse: keepalive doesn\'t work with interval "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", past success count="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 874
    if-le v1, v3, :cond_1

    .line 875
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 876
    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v3

    .line 875
    invoke-static {v2, v3, v1}, Lcom/android/server/sip/SipService;->-$$Nest$mrestartPortMappingLifetimeMeasurement(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;I)V

    .line 877
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    goto :goto_0

    .line 881
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keep keepalive going with interval "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", past success count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 885
    iget v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    .line 887
    .end local v1    # "interval":I
    :cond_1
    :goto_0
    goto :goto_1

    .line 890
    :cond_2
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 891
    invoke-virtual {v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v2

    .line 890
    invoke-static {v1, v2}, Lcom/android/server/sip/SipService;->-$$Nest$mstartPortMappingLifetimeMeasurement(Lcom/android/server/sip/SipService;Landroid/net/sip/SipProfile;)V

    .line 892
    iget v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSuccessCount:I

    .line 895
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    if-eqz v1, :cond_4

    if-nez p1, :cond_3

    goto :goto_2

    .line 900
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mKeepAliveSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 904
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmMyWakeLock(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1, v2}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 905
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v2, 0xe10

    invoke-virtual {v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->register(I)V

    .line 906
    monitor-exit v0

    .line 907
    return-void

    .line 895
    :cond_4
    :goto_2
    monitor-exit v0

    return-void

    .line 906
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist test-api run()V
    .locals 3

    .line 993
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    .line 994
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 996
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorCode:I

    .line 997
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorMessage:Ljava/lang/String;

    .line 998
    const-string v1, "run: registering"

    invoke-direct {p0, v1}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 999
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmNetworkType(Lcom/android/server/sip/SipService;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1000
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmMyWakeLock(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1, v2}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 1001
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v2, 0xe10

    invoke-virtual {v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->register(I)V

    .line 1003
    :cond_1
    monitor-exit v0

    .line 1004
    return-void

    .line 1003
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setListener(Landroid/net/sip/ISipSessionListener;)V
    .locals 6
    .param p1, "listener"    # Landroid/net/sip/ISipSessionListener;

    .line 946
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    monitor-enter v0

    .line 947
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v1, p1}, Lcom/android/server/sip/SipSessionListenerProxy;->setListener(Landroid/net/sip/ISipSessionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 950
    :try_start_1
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v1, :cond_0

    .line 951
    const/4 v1, 0x0

    goto :goto_0

    .line 952
    :cond_0
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getState()I

    move-result v1

    :goto_0
    nop

    .line 953
    .local v1, "state":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 956
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    if-eqz v2, :cond_2

    .line 957
    iget-wide v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mExpiryTime:J

    .line 958
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 959
    .local v2, "duration":I
    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v4, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationDone(Landroid/net/sip/ISipSession;I)V

    .line 960
    .end local v2    # "duration":I
    goto :goto_2

    :cond_2
    iget v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorCode:I

    if-eqz v2, :cond_4

    .line 961
    iget v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorCode:I

    const/4 v3, -0x5

    if-ne v2, v3, :cond_3

    .line 962
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v2, v3}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationTimeout(Landroid/net/sip/ISipSession;)V

    goto :goto_2

    .line 964
    :cond_3
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iget v4, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorCode:I

    iget-object v5, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    goto :goto_2

    .line 967
    :cond_4
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v2}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmNetworkType(Lcom/android/server/sip/SipService;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 968
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const-string v4, "no data connection"

    const/16 v5, -0xa

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    goto :goto_2

    .line 971
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    if-nez v2, :cond_6

    .line 972
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const-string v4, "registration not running"

    const/4 v5, -0x4

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    goto :goto_2

    .line 976
    :cond_6
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 978
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 976
    const/16 v5, -0x9

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V

    goto :goto_2

    .line 955
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    iget-object v3, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v2, v3}, Lcom/android/server/sip/SipSessionListenerProxy;->onRegistering(Landroid/net/sip/ISipSession;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 982
    .end local v1    # "state":I
    :goto_2
    goto :goto_3

    .line 980
    :catchall_0
    move-exception v1

    .line 981
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "setListener: "

    invoke-direct {p0, v2, v1}, Lcom/android/server/sip/SipService$SipAutoReg;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 983
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_3
    monitor-exit v0

    .line 984
    return-void

    .line 983
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist start(Lcom/android/server/sip/SipSessionGroup;)V
    .locals 2
    .param p1, "group"    # Lcom/android/server/sip/SipSessionGroup;

    .line 821
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    if-nez v0, :cond_1

    .line 822
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    .line 823
    iput v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mBackoff:I

    .line 824
    nop

    .line 825
    invoke-virtual {p1, p0}, Lcom/android/server/sip/SipSessionGroup;->createSession(Landroid/net/sip/ISipSessionListener;)Landroid/net/sip/ISipSession;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    iput-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 827
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-nez v0, :cond_0

    return-void

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v0}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmMyWakeLock(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0, v1}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 833
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->unregister()V

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipAutoReg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 835
    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/sip/SipService;->obfuscateSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->SAR_TAG:Ljava/lang/String;

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start: group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->log(Ljava/lang/String;)V

    .line 838
    :cond_1
    return-void
.end method

.method public blacklist stop()V
    .locals 3

    .line 919
    iget-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 920
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRunning:Z

    .line 921
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmMyWakeLock(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1, v2}, Lcom/android/server/sip/SipWakeLock;->release(Ljava/lang/Object;)V

    .line 922
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v1, :cond_1

    .line 923
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 924
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmNetworkType(Lcom/android/server/sip/SipService;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->unregister()V

    .line 927
    :cond_1
    iget-object v1, p0, Lcom/android/server/sip/SipService$SipAutoReg;->this$0:Lcom/android/server/sip/SipService;

    invoke-static {v1}, Lcom/android/server/sip/SipService;->-$$Nest$fgetmTimer(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 928
    invoke-direct {p0}, Lcom/android/server/sip/SipService$SipAutoReg;->stopKeepAliveProcess()V

    .line 930
    iput-boolean v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mRegistered:Z

    .line 931
    iget-object v0, p0, Lcom/android/server/sip/SipService$SipAutoReg;->mProxy:Lcom/android/server/sip/SipSessionListenerProxy;

    invoke-virtual {v0}, Lcom/android/server/sip/SipSessionListenerProxy;->getListener()Landroid/net/sip/ISipSessionListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/sip/SipService$SipAutoReg;->setListener(Landroid/net/sip/ISipSessionListener;)V

    .line 932
    return-void
.end method
