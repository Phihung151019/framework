.class public Lcom/samsung/android/sep/camera/util/capture/SemNightCaptureAbortManager;
.super Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;
.source "SemNightCaptureAbortManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemNightCaptureManager"


# direct methods
.method public static synthetic $r8$lambda$82ZKSyNLvjFZTetaC8q_sn0QjH4(Lcom/samsung/android/sep/camera/util/capture/SemNightCaptureAbortManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/util/capture/SemNightCaptureAbortManager;->lambda$abortCapture$0()V

    return-void
.end method

.method public constructor <init>(ILandroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;I)V
    .locals 0
    .param p1, "clientId"    # I
    .param p2, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "type"    # I

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;-><init>(ILandroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;I)V

    .line 16
    return-void
.end method

.method private synthetic lambda$abortCapture$0()V
    .locals 2

    .line 39
    invoke-static {}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/capture/SemNightCaptureAbortManager;->mClientId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->abortNightCapture(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized abortCapture()Z
    .locals 2

    monitor-enter p0

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/util/capture/SemNightCaptureAbortManager;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    const-string v0, "SemNightCaptureManager"

    const-string v1, "abortCapture : Capture is not in progress, return.isCapturing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 34
    .end local p0    # "this":Lcom/samsung/android/sep/camera/util/capture/SemNightCaptureAbortManager;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/util/capture/SemNightCaptureAbortManager;->checkAndAbortSessionCapture()V

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/util/capture/SemNightCaptureAbortManager;->needServiceAbort()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/capture/SemNightCaptureAbortManager;->mProcessHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sep/camera/util/capture/SemNightCaptureAbortManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sep/camera/util/capture/SemNightCaptureAbortManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sep/camera/util/capture/SemNightCaptureAbortManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/util/capture/SemNightCaptureAbortManager;->updateCaptureState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public declared-synchronized checkAndAbortSessionCapture()V
    .locals 4

    monitor-enter p0

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/util/capture/SemNightCaptureAbortManager;->isAllFrameCaptured()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    const-string v0, "SemNightCaptureManager"

    const-string v1, "abortCapture: session abort capture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/capture/SemNightCaptureAbortManager;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/capture/SemNightCaptureAbortManager;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .end local p0    # "this":Lcom/samsung/android/sep/camera/util/capture/SemNightCaptureAbortManager;
    :cond_0
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_2
    const-string v1, "SemNightCaptureManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "abortCapture: Failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 62
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public isAbortSupportedInService()Z
    .locals 1

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized updateCaptureState(I)V
    .locals 3
    .param p1, "stateValue"    # I

    monitor-enter p0

    .line 48
    :try_start_0
    const-string v0, "SemNightCaptureManager"

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

    .line 49
    iput p1, p0, Lcom/samsung/android/sep/camera/util/capture/SemNightCaptureAbortManager;->mCaptureState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 47
    .end local p0    # "this":Lcom/samsung/android/sep/camera/util/capture/SemNightCaptureAbortManager;
    .end local p1    # "stateValue":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
