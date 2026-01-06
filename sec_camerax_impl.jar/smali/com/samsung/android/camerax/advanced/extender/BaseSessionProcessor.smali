.class public abstract Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;
.super Ljava/lang/Object;
.source "BaseSessionProcessor.java"

# interfaces
.implements Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;
    }
.end annotation


# static fields
.field protected static final DEFAULT_CAPTURE_STAGE_ID:I = 0x0

.field protected static final DEFAULT_POSTVIEW_STAGE_ID:I = 0xc8

.field protected static final DEFAULT_PREVIEW_STAGE_ID:I = 0x64

.field private static final EXECUTOR_TIMEOUT:J = 0x1L

.field private static final HAL_DATASPACE_JPEG_R:I = 0x1005

.field private static final HAL_DATASPACE_RANGE_SHIFT:I = 0x1b

.field private static final HAL_DATASPACE_STANDARD_SHIFT:I = 0x10

.field private static final HAL_DATASPACE_TRANSFER_SHIFT:I = 0x16

.field private static final HAL_DATASPACE_UNKNOWN:I = 0x0

.field private static final HAL_DATASPACE_V0_JFIF:I = 0x8c20000

.field private static final HAL_PIXEL_FORMAT_BLOB:I = 0x21

.field protected static final SUBMIT_ERROR:I = -0x1


# instance fields
.field protected final CAPTURE_PROCESS_MAX_IMAGES:I

.field protected final PREVIEW_PROCESS_MAX_IMAGES:I

.field protected final TAG:Ljava/lang/String;

.field protected mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

.field protected mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field protected mCameraId:Ljava/lang/String;

.field protected mCaptureExecutor:Ljava/util/concurrent/ExecutorService;

.field protected mCaptureImageCallback:Lcom/samsung/android/camerax/advanced/extender/ImageCallback;

.field protected mCaptureOutputConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;",
            "Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;",
            ">;"
        }
    .end annotation
.end field

.field protected mCaptureOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

.field protected mCaptureProcessingEnabled:Z

.field private final mCaptureSerializeLock:Ljava/lang/Object;

.field private mCaptureWriter:Landroid/media/ImageWriter;

.field protected mExtensionClient:Lcom/samsung/android/camerax/advanced/api/IExtensionClient;

.field private final mExtensionId:I

.field protected mExtensionMetadata:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

.field protected final mInterfaceLock:Ljava/lang/Object;

.field protected mLatestPreviewResult:Landroid/hardware/camera2/TotalCaptureResult;

.field protected mParameters:Ljava/util/Map;
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

.field protected final mPostviewSerializeLock:Ljava/lang/Object;

.field protected mPostviewSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

.field protected mPostviewWriter:Landroid/media/ImageWriter;

.field protected mPreviewCallbackOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

.field protected mPreviewExecutor:Ljava/util/concurrent/ExecutorService;

.field protected mPreviewImageCallback:Lcom/samsung/android/camerax/advanced/extender/ImageCallback;

.field protected mPreviewOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

.field protected mPreviewOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

.field protected mPreviewProcessingEnabled:Z

.field private final mPreviewSerializeLock:Ljava/lang/Object;

.field private mPreviewWriter:Landroid/media/ImageWriter;

.field protected mRequestProcessor:Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl;

.field protected mSequenceId:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mSequenceIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/camerax/advanced/extender/RequestCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSequenceIdMapLock:Ljava/lang/Object;

.field private mSessionStarted:Z

.field protected mVendorId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "extensionMetadata"    # Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;
    .param p3, "extensionProperty"    # Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mInterfaceLock:Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mParameters:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mSequenceId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mSequenceIdMap:Ljava/util/Map;

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mSequenceIdMapLock:Ljava/lang/Object;

    .line 155
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewSerializeLock:Ljava/lang/Object;

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureSerializeLock:Ljava/lang/Object;

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPostviewWriter:Landroid/media/ImageWriter;

    .line 163
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPostviewSerializeLock:Ljava/lang/Object;

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-Proc"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    .line 183
    invoke-virtual {p3}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->getExtensionId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionId:I

    .line 184
    iput-object p2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionMetadata:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

    .line 186
    invoke-virtual {p3}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->getMaxPreviewCount()I

    move-result v0

    if-gt v0, v1, :cond_2

    .line 190
    invoke-virtual {p3}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->getMaxPreviewCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->PREVIEW_PROCESS_MAX_IMAGES:I

    .line 191
    invoke-virtual {p3}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;->getMaxCaptureCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->CAPTURE_PROCESS_MAX_IMAGES:I

    .line 193
    iget v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->PREVIEW_PROCESS_MAX_IMAGES:I

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewProcessingEnabled:Z

    .line 194
    iget v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->CAPTURE_PROCESS_MAX_IMAGES:I

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureProcessingEnabled:Z

    .line 195
    return-void

    .line 187
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multi capture preview processing is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private applySessionParameterLocked(Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;)V
    .locals 5
    .param p1, "sessionConfigBuilder"    # Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;

    .line 993
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionClient:Lcom/samsung/android/camerax/advanced/api/IExtensionClient;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Lcom/samsung/android/camerax/advanced/api/IExtensionClient;)V

    .line 995
    .local v0, "requestBuilder":Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->addSessionParameterLocked(Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;)V

    .line 997
    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->build()Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;->getParameters()Ljava/util/Map;

    move-result-object v1

    .line 999
    .local v1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/camera2/CaptureRequest$Key<*>;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 1000
    .local v3, "key":Landroid/hardware/camera2/CaptureRequest$Key;
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->addSessionParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;

    .line 1001
    .end local v3    # "key":Landroid/hardware/camera2/CaptureRequest$Key;
    goto :goto_0

    .line 1002
    :cond_0
    return-void
.end method

.method private applyTriggerParameterLocked(Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;Ljava/util/Map;)V
    .locals 5
    .param p1, "builder"    # Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 930
    .local p2, "triggers":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/camera2/CaptureRequest$Key<*>;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionMetadata:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

    .line 931
    invoke-virtual {v1}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 933
    .local v0, "supportedCaptureRequestKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CaptureRequest$Key;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 934
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/camera2/CaptureRequest$Key<*>;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 935
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 937
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/camera2/CaptureRequest$Key<*>;Ljava/lang/Object;>;"
    :cond_0
    goto :goto_0

    .line 938
    :cond_1
    return-void
.end method

.method protected static imageFormatToPublic(Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;)I
    .locals 4
    .param p0, "surfaceImpl"    # Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    .line 830
    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getImageFormat()I

    move-result v0

    .line 831
    .local v0, "format":I
    invoke-interface {p0}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 832
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 834
    .local v1, "dataSpace":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Surface format = 0x%x, dataspace = 0x%x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cx/BaseSP"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    packed-switch v0, :pswitch_data_0

    .line 841
    return v0

    .line 838
    :pswitch_0
    const/16 v2, 0x1005

    if-ne v1, v2, :cond_0

    return v2

    .line 839
    :cond_0
    const/16 v2, 0x100

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch
.end method

.method private initSessionImpl(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;
    .locals 18
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "previewSurfaceConfig"    # Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .param p5, "imageCaptureSurfaceConfig"    # Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .param p6, "imageAnalysisSurfaceConfig"    # Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .param p7, "postviewSurfaceConfig"    # Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;",
            "Landroid/content/Context;",
            "Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;",
            "Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;",
            "Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;",
            "Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;",
            ")",
            "Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;"
        }
    .end annotation

    .line 227
    .local p2, "cameraCharacteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 228
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initSession, id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", preview = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 229
    invoke-interface/range {p4 .. p4}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", capture = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 230
    invoke-interface/range {p5 .. p5}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", analysis = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 231
    invoke-static/range {p6 .. p6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda12;

    invoke-direct {v6}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    .line 232
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", postview = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 233
    invoke-static/range {p7 .. p7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v7, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda12;

    invoke-direct {v7}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v5, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    .line 234
    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 228
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iput-object v2, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCameraId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 236
    move-object/from16 v4, p2

    :try_start_1
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraCharacteristics;

    iput-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 237
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/PlatformApi;->getVendorId(Landroid/hardware/camera2/CameraCharacteristics;)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mVendorId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 238
    move-object/from16 v5, p4

    :try_start_2
    iput-object v5, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 239
    move-object/from16 v7, p5

    :try_start_3
    iput-object v7, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 240
    move-object/from16 v8, p7

    :try_start_4
    iput-object v8, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPostviewSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    .line 242
    new-instance v9, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;

    .line 244
    iget-boolean v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewProcessingEnabled:Z

    if-eqz v0, :cond_0

    invoke-interface {v5}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v6

    :cond_0
    move-object v10, v6

    .line 245
    invoke-interface {v5}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSize()Landroid/util/Size;

    move-result-object v11

    .line 246
    invoke-static {v5}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->imageFormatToPublic(Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;)I

    move-result v12

    .line 248
    invoke-interface {v7}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v13

    invoke-interface {v7}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSize()Landroid/util/Size;

    move-result-object v14

    .line 249
    invoke-static {v7}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->imageFormatToPublic(Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;)I

    move-result v15

    iget v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionId:I

    iget-object v6, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCameraId:Ljava/lang/String;

    move/from16 v16, v0

    move-object/from16 v17, v6

    invoke-direct/range {v9 .. v17}, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;-><init>(Landroid/view/Surface;Landroid/util/Size;ILandroid/view/Surface;Landroid/util/Size;IILjava/lang/String;)V

    .line 252
    .local v9, "configuration":Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    invoke-virtual {v9}, Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {v1}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->startExecutorLocked()V

    .line 256
    invoke-static {}, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->getInstance()Lcom/samsung/android/camerax/advanced/ServiceInitializer;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->initializeClient(Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;)Lcom/samsung/android/camerax/advanced/api/IExtensionClient;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionClient:Lcom/samsung/android/camerax/advanced/api/IExtensionClient;

    .line 257
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionClient:Lcom/samsung/android/camerax/advanced/api/IExtensionClient;

    if-nez v0, :cond_1

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewProcessingEnabled:Z

    .line 260
    iput-boolean v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureProcessingEnabled:Z

    .line 263
    :cond_1
    new-instance v0, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;

    invoke-direct {v0}, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;-><init>()V

    .line 264
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->setSessionTemplateId(I)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;

    move-result-object v0

    .line 267
    .local v0, "sessionConfigBuilder":Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;
    invoke-virtual {v1, v0}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->preparePreviewConfiguration(Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;)V

    .line 268
    invoke-virtual {v1, v0}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->prepareCaptureConfiguration(Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;)V

    .line 269
    invoke-virtual {v1, v0}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->preparePostviewConfiguration(Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 270
    move-object/from16 v6, p6

    :try_start_5
    invoke-virtual {v1, v6, v0}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->prepareImageAnalysisConfiguration(Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;)V

    .line 272
    invoke-direct {v1, v0}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->applySessionParameterLocked(Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;)V

    .line 274
    new-instance v10, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;

    invoke-direct {v10}, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;-><init>()V

    iput-object v10, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewImageCallback:Lcom/samsung/android/camerax/advanced/extender/ImageCallback;

    .line 275
    new-instance v10, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;

    invoke-direct {v10}, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;-><init>()V

    iput-object v10, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureImageCallback:Lcom/samsung/android/camerax/advanced/extender/ImageCallback;

    .line 277
    invoke-virtual {v0}, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->build()Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;

    move-result-object v10

    monitor-exit v3

    return-object v10

    .line 278
    .end local v0    # "sessionConfigBuilder":Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;
    .end local v9    # "configuration":Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;
    :catchall_0
    move-exception v0

    move-object/from16 v6, p6

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_1

    :catchall_3
    move-exception v0

    goto :goto_0

    :catchall_4
    move-exception v0

    move-object/from16 v4, p2

    :goto_0
    move-object/from16 v5, p4

    :goto_1
    move-object/from16 v7, p5

    :goto_2
    move-object/from16 v6, p6

    move-object/from16 v8, p7

    :goto_3
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_3
.end method

.method static synthetic lambda$addCaptureRequestsLocked$11(ZLcom/samsung/android/camerax/advanced/extender/RequestBuilder;Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)V
    .locals 1
    .param p0, "postviewRequested"    # Z
    .param p1, "builder"    # Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    .param p2, "config"    # Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    .line 955
    if-eqz p0, :cond_0

    .line 956
    invoke-interface {p2}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->addTargetOutputConfigIds(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 958
    :cond_0
    return-void
.end method

.method static synthetic lambda$prepareCaptureConfiguration$3(Landroid/hardware/camera2/params/StreamConfigurationMap;)[Landroid/util/Size;
    .locals 1
    .param p0, "map"    # Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 371
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$prepareCaptureConfiguration$4(Landroid/util/Size;)Ljava/lang/Integer;
    .locals 2
    .param p0, "size"    # Landroid/util/Size;

    .line 373
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$prepareCaptureConfiguration$5(Landroid/media/ImageReader;)V
    .locals 1
    .param p0, "reader"    # Landroid/media/ImageReader;

    .line 383
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 385
    .local v0, "ignored":Landroid/media/Image;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 386
    .end local v0    # "ignored":Landroid/media/Image;
    :cond_0
    return-void
.end method

.method static synthetic lambda$prepareImageAnalysisConfiguration$6(Landroid/hardware/camera2/params/StreamConfigurationMap;)[Landroid/util/Size;
    .locals 1
    .param p0, "map"    # Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 433
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$prepareImageAnalysisConfiguration$7(Landroid/util/Size;)Z
    .locals 2
    .param p0, "size"    # Landroid/util/Size;

    .line 435
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    const/16 v1, 0x780

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/16 v1, 0x438

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$prepareImageAnalysisConfiguration$8(Landroid/util/Size;)Ljava/lang/Integer;
    .locals 2
    .param p0, "size"    # Landroid/util/Size;

    .line 436
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$prepareImageAnalysisConfiguration$9(Landroid/media/ImageReader;)V
    .locals 1
    .param p0, "reader"    # Landroid/media/ImageReader;

    .line 446
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 448
    .local v0, "ignored":Landroid/media/Image;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 449
    .end local v0    # "ignored":Landroid/media/Image;
    :cond_0
    return-void
.end method

.method static synthetic lambda$preparePreviewConfiguration$0(Landroid/hardware/camera2/params/StreamConfigurationMap;)[Landroid/util/Size;
    .locals 1
    .param p0, "map"    # Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 316
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$preparePreviewConfiguration$1(Landroid/util/Size;)Z
    .locals 2
    .param p0, "size"    # Landroid/util/Size;

    .line 318
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    const/16 v1, 0x780

    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    const/16 v1, 0x438

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$preparePreviewConfiguration$2(Landroid/util/Size;)Ljava/lang/Integer;
    .locals 2
    .param p0, "size"    # Landroid/util/Size;

    .line 319
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$startCaptureInternal$10(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;)Z
    .locals 2
    .param p0, "request"    # Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;

    .line 875
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder$RequestProcessorRequest;

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder$RequestProcessorRequest;->getCaptureStageId()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private prepareCaptureLocked(Lcom/samsung/android/camerax/advanced/api/IExtensionClient;Landroid/hardware/camera2/CaptureRequest;JLcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;)V
    .locals 6
    .param p1, "extensionClient"    # Lcom/samsung/android/camerax/advanced/api/IExtensionClient;
    .param p2, "captureRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "captureStartTimestamp"    # J
    .param p5, "callback"    # Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;
    .param p6, "extensionTotalCaptureResult"    # Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1155
    new-instance v5, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$3;

    invoke-direct {v5, p0, p5}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$3;-><init>(Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)V

    move-object v0, p1

    move-object v1, p2

    move-wide v3, p3

    move-object v2, p6

    .end local p1    # "extensionClient":Lcom/samsung/android/camerax/advanced/api/IExtensionClient;
    .end local p2    # "captureRequest":Landroid/hardware/camera2/CaptureRequest;
    .end local p3    # "captureStartTimestamp":J
    .end local p6    # "extensionTotalCaptureResult":Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;
    .local v0, "extensionClient":Lcom/samsung/android/camerax/advanced/api/IExtensionClient;
    .local v1, "captureRequest":Landroid/hardware/camera2/CaptureRequest;
    .local v2, "extensionTotalCaptureResult":Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;
    .local v3, "captureStartTimestamp":J
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/camerax/advanced/api/IExtensionClient;->prepareCapture(Landroid/hardware/camera2/CaptureRequest;Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;JLcom/samsung/android/camerax/advanced/api/IExtensionClientCallback;)V

    .line 1192
    return-void
.end method

.method private preparePreviewLocked(Lcom/samsung/android/camerax/advanced/api/IExtensionClient;Landroid/hardware/camera2/CaptureRequest;Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;)V
    .locals 1
    .param p1, "extensionClient"    # Lcom/samsung/android/camerax/advanced/api/IExtensionClient;
    .param p2, "captureRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "callback"    # Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1121
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$2;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$2;-><init>(Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;)V

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/camerax/advanced/api/IExtensionClient;->preparePreview(Landroid/hardware/camera2/CaptureRequest;Lcom/samsung/android/camerax/advanced/api/IExtensionClientCallback;)V

    .line 1149
    return-void
.end method

.method private startExecutorLocked()V
    .locals 9

    .line 846
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/samsung/android/camerax/advanced/util/NumberingThreadFactory;

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    invoke-direct {v7, v1}, Lcom/samsung/android/camerax/advanced/util/NumberingThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 849
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;

    const v1, 0x7fffffff

    const-string v2, "Capture"

    const-wide/16 v3, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;-><init>(Ljava/lang/String;JI)V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureExecutor:Ljava/util/concurrent/ExecutorService;

    .line 851
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;

    const-string v1, "Preview"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;-><init>(Ljava/lang/String;JI)V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewExecutor:Ljava/util/concurrent/ExecutorService;

    .line 853
    return-void
.end method

.method private stopExecutorLocked()V
    .locals 2

    .line 856
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 857
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureExecutor:Ljava/util/concurrent/ExecutorService;

    .line 859
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 860
    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewExecutor:Ljava/util/concurrent/ExecutorService;

    .line 862
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 863
    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 864
    return-void
.end method


# virtual methods
.method public abortCapture(I)V
    .locals 0
    .param p1, "captureSequenceId"    # I

    .line 801
    return-void
.end method

.method protected addCaptureRequestsLocked(Landroid/hardware/camera2/TotalCaptureResult;Ljava/util/List;Z)V
    .locals 3
    .param p1, "latestResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p3, "postviewRequested"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            "Ljava/util/List<",
            "Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;",
            ">;Z)V"
        }
    .end annotation

    .line 948
    .local p2, "requestList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;>;"
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionClient:Lcom/samsung/android/camerax/advanced/api/IExtensionClient;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Lcom/samsung/android/camerax/advanced/api/IExtensionClient;)V

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->YUV:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    .line 950
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-interface {v1}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->addTargetOutputConfigIds(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    .line 951
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setTemplateId(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    .line 952
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setCaptureStageId(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    .line 954
    .local v0, "builder":Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->POSTVIEW:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda14;

    invoke-direct {v2, p3, v0}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda14;-><init>(ZLcom/samsung/android/camerax/advanced/extender/RequestBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 960
    invoke-virtual {p0, v0}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->applyParameterLocked(Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;)V

    .line 961
    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->build()Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 962
    return-void
.end method

.method protected addSessionParameterLocked(Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;)V
    .locals 0
    .param p1, "builder"    # Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 1006
    return-void
.end method

.method protected applyParameterLocked(Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;)V
    .locals 5
    .param p1, "builder"    # Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 913
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionMetadata:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

    .line 914
    invoke-virtual {v1}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 916
    .local v0, "supportedCaptureRequestKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CaptureRequest$Key;>;"
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mParameters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 917
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/camera2/CaptureRequest$Key<*>;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 918
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 920
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/camera2/CaptureRequest$Key<*>;Ljava/lang/Object;>;"
    :cond_0
    goto :goto_0

    .line 921
    :cond_1
    return-void
.end method

.method protected abstract applyRepeatingRequestParameterLocked(Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;)V
.end method

.method protected captureSequenceCompleted(I)V
    .locals 3
    .param p1, "sequenceId"    # I

    .line 972
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mSequenceIdMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 973
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mSequenceIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    monitor-exit v0

    .line 975
    return-void

    .line 974
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deInitSession()V
    .locals 7

    .line 470
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 471
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v2, "deInitSession"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-direct {p0}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->stopExecutorLocked()V

    .line 475
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewSerializeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 476
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureSerializeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 477
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewImageCallback:Lcom/samsung/android/camerax/advanced/extender/ImageCallback;

    invoke-virtual {v3}, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->close()V

    .line 478
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewImageCallback:Lcom/samsung/android/camerax/advanced/extender/ImageCallback;

    .line 479
    iget-object v4, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureImageCallback:Lcom/samsung/android/camerax/advanced/extender/ImageCallback;

    invoke-virtual {v4}, Lcom/samsung/android/camerax/advanced/extender/ImageCallback;->close()V

    .line 480
    iput-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureImageCallback:Lcom/samsung/android/camerax/advanced/extender/ImageCallback;

    .line 483
    iget-boolean v4, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mSessionStarted:Z

    if-eqz v4, :cond_0

    .line 484
    iget-object v4, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v5, "session end is missing from framework. invoke instead."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->onCaptureSessionEnd()V

    .line 487
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionClient:Lcom/samsung/android/camerax/advanced/api/IExtensionClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_1

    .line 489
    :try_start_3
    iget-object v4, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionClient:Lcom/samsung/android/camerax/advanced/api/IExtensionClient;

    invoke-interface {v4}, Lcom/samsung/android/camerax/advanced/api/IExtensionClient;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 492
    goto :goto_0

    .line 490
    :catch_0
    move-exception v4

    .line 491
    .local v4, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v5, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v6, "failed to close extension client"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    iput-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionClient:Lcom/samsung/android/camerax/advanced/api/IExtensionClient;

    .line 496
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    instance-of v4, v4, Ljava/lang/AutoCloseable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_2

    .line 498
    :try_start_5
    iget-object v4, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    check-cast v4, Ljava/lang/AutoCloseable;

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 501
    goto :goto_1

    .line 499
    :catch_1
    move-exception v4

    .line 503
    :cond_2
    :goto_1
    :try_start_6
    iput-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    .line 505
    iget-object v4, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewCallbackOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    instance-of v4, v4, Ljava/lang/AutoCloseable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_3

    .line 507
    :try_start_7
    iget-object v4, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewCallbackOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    check-cast v4, Ljava/lang/AutoCloseable;

    invoke-interface {v4}, Ljava/lang/AutoCloseable;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 510
    goto :goto_2

    .line 508
    :catch_2
    move-exception v4

    .line 512
    :cond_3
    :goto_2
    :try_start_8
    iput-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewCallbackOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    .line 514
    iget-object v4, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    .line 515
    .local v5, "output":Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;
    instance-of v6, v5, Ljava/lang/AutoCloseable;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v6, :cond_4

    .line 517
    :try_start_9
    move-object v6, v5

    check-cast v6, Ljava/lang/AutoCloseable;

    invoke-interface {v6}, Ljava/lang/AutoCloseable;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 520
    goto :goto_4

    .line 518
    :catch_3
    move-exception v6

    .line 522
    .end local v5    # "output":Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;
    :cond_4
    :goto_4
    goto :goto_3

    .line 523
    :cond_5
    :try_start_a
    iget-object v4, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 525
    iget-object v4, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mParameters:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 526
    iput-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    .line 527
    iput-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    .line 528
    iput-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPostviewSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    .line 529
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 530
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 531
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 532
    return-void

    .line 529
    :catchall_0
    move-exception v3

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;
    :try_start_e
    throw v3

    .line 530
    .restart local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;
    :try_start_f
    throw v2

    .line 531
    .restart local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    throw v1
.end method

.method public getRealtimeCaptureLatency()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 807
    const/4 v0, 0x0

    return-object v0
.end method

.method public initSession(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Landroidx/camera/extensions/impl/advanced/OutputSurfaceConfigurationImpl;)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;
    .locals 8
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "surfaceConfigs"    # Landroidx/camera/extensions/impl/advanced/OutputSurfaceConfigurationImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;",
            "Landroid/content/Context;",
            "Landroidx/camera/extensions/impl/advanced/OutputSurfaceConfigurationImpl;",
            ")",
            "Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;"
        }
    .end annotation

    .line 202
    .local p2, "cameraCharacteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    nop

    .line 203
    invoke-interface {p4}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceConfigurationImpl;->getPreviewOutputSurface()Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    move-result-object v4

    .line 204
    invoke-interface {p4}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceConfigurationImpl;->getImageCaptureOutputSurface()Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    move-result-object v5

    .line 205
    invoke-interface {p4}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceConfigurationImpl;->getImageAnalysisOutputSurface()Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    move-result-object v6

    .line 206
    invoke-interface {p4}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceConfigurationImpl;->getPostviewOutputSurface()Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    move-result-object v7

    .line 202
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "cameraCharacteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .end local p3    # "context":Landroid/content/Context;
    .local v1, "cameraId":Ljava/lang/String;
    .local v2, "cameraCharacteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .local v3, "context":Landroid/content/Context;
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->initSessionImpl(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;

    move-result-object p1

    return-object p1
.end method

.method public initSession(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;
    .locals 8
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "previewSurfaceConfig"    # Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .param p5, "imageCaptureSurfaceConfig"    # Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .param p6, "imageAnalysisSurfaceConfig"    # Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;",
            "Landroid/content/Context;",
            "Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;",
            "Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;",
            "Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;",
            ")",
            "Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;"
        }
    .end annotation

    .line 216
    .local p2, "cameraCharacteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "cameraId":Ljava/lang/String;
    .end local p2    # "cameraCharacteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .end local p3    # "context":Landroid/content/Context;
    .end local p4    # "previewSurfaceConfig":Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .end local p5    # "imageCaptureSurfaceConfig":Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .end local p6    # "imageAnalysisSurfaceConfig":Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .local v1, "cameraId":Ljava/lang/String;
    .local v2, "cameraCharacteristicsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;>;"
    .local v3, "context":Landroid/content/Context;
    .local v4, "previewSurfaceConfig":Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .local v5, "imageCaptureSurfaceConfig":Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .local v6, "imageAnalysisSurfaceConfig":Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->initSessionImpl(Ljava/lang/String;Ljava/util/Map;Landroid/content/Context;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImpl;

    move-result-object p1

    return-object p1
.end method

.method public onCaptureSessionEnd()V
    .locals 4

    .line 705
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 706
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureSessionEnd"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mRequestProcessor:Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl;

    .line 708
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mSessionStarted:Z

    .line 710
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewSerializeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 711
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewWriter:Landroid/media/ImageWriter;

    if-eqz v3, :cond_0

    .line 712
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewWriter:Landroid/media/ImageWriter;

    invoke-virtual {v3}, Landroid/media/ImageWriter;->close()V

    .line 713
    iput-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewWriter:Landroid/media/ImageWriter;

    .line 715
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 716
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureSerializeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 717
    :try_start_3
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureWriter:Landroid/media/ImageWriter;

    if-eqz v3, :cond_1

    .line 718
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureWriter:Landroid/media/ImageWriter;

    invoke-virtual {v3}, Landroid/media/ImageWriter;->close()V

    .line 719
    iput-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureWriter:Landroid/media/ImageWriter;

    .line 721
    :cond_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 722
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPostviewSerializeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 723
    :try_start_5
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPostviewWriter:Landroid/media/ImageWriter;

    if-eqz v3, :cond_2

    .line 724
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPostviewWriter:Landroid/media/ImageWriter;

    invoke-virtual {v3}, Landroid/media/ImageWriter;->close()V

    .line 725
    iput-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPostviewWriter:Landroid/media/ImageWriter;

    .line 727
    :cond_2
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 728
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 729
    return-void

    .line 727
    :catchall_0
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 721
    .restart local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;
    :catchall_1
    move-exception v1

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 715
    .restart local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;
    :catchall_2
    move-exception v1

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;
    :try_start_c
    throw v1

    .line 728
    .restart local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;
    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v1
.end method

.method public onCaptureSessionStart(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl;)V
    .locals 7
    .param p1, "requestProcessor"    # Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl;

    .line 598
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 599
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v2, "onCaptureSessionStart"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mRequestProcessor:Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl;

    .line 602
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    invoke-interface {v1}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewProcessingEnabled:Z

    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    invoke-interface {v1}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewWriter:Landroid/media/ImageWriter;

    .line 606
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    invoke-interface {v1}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-nez v1, :cond_1

    .line 608
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start internal repeating for shot condition, preview surface = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    .line 609
    invoke-interface {v4}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", preview processing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewProcessingEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", capture processing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureProcessingEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 608
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    new-instance v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$1;-><init>(Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->startRepeating(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)I

    .line 652
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    invoke-interface {v1}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v1

    const/16 v3, 0x100

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureProcessingEnabled:Z

    if-eqz v1, :cond_4

    .line 653
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    invoke-static {v1}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->imageFormatToPublic(Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;)I

    move-result v1

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    .line 654
    invoke-static {v1}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->imageFormatToPublic(Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;)I

    move-result v1

    const/16 v4, 0x1005

    if-ne v1, v4, :cond_2

    goto :goto_0

    .line 664
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    invoke-interface {v1}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureWriter:Landroid/media/ImageWriter;

    goto :goto_1

    .line 657
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    invoke-interface {v1}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSize()Landroid/util/Size;

    move-result-object v1

    .line 658
    .local v1, "jpegSize":Landroid/util/Size;
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    .line 661
    .local v4, "jpegCapacity":I
    iget-object v5, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    invoke-interface {v5}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-static {v5, v2, v3, v4, v2}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;IIII)Landroid/media/ImageWriter;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureWriter:Landroid/media/ImageWriter;

    .line 663
    .end local v1    # "jpegSize":Landroid/util/Size;
    .end local v4    # "jpegCapacity":I
    nop

    .line 668
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPostviewSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPostviewSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    invoke-interface {v1}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 670
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPostviewSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    invoke-static {v1}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->imageFormatToPublic(Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;)I

    move-result v1

    if-ne v1, v3, :cond_5

    .line 673
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPostviewSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    invoke-interface {v1}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSize()Landroid/util/Size;

    move-result-object v1

    .line 674
    .restart local v1    # "jpegSize":Landroid/util/Size;
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    .line 675
    .restart local v4    # "jpegCapacity":I
    iget-object v5, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPostviewSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    invoke-interface {v5}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-static {v5, v2, v3, v4, v2}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;IIII)Landroid/media/ImageWriter;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPostviewWriter:Landroid/media/ImageWriter;

    .line 677
    .end local v1    # "jpegSize":Landroid/util/Size;
    .end local v4    # "jpegCapacity":I
    goto :goto_2

    .line 678
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPostviewSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    invoke-interface {v1}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPostviewWriter:Landroid/media/ImageWriter;

    .line 682
    :cond_6
    :goto_2
    iget-boolean v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewProcessingEnabled:Z

    if-eqz v1, :cond_7

    .line 683
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mRequestProcessor:Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl;

    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-interface {v3}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewImageCallback:Lcom/samsung/android/camerax/advanced/extender/ImageCallback;

    invoke-interface {v1, v3, v4}, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl;->setImageProcessor(ILandroidx/camera/extensions/impl/advanced/ImageProcessorImpl;)V

    .line 687
    :cond_7
    iget-boolean v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureProcessingEnabled:Z

    if-eqz v1, :cond_9

    .line 688
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mRequestProcessor:Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl;

    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    sget-object v4, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->YUV:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    .line 689
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-interface {v3}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureImageCallback:Lcom/samsung/android/camerax/advanced/extender/ImageCallback;

    .line 688
    invoke-interface {v1, v3, v4}, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl;->setImageProcessor(ILandroidx/camera/extensions/impl/advanced/ImageProcessorImpl;)V

    .line 691
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    .line 692
    .local v3, "config":Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;
    instance-of v4, v3, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;

    if-eqz v4, :cond_8

    .line 693
    move-object v4, v3

    check-cast v4, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;

    iget-object v5, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureImageCallback:Lcom/samsung/android/camerax/advanced/extender/ImageCallback;

    iget-object v6, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->setImageProcessor(Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;Ljava/util/concurrent/Executor;)V

    .line 696
    .end local v3    # "config":Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;
    :cond_8
    goto :goto_3

    .line 699
    :cond_9
    iput-boolean v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mSessionStarted:Z

    .line 700
    monitor-exit v0

    .line 701
    return-void

    .line 700
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected prepareCaptureConfiguration(Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;)V
    .locals 7
    .param p1, "sessionConfigBuilder"    # Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;

    .line 342
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareCaptureConfiguration, surface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    invoke-interface {v2}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    .line 343
    invoke-interface {v2}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", format = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    .line 344
    invoke-interface {v2}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getImageFormat()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v0

    const/16 v1, 0x23

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 350
    iget-boolean v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureProcessingEnabled:Z

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    .line 352
    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSize()Landroid/util/Size;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->CAPTURE_PROCESS_MAX_IMAGES:I

    .line 351
    invoke-static {v0, v1, v3}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->newImageReaderConfig(Landroid/util/Size;II)Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;

    move-result-object v0

    .local v0, "outputConfigBuilder":Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
    goto :goto_0

    .line 355
    .end local v0    # "outputConfigBuilder":Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    .line 356
    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 355
    invoke-static {v0}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->newSurfaceConfig(Landroid/view/Surface;)Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;

    move-result-object v0

    .line 359
    .restart local v0    # "outputConfigBuilder":Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
    :goto_0
    invoke-static {v0, v2}, Lcom/samsung/android/camerax/advanced/extender/internal/Quirks;->applyStreamOption(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;I)Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;

    .line 360
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->YUV:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    invoke-virtual {v0}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->build()Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capture output config id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    sget-object v4, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->YUV:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    .line 362
    invoke-interface {v3}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->YUV:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-virtual {p1, v1}, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->addOutputConfig(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;

    .line 364
    .end local v0    # "outputConfigBuilder":Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
    goto/16 :goto_1

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v3, "no capture output surface, disable capture processing"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda15;

    invoke-direct {v3}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda15;-><init>()V

    .line 371
    invoke-virtual {v0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/util/Size;

    new-instance v4, Landroid/util/Size;

    const/16 v5, 0x780

    const/16 v6, 0x438

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 372
    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Size;

    .line 369
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda16;

    invoke-direct {v3}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda16;-><init>()V

    .line 373
    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 375
    .local v0, "captureSize":Landroid/util/Size;
    invoke-static {v0, v1, v2}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->newImageReaderConfig(Landroid/util/Size;II)Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;

    move-result-object v1

    .line 377
    .local v1, "builder":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;
    invoke-virtual {v1, v2}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->setStreamOption(I)V

    .line 378
    nop

    .line 379
    invoke-virtual {v1}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->build()Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;

    .line 381
    .local v2, "outputConfig":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;
    new-instance v3, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda17;

    invoke-direct {v3}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda17;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;->setOnImageAvailableListenerWithExecutor(Landroid/media/ImageReader$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 388
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    sget-object v4, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->YUV:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-virtual {v2}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;->getOriginalConfig()Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->addOutputConfig(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;

    .line 391
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "internal capture output config id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;->getId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iput-boolean v5, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureProcessingEnabled:Z

    .line 395
    .end local v0    # "captureSize":Landroid/util/Size;
    .end local v1    # "builder":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;
    .end local v2    # "outputConfig":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;
    :goto_1
    return-void
.end method

.method protected prepareImageAnalysisConfiguration(Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;)V
    .locals 6
    .param p1, "imageAnalysisSurfaceConfig"    # Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;
    .param p2, "sessionConfigBuilder"    # Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;

    .line 407
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareImageAnalysisConfiguration, surface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 409
    invoke-interface {p1}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 410
    invoke-interface {p1}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", format = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 411
    invoke-interface {p1}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getImageFormat()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    nop

    .line 415
    invoke-interface {p1}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 414
    invoke-static {v1}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->newSurfaceConfig(Landroid/view/Surface;)Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;

    move-result-object v1

    .line 416
    .local v1, "outputConfigBuilder":Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
    invoke-static {v1, v0}, Lcom/samsung/android/camerax/advanced/extender/internal/Quirks;->applyStreamOption(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;I)Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;

    .line 418
    invoke-virtual {v1}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->build()Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewCallbackOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    .line 419
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewCallbackOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-virtual {p2, v0}, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->addOutputConfig(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;

    .line 421
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image analysis output config id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewCallbackOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-interface {v3}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .end local v1    # "outputConfigBuilder":Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v1, v0}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->isHardwareLevelSupported(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v2, "prepareImageAnalysisConfiguration, no image analysis output surface, use internal"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda8;

    invoke-direct {v2}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda8;-><init>()V

    .line 433
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-array v2, v0, [Landroid/util/Size;

    new-instance v3, Landroid/util/Size;

    const/16 v4, 0x780

    const/16 v5, 0x438

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 434
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Size;

    .line 431
    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda9;-><init>()V

    .line 435
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda10;-><init>()V

    .line 436
    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 438
    .local v1, "readerSize":Landroid/util/Size;
    const/16 v2, 0x23

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->newImageReaderConfig(Landroid/util/Size;II)Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;

    move-result-object v2

    .line 440
    .local v2, "builder":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;
    invoke-virtual {v2, v0}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->setStreamOption(I)V

    .line 441
    nop

    .line 442
    invoke-virtual {v2}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->build()Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;

    .line 444
    .local v0, "outputConfig":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;
    new-instance v3, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda11;

    invoke-direct {v3}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda11;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;->setOnImageAvailableListenerWithExecutor(Landroid/media/ImageReader$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 451
    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewCallbackOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    .line 452
    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;->getOriginalConfig()Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->addOutputConfig(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;

    .line 454
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "internal image analysis output config id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .end local v0    # "outputConfig":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;
    .end local v1    # "readerSize":Landroid/util/Size;
    .end local v2    # "builder":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;
    goto :goto_0

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v1, "prepareImageAnalysisConfiguration, no image analysis output, HW Level < FULL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewCallbackOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    .line 460
    :goto_0
    return-void
.end method

.method protected preparePostviewConfiguration(Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;)V
    .locals 2
    .param p1, "sessionConfigBuilder"    # Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;

    .line 465
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v1, "preparePostviewConfiguration, no post view output"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-void
.end method

.method protected preparePreviewConfiguration(Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;)V
    .locals 7
    .param p1, "sessionConfigBuilder"    # Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;

    .line 288
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preparePreviewConfiguration, surface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    invoke-interface {v2}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    .line 289
    invoke-interface {v2}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", format = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    .line 290
    invoke-interface {v2}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getImageFormat()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 296
    iget-boolean v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewProcessingEnabled:Z

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    .line 298
    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSize()Landroid/util/Size;

    move-result-object v0

    .line 297
    const/16 v2, 0x23

    const/16 v3, 0xa

    invoke-static {v0, v2, v3}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->newImageReaderConfig(Landroid/util/Size;II)Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;

    move-result-object v0

    .local v0, "outputConfigBuilder":Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
    goto :goto_0

    .line 301
    .end local v0    # "outputConfigBuilder":Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    .line 302
    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 301
    invoke-static {v0}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->newSurfaceConfig(Landroid/view/Surface;)Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;

    move-result-object v0

    .line 305
    .restart local v0    # "outputConfigBuilder":Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/internal/Quirks;->applyStreamOption(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;I)Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;

    .line 306
    invoke-virtual {v0}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;->build()Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    .line 308
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preview output config id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-interface {v3}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-virtual {p1, v1}, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->addOutputConfig(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;

    .line 310
    .end local v0    # "outputConfigBuilder":Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImplBuilder;
    goto/16 :goto_1

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v2, "no preview output surface, disable preview processing"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda5;-><init>()V

    .line 316
    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-array v2, v1, [Landroid/util/Size;

    new-instance v3, Landroid/util/Size;

    const/16 v4, 0x780

    const/16 v5, 0x438

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 317
    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Size;

    .line 314
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda6;-><init>()V

    .line 318
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda7;-><init>()V

    .line 319
    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 321
    .local v0, "previewSize":Landroid/util/Size;
    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->newSurfaceTextureConfig(Landroid/util/Size;)Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;

    move-result-object v2

    .line 323
    .local v2, "builder":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;
    invoke-virtual {v2, v1}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->setStreamOption(I)V

    .line 324
    invoke-virtual {v2}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->build()Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;

    move-result-object v1

    .line 326
    .local v1, "outputConfig":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;
    iput-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    .line 327
    invoke-virtual {v1}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;->getOriginalConfig()Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->addOutputConfig(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;

    .line 329
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "internal preview output config id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iput-boolean v4, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewProcessingEnabled:Z

    .line 333
    .end local v0    # "previewSize":Landroid/util/Size;
    .end local v1    # "outputConfig":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;
    .end local v2    # "builder":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;
    :goto_1
    return-void
.end method

.method protected processCapture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;JLjava/util/Map;Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)V
    .locals 15
    .param p1, "captureRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "latestResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p3, "captureStartTimestamp"    # J
    .param p6, "callback"    # Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;>;",
            "Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;",
            ")V"
        }
    .end annotation

    .line 1062
    .local p5, "captureResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/util/Pair<Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;>;>;"
    move-object/from16 v1, p2

    move-object/from16 v2, p5

    iget-object v10, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureSerializeLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1063
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v3, "processCapture"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    const/4 v11, 0x0

    .line 1066
    .local v11, "processStatus":Z
    const/4 v0, 0x0

    .line 1067
    .local v0, "extensionTotalCaptureResult":Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;
    if-eqz v1, :cond_0

    .line 1068
    new-instance v3, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;

    invoke-direct {v3, v1}, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;-><init>(Landroid/hardware/camera2/TotalCaptureResult;)V

    move-object v0, v3

    move-object v9, v0

    goto :goto_0

    .line 1067
    :cond_0
    move-object v9, v0

    .line 1071
    .end local v0    # "extensionTotalCaptureResult":Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;
    .local v9, "extensionTotalCaptureResult":Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionClient:Lcom/samsung/android/camerax/advanced/api/IExtensionClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_3

    .line 1074
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    move-object v12, v3

    .line 1075
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/util/Pair<Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;>;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    .line 1076
    iget-object v4, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionClient:Lcom/samsung/android/camerax/advanced/api/IExtensionClient;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v3, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p6

    :try_start_2
    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->prepareCaptureLocked(Lcom/samsung/android/camerax/advanced/api/IExtensionClient;Landroid/hardware/camera2/CaptureRequest;JLcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;)V

    goto :goto_2

    .line 1075
    :cond_1
    move-object/from16 v8, p6

    .line 1081
    :goto_2
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 1082
    .local v4, "imagePair":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;>;"
    new-instance v5, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;

    invoke-interface {v6}, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;->get()Landroid/media/Image;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;-><init>(Landroid/media/Image;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1083
    .local v5, "image":Lcom/samsung/android/camerax/advanced/api/ExtensionImage;
    :try_start_3
    iget-object v6, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionClient:Lcom/samsung/android/camerax/advanced/api/IExtensionClient;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v13, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;

    iget-object v14, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-direct {v13, v14}, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;-><init>(Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-interface {v6, v7, v5, v13}, Lcom/samsung/android/camerax/advanced/api/IExtensionClient;->processCaptureImage(ILcom/samsung/android/camerax/advanced/api/ExtensionImage;Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1085
    :try_start_4
    invoke-virtual {v5}, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1086
    .end local v4    # "imagePair":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;>;"
    .end local v5    # "image":Lcom/samsung/android/camerax/advanced/api/ExtensionImage;
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/util/Pair<Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;>;>;"
    goto :goto_1

    .line 1082
    .restart local v4    # "imagePair":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;>;"
    .restart local v5    # "image":Lcom/samsung/android/camerax/advanced/api/ExtensionImage;
    .restart local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/util/Pair<Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;>;>;"
    :catchall_0
    move-exception v0

    move-object v6, v0

    :try_start_5
    invoke-virtual {v5}, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v9    # "extensionTotalCaptureResult":Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;
    .end local v11    # "processStatus":Z
    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;
    .end local p1    # "captureRequest":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "latestResult":Landroid/hardware/camera2/TotalCaptureResult;
    .end local p3    # "captureStartTimestamp":J
    .end local p5    # "captureResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/util/Pair<Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;>;>;"
    .end local p6    # "callback":Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;
    :goto_3
    throw v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1088
    .end local v4    # "imagePair":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;>;"
    .end local v5    # "image":Lcom/samsung/android/camerax/advanced/api/ExtensionImage;
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/util/Pair<Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;>;>;"
    .restart local v9    # "extensionTotalCaptureResult":Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;
    .restart local v11    # "processStatus":Z
    .restart local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;
    .restart local p1    # "captureRequest":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "latestResult":Landroid/hardware/camera2/TotalCaptureResult;
    .restart local p3    # "captureStartTimestamp":J
    .restart local p5    # "captureResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/util/Pair<Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;>;>;"
    .restart local p6    # "callback":Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 1087
    :cond_2
    move-object/from16 v8, p6

    const/4 v11, 0x1

    .line 1090
    goto :goto_5

    .line 1088
    :catch_1
    move-exception v0

    move-object/from16 v8, p6

    .line 1089
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_7
    iget-object v4, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v5, "unable to process capture with the extension service"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1090
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 1092
    :cond_3
    move-object/from16 v8, p6

    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v4, "unable to process capture with the extension service, no service instance"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :goto_5
    if-eqz v11, :cond_4

    .line 1097
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    return-void

    .line 1102
    :cond_4
    :try_start_8
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v4, "produce fallback capture image"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;

    invoke-interface {v4}, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;->get()Landroid/media/Image;

    move-result-object v4

    .line 1104
    .local v4, "yuvImage":Landroid/media/Image;
    nop

    .line 1105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1104
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/TotalCaptureResult;

    .line 1106
    .local v0, "captureResult":Landroid/hardware/camera2/TotalCaptureResult;
    iget-object v5, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureWriter:Landroid/media/ImageWriter;

    invoke-static {v4, v0, v5}, Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionImageUtil;->produceCaptureImage(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;Landroid/media/ImageWriter;)V

    .line 1107
    const/16 v5, 0x64

    invoke-virtual {v8, v5}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->notifyCaptureProcessProgressed(I)V

    .line 1108
    invoke-virtual {v8, v0}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->notifyCaptureCompleted(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 1109
    invoke-virtual {v8}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->notifyCaptureSequenceCompleted()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1114
    .end local v0    # "captureResult":Landroid/hardware/camera2/TotalCaptureResult;
    .end local v4    # "yuvImage":Landroid/media/Image;
    goto :goto_6

    .line 1110
    :catch_2
    move-exception v0

    .line 1111
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9
    iget-object v4, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v5, "fail to produce fallback capture image"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1112
    invoke-virtual {v8}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->notifyCaptureFailed()V

    .line 1113
    invoke-virtual {v8}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->notifyCaptureSequenceCompleted()V

    .line 1115
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "extensionTotalCaptureResult":Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;
    .end local v11    # "processStatus":Z
    :goto_6
    monitor-exit v10

    .line 1116
    return-void

    .line 1115
    :catchall_2
    move-exception v0

    move-object/from16 v8, p6

    :goto_7
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_7
.end method

.method protected processPreview(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Landroid/util/Pair;Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;)V
    .locals 6
    .param p1, "captureRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "latestResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p4, "callback"    # Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            "Landroid/util/Pair<",
            "Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;",
            "Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;",
            ")V"
        }
    .end annotation

    .line 1020
    .local p3, "imageResultPair":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;>;"
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewSerializeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1021
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v2, "processPreview"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const/4 v1, 0x0

    .line 1024
    .local v1, "processStatus":Z
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionClient:Lcom/samsung/android/camerax/advanced/api/IExtensionClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 1026
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionClient:Lcom/samsung/android/camerax/advanced/api/IExtensionClient;

    invoke-direct {p0, v2, p1, p4}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->preparePreviewLocked(Lcom/samsung/android/camerax/advanced/api/IExtensionClient;Landroid/hardware/camera2/CaptureRequest;Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;)V

    .line 1028
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionClient:Lcom/samsung/android/camerax/advanced/api/IExtensionClient;

    new-instance v3, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;

    iget-object v4, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;

    .line 1029
    invoke-interface {v4}, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;->get()Landroid/media/Image;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/camerax/advanced/api/ExtensionImage;-><init>(Landroid/media/Image;)V

    new-instance v4, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;

    iget-object v5, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-direct {v4, v5}, Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;-><init>(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 1028
    invoke-interface {v2, v3, v4}, Lcom/samsung/android/camerax/advanced/api/IExtensionClient;->processPreview(Lcom/samsung/android/camerax/advanced/api/ExtensionImage;Lcom/samsung/android/camerax/advanced/api/ExtensionTotalCaptureResult;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1032
    const/4 v1, 0x1

    .line 1035
    goto :goto_0

    .line 1033
    :catch_0
    move-exception v2

    .line 1034
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v4, "unable to process preview with the extension service"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1035
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 1037
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v3, "unable to process preview with the extension service, no service instance"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :goto_0
    if-eqz v1, :cond_1

    .line 1042
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 1048
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewWriter:Landroid/media/ImageWriter;

    iget-object v3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;

    invoke-interface {v3}, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;->get()Landroid/media/Image;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    .line 1049
    iget-object v2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {p4, v2}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->notifyCaptureCompleted(Landroid/hardware/camera2/TotalCaptureResult;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1053
    goto :goto_1

    .line 1050
    :catch_1
    move-exception v2

    .line 1051
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v4, "fail to produce fallback preview image"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1052
    invoke-virtual {p4}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->notifyCaptureFailed()V

    .line 1054
    .end local v1    # "processStatus":Z
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit v0

    .line 1055
    return-void

    .line 1054
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 536
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/camera2/CaptureRequest$Key<*>;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 537
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v2, "setParameters"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 539
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/camera2/CaptureRequest$Key<*>;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 540
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mParameters:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/hardware/camera2/CaptureRequest$Key<*>;Ljava/lang/Object;>;"
    :cond_0
    goto :goto_0

    .line 543
    :cond_1
    monitor-exit v0

    .line 544
    return-void

    .line 543
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startCapture(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)I
    .locals 1
    .param p1, "callback"    # Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    .line 789
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->startCaptureInternal(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;ZZ)I

    move-result v0

    return v0
.end method

.method protected startCaptureInternal(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;ZZ)I
    .locals 17
    .param p1, "callback"    # Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;
    .param p2, "postview"    # Z
    .param p3, "progressive"    # Z

    .line 868
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 869
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v3, "startCapture"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 871
    .local v3, "requestList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;>;"
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mLatestPreviewResult:Landroid/hardware/camera2/TotalCaptureResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v4, p2

    :try_start_1
    invoke-virtual {v1, v0, v3, v4}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->addCaptureRequestsLocked(Landroid/hardware/camera2/TotalCaptureResult;Ljava/util/List;Z)V

    .line 873
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mSequenceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    move v6, v0

    .line 874
    .local v6, "sequenceId":I
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v5, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 876
    invoke-interface {v0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v7

    long-to-int v13, v7

    .line 879
    .local v13, "requestSize":I
    iget-boolean v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureProcessingEnabled:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 880
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    iget-object v7, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionMetadata:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

    new-instance v8, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;)V

    new-instance v9, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v9, v1}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;)V

    iget-wide v10, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mVendorId:J

    .line 883
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;

    invoke-interface {v5}, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;->getParameters()Ljava/util/Map;

    move-result-object v5

    .line 882
    invoke-static {v10, v11, v5}, Lcom/samsung/android/camerax/advanced/util/PlatformApi;->createCaptureRequest(JLjava/util/Map;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v10

    iget-object v11, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mLatestPreviewResult:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v12, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureImageCallback:Lcom/samsung/android/camerax/advanced/extender/ImageCallback;

    iget-object v15, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCaptureExecutor:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v14, p1

    move/from16 v16, p3

    move-object v5, v0

    invoke-direct/range {v5 .. v16}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;-><init>(ILcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$ImageProcessor;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camerax/advanced/extender/ImageCallback;ILandroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;Ljava/util/concurrent/Executor;Z)V

    .local v5, "captureCallback":Lcom/samsung/android/camerax/advanced/extender/RequestCallback;
    goto :goto_0

    .line 887
    .end local v5    # "captureCallback":Lcom/samsung/android/camerax/advanced/extender/RequestCallback;
    :cond_0
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/SimpleRequestCallback;

    iget-object v7, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionMetadata:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

    new-instance v8, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;)V

    iget-wide v9, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mVendorId:J

    .line 890
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;

    invoke-interface {v5}, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;->getParameters()Ljava/util/Map;

    move-result-object v5

    .line 889
    invoke-static {v9, v10, v5}, Lcom/samsung/android/camerax/advanced/util/PlatformApi;->createCaptureRequest(JLjava/util/Map;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v10

    const/4 v12, 0x1

    const/4 v9, 0x0

    move-object/from16 v11, p1

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/camerax/advanced/extender/SimpleRequestCallback;-><init>(ILcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;Landroid/hardware/camera2/CaptureRequest;Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;Z)V

    .line 893
    .restart local v5    # "captureCallback":Lcom/samsung/android/camerax/advanced/extender/RequestCallback;
    :goto_0
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mRequestProcessor:Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl;

    invoke-interface {v0, v3, v5}, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl;->submit(Ljava/util/List;Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;)I

    move-result v0

    move v7, v0

    .line 895
    .local v7, "submitId":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_1

    .line 896
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v8, "Fail to submit capture requests"

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    monitor-exit v2

    return v7

    .line 900
    :cond_1
    iget-object v8, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mSequenceIdMapLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 901
    :try_start_2
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mSequenceIdMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v10, v11, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 903
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return v6

    .line 902
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;
    .end local p1    # "callback":Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;
    .end local p2    # "postview":Z
    .end local p3    # "progressive":Z
    :try_start_5
    throw v0

    .line 904
    .end local v3    # "requestList":Ljava/util/List;, "Ljava/util/List<Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;>;"
    .end local v5    # "captureCallback":Lcom/samsung/android/camerax/advanced/extender/RequestCallback;
    .end local v6    # "sequenceId":I
    .end local v7    # "submitId":I
    .end local v13    # "requestSize":I
    .restart local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;
    .restart local p1    # "callback":Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;
    .restart local p2    # "postview":Z
    .restart local p3    # "progressive":Z
    :catchall_1
    move-exception v0

    move/from16 v4, p2

    :goto_1
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_1
.end method

.method public startCaptureWithPostview(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)I
    .locals 1
    .param p1, "callback"    # Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    .line 795
    const/4 v0, -0x1

    return v0
.end method

.method public startRepeating(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)I
    .locals 16
    .param p1, "callback"    # Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    .line 733
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 734
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v3, "startRepeating"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    iget-object v3, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v4, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionClient:Lcom/samsung/android/camerax/advanced/api/IExtensionClient;

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Lcom/samsung/android/camerax/advanced/api/IExtensionClient;)V

    iget-object v3, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    .line 737
    invoke-interface {v3}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->addTargetOutputConfigIds(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    .line 738
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setTemplateId(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    .line 739
    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setCaptureStageId(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    move-object v3, v0

    .line 741
    .local v3, "builder":Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewCallbackOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewCallbackOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getId()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->addTargetOutputConfigIds(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 745
    :cond_0
    invoke-virtual {v1, v3}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->applyParameterLocked(Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;)V

    .line 746
    invoke-virtual {v1, v3}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->applyRepeatingRequestParameterLocked(Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;)V

    .line 747
    invoke-virtual {v3}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->build()Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;

    move-result-object v0

    move-object v4, v0

    .line 749
    .local v4, "request":Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mSequenceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    move v6, v0

    .line 752
    .local v6, "sequenceId":I
    iget-boolean v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewProcessingEnabled:Z

    if-eqz v0, :cond_1

    .line 753
    new-instance v5, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;

    iget-object v7, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionMetadata:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

    new-instance v8, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;)V

    new-instance v9, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v9, v1}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;)V

    new-instance v10, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v10, v1}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;)V

    iget-wide v11, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mVendorId:J

    .line 756
    invoke-interface {v4}, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-static {v11, v12, v0}, Lcom/samsung/android/camerax/advanced/util/PlatformApi;->createCaptureRequest(JLjava/util/Map;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    iget-object v12, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mLatestPreviewResult:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v13, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewImageCallback:Lcom/samsung/android/camerax/advanced/extender/ImageCallback;

    iget-object v15, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewExecutor:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v14, p1

    invoke-direct/range {v5 .. v15}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;-><init>(ILcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$ImageProcessor;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camerax/advanced/extender/ImageCallback;Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;Ljava/util/concurrent/Executor;)V

    .local v5, "captureCallback":Lcom/samsung/android/camerax/advanced/extender/RequestCallback;
    goto :goto_0

    .line 759
    .end local v5    # "captureCallback":Lcom/samsung/android/camerax/advanced/extender/RequestCallback;
    :cond_1
    new-instance v5, Lcom/samsung/android/camerax/advanced/extender/SimpleRequestCallback;

    iget-object v7, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionMetadata:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

    new-instance v8, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;)V

    new-instance v9, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v9, v1}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;)V

    iget-wide v10, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mVendorId:J

    .line 761
    invoke-interface {v4}, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-static {v10, v11, v0}, Lcom/samsung/android/camerax/advanced/util/PlatformApi;->createCaptureRequest(JLjava/util/Map;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v10

    const/4 v12, 0x0

    move-object/from16 v11, p1

    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/camerax/advanced/extender/SimpleRequestCallback;-><init>(ILcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;Landroid/hardware/camera2/CaptureRequest;Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;Z)V

    .line 765
    .restart local v5    # "captureCallback":Lcom/samsung/android/camerax/advanced/extender/RequestCallback;
    :goto_0
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mRequestProcessor:Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl;

    invoke-interface {v0, v4, v5}, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl;->setRepeating(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;)I

    move-result v0

    move v7, v0

    .line 767
    .local v7, "submitId":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_2

    .line 768
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v8, "Fail to submit repeating request"

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    monitor-exit v2

    return v7

    .line 772
    :cond_2
    iget-object v8, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mSequenceIdMapLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 773
    :try_start_1
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mSequenceIdMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {v10, v11, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 775
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v6

    .line 774
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;
    .end local p1    # "callback":Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;
    :try_start_4
    throw v0

    .line 776
    .end local v3    # "builder":Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    .end local v4    # "request":Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;
    .end local v5    # "captureCallback":Lcom/samsung/android/camerax/advanced/extender/RequestCallback;
    .end local v6    # "sequenceId":I
    .end local v7    # "submitId":I
    .restart local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;
    .restart local p1    # "callback":Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public startTrigger(Ljava/util/Map;Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)I
    .locals 17
    .param p2, "callback"    # Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;",
            ")I"
        }
    .end annotation

    .line 549
    .local p1, "triggers":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/camera2/CaptureRequest$Key<*>;Ljava/lang/Object;>;"
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 550
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v3, "startTrigger"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    iget-object v3, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v4, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionClient:Lcom/samsung/android/camerax/advanced/api/IExtensionClient;

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Lcom/samsung/android/camerax/advanced/api/IExtensionClient;)V

    iget-object v3, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    .line 553
    invoke-interface {v3}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->addTargetOutputConfigIds(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    .line 554
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setTemplateId(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    .line 555
    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setCaptureStageId(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    move-result-object v0

    move-object v3, v0

    .line 557
    .local v3, "builder":Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewCallbackOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewCallbackOutputConfig:Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getId()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->addTargetOutputConfigIds(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 561
    :cond_0
    invoke-virtual {v1, v3}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->applyParameterLocked(Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 562
    move-object/from16 v4, p1

    :try_start_1
    invoke-direct {v1, v3, v4}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->applyTriggerParameterLocked(Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;Ljava/util/Map;)V

    .line 563
    invoke-virtual {v1, v3}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->applyRepeatingRequestParameterLocked(Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;)V

    .line 564
    invoke-virtual {v3}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->build()Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;

    move-result-object v0

    move-object v5, v0

    .line 566
    .local v5, "request":Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mSequenceId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    move v7, v0

    .line 569
    .local v7, "sequenceId":I
    iget-boolean v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewProcessingEnabled:Z

    if-eqz v0, :cond_1

    .line 570
    new-instance v6, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;

    iget-object v8, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionMetadata:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

    new-instance v9, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v9, v1}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;)V

    new-instance v10, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v10, v1}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;)V

    new-instance v11, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v11, v1}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;)V

    iget-wide v12, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mVendorId:J

    .line 573
    invoke-interface {v5}, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-static {v12, v13, v0}, Lcom/samsung/android/camerax/advanced/util/PlatformApi;->createCaptureRequest(JLjava/util/Map;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v12

    iget-object v13, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mLatestPreviewResult:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v14, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewImageCallback:Lcom/samsung/android/camerax/advanced/extender/ImageCallback;

    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mPreviewExecutor:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v15, p2

    move-object/from16 v16, v0

    invoke-direct/range {v6 .. v16}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;-><init>(ILcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$ImageProcessor;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camerax/advanced/extender/ImageCallback;Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;Ljava/util/concurrent/Executor;)V

    .local v6, "captureCallback":Lcom/samsung/android/camerax/advanced/extender/RequestCallback;
    goto :goto_0

    .line 576
    .end local v6    # "captureCallback":Lcom/samsung/android/camerax/advanced/extender/RequestCallback;
    :cond_1
    new-instance v6, Lcom/samsung/android/camerax/advanced/extender/SimpleRequestCallback;

    iget-object v8, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mExtensionMetadata:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

    new-instance v9, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v9, v1}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;)V

    new-instance v10, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v10, v1}, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;)V

    iget-wide v11, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mVendorId:J

    .line 578
    invoke-interface {v5}, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-static {v11, v12, v0}, Lcom/samsung/android/camerax/advanced/util/PlatformApi;->createCaptureRequest(JLjava/util/Map;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    const/4 v13, 0x0

    move-object/from16 v12, p2

    invoke-direct/range {v6 .. v13}, Lcom/samsung/android/camerax/advanced/extender/SimpleRequestCallback;-><init>(ILcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;Landroid/hardware/camera2/CaptureRequest;Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;Z)V

    .line 582
    .restart local v6    # "captureCallback":Lcom/samsung/android/camerax/advanced/extender/RequestCallback;
    :goto_0
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mRequestProcessor:Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl;

    invoke-interface {v0, v5, v6}, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl;->submit(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Callback;)I

    move-result v0

    move v8, v0

    .line 584
    .local v8, "submitId":I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_2

    .line 585
    iget-object v9, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v10, "Fail to submit request"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    monitor-exit v2

    return v0

    .line 589
    :cond_2
    iget-object v9, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mSequenceIdMapLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 590
    :try_start_2
    iget-object v0, v1, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mSequenceIdMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v11, v12, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 592
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return v7

    .line 591
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;
    .end local p1    # "triggers":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/camera2/CaptureRequest$Key<*>;Ljava/lang/Object;>;"
    .end local p2    # "callback":Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;
    :try_start_5
    throw v0

    .line 593
    .end local v3    # "builder":Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;
    .end local v5    # "request":Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;
    .end local v6    # "captureCallback":Lcom/samsung/android/camerax/advanced/extender/RequestCallback;
    .end local v7    # "sequenceId":I
    .end local v8    # "submitId":I
    .restart local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;
    .restart local p1    # "triggers":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/camera2/CaptureRequest$Key<*>;Ljava/lang/Object;>;"
    .restart local p2    # "callback":Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;
    :catchall_1
    move-exception v0

    move-object/from16 v4, p1

    :goto_1
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_1
.end method

.method public stopRepeating()V
    .locals 3

    .line 781
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 782
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->TAG:Ljava/lang/String;

    const-string v2, "stopRepeating"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mRequestProcessor:Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl;

    invoke-interface {v1}, Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl;->stopRepeating()V

    .line 784
    monitor-exit v0

    .line 785
    return-void

    .line 784
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected updateLatestPreviewResult(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2
    .param p1, "totalCaptureResult"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 979
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 980
    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->mLatestPreviewResult:Landroid/hardware/camera2/TotalCaptureResult;

    .line 981
    monitor-exit v0

    .line 982
    return-void

    .line 981
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
