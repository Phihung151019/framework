.class public Lcom/samsung/android/sep/camera/data/CaptureData;
.super Ljava/lang/Object;
.source "CaptureData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CaptureData"


# instance fields
.field private isSALoggingDisabled:Z

.field private mAppCaptureHandler:Landroid/os/Handler;

.field private mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraId:Ljava/lang/String;

.field private final mCaptureCallbackLock:Ljava/lang/Object;

.field private mCaptureMode:I

.field private mCaptureParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mClientId:I

.field private mCurrentRawPicType:I

.field private mDynamicShotCondition:I

.field private mDynamicShotInfo:Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;

.field private mIsCaptureFailed:Z

.field private mIsForceSingleCapture:Z

.field private mJpegByteBuffer:Ljava/nio/ByteBuffer;

.field private mJpegReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

.field private mPackageName:Ljava/lang/String;

.field private mRawOutputStreamConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mSdkCaptureCallback:Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

.field private mSdkVersion:Ljava/lang/String;

.field private final mTimestampToPictureDataMappingTable:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/sep/camera/util/PictureData;",
            ">;"
        }
    .end annotation
.end field

.field private mYuvReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mTimestampToPictureDataMappingTable:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mDynamicShotCondition:I

    .line 45
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mCaptureCallbackLock:Ljava/lang/Object;

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    .line 49
    iput v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mCurrentRawPicType:I

    return-void
.end method


# virtual methods
.method public clearPictureDataMappingTable()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mTimestampToPictureDataMappingTable:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->clear()V

    .line 191
    return-void
.end method

.method public closeImageYuvReader(Landroid/media/Image;)V
    .locals 1
    .param p1, "image"    # Landroid/media/Image;

    .line 298
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mYuvReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mYuvReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->closeImage(Landroid/media/Image;)V

    .line 301
    :cond_0
    return-void
.end method

.method public closeJpegReader()V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mJpegReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mJpegReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->close()V

    .line 407
    :cond_0
    return-void
.end method

.method public closeYuvReader()V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mYuvReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mYuvReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->close()V

    .line 308
    :cond_0
    return-void
.end method

.method public dumpDefaultSurfaceInfo(I)V
    .locals 1
    .param p1, "dynamicShotMode"    # I

    .line 560
    invoke-static {p1}, Lcom/samsung/android/sep/camera/util/SemUtil;->getDsModeNeedRawPic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->dumpSurfaceInfo(I)V

    goto :goto_0

    .line 563
    :cond_0
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->dumpSurfaceInfo(I)V

    .line 565
    :goto_0
    return-void
.end method

.method public dumpSurfaceInfo(I)V
    .locals 4
    .param p1, "format"    # I

    .line 529
    const/16 v0, 0x23

    const-string v1, "CaptureData"

    if-ne p1, v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mYuvReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    if-eqz v0, :cond_4

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpSurfaceInfo - YUV: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mYuvReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 533
    :cond_0
    const/16 v0, 0x100

    if-ne p1, v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mJpegReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    if-eqz v0, :cond_4

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpSurfaceInfo - JPEG: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mJpegReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 537
    :cond_1
    const/16 v0, 0x25

    if-ne p1, v0, :cond_3

    .line 538
    iget v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mCurrentRawPicType:I

    .line 539
    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getRawOutputStreamConfig(I)Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;

    .line 540
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->getImageReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v0

    .line 541
    .local v0, "blockingImageReader":Lcom/samsung/android/sep/camera/util/BlockingImageReader;
    if-eqz v0, :cond_2

    .line 542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpSurfaceInfo - RAW: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    .end local v0    # "blockingImageReader":Lcom/samsung/android/sep/camera/util/BlockingImageReader;
    :cond_2
    goto :goto_0

    .line 545
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpSurfaceInfo - Unsupported format : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_4
    :goto_0
    return-void
.end method

.method public getAppCaptureHandler()Landroid/os/Handler;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mAppCaptureHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getCameraConfig()Lcom/samsung/android/sep/camera/SemCameraConfig;
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    return-object v0
.end method

.method public getCameraDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getCaptureCallbackLock()Ljava/lang/Object;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mCaptureCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getCaptureMode()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mCaptureMode:I

    return v0
.end method

.method public getCaptureParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;",
            ">;"
        }
    .end annotation

    .line 469
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mCaptureParameters:Ljava/util/List;

    return-object v0
.end method

.method public getCaptureSession()Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method public getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method public getClientId()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mClientId:I

    return v0
.end method

.method public getCurrentRawPicType()I
    .locals 1

    .line 336
    iget v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mCurrentRawPicType:I

    return v0
.end method

.method public getDynamicShotCondition()I
    .locals 1

    .line 199
    iget v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mDynamicShotCondition:I

    return v0
.end method

.method public getDynamicShotInfo()Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mDynamicShotInfo:Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;

    return-object v0
.end method

.method public getJpegByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mJpegByteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getJpegReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mJpegReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureDataMappingTable()Ljava/util/concurrent/ConcurrentNavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/sep/camera/util/PictureData;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mTimestampToPictureDataMappingTable:Ljava/util/concurrent/ConcurrentNavigableMap;

    return-object v0
.end method

.method public getRawOutputStreamConfig(I)Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;
    .locals 2
    .param p1, "type"    # I

    .line 327
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mSdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkCaptureCallback()Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mSdkCaptureCallback:Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

    return-object v0
.end method

.method public getYuvReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mYuvReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    return-object v0
.end method

.method public isCaptureFailed()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mIsCaptureFailed:Z

    return v0
.end method

.method public isForceSingleCapture()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mIsForceSingleCapture:Z

    return v0
.end method

.method public isSALoggingDisabled()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->isSALoggingDisabled:Z

    return v0
.end method

.method public putPictureDataMappingTable(Ljava/lang/Long;Lcom/samsung/android/sep/camera/util/PictureData;)Lcom/samsung/android/sep/camera/util/PictureData;
    .locals 1
    .param p1, "timestamp"    # Ljava/lang/Long;
    .param p2, "pictureData"    # Lcom/samsung/android/sep/camera/util/PictureData;

    .line 176
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mTimestampToPictureDataMappingTable:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sep/camera/util/PictureData;

    return-object v0
.end method

.method public setAppCaptureHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "appCaptureHandler"    # Landroid/os/Handler;

    .line 226
    iput-object p1, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mAppCaptureHandler:Landroid/os/Handler;

    .line 227
    return-void
.end method

.method public setCameraConfig(Lcom/samsung/android/sep/camera/SemCameraConfig;)V
    .locals 0
    .param p1, "cameraConfig"    # Lcom/samsung/android/sep/camera/SemCameraConfig;

    .line 496
    iput-object p1, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    .line 497
    return-void
.end method

.method public setCameraDevice(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;

    .line 381
    iput-object p1, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 382
    return-void
.end method

.method public setCameraId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 363
    iput-object p1, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mCameraId:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public setCaptureFailed(Z)V
    .locals 0
    .param p1, "isCaptureFailed"    # Z

    .line 75
    iput-boolean p1, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mIsCaptureFailed:Z

    .line 76
    return-void
.end method

.method public setCaptureMode(I)V
    .locals 0
    .param p1, "captureMode"    # I

    .line 93
    iput p1, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mCaptureMode:I

    .line 94
    return-void
.end method

.method public setCaptureParameters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;",
            ">;)V"
        }
    .end annotation

    .line 478
    .local p1, "captureParameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/internal/SemCaptureParameter;>;"
    iput-object p1, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mCaptureParameters:Ljava/util/List;

    .line 479
    return-void
.end method

.method public setCaptureSession(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .param p1, "captureSession"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 460
    iput-object p1, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 461
    return-void
.end method

.method public setCharacteristics(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 424
    iput-object p1, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 425
    return-void
.end method

.method public setClientId(I)V
    .locals 0
    .param p1, "clientId"    # I

    .line 165
    iput p1, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mClientId:I

    .line 166
    return-void
.end method

.method public setCurrentRawPicType(I)V
    .locals 0
    .param p1, "currentRawPicType"    # I

    .line 345
    iput p1, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mCurrentRawPicType:I

    .line 346
    return-void
.end method

.method public setDynamicShotCondition(I)V
    .locals 0
    .param p1, "dynamicShotCondition"    # I

    .line 208
    iput p1, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mDynamicShotCondition:I

    .line 209
    return-void
.end method

.method public setDynamicShotInfo(Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;)V
    .locals 0
    .param p1, "dynamicShotInfo"    # Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;

    .line 442
    iput-object p1, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mDynamicShotInfo:Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;

    .line 443
    return-void
.end method

.method public setForceSingleCapture(Z)V
    .locals 0
    .param p1, "forceSingleCapture"    # Z

    .line 129
    iput-boolean p1, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mIsForceSingleCapture:Z

    .line 130
    return-void
.end method

.method public setJpegByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "jpegByteBuffer"    # Ljava/nio/ByteBuffer;

    .line 111
    iput-object p1, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mJpegByteBuffer:Ljava/nio/ByteBuffer;

    .line 112
    return-void
.end method

.method public setJpegReader(Lcom/samsung/android/sep/camera/util/BlockingImageReader;)V
    .locals 0
    .param p1, "jpegReader"    # Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    .line 399
    iput-object p1, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mJpegReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    .line 400
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 514
    iput-object p1, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mPackageName:Ljava/lang/String;

    .line 515
    return-void
.end method

.method public setRawOutputStreamConfigMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;",
            ">;)V"
        }
    .end annotation

    .line 317
    .local p1, "rawOutputStreamConfigMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;>;"
    iput-object p1, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    .line 318
    return-void
.end method

.method public setSALoggingDisabled(Z)V
    .locals 0
    .param p1, "SALoggingDisabled"    # Z

    .line 147
    iput-boolean p1, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->isSALoggingDisabled:Z

    .line 148
    return-void
.end method

.method public setSDKVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "sdkVersion"    # Ljava/lang/String;

    .line 271
    iput-object p1, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mSdkVersion:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setSdkCaptureCallback(Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;)V
    .locals 0
    .param p1, "sdkCaptureCallback"    # Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

    .line 244
    iput-object p1, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mSdkCaptureCallback:Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

    .line 245
    return-void
.end method

.method public setYuvReader(Lcom/samsung/android/sep/camera/util/BlockingImageReader;)V
    .locals 0
    .param p1, "yuvReader"    # Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    .line 289
    iput-object p1, p0, Lcom/samsung/android/sep/camera/data/CaptureData;->mYuvReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    .line 290
    return-void
.end method
