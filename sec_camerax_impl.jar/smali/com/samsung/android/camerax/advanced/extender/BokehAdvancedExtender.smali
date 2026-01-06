.class public Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender;
.super Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;
.source "BokehAdvancedExtender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender$BokehSessionProcessor;
    }
.end annotation


# static fields
.field private static final EXTENSION_ID:I = 0x5

.field private static final MAX_CAPTURE_COUNT:I = 0x1

.field private static final MAX_PREVIEW_COUNT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;-><init>(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;->setMaxPreviewCount(I)Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;->setMaxCaptureCount(I)Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;->build()Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    move-result-object v0

    .line 52
    const-string v1, "cx/BokehExt"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;-><init>(Ljava/lang/String;Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;)V

    .line 54
    return-void
.end method


# virtual methods
.method public createSessionProcessor()Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;
    .locals 1

    .line 130
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender$BokehSessionProcessor;

    invoke-direct {v0, p0}, Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender$BokehSessionProcessor;-><init>(Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender;)V

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

    .line 103
    nop

    .line 104
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

    .line 103
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender;->filterOutputResolutions(Ljava/util/List;Landroid/util/Size;Landroid/util/Size;)Ljava/util/Map;

    move-result-object v1

    .line 107
    .local v1, "jpegResolutions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    sget-boolean v2, Lcom/samsung/android/camerax/advanced/util/FloatingFeatureUtils;->FEATURE_SUPPORT_SUPER_HDR:Z

    if-eqz v2, :cond_0

    .line 108
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 109
    const/16 v2, 0x1005

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 110
    nop

    .line 109
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 110
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 109
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_0
    return-object v1
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

    .line 96
    const/16 v0, 0x22

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x780

    const/16 v3, 0x438

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender;->filterOutputResolutions(Ljava/util/List;Landroid/util/Size;Landroid/util/Size;)Ljava/util/Map;

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

    .line 118
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->isHardwareLevelSupported(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 120
    return-object v1

    .line 123
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

    invoke-virtual {p0, v2, v1, v3}, Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender;->filterOutputResolutions(Ljava/util/List;Landroid/util/Size;Landroid/util/Size;)Ljava/util/Map;

    move-result-object v1

    .line 124
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 123
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

    .line 59
    .local p2, "characteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;->init(Ljava/lang/String;Ljava/util/Map;)V

    .line 60
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender$1;

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender$1;-><init>(Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender;Landroid/hardware/camera2/CameraCharacteristics;)V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender;->mExtensionMetadata:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

    .line 75
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

    .line 80
    .local p2, "characteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    .line 82
    .local v0, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->getInstance()Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;

    move-result-object v1

    const-string v2, "single_bokeh"

    invoke-virtual {v1, v2}, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->isAvailableFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/camerax/advanced/util/CameraAppFeature;->SHOOTING_MODE_LIVE_FOCUS:Ljava/util/Map;

    .line 83
    invoke-static {v1, v0}, Lcom/samsung/android/camerax/advanced/util/CameraAppFeature;->isSupported(Ljava/util/Map;Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->isSamsungVendorKeySupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 87
    .local v1, "available":Z
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BokehAdvancedExtender;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 88
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {p1, v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 87
    const-string v5, "isExtensionAvailable: cameraId = %s, %b"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v1
.end method
