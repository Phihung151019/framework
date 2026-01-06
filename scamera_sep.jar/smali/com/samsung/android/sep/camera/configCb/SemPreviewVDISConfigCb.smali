.class public Lcom/samsung/android/sep/camera/configCb/SemPreviewVDISConfigCb;
.super Lcom/samsung/android/sep/camera/configCb/SemCameraConfigCbManager;
.source "SemPreviewVDISConfigCb.java"


# instance fields
.field private mLastVDISMode:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/configCb/SemCameraConfigCbManager;-><init>(Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sep/camera/configCb/SemPreviewVDISConfigCb;->mLastVDISMode:I

    .line 21
    return-void
.end method


# virtual methods
.method protected checkIfCallbackNeeded()V
    .locals 6

    .line 26
    iget-object v0, p0, Lcom/samsung/android/sep/camera/configCb/SemPreviewVDISConfigCb;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/sep/camera/configCb/SemPreviewVDISConfigCb;->isCallbackSent:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/configCb/SemPreviewVDISConfigCb;->mPreviewCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureResultKey;->UNIHAL_VIDEO_VDIS_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 29
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 30
    .local v0, "unihalVdisMode":Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 31
    .local v1, "currentVDISMode":I
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 33
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/sep/camera/configCb/SemPreviewVDISConfigCb;->isEnabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 36
    iget v2, p0, Lcom/samsung/android/sep/camera/configCb/SemPreviewVDISConfigCb;->mLastVDISMode:I

    if-nez v2, :cond_3

    if-ne v1, v3, :cond_3

    .line 38
    iget-object v2, p0, Lcom/samsung/android/sep/camera/configCb/SemPreviewVDISConfigCb;->mProcessorCallback:Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    sget-object v4, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->CAMERA_CONFIG_VDIS_CONTROL:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;->onCameraConfigUpdated(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;Z)V

    .line 40
    iput-boolean v3, p0, Lcom/samsung/android/sep/camera/configCb/SemPreviewVDISConfigCb;->isCallbackSent:Z

    goto :goto_0

    .line 45
    :cond_2
    iget v2, p0, Lcom/samsung/android/sep/camera/configCb/SemPreviewVDISConfigCb;->mLastVDISMode:I

    if-ne v2, v3, :cond_3

    if-nez v1, :cond_3

    .line 47
    iget-object v2, p0, Lcom/samsung/android/sep/camera/configCb/SemPreviewVDISConfigCb;->mProcessorCallback:Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    sget-object v4, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->CAMERA_CONFIG_VDIS_CONTROL:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;->onCameraConfigUpdated(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;Z)V

    .line 49
    iput-boolean v3, p0, Lcom/samsung/android/sep/camera/configCb/SemPreviewVDISConfigCb;->isCallbackSent:Z

    .line 53
    :cond_3
    :goto_0
    iput v1, p0, Lcom/samsung/android/sep/camera/configCb/SemPreviewVDISConfigCb;->mLastVDISMode:I

    .line 54
    return-void

    .line 26
    .end local v0    # "unihalVdisMode":Ljava/lang/Integer;
    .end local v1    # "currentVDISMode":I
    :cond_4
    :goto_1
    return-void
.end method
