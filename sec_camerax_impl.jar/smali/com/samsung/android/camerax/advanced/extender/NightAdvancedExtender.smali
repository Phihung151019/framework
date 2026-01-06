.class public Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender;
.super Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;
.source "NightAdvancedExtender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender$NightSessionProcessor;
    }
.end annotation


# static fields
.field private static final EXTENSION_ID:I = 0x3

.field private static final MAX_CAPTURE_COUNT:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 46
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;-><init>(I)V

    .line 47
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;->setMaxCaptureCount(I)Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;

    move-result-object v0

    .line 48
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;->setHdrMode(I)Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;->setLightConditionMode(I)Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty$Builder;->build()Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    move-result-object v0

    .line 46
    const-string v1, "cx/NightExt"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;-><init>(Ljava/lang/String;Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;)V

    .line 51
    return-void
.end method


# virtual methods
.method public createSessionProcessor()Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;
    .locals 1

    .line 107
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender$NightSessionProcessor;

    invoke-direct {v0, p0}, Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender$NightSessionProcessor;-><init>(Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender;)V

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

    .line 80
    nop

    .line 81
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

    .line 80
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender;->filterOutputResolutions(Ljava/util/List;Landroid/util/Size;Landroid/util/Size;)Ljava/util/Map;

    move-result-object v1

    .line 84
    .local v1, "jpegResolutions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    sget-boolean v2, Lcom/samsung/android/camerax/advanced/util/FloatingFeatureUtils;->FEATURE_SUPPORT_SUPER_HDR:Z

    if-eqz v2, :cond_0

    .line 85
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 86
    const/16 v2, 0x1005

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 87
    nop

    .line 86
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 87
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    .line 86
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
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

    .line 73
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

    invoke-virtual {p0, v0, v2, v1}, Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender;->filterOutputResolutions(Ljava/util/List;Landroid/util/Size;Landroid/util/Size;)Ljava/util/Map;

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

    .line 95
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->isHardwareLevelSupported(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 97
    return-object v1

    .line 100
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

    invoke-virtual {p0, v2, v1, v3}, Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender;->filterOutputResolutions(Ljava/util/List;Landroid/util/Size;Landroid/util/Size;)Ljava/util/Map;

    move-result-object v1

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 100
    return-object v0
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

    .line 56
    .local p2, "characteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    .line 58
    .local v0, "cameraCharacteristics":Landroid/hardware/camera2/CameraCharacteristics;
    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->isAvailableNightMode(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->isAvailableDynamicShotInfo(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->isAvailableFeature(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->isSamsungVendorKeySupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 64
    .local v1, "available":Z
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/NightAdvancedExtender;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 65
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {p1, v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 64
    const-string v5, "isExtensionAvailable: cameraId = %s, %b"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return v1
.end method
