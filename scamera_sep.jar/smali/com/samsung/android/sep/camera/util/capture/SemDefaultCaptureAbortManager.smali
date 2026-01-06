.class public Lcom/samsung/android/sep/camera/util/capture/SemDefaultCaptureAbortManager;
.super Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;
.source "SemDefaultCaptureAbortManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemDefaultCaptureManager"


# direct methods
.method public constructor <init>(ILandroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;I)V
    .locals 0
    .param p1, "clientId"    # I
    .param p2, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "type"    # I

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;-><init>(ILandroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;I)V

    .line 18
    return-void
.end method


# virtual methods
.method public declared-synchronized abortCapture()Z
    .locals 1

    monitor-enter p0

    .line 24
    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/util/capture/SemDefaultCaptureAbortManager;->updateCaptureState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 23
    .end local p0    # "this":Lcom/samsung/android/sep/camera/util/capture/SemDefaultCaptureAbortManager;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected checkAndAbortSessionCapture()V
    .locals 0

    .line 48
    return-void
.end method

.method public isAbortSupportedInService()Z
    .locals 1

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized updateCaptureState(I)V
    .locals 3
    .param p1, "stateValue"    # I

    monitor-enter p0

    .line 31
    :try_start_0
    const-string v0, "SemDefaultCaptureManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCaptureState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/util/capture/SemDefaultCaptureAbortManager;->getState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 36
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/samsung/android/sep/camera/util/capture/SemDefaultCaptureAbortManager;->mCaptureState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    .line 30
    .end local p0    # "this":Lcom/samsung/android/sep/camera/util/capture/SemDefaultCaptureAbortManager;
    .end local p1    # "stateValue":I
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
