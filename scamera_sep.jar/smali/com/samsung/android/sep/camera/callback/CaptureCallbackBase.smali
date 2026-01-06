.class public abstract Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CaptureCallbackBase.java"


# instance fields
.field protected mCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

.field protected mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

.field protected mProcessHandler:Landroid/os/Handler;

.field protected mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

.field protected mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;


# direct methods
.method public static synthetic $r8$lambda$C9Dzt2i5nXjCFV7FVwTg9nzhkNM(Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;->lambda$sendErrorCallback$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XCDQPJebF4H5rzMWFZoCMqmQUuY(Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;->lambda$sendOnShutterCallback$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$bZYCDWPum2h138iOQe3BWV5989o(Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;->lambda$sendErrorSALog$2(I)V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;Lcom/samsung/android/sep/camera/data/CaptureData;Lcom/samsung/android/sep/camera/data/ProcessRunnableData;Lcom/samsung/android/sep/camera/data/ProcessorStateManager;)V
    .locals 0
    .param p1, "processHandler"    # Landroid/os/Handler;
    .param p2, "captureAbortManager"    # Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;
    .param p3, "captureData"    # Lcom/samsung/android/sep/camera/data/CaptureData;
    .param p4, "processRunnableData"    # Lcom/samsung/android/sep/camera/data/ProcessRunnableData;
    .param p5, "processorStateManager"    # Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    .line 36
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;->mProcessHandler:Landroid/os/Handler;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;->mCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    .line 39
    iput-object p3, p0, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 40
    iput-object p4, p0, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    .line 41
    iput-object p5, p0, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    .line 42
    return-void
.end method

.method private synthetic lambda$sendErrorCallback$1(I)V
    .locals 1
    .param p1, "error"    # I

    .line 72
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getSdkCaptureCallback()Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getSdkCaptureCallback()Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;->onError(I)V

    .line 75
    :cond_0
    return-void
.end method

.method private synthetic lambda$sendErrorSALog$2(I)V
    .locals 6
    .param p1, "error"    # I

    .line 90
    invoke-static {}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 92
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->getClientId()I

    move-result v1

    .line 95
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 91
    const-string v2, "ERRO"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->SALogInsert(ILjava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    .line 90
    return-void
.end method

.method private synthetic lambda$sendOnShutterCallback$0()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getSdkCaptureCallback()Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getSdkCaptureCallback()Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;->onShutter()V

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method protected getAppCaptureHandler()Landroid/os/Handler;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getAppCaptureHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getAppCaptureHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0

    .line 105
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method protected sendErrorCallback(I)V
    .locals 2
    .param p1, "error"    # I

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;->getAppCaptureHandler()Landroid/os/Handler;

    move-result-object v0

    .line 70
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 76
    return-void
.end method

.method protected sendErrorSALog(I)V
    .locals 2
    .param p1, "error"    # I

    .line 84
    invoke-static {}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->getsInstance()Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->getProcessHandler()Landroid/os/Handler;

    move-result-object v0

    .line 85
    .local v0, "processHandler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->isForceSingleCapture()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 86
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->isSALoggingDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 88
    new-instance v1, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    :cond_0
    return-void
.end method

.method protected sendOnShutterCallback()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCaptureCallbackLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;->mCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;->mCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->updateCaptureState(I)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;->getAppCaptureHandler()Landroid/os/Handler;

    move-result-object v1

    .line 53
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    nop

    .end local v1    # "handler":Landroid/os/Handler;
    monitor-exit v0

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
