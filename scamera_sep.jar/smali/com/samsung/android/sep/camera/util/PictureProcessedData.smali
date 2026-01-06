.class public Lcom/samsung/android/sep/camera/util/PictureProcessedData;
.super Ljava/lang/Object;
.source "PictureProcessedData.java"


# instance fields
.field private mCaptureResultConfig:Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;

.field private mImage:Landroid/media/Image;

.field private final mIsFirstFrameData:Z

.field private final mIsLastFrameData:Z


# direct methods
.method public constructor <init>(Landroid/media/Image;Landroid/hardware/camera2/CaptureResult;ZZ)V
    .locals 2
    .param p1, "image"    # Landroid/media/Image;
    .param p2, "captureResult"    # Landroid/hardware/camera2/CaptureResult;
    .param p3, "isFirstFrameData"    # Z
    .param p4, "isLastFrameData"    # Z

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;

    invoke-direct {v0}, Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/util/PictureProcessedData;->mCaptureResultConfig:Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;

    .line 30
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/PictureProcessedData;->mCaptureResultConfig:Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getSequenceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;->setSequenceId(I)V

    .line 31
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/PictureProcessedData;->mCaptureResultConfig:Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureResult;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;->setMetadataNative(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 32
    iput-object p1, p0, Lcom/samsung/android/sep/camera/util/PictureProcessedData;->mImage:Landroid/media/Image;

    .line 33
    iput-boolean p3, p0, Lcom/samsung/android/sep/camera/util/PictureProcessedData;->mIsFirstFrameData:Z

    .line 34
    iput-boolean p4, p0, Lcom/samsung/android/sep/camera/util/PictureProcessedData;->mIsLastFrameData:Z

    .line 35
    return-void
.end method


# virtual methods
.method public getCaptureResultConfig()Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/PictureProcessedData;->mCaptureResultConfig:Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;

    return-object v0
.end method

.method public getImage()Landroid/media/Image;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/PictureProcessedData;->mImage:Landroid/media/Image;

    return-object v0
.end method

.method public isFirstFrameData()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/samsung/android/sep/camera/util/PictureProcessedData;->mIsFirstFrameData:Z

    return v0
.end method

.method public isLastFrameData()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/samsung/android/sep/camera/util/PictureProcessedData;->mIsLastFrameData:Z

    return v0
.end method

.method public setCaptureResultConfig(Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;)V
    .locals 0
    .param p1, "resultConfig"    # Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;

    .line 61
    iput-object p1, p0, Lcom/samsung/android/sep/camera/util/PictureProcessedData;->mCaptureResultConfig:Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;

    .line 62
    return-void
.end method

.method public setImage(Landroid/media/Image;)V
    .locals 0
    .param p1, "image"    # Landroid/media/Image;

    .line 70
    iput-object p1, p0, Lcom/samsung/android/sep/camera/util/PictureProcessedData;->mImage:Landroid/media/Image;

    .line 71
    return-void
.end method
