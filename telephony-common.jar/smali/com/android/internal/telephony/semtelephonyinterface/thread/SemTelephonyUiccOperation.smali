.class Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;
.super Ljava/lang/Thread;
.source "SemTelephonyUiccOperation.java"


# instance fields
.field private blacklist mDone:Z

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mResult:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmDone(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;->mDone:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResult(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;->mResult:Ljava/lang/Object;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;->mDone:Z

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;->mResult:Ljava/lang/Object;

    return-void
.end method

.method private blacklist waitHandler()V
    .locals 1

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist waitResult()V
    .locals 2

    .line 89
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;->mDone:Z

    const-string v1, "SemTelephonyUiccOperation"

    if-nez v0, :cond_0

    .line 91
    :try_start_0
    const-string v0, "wait for done"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 98
    :cond_0
    const-string v0, "done"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;->mDone:Z

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 47
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 48
    monitor-enter p0

    .line 49
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation$1;-><init>(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;->mHandler:Landroid/os/Handler;

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 70
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    .line 70
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized blacklist setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone;)V
    .locals 2

    monitor-enter p0

    .line 104
    :try_start_0
    const-string v0, "SemTelephonyUiccOperation"

    const-string v1, "setGbaBootstrappingParams"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;->waitHandler()V

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 107
    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 108
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyUiccOperation;->waitResult()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
