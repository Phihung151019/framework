.class Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;
.super Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;
.source "SuperNightAdvancedExtender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuperNightSessionProcessor"
.end annotation


# static fields
.field private static final DEFAULT_LEVEL:I = 0x1

.field private static final DEFAULT_STRENGTH:I

.field private static final MAX_LEVEL:I = 0x1


# instance fields
.field private mNightMode:I


# direct methods
.method public static synthetic $r8$lambda$PqRYpBfZ2xi8FE_1G3Mmtf0qnZ4(Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;Landroid/media/Image;Landroid/media/ImageWriter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->lambda$preparePostviewConfiguration$2(Landroid/media/Image;Landroid/media/ImageWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$flQsHuUW-us-mOEztysOWceLXgY(Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;Landroid/media/ImageReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->lambda$preparePostviewConfiguration$3(Landroid/media/ImageReader;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 185
    invoke-static {}, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->getDefaultStrength()I

    move-result v0

    sput v0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->DEFAULT_STRENGTH:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 192
    iget-object v0, p1, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;->TAG:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;->mExtensionMetadata:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;

    iget-object p1, p1, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender;->mExtensionProperty:Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;-><init>(Ljava/lang/String;Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionProperty;)V

    .line 189
    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->mNightMode:I

    .line 195
    return-void
.end method

.method private static getDefaultStrength()I
    .locals 2

    .line 399
    nop

    .line 400
    const-wide v0, 0x4049400000000000L    # 50.5

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 399
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$preparePostviewConfiguration$0(Landroid/hardware/camera2/params/StreamConfigurationMap;)[Landroid/util/Size;
    .locals 1
    .param p0, "map"    # Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 231
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$preparePostviewConfiguration$1(Landroid/util/Size;)Ljava/lang/Integer;
    .locals 2
    .param p0, "size"    # Landroid/util/Size;

    .line 233
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$preparePostviewConfiguration$2(Landroid/media/Image;Landroid/media/ImageWriter;)V
    .locals 2
    .param p1, "ignored"    # Landroid/media/Image;
    .param p2, "writer"    # Landroid/media/ImageWriter;

    .line 272
    invoke-virtual {p2, p1}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->TAG:Ljava/lang/String;

    const-string v1, "produce to postview surface"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void
.end method

.method private synthetic lambda$preparePostviewConfiguration$3(Landroid/media/ImageReader;)V
    .locals 4
    .param p1, "reader"    # Landroid/media/ImageReader;

    .line 267
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 268
    .local v0, "ignored":Landroid/media/Image;
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->mPostviewSerializeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 269
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->TAG:Ljava/lang/String;

    const-string v3, "postview image is available"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->mPostviewWriter:Landroid/media/ImageWriter;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;Landroid/media/Image;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 275
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 277
    .end local v0    # "ignored":Landroid/media/Image;
    :cond_0
    return-void

    .line 275
    .restart local v0    # "ignored":Landroid/media/Image;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "ignored":Landroid/media/Image;
    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;
    .end local p1    # "reader":Landroid/media/ImageReader;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 267
    .restart local v0    # "ignored":Landroid/media/Image;
    .restart local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;
    .restart local p1    # "reader":Landroid/media/ImageReader;
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method private setSuperNightStrength(I)V
    .locals 4
    .param p1, "strength"    # I

    .line 389
    mul-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    const/high16 v1, 0x42ca0000    # 101.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 392
    .local v0, "nightMode":I
    iget v1, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->mNightMode:I

    if-eq v1, v0, :cond_0

    .line 393
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "super mode changed strength = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iput v0, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->mNightMode:I

    .line 396
    :cond_0
    return-void
.end method


# virtual methods
.method protected addSessionParameterLocked(Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;)V
    .locals 1
    .param p1, "builder"    # Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 313
    invoke-super {p0, p1}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->addSessionParameterLocked(Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;)V

    .line 314
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setShootingMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 315
    return-void
.end method

.method protected applyParameterLocked(Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;)V
    .locals 2
    .param p1, "builder"    # Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 319
    invoke-super {p0, p1}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->applyParameterLocked(Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;)V

    .line 320
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setShootingMode(I)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 321
    sget-object v0, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureRequestKey;->CONTROL_SUPER_NIGHT_SHOT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v1, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->mNightMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 324
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->mParameters:Ljava/util/Map;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 325
    .local v0, "zoomRatio":Ljava/lang/Float;
    sget-object v1, Lcom/samsung/android/camerax/advanced/vendor/SecCameraCaptureRequestKey;->SCALER_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;->setParameter(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lcom/samsung/android/camerax/advanced/extender/RequestBuilder;

    .line 326
    return-void
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

    .line 296
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isProcessingCapture(Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;)Z
    .locals 6
    .param p1, "dynamicShotInfo"    # Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;

    .line 329
    invoke-virtual {p1}, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->getDynamicShotMode()I

    move-result v0

    .line 330
    .local v0, "dynamicShotMode":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 331
    sparse-switch v0, :sswitch_data_0

    .line 375
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 377
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 375
    const-string v5, "dynamicShotMode(%d) is not supported, Single Capture"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return v2

    .line 348
    :sswitch_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 350
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 348
    const-string v5, "SIE_LIB dynamicShotMode(%d) is not supported, Single Capture"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return v2

    .line 343
    :sswitch_1
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 345
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 343
    const-string v5, "HIGH_RES dynamicShotMode(%d) is not supported, Single Capture"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return v2

    .line 363
    :sswitch_2
    invoke-static {}, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->getInstance()Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;

    move-result-object v3

    const-string v4, "super_night"

    invoke-virtual {v3, v4}, Lcom/samsung/android/camerax/advanced/util/VendorLibFeature;->isAvailableFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 365
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->TAG:Ljava/lang/String;

    const-string v3, "Multi Capture, Super-Night"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    return v1

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 371
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 368
    const-string v5, "Super-Night dynamicShotMode(%d) is not supported, Single Capture"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return v2

    .line 338
    :sswitch_3
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->TAG:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    .line 340
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 338
    const-string v5, "HIFI dynamicShotMode(%d) is not supported, Single Capture"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return v2

    .line 380
    :cond_1
    nop

    .line 381
    invoke-virtual {p1}, Lcom/samsung/android/camerax/advanced/extender/internal/DynamicShotInfo;->getDynamicShotExtraInfo()I

    move-result v3

    .line 380
    invoke-static {v3}, Lcom/samsung/android/camerax/advanced/vendor/SecCameraMetadata;->getDynamicShotExtraInfoNeedLtm(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 382
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->TAG:Ljava/lang/String;

    const-string v3, "Single Capture, LTM"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return v1

    .line 385
    :cond_2
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_3
        0xb -> :sswitch_3
        0xc -> :sswitch_3
        0xd -> :sswitch_3
        0xe -> :sswitch_3
        0xf -> :sswitch_3
        0x50 -> :sswitch_2
        0x51 -> :sswitch_2
        0x52 -> :sswitch_2
        0x53 -> :sswitch_2
        0x54 -> :sswitch_2
        0x55 -> :sswitch_2
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x65 -> :sswitch_1
        0x78 -> :sswitch_0
        0x140 -> :sswitch_2
        0x141 -> :sswitch_2
    .end sparse-switch
.end method

.method protected prepareCaptureConfiguration(Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;)V
    .locals 4
    .param p1, "sessionConfigBuilder"    # Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;

    .line 211
    invoke-super {p0, p1}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->prepareCaptureConfiguration(Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;)V

    .line 214
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 215
    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/util/CameraCharacteristicsUtil;->getAvailableSuperNightRawStreamConfigs(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v0

    .line 218
    .local v0, "streamConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/camerax/advanced/vendor/SecStreamConfig;>;"
    nop

    .line 219
    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/vendor/StreamConfigUtils;->getDistinctRawStreamConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 218
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->prepareRawStream(Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;Ljava/util/List;)V

    .line 221
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->mParameters:Ljava/util/Map;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->EXTENSION_STRENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    sget v3, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->DEFAULT_STRENGTH:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget v1, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->DEFAULT_STRENGTH:I

    invoke-direct {p0, v1}, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->setSuperNightStrength(I)V

    .line 223
    return-void
.end method

.method protected preparePostviewConfiguration(Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;)V
    .locals 9
    .param p1, "sessionConfigBuilder"    # Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;

    .line 229
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor$$ExternalSyntheticLambda0;-><init>()V

    .line 230
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/util/Size;

    new-instance v2, Landroid/util/Size;

    const/16 v3, 0x780

    const/16 v4, 0x438

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 231
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Size;

    .line 229
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor$$ExternalSyntheticLambda1;-><init>()V

    .line 233
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    .line 232
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 236
    .local v0, "captureSize":Landroid/util/Size;
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->mCaptureOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    invoke-interface {v1}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->mCaptureOutputSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    invoke-interface {v1}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSize()Landroid/util/Size;

    move-result-object v0

    .line 240
    :cond_0
    move-object v1, v0

    .line 241
    .local v1, "postviewSize":Landroid/util/Size;
    const/16 v2, 0x100

    .line 244
    .local v2, "format":I
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->mPostviewSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->mPostviewSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    invoke-interface {v3}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 245
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preparePostviewConfiguration, surface = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->mPostviewSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    .line 246
    invoke-interface {v5}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->mPostviewSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    .line 247
    invoke-interface {v5}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSize()Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", format = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->mPostviewSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    .line 248
    invoke-interface {v5}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getImageFormat()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 245
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->mPostviewSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    invoke-interface {v3}, Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;->getSize()Landroid/util/Size;

    move-result-object v1

    .line 253
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->mPostviewSurface:Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;

    invoke-static {v3}, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->imageFormatToPublic(Landroidx/camera/extensions/impl/advanced/OutputSurfaceImpl;)I

    move-result v2

    .line 256
    :cond_1
    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->newImageReaderConfig(Landroid/util/Size;II)Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;

    move-result-object v4

    .line 258
    .local v4, "builder":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;
    invoke-virtual {v4, v3}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->setStreamOption(I)V

    .line 260
    nop

    .line 261
    invoke-virtual {v4}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;->build()Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;

    .line 263
    .local v3, "config":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;
    iget-object v5, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    sget-object v6, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->POSTVIEW:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-virtual {v3}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;->getOriginalConfig()Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;->addOutputConfig(Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;)Landroidx/camera/extensions/impl/advanced/Camera2SessionConfigImplBuilder;

    .line 266
    new-instance v5, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;)V

    iget-object v6, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->mBackgroundExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$ImageReaderOutputConfigImpl;->setOnImageAvailableListenerWithExecutor(Landroid/media/ImageReader$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 279
    iget-object v5, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "postview output config id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->mCaptureOutputConfigMap:Ljava/util/Map;

    sget-object v8, Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;->POSTVIEW:Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$PIC_TYPE;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;

    .line 280
    invoke-interface {v7}, Landroidx/camera/extensions/impl/advanced/Camera2OutputConfigImpl;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 279
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method

.method public setParameters(Ljava/util/Map;)V
    .locals 3
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

    .line 285
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/camera2/CaptureRequest$Key<*>;Ljava/lang/Object;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/camerax/advanced/extender/MultiCaptureSessionProcessor;->setParameters(Ljava/util/Map;)V

    .line 287
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->mParameters:Ljava/util/Map;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->EXTENSION_STRENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 289
    .local v0, "extensionStrength":Ljava/lang/Integer;
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget v2, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->DEFAULT_STRENGTH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 290
    .local v1, "strength":I
    invoke-direct {p0, v1}, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->setSuperNightStrength(I)V

    .line 291
    return-void
.end method

.method public startCapture(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)I
    .locals 1
    .param p1, "callback"    # Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    .line 200
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->startCaptureInternal(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;ZZ)I

    move-result v0

    return v0
.end method

.method public startCaptureWithPostview(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)I
    .locals 1
    .param p1, "callback"    # Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    .line 205
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/samsung/android/camerax/advanced/extender/SuperNightAdvancedExtender$SuperNightSessionProcessor;->startCaptureInternal(Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;ZZ)I

    move-result v0

    return v0
.end method
