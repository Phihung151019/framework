.class public Lcom/samsung/android/sep/camera/configCb/SemVideoHDRConfigCb;
.super Lcom/samsung/android/sep/camera/configCb/SemCameraConfigCbManager;
.source "SemVideoHDRConfigCb.java"


# instance fields
.field private mLastVideoHDRMode:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/configCb/SemCameraConfigCbManager;-><init>(Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;)V

    .line 21
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/sep/camera/configCb/SemVideoHDRConfigCb;->mLastVideoHDRMode:I

    .line 22
    return-void
.end method


# virtual methods
.method protected checkIfCallbackNeeded()V
    .locals 6

    .line 27
    iget-object v0, p0, Lcom/samsung/android/sep/camera/configCb/SemVideoHDRConfigCb;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/sep/camera/configCb/SemVideoHDRConfigCb;->isCallbackSent:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/configCb/SemVideoHDRConfigCb;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureResultKey;->CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 30
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 32
    .local v0, "currentLiveMode":Ljava/lang/Integer;
    if-nez v0, :cond_1

    return-void

    .line 34
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/sep/camera/configCb/SemVideoHDRConfigCb;->isEnabled:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-eqz v1, :cond_4

    .line 37
    iget-object v1, p0, Lcom/samsung/android/sep/camera/configCb/SemVideoHDRConfigCb;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 39
    .local v1, "aeState":Ljava/lang/Integer;
    if-eqz v1, :cond_3

    iget v5, p0, Lcom/samsung/android/sep/camera/configCb/SemVideoHDRConfigCb;->mLastVideoHDRMode:I

    if-ne v5, v4, :cond_3

    .line 42
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_2

    .line 43
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_3

    .line 44
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sep/camera/configCb/SemVideoHDRConfigCb;->mProcessorCallback:Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    sget-object v4, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->CAMERA_CONFIG_LIVE_HDR_OPERATION_MODE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;->onCameraConfigUpdated(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;Z)V

    .line 46
    iput-boolean v3, p0, Lcom/samsung/android/sep/camera/configCb/SemVideoHDRConfigCb;->isCallbackSent:Z

    .line 48
    .end local v1    # "aeState":Ljava/lang/Integer;
    :cond_3
    goto :goto_0

    .line 51
    :cond_4
    iget v1, p0, Lcom/samsung/android/sep/camera/configCb/SemVideoHDRConfigCb;->mLastVideoHDRMode:I

    if-ne v1, v4, :cond_5

    .line 52
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 53
    iget-object v1, p0, Lcom/samsung/android/sep/camera/configCb/SemVideoHDRConfigCb;->mProcessorCallback:Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    sget-object v2, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->CAMERA_CONFIG_LIVE_HDR_OPERATION_MODE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;->onCameraConfigUpdated(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;Z)V

    .line 55
    iput-boolean v3, p0, Lcom/samsung/android/sep/camera/configCb/SemVideoHDRConfigCb;->isCallbackSent:Z

    .line 59
    :cond_5
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sep/camera/configCb/SemVideoHDRConfigCb;->mLastVideoHDRMode:I

    .line 60
    return-void

    .line 27
    .end local v0    # "currentLiveMode":Ljava/lang/Integer;
    :cond_6
    :goto_1
    return-void
.end method
