.class public abstract Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;
.super Ljava/lang/Object;
.source "BaseAdvancedExtender.java"

# interfaces
.implements Landroidx/camera/extensions/impl/advanced/AdvancedExtenderImpl;


# static fields
.field private static final INSTANCE_ID:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field protected mCameraId:Ljava/lang/String;

.field protected mExtensionMetadata:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

.field protected final mExtensionProperty:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;->INSTANCE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "extensionProperty"    # Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;->INSTANCE_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;->TAG:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;->mExtensionProperty:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    .line 60
    return-void
.end method

.method static synthetic lambda$filterOutputResolutions$0()Landroid/util/Size;
    .locals 2

    .line 155
    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method static synthetic lambda$filterOutputResolutions$1()Landroid/util/Size;
    .locals 2

    .line 157
    new-instance v0, Landroid/util/Size;

    const v1, 0x7fffffff

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method static synthetic lambda$filterOutputResolutions$2(Landroid/util/Size;Landroid/util/Size;)Z
    .locals 2
    .param p0, "finalMinSize"    # Landroid/util/Size;
    .param p1, "size"    # Landroid/util/Size;

    .line 162
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 163
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0
.end method

.method static synthetic lambda$filterOutputResolutions$3(Landroid/util/Size;Landroid/util/Size;)Z
    .locals 2
    .param p0, "finalMaxSize"    # Landroid/util/Size;
    .param p1, "size"    # Landroid/util/Size;

    .line 164
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 165
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 164
    :goto_0
    return v0
.end method


# virtual methods
.method public abstract createSessionProcessor()Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;
.end method

.method protected filterOutputResolutions(Ljava/util/List;Landroid/util/Size;Landroid/util/Size;)Ljava/util/Map;
    .locals 8
    .param p2, "minSize"    # Landroid/util/Size;
    .param p3, "maxSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Size;",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    .line 147
    .local p1, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 149
    .local v0, "formatResolutions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 150
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 152
    .local v1, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    if-eqz v1, :cond_1

    .line 153
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 154
    .local v3, "format":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 155
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v4

    move-object p2, v4

    check-cast p2, Landroid/util/Size;

    .line 156
    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v4

    move-object p3, v4

    check-cast p3, Landroid/util/Size;

    .line 159
    move-object v4, p2

    .line 160
    .local v4, "finalMinSize":Landroid/util/Size;
    move-object v5, p3

    .line 161
    .local v5, "finalMaxSize":Landroid/util/Size;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender$$ExternalSyntheticLambda2;

    invoke-direct {v7, v4}, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender$$ExternalSyntheticLambda2;-><init>(Landroid/util/Size;)V

    .line 162
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender$$ExternalSyntheticLambda3;

    invoke-direct {v7, v5}, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender$$ExternalSyntheticLambda3;-><init>(Landroid/util/Size;)V

    .line 164
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    .line 166
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 161
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .end local v3    # "format":Ljava/lang/Integer;
    .end local v4    # "finalMinSize":Landroid/util/Size;
    .end local v5    # "finalMaxSize":Landroid/util/Size;
    :cond_0
    goto :goto_0

    .line 171
    :cond_1
    return-object v0
.end method

.method public getAvailableCaptureRequestKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;->mExtensionMetadata:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableCaptureResultKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;->mExtensionMetadata:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;->getAvailableCaptureResultKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableCharacteristicsKeyValues()Ljava/util/List;
    .locals 1
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

    .line 134
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;->mExtensionMetadata:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;->getAvailableCharacteristicsKeyValues()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEstimatedCaptureLatencyRange(Ljava/lang/String;Landroid/util/Size;I)Landroid/util/Range;
    .locals 1
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "captureOutputSize"    # Landroid/util/Size;
    .param p3, "imageFormat"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Size;",
            "I)",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getSupportedCaptureOutputResolutions(Ljava/lang/String;)Ljava/util/Map;
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
.end method

.method public getSupportedPostviewResolutions(Landroid/util/Size;)Ljava/util/Map;
    .locals 1
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

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public abstract getSupportedPreviewOutputResolutions(Ljava/lang/String;)Ljava/util/Map;
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
.end method

.method public abstract getSupportedYuvAnalysisResolutions(Ljava/lang/String;)Ljava/util/List;
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

    .line 69
    .local p2, "characteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;->mCameraId:Ljava/lang/String;

    .line 70
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 71
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;->mExtensionMetadata:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseAdvancedExtender;->TAG:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public isCaptureProcessProgressAvailable()Z
    .locals 1

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isExtensionAvailable(Ljava/lang/String;Ljava/util/Map;)Z
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
.end method

.method public isPostviewAvailable()Z
    .locals 1

    .line 128
    const/4 v0, 0x0

    return v0
.end method
