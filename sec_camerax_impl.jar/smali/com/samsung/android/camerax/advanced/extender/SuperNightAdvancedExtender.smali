.class public Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;
.super Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;
.source "SuperNightAdvancedExtender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;
    }
.end annotation


# static fields
.field private static final EXTENSION_ID:I = 0x3

.field private static final MAX_CAPTURE_COUNT:I = 0x7


# direct methods
.method static bridge synthetic -$$Nest$smisVideoStabilizationSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;->isVideoStabilizationSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 62
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;-><init>(I)V

    .line 63
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;->setMaxCaptureCount(I)Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;

    move-result-object v0

    .line 64
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;->setHdrMode(I)Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;->setLightConditionMode(I)Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;->build()Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    move-result-object v0

    .line 62
    const-string v1, "cx/SuperNightExt"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;-><init>(Ljava/lang/String;Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;)V

    .line 67
    return-void
.end method

.method private static isVideoStabilizationSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 3
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 407
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 409
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureResultKeys()Ljava/util/List;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 409
    :goto_0
    return v0
.end method


# virtual methods
.method public createSessionProcessor()Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;
    .locals 1

    .line 150
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;

    invoke-direct {v0, p0}, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;-><init>(Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;)V

    return-object v0
.end method

.method public getAvailableCharacteristicsKeyValues()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/CameraCharacteristics$Key;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 171
    nop

    .line 172
    invoke-super {p0}, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;->getAvailableCharacteristicsKeyValues()Ljava/util/List;

    move-result-object v0

    .line 175
    .local v0, "keyValues":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;>;>;"
    new-instance v1, Landroid/util/Pair;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v3, 0x0

    const/4 v4, 0x2

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    return-object v0
.end method

.method public getSupportedCaptureOutputResolutions(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    .line 123
    nop

    .line 124
    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 123
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;->filterOutputResolutions(Ljava/util/List;Landroid/util/Size;Landroid/util/Size;)Ljava/util/Map;

    move-result-object v1

    .line 127
    .local v1, "jpegResolutions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    sget-boolean v2, Lcom/samsung/android/camerax/advanced/util/FloatingFeatureUtils;->FEATURE_SUPPORT_SUPER_HDR:Z

    if-eqz v2, :cond_0

    .line 128
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 129
    const/16 v2, 0x1005

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 130
    nop

    .line 129
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 130
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 129
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_0
    return-object v1
.end method

.method public getSupportedPostviewResolutions(Landroid/util/Size;)Ljava/util/Map;
    .locals 3
    .param p1, "captureSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    .local v0, "postviewSizes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-object v0
.end method

.method public getSupportedPreviewOutputResolutions(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    .line 116
    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x780

    const/16 v3, 0x438

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;->filterOutputResolutions(Ljava/util/List;Landroid/util/Size;Landroid/util/Size;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedYuvAnalysisResolutions(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->isHardwareLevelSupported(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 140
    return-object v1

    .line 143
    :cond_0
    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Landroid/util/Size;

    const/16 v4, 0x780

    const/16 v5, 0x438

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p0, v2, v1, v3}, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;->filterOutputResolutions(Ljava/util/List;Landroid/util/Size;Landroid/util/Size;)Ljava/util/Map;

    move-result-object v1

    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 143
    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p2, "characteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;->init(Ljava/lang/String;Ljava/util/Map;)V

    .line 73
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$1;

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$1;-><init>(Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;Landroid/hardware/camera2/CameraCharacteristics;)V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;->mExtensionMetadata:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

    .line 96
    return-void
.end method

.method public isExtensionAvailable(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;)Z"
        }
    .end annotation

    .line 101
    .local p2, "characteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    .line 103
    .local v0, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    const/16 v1, 0xcb

    invoke-static {v0, v1}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->isAvailableFeature(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->isSamsungVendorKeySupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 107
    .local v1, "available":Z
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 108
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {p1, v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 107
    const-string v5, "isExtensionAvailable: cameraId = %s, %b"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return v1
.end method

.method public isPostviewAvailable()Z
    .locals 1

    .line 165
    const/4 v0, 0x1

    return v0
.end method
