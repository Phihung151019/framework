.class abstract Lcom/samsung/android/sep/camera/CaptureHelper;
.super Ljava/lang/Object;
.source "CaptureHelper.java"


# static fields
.field protected static final CAPTURE_MODE_CAPTURE_BURST:I = 0xf03

.field protected static final CAPTURE_MODE_CAPTURE_BURST_RAW:I = 0xf04

.field protected static final CAPTURE_MODE_CAPTURE_SINGLE:I = 0xf02

.field private static final TAG:Ljava/lang/String; = "CaptureHelper"


# instance fields
.field protected mAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

.field protected mBackgroundHandler:Landroid/os/Handler;

.field protected mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

.field protected mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

.field protected mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field protected mCurrentZoomLevel:F

.field protected mDynamicShotDeviceInfo:J

.field protected mDynamicShotExtraInfo:I

.field private final mDynamicShotProcessingMode:I

.field protected mPictureCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field protected mProcessHandler:Landroid/os/Handler;

.field protected mProcessParameter:Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;

.field protected mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

.field protected mRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

.field protected mZoomController:Lcom/samsung/android/sep/camera/ZoomController;


# direct methods
.method public static synthetic $r8$lambda$h_8iu0Qg5lH9_mqREURg2ErsO_g(Lcom/samsung/android/sep/camera/CaptureHelper;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sep/camera/CaptureHelper;->lambda$sendErrorSALog$0(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mjitlcnnPa4rC0HaY4o3Qs9Ru4Q(Lcom/samsung/android/sep/camera/CaptureHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/CaptureHelper;->lambda$sendErrorCallback$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDynamicShotProcessingMode(Lcom/samsung/android/sep/camera/CaptureHelper;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mDynamicShotProcessingMode:I

    return p0
.end method

.method constructor <init>(Lcom/samsung/android/sep/camera/data/CaptureData;Lcom/samsung/android/sep/camera/ZoomController;Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;Lcom/samsung/android/sep/camera/data/ProcessorStateManager;Landroid/os/Handler;Landroid/os/Handler;Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;Lcom/samsung/android/sep/camera/data/ProcessRunnableData;)V
    .locals 2
    .param p1, "captureData"    # Lcom/samsung/android/sep/camera/data/CaptureData;
    .param p2, "zoomController"    # Lcom/samsung/android/sep/camera/ZoomController;
    .param p3, "processorParameter"    # Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;
    .param p4, "processorStateManager"    # Lcom/samsung/android/sep/camera/data/ProcessorStateManager;
    .param p5, "processorHandler"    # Landroid/os/Handler;
    .param p6, "backgroundHandler"    # Landroid/os/Handler;
    .param p7, "abortManager"    # Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;
    .param p8, "runnableData"    # Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 72
    iput-object p2, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mZoomController:Lcom/samsung/android/sep/camera/ZoomController;

    .line 73
    iput-object p3, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mProcessParameter:Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;

    .line 74
    iput-object p4, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    .line 75
    iput-object p5, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mProcessHandler:Landroid/os/Handler;

    .line 76
    iput-object p6, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mBackgroundHandler:Landroid/os/Handler;

    .line 77
    iput-object p7, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    .line 78
    iput-object p8, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    .line 79
    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCameraConfig()Lcom/samsung/android/sep/camera/SemCameraConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    .line 80
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getDynamicShotInfo()Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->getDynamicShotExtraInfo()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mDynamicShotExtraInfo:I

    .line 81
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getDynamicShotInfo()Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->getDynamicShotDeviceInfo()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mDynamicShotDeviceInfo:J

    .line 82
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getDynamicShotInfo()Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mPictureCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 83
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getDynamicShotInfo()Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;->getProcessingMode()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mDynamicShotProcessingMode:I

    .line 84
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 85
    return-void
.end method

.method private isAutoFramingVdisSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 420
    const-string v0, "CameraCharacteristics"

    invoke-static {p1, v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    const/16 v0, 0x46

    invoke-static {p1, v0}, Lcom/samsung/android/sep/camera/vendor/CameraCharacteristicsUtils;->isVideoModeAvailable(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->AUTO_FRAMING_VDIS:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 423
    invoke-static {v0}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->isAvailableFeature(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 421
    :goto_0
    return v0
.end method

.method private isPreviewVDISSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 407
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/samsung/android/sep/camera/vendor/CameraCharacteristicsUtils;->isVideoModeAvailable(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->PREVIEW_DIS:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 409
    invoke-static {v0}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->isAvailableFeature(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 407
    :goto_0
    return v0
.end method

.method private isSelfieToneSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 2
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 344
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 345
    .local v0, "lensFacing":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->SELFIE_TONE:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 347
    invoke-static {v1}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->isAvailableFeature(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 345
    :goto_0
    return v1
.end method

.method private synthetic lambda$sendErrorCallback$1()V
    .locals 2

    .line 560
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getSdkCaptureCallback()Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 562
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getSdkCaptureCallback()Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

    move-result-object v0

    .line 563
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;->onError(I)V

    .line 565
    :cond_0
    return-void
.end method

.method private synthetic lambda$sendErrorSALog$0(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "extra"    # Ljava/lang/String;
    .param p4, "customDimension"    # Ljava/util/HashMap;

    .line 542
    invoke-static {}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 544
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->getClientId()I

    move-result v1

    .line 543
    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "feature":Ljava/lang/String;
    .end local p2    # "value":I
    .end local p3    # "extra":Ljava/lang/String;
    .end local p4    # "customDimension":Ljava/util/HashMap;
    .local v2, "feature":Ljava/lang/String;
    .local v3, "value":I
    .local v4, "extra":Ljava/lang/String;
    .local v5, "customDimension":Ljava/util/HashMap;
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->SALogInsert(ILjava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    .line 542
    return-void
.end method

.method private sendErrorCallback()V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getAppCaptureHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 557
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getAppCaptureHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sep/camera/CaptureHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sep/camera/CaptureHelper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sep/camera/CaptureHelper;)V

    .line 558
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getSdkCaptureCallback()Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 569
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getSdkCaptureCallback()Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

    move-result-object v0

    .line 570
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;->onError(I)V

    .line 573
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method applyPhysicalId(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/lang/String;
    .locals 3
    .param p1, "captureBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 654
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mPictureCaptureResult:Landroid/hardware/camera2/CaptureResult;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mPictureCaptureResult:Landroid/hardware/camera2/CaptureResult;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureResultKey;->CONTROL_RUNNING_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 657
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 660
    .local v0, "runningPhysicalId":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 661
    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_CAPTURE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 663
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 661
    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 666
    :cond_1
    return-object v0
.end method

.method abstract capture()V
.end method

.method protected captureSinglePicture(I)V
    .locals 5
    .param p1, "imageFormat"    # I

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "captureSinglePicture: Image format"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CaptureHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    .line 121
    .local v0, "cameraDevice":Landroid/hardware/camera2/CameraDevice;
    if-nez v0, :cond_0

    .line 122
    const-string v2, "captureSinglePicture - capture called without calling createStateCallback() api"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/CaptureHelper;->handleCaptureError()V

    .line 126
    return-void

    .line 129
    :cond_0
    nop

    .line 130
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    .line 131
    .local v2, "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/sep/camera/CaptureHelper;->setupCaptureBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 132
    invoke-virtual {p0, v2}, Lcom/samsung/android/sep/camera/CaptureHelper;->setClientIdToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 133
    invoke-virtual {p0, v2}, Lcom/samsung/android/sep/camera/CaptureHelper;->setZoomInfoToCaptureBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 134
    invoke-virtual {p0, v2}, Lcom/samsung/android/sep/camera/CaptureHelper;->setSingleCaptureDynamicShotInfo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 135
    invoke-virtual {p0, v2}, Lcom/samsung/android/sep/camera/CaptureHelper;->setFaceDetectMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 136
    invoke-virtual {p0, v2}, Lcom/samsung/android/sep/camera/CaptureHelper;->applyPhysicalId(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/lang/String;

    .line 138
    iget-object v3, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    const/16 v4, 0xf02

    invoke-virtual {v3, v4}, Lcom/samsung/android/sep/camera/data/CaptureData;->setCaptureMode(I)V

    .line 140
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/sep/camera/CaptureHelper;->takeSinglePicture(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v2    # "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    goto :goto_0

    .line 141
    :catch_0
    move-exception v2

    .line 142
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "captureSinglePicture captureFormatType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 147
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/CaptureHelper;->handleCaptureError()V

    .line 150
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected handleCaptureError()V
    .locals 4

    .line 524
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->updateState(Lcom/samsung/android/sep/camera/data/ProcessState;)V

    .line 525
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/CaptureHelper;->sendErrorCallback()V

    .line 526
    nop

    .line 529
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 526
    const-string v2, "ERRO"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/samsung/android/sep/camera/CaptureHelper;->sendErrorSALog(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    .line 531
    return-void
.end method

.method sendCaptureLog()V
    .locals 4

    .line 92
    new-instance v0, Lcom/samsung/android/sep/camera/CaptureHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sep/camera/CaptureHelper$1;-><init>(Lcom/samsung/android/sep/camera/CaptureHelper;)V

    .line 106
    .local v0, "customDimensionHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget v1, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mDynamicShotProcessingMode:I

    const-string v2, ""

    const-string v3, "CAPT"

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/samsung/android/sep/camera/CaptureHelper;->sendErrorSALog(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    .line 111
    return-void
.end method

.method protected sendErrorSALog(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V
    .locals 8
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "extra"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 536
    .local p4, "customDimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->getsInstance()Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->getProcessHandler()Landroid/os/Handler;

    move-result-object v0

    .line 537
    .local v0, "processHandler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->isForceSingleCapture()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 538
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->isSALoggingDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 540
    new-instance v2, Lcom/samsung/android/sep/camera/CaptureHelper$$ExternalSyntheticLambda1;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    .end local p1    # "feature":Ljava/lang/String;
    .end local p2    # "value":I
    .end local p3    # "extra":Ljava/lang/String;
    .end local p4    # "customDimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v4, "feature":Ljava/lang/String;
    .local v5, "value":I
    .local v6, "extra":Ljava/lang/String;
    .local v7, "customDimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sep/camera/CaptureHelper$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sep/camera/CaptureHelper;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 538
    .end local v4    # "feature":Ljava/lang/String;
    .end local v5    # "value":I
    .end local v6    # "extra":Ljava/lang/String;
    .end local v7    # "customDimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p1    # "feature":Ljava/lang/String;
    .restart local p2    # "value":I
    .restart local p3    # "extra":Ljava/lang/String;
    .restart local p4    # "customDimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    .end local p1    # "feature":Ljava/lang/String;
    .end local p2    # "value":I
    .end local p3    # "extra":Ljava/lang/String;
    .end local p4    # "customDimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "feature":Ljava/lang/String;
    .restart local v5    # "value":I
    .restart local v6    # "extra":Ljava/lang/String;
    .restart local v7    # "customDimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 537
    .end local v4    # "feature":Ljava/lang/String;
    .end local v5    # "value":I
    .end local v6    # "extra":Ljava/lang/String;
    .end local v7    # "customDimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p1    # "feature":Ljava/lang/String;
    .restart local p2    # "value":I
    .restart local p3    # "extra":Ljava/lang/String;
    .restart local p4    # "customDimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 550
    .end local p1    # "feature":Ljava/lang/String;
    .end local p2    # "value":I
    .end local p3    # "extra":Ljava/lang/String;
    .end local p4    # "customDimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "feature":Ljava/lang/String;
    .restart local v5    # "value":I
    .restart local v6    # "extra":Ljava/lang/String;
    .restart local v7    # "customDimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void
.end method

.method setAutoFramingMode(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;",
            ">;)V"
        }
    .end annotation

    .line 433
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentAutoFramingMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;->VIDEO_AUTO_FRAMING_MODE_OFF:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;

    const/4 v2, 0x1

    .line 444
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 433
    const/4 v3, 0x0

    .line 448
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 433
    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    .line 435
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentVDISMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;->VIDEO_VDIS_MODE_ON:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    if-ne v0, v1, :cond_0

    .line 437
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 440
    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 437
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_VDIS_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 444
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 441
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_AUTO_FRAMING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 448
    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 445
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentAutoFramingMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;->VIDEO_AUTO_FRAMING_MODE_ON:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    .line 451
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentVDISMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;->VIDEO_VDIS_MODE_ON:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    if-ne v0, v1, :cond_1

    .line 453
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 456
    const/16 v3, 0x46

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 453
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_VDIS_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 460
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 457
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_AUTO_FRAMING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 464
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 461
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentAutoFramingMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;->VIDEO_AUTO_FRAMING_MODE_ON:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    .line 467
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentVDISMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;->VIDEO_VDIS_MODE_OFF:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    if-ne v0, v1, :cond_2

    .line 469
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 472
    const/16 v4, 0x28

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 469
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_AUTO_FRAMING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 476
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 473
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_VDIS_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 480
    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 477
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 481
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentAutoFramingMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;->VIDEO_AUTO_FRAMING_MODE_OFF:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    .line 483
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentVDISMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;->VIDEO_VDIS_MODE_OFF:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    if-ne v0, v1, :cond_3

    .line 485
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 488
    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 485
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_AUTO_FRAMING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 492
    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 489
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_VDIS_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 496
    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 493
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_3
    :goto_0
    return-void
.end method

.method protected setCameraConfigMode(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;",
            ">;)V"
        }
    .end annotation

    .line 265
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 266
    .local v0, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const-string v1, "CameraCharacteristics"

    invoke-static {v0, v1}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0, p1}, Lcom/samsung/android/sep/camera/CaptureHelper;->setSuperNightMode(Ljava/util/List;)V

    .line 270
    invoke-direct {p0, v0}, Lcom/samsung/android/sep/camera/CaptureHelper;->isAutoFramingVdisSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {p0, p1}, Lcom/samsung/android/sep/camera/CaptureHelper;->setAutoFramingMode(Ljava/util/List;)V

    goto :goto_0

    .line 272
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/sep/camera/CaptureHelper;->isPreviewVDISSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    invoke-virtual {p0, p1}, Lcom/samsung/android/sep/camera/CaptureHelper;->setVdisMode(Ljava/util/List;)V

    .line 276
    :cond_1
    :goto_0
    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->EXPOSURE_TABLE_CONTROL:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    invoke-static {v1}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->isAvailableFeature(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 278
    invoke-virtual {p0, p1}, Lcom/samsung/android/sep/camera/CaptureHelper;->setExposureControlMode(Ljava/util/List;)V

    .line 281
    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/sep/camera/CaptureHelper;->isSelfieToneSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 282
    invoke-virtual {p0, p1}, Lcom/samsung/android/sep/camera/CaptureHelper;->setSelfieToneMode(Ljava/util/List;)V

    .line 285
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/android/sep/camera/CaptureHelper;->setShootingMode(Ljava/util/List;)V

    .line 286
    return-void
.end method

.method protected setClientIdToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 582
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mProcessParameter:Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->getIsVIPClient()Z

    move-result v0

    const-string v1, "CaptureHelper"

    if-eqz v0, :cond_0

    .line 583
    const-string v0, "setClientIdToBuilder: VIP client"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_CAMERA_CLIENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 586
    :cond_0
    const-string v0, "setClientIdToBuilder: SDK client"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_CAMERA_CLIENT:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 589
    :goto_0
    return-void
.end method

.method setExposureControlMode(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;",
            ">;)V"
        }
    .end annotation

    .line 357
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentExposureControlMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;->DEFAULT:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;

    if-ne v0, v1, :cond_0

    .line 359
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_EXPOSURE_TABLE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 362
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 359
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentExposureControlMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;->ENHANCED:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;

    if-ne v0, v1, :cond_1

    .line 365
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_EXPOSURE_TABLE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 368
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 365
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_1
    :goto_0
    return-void
.end method

.method protected setFaceDetectMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 636
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 637
    .local v0, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    if-eqz v0, :cond_0

    .line 638
    invoke-static {v0}, Lcom/samsung/android/sep/camera/vendor/CameraCharacteristicsUtils;->getFaceDetectMode(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result v1

    .line 639
    .local v1, "supportedMode":I
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 641
    .end local v1    # "supportedMode":I
    :cond_0
    return-void
.end method

.method setSelfieToneMode(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;",
            ">;)V"
        }
    .end annotation

    .line 322
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentSelfieToneMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;->NATURAL:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    if-ne v0, v1, :cond_0

    .line 324
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_SELFIE_TONE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 327
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 324
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentSelfieToneMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;->WARM:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    if-ne v0, v1, :cond_1

    .line 330
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_SELFIE_TONE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 333
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 330
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_1
    :goto_0
    return-void
.end method

.method setShootingMode(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;",
            ">;)V"
        }
    .end annotation

    .line 296
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getLiveHDRMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;->VIDEO_HDR_ON:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    if-ne v0, v1, :cond_0

    .line 298
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_SHOOTING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 301
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 298
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentVDISMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;->VIDEO_VDIS_MODE_ON:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    if-ne v0, v1, :cond_1

    .line 304
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_SHOOTING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 307
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 304
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    :cond_1
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_SHOOTING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 312
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 309
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :goto_0
    return-void
.end method

.method setSingleCaptureDynamicShotInfo(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 7
    .param p1, "captureBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 192
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 193
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getDynamicShotCondition()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    .line 195
    .local v0, "dynamicShotMode":I
    iget-wide v1, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mDynamicShotDeviceInfo:J

    .line 199
    .local v1, "dynamicShotDeviceInfo":J
    iget-object v3, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mProcessParameter:Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;

    sget-object v4, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_NIGHT_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 200
    invoke-virtual {v3, v4}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->getProcessorParameter(Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;)Ljava/lang/Object;

    move-result-object v3

    .line 204
    .local v3, "nightModeState":Ljava/lang/Object;
    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v5, v3

    check-cast v5, Ljava/lang/Integer;

    .line 206
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v4

    .line 208
    .local v6, "isNightModeOff":Z
    :goto_0
    if-nez v0, :cond_2

    if-eqz v6, :cond_1

    goto :goto_1

    .line 222
    :cond_1
    sget-object v4, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v5, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 224
    invoke-virtual {v5}, Lcom/samsung/android/sep/camera/data/CaptureData;->getDynamicShotCondition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 222
    invoke-virtual {p1, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 225
    sget-object v4, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v5, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mDynamicShotExtraInfo:I

    .line 227
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 225
    invoke-virtual {p1, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_2

    .line 210
    :cond_2
    :goto_1
    sget-object v5, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 211
    sget-object v4, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v5, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mDynamicShotExtraInfo:I

    .line 213
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 211
    invoke-virtual {p1, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 214
    const-wide/16 v1, 0x0

    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSingleCaptureDynamicShotInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 217
    invoke-virtual {v5}, Lcom/samsung/android/sep/camera/data/CaptureData;->getDynamicShotCondition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 215
    const-string v5, "CaptureHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_2
    invoke-static {}, Lcom/samsung/android/sep/camera/util/SemUtil;->getSamsungFeatureDynamicShotDeviceInfoAvailable()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 230
    sget-object v4, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_DYNAMIC_DEVICE_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 231
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 230
    invoke-virtual {p1, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 233
    :cond_3
    return-void
.end method

.method setSuperNightMode(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;",
            ">;)V"
        }
    .end annotation

    .line 506
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getSuperNightMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;->SUPER_NIGHT_OFF:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;

    if-ne v0, v1, :cond_0

    .line 508
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_SUPER_NIGHT_SHOT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 511
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 508
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 513
    :cond_0
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_SUPER_NIGHT_SHOT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 516
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 513
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    :goto_0
    return-void
.end method

.method setVdisMode(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;",
            ">;)V"
        }
    .end annotation

    .line 378
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;>;"
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentVDISMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;->VIDEO_VDIS_MODE_ON:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    if-ne v0, v1, :cond_0

    .line 380
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 383
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 380
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_VDIS_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 387
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 384
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 389
    :cond_0
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 392
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 389
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    new-instance v0, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_VDIS_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 396
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 393
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    :goto_0
    return-void
.end method

.method protected setZoomInfoToCaptureBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 597
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 599
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 598
    invoke-static {v0}, Lcom/samsung/android/sep/camera/vendor/CameraCharacteristicsUtils;->getSensorInfoActiveArraySize(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;

    move-result-object v0

    .line 601
    .local v0, "scalerCropRegion":Landroid/graphics/Rect;
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 602
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    .line 603
    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 605
    .local v1, "appCropRegion":Landroid/graphics/Rect;
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 606
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 612
    .local v2, "appZoomRatio":F
    iget-object v4, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mZoomController:Lcom/samsung/android/sep/camera/ZoomController;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mZoomController:Lcom/samsung/android/sep/camera/ZoomController;

    invoke-virtual {v4}, Lcom/samsung/android/sep/camera/ZoomController;->isZoomControllerUsedByApp()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 625
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mZoomController:Lcom/samsung/android/sep/camera/ZoomController;

    .line 626
    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/ZoomController;->getCurrentZoomLevel()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCurrentZoomLevel:F

    .line 627
    iget-object v3, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mZoomController:Lcom/samsung/android/sep/camera/ZoomController;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCurrentZoomLevel:F

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sep/camera/ZoomController;->setZoomProgress(Ljava/util/List;F)V

    .line 628
    return-void

    .line 614
    :cond_1
    :goto_0
    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2

    .line 615
    iput v2, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCurrentZoomLevel:F

    goto :goto_1

    .line 617
    :cond_2
    if-eqz v0, :cond_3

    .line 618
    nop

    .line 619
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    .line 620
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCurrentZoomLevel:F

    .line 623
    :cond_3
    :goto_1
    return-void
.end method

.method setupCaptureBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 4
    .param p1, "captureBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "checkAeExposure"    # Z

    .line 241
    const-string v0, "CaptureHelper"

    const-string v1, "setupCaptureBuilder"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCaptureParameters()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCaptureParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;

    .line 244
    .local v1, "p":Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;
    if-eqz p2, :cond_0

    iget-object v2, v1, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;->mKey:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne v2, v3, :cond_0

    .line 245
    goto :goto_0

    .line 247
    :cond_0
    iget-object v2, v1, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;->mKey:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    if-ne v2, v3, :cond_1

    .line 248
    iget-object v2, v1, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;->mValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 249
    .local v2, "orientation":I
    iget-object v3, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    invoke-virtual {v3, v2}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->setOrientation(I)V

    .line 251
    .end local v2    # "orientation":I
    :cond_1
    iget-object v2, v1, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;->mKey:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, v1, Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 252
    .end local v1    # "p":Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;
    goto :goto_0

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getLiveHDRMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 256
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getLightingMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 257
    return-void
.end method

.method takeSinglePicture(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 9
    .param p1, "imageFormat"    # I
    .param p2, "captureBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 162
    const/16 v0, 0x100

    if-ne p1, v0, :cond_0

    .line 163
    new-instance v1, Lcom/samsung/android/sep/camera/callback/JpegSingleCaptureCallback;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mProcessHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    iget-object v4, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    iget-object v5, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    iget-object v6, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sep/camera/callback/JpegSingleCaptureCallback;-><init>(Landroid/os/Handler;Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;Lcom/samsung/android/sep/camera/data/CaptureData;Lcom/samsung/android/sep/camera/data/ProcessRunnableData;Lcom/samsung/android/sep/camera/data/ProcessorStateManager;)V

    .line 170
    .local v1, "captureCallback":Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;
    iget-object v2, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/data/CaptureData;->getJpegReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 171
    iget-object v2, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->dumpSurfaceInfo(I)V

    goto :goto_0

    .line 173
    .end local v1    # "captureCallback":Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;
    :cond_0
    new-instance v3, Lcom/samsung/android/sep/camera/callback/YuvSingleCaptureCallback;

    iget-object v4, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mProcessHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    iget-object v6, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    iget-object v7, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    iget-object v8, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sep/camera/callback/YuvSingleCaptureCallback;-><init>(Landroid/os/Handler;Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;Lcom/samsung/android/sep/camera/data/CaptureData;Lcom/samsung/android/sep/camera/data/ProcessRunnableData;Lcom/samsung/android/sep/camera/data/ProcessorStateManager;)V

    move-object v1, v3

    .line 180
    .restart local v1    # "captureCallback":Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getYuvReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Lcom/samsung/android/sep/camera/data/CaptureData;->dumpSurfaceInfo(I)V

    .line 183
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sep/camera/CaptureHelper;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 184
    return-void
.end method
