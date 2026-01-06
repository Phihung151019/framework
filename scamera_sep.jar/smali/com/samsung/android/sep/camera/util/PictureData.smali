.class public Lcom/samsung/android/sep/camera/util/PictureData;
.super Ljava/lang/Object;
.source "PictureData.java"


# instance fields
.field private mCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field private mImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFirstFrameData:Z

.field private mIsLastFrameData:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/util/PictureData;->mImages:Ljava/util/List;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/util/PictureData;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 27
    return-void
.end method


# virtual methods
.method public addImage(Landroid/media/Image;)V
    .locals 1
    .param p1, "img"    # Landroid/media/Image;

    .line 53
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/PictureData;->mImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public getCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/PictureData;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object v0
.end method

.method public getPendingImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/PictureData;->mImages:Ljava/util/List;

    return-object v0
.end method

.method public isCaptureResultAvailable()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/PictureData;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFirstFrameData()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/samsung/android/sep/camera/util/PictureData;->mIsFirstFrameData:Z

    return v0
.end method

.method public isLastFrameData()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/samsung/android/sep/camera/util/PictureData;->mIsLastFrameData:Z

    return v0
.end method

.method public removeImage(Landroid/media/Image;)V
    .locals 1
    .param p1, "img"    # Landroid/media/Image;

    .line 57
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/PictureData;->mImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public setCaptureResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .line 66
    iput-object p1, p0, Lcom/samsung/android/sep/camera/util/PictureData;->mCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 67
    return-void
.end method

.method public setIsFirstFrameData(Z)V
    .locals 0
    .param p1, "isFirstFrameData"    # Z

    .line 99
    iput-boolean p1, p0, Lcom/samsung/android/sep/camera/util/PictureData;->mIsFirstFrameData:Z

    .line 100
    return-void
.end method

.method public setIsLastFrameData(Z)V
    .locals 0
    .param p1, "lastFrameData"    # Z

    .line 85
    iput-boolean p1, p0, Lcom/samsung/android/sep/camera/util/PictureData;->mIsLastFrameData:Z

    .line 86
    return-void
.end method
