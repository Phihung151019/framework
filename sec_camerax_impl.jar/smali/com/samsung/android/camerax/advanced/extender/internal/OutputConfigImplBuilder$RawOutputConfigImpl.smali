.class public Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;
.super Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;
.source "OutputConfigImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawOutputConfigImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$ImageReferenceImpl;
    }
.end annotation


# instance fields
.field private final mBlockingImageReader:Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;

.field private final mImageFormat:I

.field private final mPhysicalId:Ljava/lang/String;

.field private final mSensorPixelMode:Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;


# direct methods
.method public static synthetic $r8$lambda$uMsjIoKkDZgNfnE9opWmgQ9CAEY(Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;Landroid/media/ImageReader;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->lambda$setImageProcessor$0(Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;Landroid/media/ImageReader;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBlockingImageReader(Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;)Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->mBlockingImageReader:Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;

    return-object p0
.end method

.method private constructor <init>(Landroid/util/Size;ILcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;Ljava/lang/String;)V
    .locals 4
    .param p1, "rawStreamSize"    # Landroid/util/Size;
    .param p2, "rawFormat"    # I
    .param p3, "sensorPixelMode"    # Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;
    .param p4, "physicalId"    # Ljava/lang/String;

    .line 213
    invoke-direct {p0}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$OutputConfigImpl;-><init>()V

    .line 214
    iput-object p4, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->mPhysicalId:Ljava/lang/String;

    .line 215
    iput p2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->mImageFormat:I

    .line 216
    iput-object p3, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->mSensorPixelMode:Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;

    .line 218
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;

    .line 219
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 221
    invoke-static {}, Lcom/samsung/android/camerax/advanced/vendor/MemoryUtils;->getMaxBufferCountOfRawImageReader()I

    move-result v3

    .line 219
    invoke-static {v1, v2, p2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->mPhysicalId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;-><init>(Landroid/media/ImageReader;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->mBlockingImageReader:Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;

    .line 223
    return-void
.end method

.method synthetic constructor <init>(Landroid/util/Size;ILcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;Ljava/lang/String;Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;-><init>(Landroid/util/Size;ILcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setImageProcessor$0(Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;Landroid/media/ImageReader;)V
    .locals 9
    .param p1, "imageProcessor"    # Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;
    .param p2, "reader"    # Landroid/media/ImageReader;

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->mBlockingImageReader:Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 252
    .local v0, "image":Landroid/media/Image;
    new-instance v1, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$ImageReferenceImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$ImageReferenceImpl;-><init>(Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;Landroid/media/Image;Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder-IA;)V

    move-object v7, v1

    .line 253
    .local v7, "imageReference":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$ImageReferenceImpl;
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->getId()I

    move-result v4

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    iget-object v8, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->mPhysicalId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, p1

    .end local p1    # "imageProcessor":Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;
    .local v3, "imageProcessor":Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;
    :try_start_1
    invoke-interface/range {v3 .. v8}, Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;->onNextImageAvailable(IJLandroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 258
    .end local v0    # "image":Landroid/media/Image;
    .end local v7    # "imageReference":Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$ImageReferenceImpl;
    nop

    .line 259
    return-void

    .line 255
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    .end local v3    # "imageProcessor":Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;
    .restart local p1    # "imageProcessor":Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;
    :catch_1
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    .line 257
    .restart local v3    # "imageProcessor":Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;
    .local p1, "e":Ljava/lang/InterruptedException;
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->mBlockingImageReader:Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->mBlockingImageReader:Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->close()V

    .line 267
    :cond_0
    return-void
.end method

.method public getImageFormat()I
    .locals 1

    .line 238
    iget v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->mImageFormat:I

    return v0
.end method

.method public getPhysicalCameraId()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->mPhysicalId:Ljava/lang/String;

    return-object v0
.end method

.method public getSensorPixelMode()Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->mSensorPixelMode:Lcom/samsung/android/camerax/advanced/vendor/SensorPixelMode;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->mBlockingImageReader:Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public setImageProcessor(Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "imageProcessor"    # Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 248
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;->mBlockingImageReader:Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/internal/BlockingImageReader;->getOriginImageReader()Landroid/media/ImageReader;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/camerax/advanced/extender/internal/OutputConfigImplBuilder$RawOutputConfigImpl;Landroidx/camera/extensions/impl/advanced/ImageProcessorImpl;)V

    invoke-virtual {v0, v1, p2}, Landroid/media/ImageReader;->setOnImageAvailableListenerWithExecutor(Landroid/media/ImageReader$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 260
    return-void
.end method
