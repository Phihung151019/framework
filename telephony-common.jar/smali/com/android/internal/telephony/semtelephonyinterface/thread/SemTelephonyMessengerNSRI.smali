.class Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;
.super Ljava/lang/Thread;
.source "SemTelephonyMessengerNSRI.java"


# instance fields
.field private blacklist mDone:Z

.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mResult:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmDone(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;->mDone:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResult(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;[B)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;->mResult:[B

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 61
    const-string v0, "SemTelephonyMessengerNSRI"

    const-string v1, "[NSRI_Messenger] SemTelephonyMessengerNSRI .. created !"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist commonNSRIRequestProcCmd([BI)[B
    .locals 6

    monitor-enter p0

    .line 102
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 104
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 106
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    const/16 v1, 0xb

    .line 110
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 111
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 112
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x0

    .line 113
    iput-boolean v3, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;->mDone:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v4, p2, 0x5

    const/16 v5, 0x16

    .line 117
    :try_start_3
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v5, 0x74

    .line 118
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 119
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 120
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 121
    invoke-virtual {v2, p1, v3, p2}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 123
    :catch_1
    :try_start_4
    const-string p1, "SemTelephonyMessengerNSRI"

    const-string p2, "[NSRI_Messenger] IOException!!! -commonNSRIRequestProcCmd-"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_1
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 128
    :goto_2
    iget-boolean p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;->mDone:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez p1, :cond_1

    .line 130
    :try_start_5
    const-string p1, "SemTelephonyMessengerNSRI"

    const-string p2, "[NSRI_Messenger] SemTelephonyMessengerNSRI ..wait for done"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 134
    :catch_2
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 137
    :cond_1
    const-string p1, "SemTelephonyMessengerNSRI"

    const-string p2, "[NSRI_Messenger] commonNSRIRequestProcCmd -done-"

    invoke-static {p1, p2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;->mResult:[B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_3
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public whitelist test-api run()V
    .locals 1

    .line 67
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI$1;-><init>(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;)V

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyMessengerNSRI;->mHandler:Landroid/os/Handler;

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 97
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    .line 97
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
