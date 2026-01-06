.class public Lcom/samsung/android/sep/camera/SingleCaptureHelper;
.super Lcom/samsung/android/sep/camera/CaptureHelper;
.source "SingleCaptureHelper.java"


# direct methods
.method constructor <init>(Lcom/samsung/android/sep/camera/data/CaptureData;Lcom/samsung/android/sep/camera/ZoomController;Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;Lcom/samsung/android/sep/camera/data/ProcessorStateManager;Landroid/os/Handler;Landroid/os/Handler;Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;Lcom/samsung/android/sep/camera/data/ProcessRunnableData;)V
    .locals 0
    .param p1, "captureDataSingleCapture"    # Lcom/samsung/android/sep/camera/data/CaptureData;
    .param p2, "zoomControllerSingleCapture"    # Lcom/samsung/android/sep/camera/ZoomController;
    .param p3, "processorParameterSingleCapture"    # Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;
    .param p4, "processorStateManagerSingleCapture"    # Lcom/samsung/android/sep/camera/data/ProcessorStateManager;
    .param p5, "processorHandlerSingleCapture"    # Landroid/os/Handler;
    .param p6, "backgroundHandlerSingleCapture"    # Landroid/os/Handler;
    .param p7, "abortManagerSingleCapture"    # Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;
    .param p8, "runnableDataSingleCapture"    # Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    .line 23
    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/sep/camera/CaptureHelper;-><init>(Lcom/samsung/android/sep/camera/data/CaptureData;Lcom/samsung/android/sep/camera/ZoomController;Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;Lcom/samsung/android/sep/camera/data/ProcessorStateManager;Landroid/os/Handler;Landroid/os/Handler;Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;Lcom/samsung/android/sep/camera/data/ProcessRunnableData;)V

    .line 32
    return-void
.end method

.method private isSingleYuvCapture()Z
    .locals 5

    .line 56
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SingleCaptureHelper;->mRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->isServiceInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 57
    return v1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SingleCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->isUDCCamera(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    return v1

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SingleCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "cameraId":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/sep/camera/util/SemUtil;->getHighResolutionCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    return v1

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SingleCaptureHelper;->mProcessParameter:Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;

    sget-object v3, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_IMAGE_FORMAT:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 74
    invoke-virtual {v2, v3}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->getProcessorParameter(Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x11

    const/4 v4, 0x1

    if-ne v2, v3, :cond_3

    .line 77
    return v4

    .line 81
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SingleCaptureHelper;->mProcessParameter:Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;

    sget-object v3, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_FACE_BEAUTY:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 82
    invoke-virtual {v2, v3}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->getProcessorParameter(Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 81
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SingleCaptureHelper;->mPictureCaptureResult:Landroid/hardware/camera2/CaptureResult;

    if-eqz v2, :cond_4

    .line 85
    return v4

    .line 89
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SingleCaptureHelper;->mProcessParameter:Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;

    sget-object v3, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_PHOTO_HDR:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 90
    invoke-virtual {v2, v3}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->getProcessorParameter(Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 89
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 92
    return v4

    .line 96
    :cond_5
    iget v2, p0, Lcom/samsung/android/sep/camera/SingleCaptureHelper;->mDynamicShotExtraInfo:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    move v1, v4

    :cond_6
    return v1
.end method


# virtual methods
.method capture()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SingleCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCaptureParameters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/SingleCaptureHelper;->setCameraConfigMode(Ljava/util/List;)V

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SingleCaptureHelper;->isSingleYuvCapture()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SingleCaptureHelper;->mRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->setYuvSingleCapture(Z)V

    .line 40
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/SingleCaptureHelper;->captureSinglePicture(I)V

    goto :goto_0

    .line 42
    :cond_0
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/SingleCaptureHelper;->captureSinglePicture(I)V

    .line 45
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/SingleCaptureHelper;->sendCaptureLog()V

    .line 46
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SingleCaptureHelper;->mAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->updateCaptureState(I)V

    .line 47
    return-void
.end method
