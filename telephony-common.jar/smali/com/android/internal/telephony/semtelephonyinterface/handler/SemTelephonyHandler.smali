.class public Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;
.super Ljava/lang/Object;
.source "SemTelephonyHandler.java"


# instance fields
.field private final blacklist mHandlerHelper:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;

.field private final blacklist mSemMainThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->mHandlerHelper:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;

    .line 39
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->getCallback()Landroid/os/Handler$Callback;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->mSemMainThreadHandler:Landroid/os/Handler;

    .line 40
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandlerHelper;->setSemMainThreadHandler(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public blacklist sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, -0x1

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestForSubId(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public blacklist sendRequestAsync(ILjava/lang/Object;Landroid/os/WorkSource;)V
    .locals 1

    .line 131
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;-><init>(Ljava/lang/Object;Landroid/os/WorkSource;)V

    .line 132
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->mSemMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 133
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist sendRequestAsync(ILjava/lang/Object;Ljava/lang/Integer;)V
    .locals 1

    .line 121
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;-><init>(Ljava/lang/Object;Ljava/lang/Integer;)V

    .line 122
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->mSemMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 123
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist sendRequestAsyncDelayed(IJ)V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->mSemMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public blacklist sendRequestForPhone(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 2

    .line 88
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->mSemMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 92
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 93
    iput-object p3, v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->phoneId:Ljava/lang/Integer;

    .line 94
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->mSemMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 98
    monitor-enter v0

    .line 99
    :catch_0
    :goto_0
    :try_start_0
    iget-object p0, v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    .line 101
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 106
    :cond_0
    :try_start_2
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 89
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "This method will deadlock if called from the main thread."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist sendRequestForSubId(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 2

    .line 60
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->mSemMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 64
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;-><init>(Ljava/lang/Object;Ljava/lang/Integer;)V

    .line 65
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->mSemMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 69
    monitor-enter v0

    .line 70
    :catch_0
    :goto_0
    :try_start_0
    iget-object p0, v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyMainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    .line 72
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 77
    :cond_0
    :try_start_2
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 61
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "This method will deadlock if called from the main thread."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
