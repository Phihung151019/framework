.class public Lcom/samsung/android/sep/camera/SemCameraConfig;
.super Ljava/lang/Object;
.source "SemCameraConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemCameraConfig"


# instance fields
.field private mClientId:Ljava/lang/Integer;

.field private mCurrentAutoFramingMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;

.field private mCurrentExposureControlMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;

.field private mCurrentSelfieToneMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

.field private mCurrentVDISMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

.field private mIsExposureControlDisabledFromApp:Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

.field private mIsSuperNightExposureSupported:Z

.field private mLightingMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

.field private mLiveHDRMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

.field private mProcessHandler:Landroid/os/Handler;

.field private mSuperNightMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;


# direct methods
.method public static synthetic $r8$lambda$TLkD3U-1CP8TJhU5vlmMbUFie8I(Lcom/samsung/android/sep/camera/SemCameraConfig;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->lambda$setCameraConfigParameter$0(Ljava/lang/Integer;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "mClientId"    # Ljava/lang/Integer;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;->SUPER_NIGHT_OFF:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mSuperNightMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;

    .line 46
    sget-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;->VIDEO_VDIS_MODE_OFF:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mCurrentVDISMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    .line 47
    sget-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;->FULL:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mLightingMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    .line 48
    sget-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;->VIDEO_HDR_OFF:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mLiveHDRMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    .line 49
    sget-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;->VIDEO_AUTO_FRAMING_MODE_OFF:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mCurrentAutoFramingMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;

    .line 51
    sget-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;->DEFAULT:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mCurrentExposureControlMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;

    .line 52
    sget-object v0, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;->NONE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mCurrentSelfieToneMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    .line 53
    invoke-static {}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->getsInstance()Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->getProcessHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mProcessHandler:Landroid/os/Handler;

    .line 54
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mClientId:Ljava/lang/Integer;

    .line 55
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;->NOT_CALLED:Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mIsExposureControlDisabledFromApp:Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mIsSuperNightExposureSupported:Z

    .line 57
    return-void
.end method

.method private canSuperNightSetExposureToDefault()Z
    .locals 2

    .line 287
    iget-boolean v0, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mIsSuperNightExposureSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mIsExposureControlDisabledFromApp:Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;->DISABLED:Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mIsExposureControlDisabledFromApp:Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;->NOT_CALLED:Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private canSuperNightSetExposureToEnhanced()Z
    .locals 2

    .line 275
    iget-boolean v0, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mIsSuperNightExposureSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mIsExposureControlDisabledFromApp:Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;->NOT_CALLED:Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mIsExposureControlDisabledFromApp:Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;->ENABLED:Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$setCameraConfigParameter$0(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "finalSuperNightMode"    # Ljava/lang/Integer;

    .line 257
    invoke-static {}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mClientId:Ljava/lang/Integer;

    .line 259
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;

    const-string v3, "super_night_enable"

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v2, v3, p1, v4}, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;-><init>(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;)V

    .line 258
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->setProcessorParameter(ILcom/samsung/android/camerasdkservice/data/ProcessParameters;)V

    .line 257
    return-void
.end method


# virtual methods
.method public getCurrentAutoFramingMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mCurrentAutoFramingMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;

    return-object v0
.end method

.method public getCurrentExposureControlMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mCurrentExposureControlMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;

    return-object v0
.end method

.method public getCurrentSelfieToneMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mCurrentSelfieToneMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    return-object v0
.end method

.method public getCurrentVDISMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mCurrentVDISMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    return-object v0
.end method

.method public getLightingMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mLightingMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    return-object v0
.end method

.method public getLiveHDRMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mLiveHDRMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    return-object v0
.end method

.method public getSuperNightMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mSuperNightMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;

    return-object v0
.end method

.method public declared-synchronized setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 4
    .param p1, "mode"    # Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;
    .param p2, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    monitor-enter p0

    .line 302
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCurrentAutoFramingMode(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;)V

    .line 303
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$AutoFramingMode:[I

    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 365
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_3

    .line 335
    .restart local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    :pswitch_0
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$VideoVDISMode:[I

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mCurrentVDISMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    .line 359
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto :goto_0

    .line 348
    .restart local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    :pswitch_1
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 350
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 348
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 351
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_VDIS_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 353
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 351
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 354
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_AUTO_FRAMING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 356
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 354
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 357
    goto/16 :goto_1

    .line 337
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    :pswitch_2
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 339
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 337
    invoke-virtual {p2, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 340
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_VDIS_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 342
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 340
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 343
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_AUTO_FRAMING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 345
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 343
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 346
    goto :goto_1

    .line 359
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid argument in setCameraConfigParameter (autoFramingMode) : VDIS mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mCurrentVDISMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :pswitch_3
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$VideoVDISMode:[I

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mCurrentVDISMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_2

    .line 329
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto :goto_2

    .line 318
    :pswitch_4
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 320
    const/16 v3, 0x28

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 318
    invoke-virtual {p2, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 321
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_AUTO_FRAMING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 323
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 321
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 324
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_VDIS_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 326
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 324
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 327
    goto :goto_1

    .line 307
    :pswitch_5
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 309
    const/16 v2, 0x46

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 307
    invoke-virtual {p2, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 310
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_AUTO_FRAMING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 312
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 310
    invoke-virtual {p2, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 313
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_VDIS_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 315
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 313
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 316
    nop

    .line 367
    :goto_1
    const-string v0, "SemCameraConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraConfigParameter - autoframe : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "vdis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mCurrentVDISMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    monitor-exit p0

    return-object p2

    .line 329
    :goto_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid argument in setCameraConfigParameter (autoFramingMode) : VDIS mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mCurrentVDISMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid argument : AutoFraming mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    .end local p1    # "mode":Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;
    .end local p2    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public declared-synchronized setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3
    .param p1, "mode"    # Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;
    .param p2, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    monitor-enter p0

    .line 417
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCurrentExposureControlMode(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;)V

    .line 418
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$ExposureControlMode:[I

    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 430
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto :goto_1

    .line 425
    .restart local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    :pswitch_0
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_EXPOSURE_TABLE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 427
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 425
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 428
    goto :goto_0

    .line 420
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    :pswitch_1
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_EXPOSURE_TABLE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 422
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 420
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 423
    nop

    .line 434
    :goto_0
    const-string v0, "SemCameraConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraConfigParameter - exposureControl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    monitor-exit p0

    return-object p2

    .line 430
    :goto_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid argument : ExposureControl mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    .end local p1    # "mode":Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;
    .end local p2    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3
    .param p1, "mode"    # Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;
    .param p2, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    monitor-enter p0

    .line 186
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCurrentLightingMode(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;)V

    .line 187
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$OperationMode:[I

    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 209
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto :goto_1

    .line 204
    .restart local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    :pswitch_0
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_CONTROL_LIGHT_CONDITION_ENABLE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 206
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 204
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 207
    goto :goto_0

    .line 199
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    :pswitch_1
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_CONTROL_LIGHT_CONDITION_ENABLE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 201
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 199
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 202
    goto :goto_0

    .line 194
    :pswitch_2
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_CONTROL_LIGHT_CONDITION_ENABLE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 196
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 194
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 197
    goto :goto_0

    .line 189
    :pswitch_3
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_CONTROL_LIGHT_CONDITION_ENABLE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 191
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 189
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 192
    nop

    .line 211
    :goto_0
    const-string v0, "SemCameraConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraConfigParameter - lightingMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mLightingMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    monitor-exit p0

    return-object p2

    .line 209
    :goto_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid argument : lighting Mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    .end local p1    # "mode":Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;
    .end local p2    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3
    .param p1, "mode"    # Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;
    .param p2, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    monitor-enter p0

    .line 448
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCurrentSelfieToneMode(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;)V

    .line 449
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$SelfieToneMode:[I

    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 464
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto :goto_1

    .line 462
    .restart local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    :pswitch_0
    goto :goto_0

    .line 456
    :pswitch_1
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_SELFIE_TONE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 458
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 456
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 459
    goto :goto_0

    .line 451
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    :pswitch_2
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_SELFIE_TONE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 453
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 451
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 454
    nop

    .line 467
    :goto_0
    const-string v0, "SemCameraConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraConfigParameter - selfieTone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    monitor-exit p0

    return-object p2

    .line 464
    :goto_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid argument : SelfieTone mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    .end local p1    # "mode":Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;
    .end local p2    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 4
    .param p1, "mode"    # Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;
    .param p2, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    monitor-enter p0

    .line 225
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCurrentSuperNightMode(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;)V

    .line 226
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 227
    .local v1, "superNightMode":Ljava/lang/Integer;
    sget-object v2, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$SuperNightOperationMode:[I

    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 251
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto :goto_1

    .line 240
    .restart local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    :pswitch_0
    sget-object v2, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_SUPER_NIGHT_SHOT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 242
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 240
    invoke-virtual {p2, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 243
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 245
    .end local v1    # "superNightMode":Ljava/lang/Integer;
    .local v0, "superNightMode":Ljava/lang/Integer;
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraConfig;->canSuperNightSetExposureToDefault()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;->DEFAULT:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;

    invoke-virtual {p0, v1, p2}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    goto :goto_0

    .line 229
    .end local v0    # "superNightMode":Ljava/lang/Integer;
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    .restart local v1    # "superNightMode":Ljava/lang/Integer;
    :pswitch_1
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_SUPER_NIGHT_SHOT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 231
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 229
    invoke-virtual {p2, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 232
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 234
    .end local v1    # "superNightMode":Ljava/lang/Integer;
    .restart local v0    # "superNightMode":Ljava/lang/Integer;
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraConfig;->canSuperNightSetExposureToEnhanced()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;->ENHANCED:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;

    invoke-virtual {p0, v1, p2}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 253
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mProcessHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 254
    move-object v1, v0

    .line 255
    .local v1, "finalSuperNightMode":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mProcessHandler:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/sep/camera/SemCameraConfig$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/sep/camera/SemCameraConfig$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sep/camera/SemCameraConfig;Ljava/lang/Integer;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 265
    .end local v1    # "finalSuperNightMode":Ljava/lang/Integer;
    :cond_1
    const-string v1, "SemCameraConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraConfigParameter - superNightMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mSuperNightMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-object p2

    .line 251
    .end local v0    # "superNightMode":Ljava/lang/Integer;
    .local v1, "superNightMode":Ljava/lang/Integer;
    :goto_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid argument : SuperNight Mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    .end local v1    # "superNightMode":Ljava/lang/Integer;
    .end local p1    # "mode":Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;
    .end local p2    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3
    .param p1, "mode"    # Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;
    .param p2, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    monitor-enter p0

    .line 151
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCurrentLiveHDRMode(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;)V

    .line 152
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$VideoLiveHDRMode:[I

    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 168
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto :goto_1

    .line 162
    .restart local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    :pswitch_0
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 164
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 162
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 166
    goto :goto_0

    .line 154
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    :pswitch_1
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 156
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 154
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 157
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_SHOOTING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 159
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 157
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 160
    nop

    .line 172
    :goto_0
    const-string v0, "SemCameraConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraConfigParameter - liveHDRMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mLiveHDRMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0, p2}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setShootingMode(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-object p2

    .line 168
    :goto_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid argument in setCameraConfigParameter (liveHDRMode) : liveHDR mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    .end local p1    # "mode":Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;
    .end local p2    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3
    .param p1, "mode"    # Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;
    .param p2, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    monitor-enter p0

    .line 380
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCurrentVDISMode(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;)V

    .line 381
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$VideoVDISMode:[I

    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 399
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto :goto_1

    .line 391
    .restart local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    :pswitch_0
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 393
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 391
    invoke-virtual {p2, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 394
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_VDIS_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 396
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 394
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 397
    goto :goto_0

    .line 383
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    :pswitch_1
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 385
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 383
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 386
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->UNIHAL_VIDEO_VDIS_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 388
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 386
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 389
    nop

    .line 403
    :goto_0
    const-string v0, "SemCameraConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraConfigParameter - previewVdis : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {p0, p2}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setShootingMode(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    monitor-exit p0

    return-object p2

    .line 399
    :goto_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid argument in setCameraConfigParameter (VideoVDISMode) : VDIS mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    .end local p1    # "mode":Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;
    .end local p2    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrentAutoFramingMode(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;

    .line 116
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mCurrentAutoFramingMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;

    .line 117
    return-void
.end method

.method public setCurrentExposureControlMode(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;

    .line 121
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mCurrentExposureControlMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;

    .line 122
    return-void
.end method

.method public setCurrentLightingMode(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    .line 106
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mLightingMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    .line 107
    return-void
.end method

.method public setCurrentLiveHDRMode(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    .line 111
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mLiveHDRMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    .line 112
    return-void
.end method

.method public setCurrentSelfieToneMode(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    .line 126
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mCurrentSelfieToneMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    .line 127
    return-void
.end method

.method public setCurrentSuperNightMode(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;

    .line 96
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mSuperNightMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;

    .line 97
    return-void
.end method

.method public setCurrentVDISMode(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    .line 101
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mCurrentVDISMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    .line 102
    return-void
.end method

.method public setExposureControlDisabledFromApp(Z)V
    .locals 1
    .param p1, "exposureControlDisabledFromApp"    # Z

    .line 131
    nop

    .line 132
    if-eqz p1, :cond_0

    .line 133
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;->DISABLED:Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    goto :goto_0

    .line 134
    :cond_0
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;->ENABLED:Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mIsExposureControlDisabledFromApp:Lcom/samsung/android/sep/camera/SemCameraConfig$ExposureControlDisabledFromApp;

    .line 135
    return-void
.end method

.method protected declared-synchronized setShootingMode(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    monitor-enter p0

    .line 481
    :try_start_0
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$VideoLiveHDRMode:[I

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mLiveHDRMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 491
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto :goto_2

    .line 483
    .restart local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    :pswitch_0
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_SHOOTING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 485
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 483
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    monitor-exit p0

    return-object p1

    .line 489
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraConfig;
    :pswitch_1
    nop

    .line 495
    :try_start_1
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraConfig$1;->$SwitchMap$com$samsung$android$sep$camera$internal$SemCameraConfigParameter$VideoVDISMode:[I

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mCurrentVDISMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 507
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto :goto_1

    .line 502
    :pswitch_2
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_SHOOTING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 504
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 502
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 505
    goto :goto_0

    .line 497
    :pswitch_3
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_SHOOTING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 499
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 497
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    nop

    .line 511
    :goto_0
    monitor-exit p0

    return-object p1

    .line 507
    :goto_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid argument in setShootingMode : VDIS mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mCurrentVDISMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid argument in setShootingMode : liveHDR mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mLiveHDRMode:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoLiveHDRMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    .end local p1    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setSuperNightExposureSupported(Z)V
    .locals 0
    .param p1, "superNightExposureSupported"    # Z

    .line 139
    iput-boolean p1, p0, Lcom/samsung/android/sep/camera/SemCameraConfig;->mIsSuperNightExposureSupported:Z

    .line 140
    return-void
.end method
