.class public Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerax/advanced/extender/RequestBuilder$RequestProcessorRequest;
    }
.end annotation


# instance fields
.field private mCaptureStageId:I

.field private final mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargetOutputConfigIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateId:I


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;Lcom/samsung/android/camerax/advanced/api/IExtensionClient;)V
    .locals 1
    .param p1, "cameraCharacteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p2, "client"    # Lcom/samsung/android/camerax/advanced/api/IExtensionClient;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->mTargetOutputConfigIds:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->mParameters:Ljava/util/Map;

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->mTemplateId:I

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->mCaptureStageId:I

    .line 50
    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setCameraClient()V

    .line 53
    return-void
.end method

.method private setCameraClient()V
    .locals 2

    .line 92
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureRequestKey;->CONTROL_CAMERA_CLIENT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 93
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 92
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 94
    return-void
.end method


# virtual methods
.method public addTargetOutputConfigIds(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    .locals 2
    .param p1, "targetOutputConfigId"    # I

    .line 58
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->mTargetOutputConfigIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-object p0
.end method

.method public build()Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;
    .locals 5

    .line 180
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder$RequestProcessorRequest;

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->mTargetOutputConfigIds:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->mParameters:Ljava/util/Map;

    iget v3, p0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->mTemplateId:I

    iget v4, p0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->mCaptureStageId:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder$RequestProcessorRequest;-><init>(Ljava/util/List;Ljava/util/Map;II)V

    return-object v0
.end method

.method public removeTargetOutputConfigIds(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    .locals 2
    .param p1, "targetOutputConfigId"    # I

    .line 65
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->mTargetOutputConfigIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 66
    return-object p0
.end method

.method public setBokehEffectInfo(Landroid/util/Pair;)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;"
        }
    .end annotation

    .line 155
    .local p1, "effectInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureRequestKey;->CONTROL_BOKEH_SPECIAL_EFFECT_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setCapturePhysicalId(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    .locals 2
    .param p1, "physicalId"    # I

    .line 174
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureRequestKey;->CONTROL_CAPTURE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setCaptureStageId(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    .locals 0
    .param p1, "captureStageId"    # I

    .line 86
    iput p1, p0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->mCaptureStageId:I

    .line 87
    return-object p0
.end method

.method public setDynamicShotDeviceInfo(J)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    .locals 2
    .param p1, "dynamicShotDeviceInfo"    # J

    .line 113
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const/16 v1, 0x1b

    invoke-static {v0, v1}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->isAvailableFeature(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureRequestKey;->REQUEST_DYNAMIC_SHOT_DEVICE_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 116
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 115
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 118
    :cond_0
    return-object p0
.end method

.method public setDynamicShotExtraInfo(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    .locals 2
    .param p1, "dynamicShotExtraInfo"    # I

    .line 106
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureRequestKey;->REQUEST_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 107
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 106
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setDynamicShotHint(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    .locals 2
    .param p1, "dynamicShotCondition"    # I

    .line 99
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureRequestKey;->REQUEST_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 99
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setExposureCompensation(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    .locals 2
    .param p1, "exposure"    # I

    .line 137
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setFaceDetectMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    .locals 2
    .param p1, "mode"    # I

    .line 143
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setFaceRetouchLevel(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    .locals 2
    .param p1, "level"    # I

    .line 162
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureRequestKey;->CONTROL_BEAUTY_FACE_RETOUCH_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setFpsRange(Landroid/util/Range;)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;"
        }
    .end annotation

    .line 168
    .local p1, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setHdrMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    .locals 2
    .param p1, "hdrMode"    # I

    .line 124
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureRequestKey;->CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setLightConditionMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    .locals 2
    .param p1, "lightConditionMode"    # I

    .line 130
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureRequestKey;->REQUEST_CONTROL_LIGHT_CONDITION_ENABLE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 130
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    .locals 1
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;"
        }
    .end annotation

    .line 72
    .local p1, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->mParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-object p0
.end method

.method public setShootingMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    .locals 2
    .param p1, "shootingMode"    # I

    .line 149
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureRequestKey;->CONTROL_SHOOTING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setTemplateId(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    .locals 0
    .param p1, "templateId"    # I

    .line 79
    iput p1, p0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->mTemplateId:I

    .line 80
    return-object p0
.end method
