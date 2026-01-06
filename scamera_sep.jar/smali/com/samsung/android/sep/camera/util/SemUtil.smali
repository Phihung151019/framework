.class public Lcom/samsung/android/sep/camera/util/SemUtil;
.super Ljava/lang/Object;
.source "SemUtil.java"


# static fields
.field public static final CAMERA_CHARACTERISTIC_KEY:Ljava/lang/String; = "CameraCharacteristics"

.field private static final DEVICE_MEMORY_LEVEL_HIGH:I = 0x3

.field private static final DEVICE_MEMORY_LEVEL_LOW:I = 0x1

.field private static final DEVICE_MEMORY_LEVEL_MID:I = 0x2

.field private static final DEVICE_MEMORY_LEVEL_VERY_HIGH:I = 0x4

.field private static final DEVICE_MEMORY_LEVEL_VERY_LOW:I = 0x0

.field private static final PHOTO_HDR_MM_FLOATING_FEATURE:Ljava/lang/String; = "SEC_FLOATING_FEATURE_MMFW_SUPPORT_PHOTOHDR"

.field private static final TAG:Ljava/lang/String; = "SemUtil"

.field private static mAvailableCameraFeature:[I

.field private static mSamsungControlLlHdrEvCompensationList:[F

.field private static mSamsungControlMfHdrEvCompensationList:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sep/camera/util/SemUtil;->mAvailableCameraFeature:[I

    .line 43
    sput-object v0, Lcom/samsung/android/sep/camera/util/SemUtil;->mSamsungControlLlHdrEvCompensationList:[F

    .line 44
    sput-object v0, Lcom/samsung/android/sep/camera/util/SemUtil;->mSamsungControlMfHdrEvCompensationList:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertCaptureParams(Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;Landroid/os/Handler;Ljava/util/List;)V
    .locals 1
    .param p0, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p1, "dynamicShotInfo"    # Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;
    .param p2, "captureCallback"    # Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CaptureParameterClazz:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;",
            "Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;",
            "Landroid/os/Handler;",
            "Ljava/util/List<",
            "TCaptureParameterClazz;>;)V"
        }
    .end annotation

    .line 309
    .local p4, "parameters":Ljava/util/List;, "Ljava/util/List<TCaptureParameterClazz;>;"
    const-string v0, "Session"

    invoke-static {p0, v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 310
    const-string v0, "dynamicShotInfo"

    invoke-static {p1, v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    const-string v0, "CaptureCallback"

    invoke-static {p2, v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public static assertInitParams(Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;)V
    .locals 8
    .param p0, "config"    # Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 180
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getCameraId()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "cameraId":Ljava/lang/String;
    const-string v2, "Context"

    invoke-static {v0, v2}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    const-string v2, "cameraId"

    invoke-static {v1, v2}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getPictureSize()Landroid/util/Size;

    move-result-object v2

    const-string v3, "pictureSize"

    invoke-static {v2, v3}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    const-string v2, "camera"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    .line 186
    .local v2, "manager":Landroid/hardware/camera2/CameraManager;
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 187
    const-string v3, "cameraId %s not in getCameraIdList is used."

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemUtil"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    invoke-static {}, Lcom/samsung/android/sep/camera/SemCamera;->getInstance()Lcom/samsung/android/sep/camera/SemCamera;

    move-result-object v3

    .line 191
    const/4 v4, 0x1

    invoke-virtual {v3, v0, v1, v4}, Lcom/samsung/android/sep/camera/SemCamera;->isFeatureEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getSDKVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2.0.2"

    invoke-static {v3, v4}, Lcom/samsung/android/sep/camera/util/SemUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v3

    const-string v4, "Camera Device"

    invoke-static {v3, v4}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    :cond_1
    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    .line 199
    .local v3, "mCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/4 v4, 0x0

    sput-object v4, Lcom/samsung/android/sep/camera/util/SemUtil;->mAvailableCameraFeature:[I

    .line 200
    if-eqz v3, :cond_3

    .line 201
    sget-object v4, Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;->CONTROL_AVAILABLE_FEATURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    sput-object v4, Lcom/samsung/android/sep/camera/util/SemUtil;->mAvailableCameraFeature:[I

    .line 202
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 203
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 204
    .local v4, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-virtual {p0}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getPictureSize()Landroid/util/Size;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/samsung/android/sep/camera/util/SemUtil;->isAvailablePictureSize(Landroid/content/Context;Ljava/lang/String;Landroid/util/Size;)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v4, :cond_3

    .line 206
    const/16 v5, 0x100

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getPictureSize()Landroid/util/Size;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 208
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported Picture Size found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getPictureSize()Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 212
    .end local v4    # "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    :cond_3
    :goto_0
    return-void

    .line 192
    .end local v3    # "mCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Processor Type  is invalid"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1, "valueName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 167
    .local p0, "reference":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 170
    return-void

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static compareVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "v1"    # Ljava/lang/String;
    .param p1, "v2"    # Ljava/lang/String;

    .line 381
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 382
    :cond_0
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "s1":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "s2":[Ljava/lang/String;
    array-length v2, v1

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 385
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 386
    aget-object v4, v1, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v5, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Integer;->compare(II)I

    move-result v4

    .line 387
    .local v4, "result":I
    if-eqz v4, :cond_1

    .line 388
    return v4

    .line 385
    .end local v4    # "result":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 391
    .end local v3    # "i":I
    :cond_2
    array-length v3, v1

    array-length v4, v0

    invoke-static {v3, v4}, Ljava/lang/Integer;->compare(II)I

    move-result v3

    return v3
.end method

.method public static getDistinctRawStreamConfigs(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/util/RawStreamConfig;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/util/RawStreamConfig;",
            ">;"
        }
    .end annotation

    .line 456
    .local p0, "rawStreamConfigCandidateList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/util/RawStreamConfig;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 460
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;

    .line 461
    .local v0, "mainRawStreamConfig":Lcom/samsung/android/sep/camera/util/RawStreamConfig;
    nop

    .line 462
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    .line 463
    invoke-interface {v1}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sep/camera/util/SemUtil$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/samsung/android/sep/camera/util/SemUtil$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sep/camera/util/RawStreamConfig;)V

    .line 464
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 472
    .local v1, "subRawStreamConfigStream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Lcom/samsung/android/sep/camera/util/RawStreamConfig;>;"
    invoke-static {v0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 473
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 472
    return-object v2
.end method

.method public static getDsModeNeedRawPic(I)Z
    .locals 1
    .param p0, "dsMode"    # I

    .line 141
    invoke-static {p0}, Lcom/samsung/android/sep/camera/util/SemUtil;->isSuperNightDS(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/sep/camera/util/SemUtil;->isRawSrDsMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static getDsModeNeedSeparatedCompPic(I)Z
    .locals 1
    .param p0, "dsMode"    # I

    .line 81
    invoke-static {p0}, Lcom/samsung/android/sep/camera/util/SemUtil;->isSuperNightDS(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/sep/camera/util/SemUtil;->isRawSrDsMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static getDsModeNeedSeparatedUnCompPic(I)Z
    .locals 1
    .param p0, "dsMode"    # I

    .line 91
    const/16 v0, 0xa1

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static getDsModeNeedSeparatedUnCompPicWithRaw(I)Z
    .locals 1
    .param p0, "dsMode"    # I

    .line 96
    invoke-static {p0}, Lcom/samsung/android/sep/camera/util/SemUtil;->isAIZoomDsMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/sep/camera/util/SemUtil;->isTetraSrDsMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static getDsSensorPixelMode(I)Lcom/samsung/android/sep/camera/util/SensorPixelMode;
    .locals 1
    .param p0, "dynamicShotMode"    # I

    .line 527
    invoke-static {p0}, Lcom/samsung/android/sep/camera/util/SemUtil;->isSuperNightDS(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    sget-object v0, Lcom/samsung/android/sep/camera/util/SensorPixelMode;->MODE_DEFAULT:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    return-object v0

    .line 531
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sep/camera/util/SemUtil;->isTetraSrDsMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    sget-object v0, Lcom/samsung/android/sep/camera/util/SensorPixelMode;->MODE_TETRA_CROP:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    return-object v0

    .line 534
    :cond_1
    sget-object v0, Lcom/samsung/android/sep/camera/util/SensorPixelMode;->MODE_DEFAULT:Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    return-object v0
.end method

.method public static getFirstOverFitRawStreamConfig(Ljava/util/List;Landroid/util/Size;)Lcom/samsung/android/sep/camera/util/RawStreamConfig;
    .locals 2
    .param p1, "baseSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/util/RawStreamConfig;",
            ">;",
            "Landroid/util/Size;",
            ")",
            "Lcom/samsung/android/sep/camera/util/RawStreamConfig;"
        }
    .end annotation

    .line 437
    .local p0, "sourceStreamConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/util/RawStreamConfig;>;"
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sep/camera/util/SemUtil$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/samsung/android/sep/camera/util/SemUtil$$ExternalSyntheticLambda2;-><init>(Landroid/util/Size;)V

    .line 438
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 445
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 446
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sep/camera/util/RawStreamConfig;

    .line 437
    return-object v0
.end method

.method public static getHighResolutionCameraId()Ljava/lang/String;
    .locals 3

    .line 504
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->HIGH_RES_CAMERA:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 505
    invoke-static {v0}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->getCameraId(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "cameraId":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHighResolutionCameraId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-object v0
.end method

.method public static getRawImageReaderMaxBufferCount()I
    .locals 2

    .line 412
    nop

    .line 413
    const-string v0, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_MEMORY_USAGE_LEVEL"

    invoke-static {v0}, Lcom/samsung/android/sep/camera/vendor/SemFloatingFeatureWrapper;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 419
    .local v0, "level":I
    packed-switch v0, :pswitch_data_0

    .line 427
    const/4 v1, 0x7

    return v1

    .line 422
    :pswitch_0
    const/16 v1, 0x9

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getSamsungControlLlHdrEvCompensationList(Landroid/hardware/camera2/CameraCharacteristics;)[F
    .locals 1
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 362
    sget-object v0, Lcom/samsung/android/sep/camera/util/SemUtil;->mSamsungControlLlHdrEvCompensationList:[F

    if-eqz v0, :cond_0

    .line 363
    sget-object v0, Lcom/samsung/android/sep/camera/util/SemUtil;->mSamsungControlLlHdrEvCompensationList:[F

    return-object v0

    .line 364
    :cond_0
    if-eqz p0, :cond_1

    .line 365
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;->CONTROL_LL_HDR_EV_COMPENSATION_LIST:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 366
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    sput-object v0, Lcom/samsung/android/sep/camera/util/SemUtil;->mSamsungControlLlHdrEvCompensationList:[F

    .line 368
    :cond_1
    sget-object v0, Lcom/samsung/android/sep/camera/util/SemUtil;->mSamsungControlLlHdrEvCompensationList:[F

    if-nez v0, :cond_2

    .line 369
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/sep/camera/util/SemUtil;->mSamsungControlLlHdrEvCompensationList:[F

    .line 370
    :cond_2
    sget-object v0, Lcom/samsung/android/sep/camera/util/SemUtil;->mSamsungControlLlHdrEvCompensationList:[F

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        -0x3fc00000    # -3.0f
    .end array-data
.end method

.method public static getSamsungControlMfHdrEvCompensationList(Landroid/hardware/camera2/CameraCharacteristics;)[F
    .locals 1
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 342
    sget-object v0, Lcom/samsung/android/sep/camera/util/SemUtil;->mSamsungControlMfHdrEvCompensationList:[F

    if-eqz v0, :cond_0

    .line 343
    sget-object v0, Lcom/samsung/android/sep/camera/util/SemUtil;->mSamsungControlMfHdrEvCompensationList:[F

    return-object v0

    .line 344
    :cond_0
    if-eqz p0, :cond_1

    .line 345
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;->CONTROL_MF_HDR_EV_COMPENSATION_LIST:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 346
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    sput-object v0, Lcom/samsung/android/sep/camera/util/SemUtil;->mSamsungControlMfHdrEvCompensationList:[F

    .line 348
    :cond_1
    sget-object v0, Lcom/samsung/android/sep/camera/util/SemUtil;->mSamsungControlMfHdrEvCompensationList:[F

    if-nez v0, :cond_2

    .line 349
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/sep/camera/util/SemUtil;->mSamsungControlMfHdrEvCompensationList:[F

    .line 351
    :cond_2
    sget-object v0, Lcom/samsung/android/sep/camera/util/SemUtil;->mSamsungControlMfHdrEvCompensationList:[F

    return-object v0

    :array_0
    .array-data 4
        0x0
        -0x40000000    # -2.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getSamsungFeatureDynamicShotDeviceInfoAvailable()Ljava/lang/Boolean;
    .locals 6

    .line 320
    sget-object v0, Lcom/samsung/android/sep/camera/util/SemUtil;->mAvailableCameraFeature:[I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 321
    :cond_0
    const/4 v0, 0x0

    .line 322
    .local v0, "mSamsungFeatureDynamicShotDeviceInfoAvailable":Z
    sget-object v2, Lcom/samsung/android/sep/camera/util/SemUtil;->mAvailableCameraFeature:[I

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget v4, v2, v1

    .line 323
    .local v4, "value":I
    const/16 v5, 0x1b

    if-ne v4, v5, :cond_1

    .line 324
    const-string v1, "SemUtil"

    const-string v2, "available feature: CONTROL_AVAILABLE_FEATURE_DYNAMIC_SHOT_DEVICE_INFO found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 328
    goto :goto_1

    .line 322
    .end local v4    # "value":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static getSamsungScalerAvailableJpegPictureSizes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v0, "scalarAvailableJpegPictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    const-string v1, "camera"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 240
    .local v1, "manager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 241
    .local v2, "mCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v3, Lcom/samsung/android/sep/camera/vendor/SemCameraCharacteristicsKey;->SCALER_AVAILABLE_PICTURE_STREAM_CONFIGURATIONS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 242
    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 245
    .local v3, "pictureStreamConfigurations":[I
    if-nez v3, :cond_0

    .line 246
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 247
    .end local v0    # "scalarAvailableJpegPictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v4, "scalarAvailableJpegPictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    return-object v4

    .line 249
    .end local v4    # "scalarAvailableJpegPictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v0    # "scalarAvailableJpegPictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_0
    nop

    .line 250
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/sep/camera/util/StreamConfig;->unMarshal([IZ)Ljava/util/List;

    move-result-object v4

    .line 251
    .local v4, "streamConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/util/StreamConfig;>;"
    sget-object v5, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->HIGH_RES_CAMERA:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 252
    invoke-static {v5}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->getSupportedSizes(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Ljava/util/Set;

    move-result-object v5

    .line 254
    .local v5, "availableHighResPictureSizes":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Size;>;"
    nop

    .line 255
    invoke-interface {v5}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/sep/camera/util/SemUtil$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/samsung/android/sep/camera/util/SemUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 256
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v6

    .line 263
    .local v6, "smallestHighResSize":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/util/Size;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 264
    .local v7, "jpegPictureSizeList":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Size;>;"
    invoke-interface {v7, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 265
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/sep/camera/util/StreamConfig;

    .line 266
    .local v9, "streamConfig":Lcom/samsung/android/sep/camera/util/StreamConfig;
    invoke-virtual {v9}, Lcom/samsung/android/sep/camera/util/StreamConfig;->getFormat()I

    move-result v10

    const/16 v11, 0x100

    if-ne v10, v11, :cond_2

    .line 267
    invoke-virtual {v9}, Lcom/samsung/android/sep/camera/util/StreamConfig;->getSize()Landroid/util/Size;

    move-result-object v10

    .line 268
    .local v10, "size":Landroid/util/Size;
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 270
    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 272
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 273
    .end local v0    # "scalarAvailableJpegPictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v8, "scalarAvailableJpegPictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    return-object v8

    .line 275
    .end local v8    # "scalarAvailableJpegPictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v0    # "scalarAvailableJpegPictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_1
    invoke-virtual {v6}, Ljava/util/Optional;->isPresent()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 276
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Size;

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 277
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v11

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Size;

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v12

    if-ge v11, v12, :cond_2

    .line 279
    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 281
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v0    # "scalarAvailableJpegPictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v8    # "scalarAvailableJpegPictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    return-object v8

    .line 285
    .end local v8    # "scalarAvailableJpegPictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v9    # "streamConfig":Lcom/samsung/android/sep/camera/util/StreamConfig;
    .end local v10    # "size":Landroid/util/Size;
    .restart local v0    # "scalarAvailableJpegPictureSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_2
    goto :goto_0

    .line 289
    .end local v2    # "mCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v3    # "pictureStreamConfigurations":[I
    .end local v4    # "streamConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/util/StreamConfig;>;"
    .end local v5    # "availableHighResPictureSizes":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Size;>;"
    .end local v6    # "smallestHighResSize":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/util/Size;>;"
    .end local v7    # "jpegPictureSizeList":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Size;>;"
    :cond_3
    goto :goto_1

    .line 286
    :catch_0
    move-exception v2

    .line 287
    .local v2, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 288
    const-string v3, "SemUtil"

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v2    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_1
    return-object v0
.end method

.method public static getUDCCameraCharacteristics(Landroid/content/Context;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 544
    const/4 v0, 0x0

    const-string v1, "SemUtil"

    if-nez p0, :cond_0

    .line 545
    const-string v2, "getUDCCameraCharacteristics: Context is null !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-object v0

    .line 548
    :cond_0
    sget-object v2, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->LIMIT_LEVEL_UDC_CAMERA:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 549
    invoke-static {v2}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->getCameraId(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Ljava/lang/String;

    move-result-object v2

    .line 551
    .local v2, "cameraId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 552
    .local v3, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const-string v4, "camera"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager;

    .line 554
    .local v4, "manager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    invoke-virtual {v4, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    .end local v3    # "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .local v0, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    nop

    .line 558
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UDC Camera has selected "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    return-object v0

    .line 555
    .end local v0    # "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v3    # "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    :catch_0
    move-exception v1

    .line 556
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    return-object v0
.end method

.method private static isAIZoomDsMode(I)Z
    .locals 1
    .param p0, "dsMode"    # I

    .line 127
    const/16 v0, 0x112

    if-eq p0, v0, :cond_1

    const/16 v0, 0x110

    if-eq p0, v0, :cond_1

    const/16 v0, 0x111

    if-eq p0, v0, :cond_1

    const/16 v0, 0x113

    if-eq p0, v0, :cond_1

    const/16 v0, 0x114

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isAvailablePictureSize(Landroid/content/Context;Ljava/lang/String;Landroid/util/Size;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "camId"    # Ljava/lang/String;
    .param p2, "size"    # Landroid/util/Size;

    .line 223
    invoke-static {p0, p1}, Lcom/samsung/android/sep/camera/util/SemUtil;->getSamsungScalerAvailableJpegPictureSizes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 224
    .local v0, "pictureSizeList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Jpeg picture Size List"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isPhotoHDRSupported()Z
    .locals 1

    .line 522
    const-string v0, "SEC_FLOATING_FEATURE_MMFW_SUPPORT_PHOTOHDR"

    invoke-static {v0}, Lcom/samsung/android/sep/camera/vendor/SemFloatingFeatureWrapper;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRawSrDsMode(I)Z
    .locals 1
    .param p0, "dsMode"    # I

    .line 151
    const/16 v0, 0xa0

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa1

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa2

    if-eq p0, v0, :cond_1

    .line 155
    invoke-static {p0}, Lcom/samsung/android/sep/camera/util/SemUtil;->isTetraSrDsMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    invoke-static {p0}, Lcom/samsung/android/sep/camera/util/SemUtil;->isAIZoomDsMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 151
    :goto_1
    return v0
.end method

.method public static isS21Device()Z
    .locals 2

    .line 518
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "G99"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isSuperNightDS(I)Z
    .locals 1
    .param p0, "mode"    # I

    .line 56
    sparse-switch p0, :sswitch_data_0

    .line 70
    const/4 v0, 0x0

    return v0

    .line 68
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x50 -> :sswitch_0
        0x51 -> :sswitch_0
        0x52 -> :sswitch_0
        0x53 -> :sswitch_0
        0x54 -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x140 -> :sswitch_0
        0x141 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isTetraSrDsMode(I)Z
    .locals 1
    .param p0, "dsMode"    # I

    .line 106
    const/16 v0, 0x122

    if-eq p0, v0, :cond_1

    const/16 v0, 0x123

    if-eq p0, v0, :cond_1

    const/16 v0, 0x115

    if-eq p0, v0, :cond_1

    const/16 v0, 0x116

    if-eq p0, v0, :cond_1

    const/16 v0, 0x117

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x124

    if-eq p0, v0, :cond_1

    const/16 v0, 0x125

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isUDCCamera(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 2
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 483
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 484
    .local v0, "lensFacing":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->LIMIT_LEVEL_UDC_CAMERA:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 485
    invoke-static {v1}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->isAvailableFeature(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 487
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 488
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 489
    const/4 v1, 0x1

    return v1

    .line 492
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic lambda$getDistinctRawStreamConfigs$2(Lcom/samsung/android/sep/camera/util/RawStreamConfig;Lcom/samsung/android/sep/camera/util/RawStreamConfig;)Z
    .locals 2
    .param p0, "mainRawStreamConfig"    # Lcom/samsung/android/sep/camera/util/RawStreamConfig;
    .param p1, "rawStreamConfig"    # Lcom/samsung/android/sep/camera/util/RawStreamConfig;

    .line 466
    nop

    .line 467
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v0

    .line 468
    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v1

    .line 466
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->getFormat()I

    move-result v0

    .line 470
    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->getFormat()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 466
    :goto_1
    return v0
.end method

.method static synthetic lambda$getFirstOverFitRawStreamConfig$1(Landroid/util/Size;Lcom/samsung/android/sep/camera/util/RawStreamConfig;)Z
    .locals 3
    .param p0, "baseSize"    # Landroid/util/Size;
    .param p1, "rawStreamConfig"    # Lcom/samsung/android/sep/camera/util/RawStreamConfig;

    .line 440
    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 441
    .local v0, "rawStreamWidth":I
    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    .line 442
    .local v1, "rawStreamHeight":I
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 443
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 442
    :goto_0
    return v2
.end method

.method static synthetic lambda$getSamsungScalerAvailableJpegPictureSizes$0(Landroid/util/Size;Landroid/util/Size;)I
    .locals 2
    .param p0, "a"    # Landroid/util/Size;
    .param p1, "b"    # Landroid/util/Size;

    .line 258
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 259
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    .line 261
    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static setCameraParameter(Landroid/hardware/camera2/CameraDevice;Ljava/lang/String;)V
    .locals 0
    .param p0, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p1, "infoString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 403
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice;->setParameters(Ljava/lang/String;)V

    .line 404
    return-void
.end method
