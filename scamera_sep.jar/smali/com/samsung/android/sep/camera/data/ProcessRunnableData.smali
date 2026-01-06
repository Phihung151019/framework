.class public Lcom/samsung/android/sep/camera/data/ProcessRunnableData;
.super Ljava/lang/Object;
.source "ProcessRunnableData.java"


# instance fields
.field private mIsYuvSingleCapture:Z

.field private mOrientation:I

.field private mPictureCaptureResult:Landroid/hardware/camera2/CaptureResult;

.field private mPictureImageWriter:Landroid/media/ImageWriter;

.field private final mRawImageWriterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/media/ImageWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mServicePictureLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->mServicePictureLock:Ljava/lang/Object;

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->mServiceInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->mRawImageWriterMap:Ljava/util/HashMap;

    .line 15
    iput-boolean v1, p0, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->mIsYuvSingleCapture:Z

    return-void
.end method


# virtual methods
.method public clearRawImageWriterMap()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->mRawImageWriterMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageWriter;

    .line 142
    .local v1, "writer":Landroid/media/ImageWriter;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/ImageWriter;->close()V

    .line 143
    .end local v1    # "writer":Landroid/media/ImageWriter;
    :cond_0
    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->mRawImageWriterMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 145
    return-void
.end method

.method public closeImageWriter()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->mPictureImageWriter:Landroid/media/ImageWriter;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->mPictureImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->mPictureImageWriter:Landroid/media/ImageWriter;

    .line 97
    :cond_0
    return-void
.end method

.method public getOrientation()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->mOrientation:I

    return v0
.end method

.method public getPictureCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->mPictureCaptureResult:Landroid/hardware/camera2/CaptureResult;

    return-object v0
.end method

.method public getPictureImageWriter()Landroid/media/ImageWriter;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->mPictureImageWriter:Landroid/media/ImageWriter;

    return-object v0
.end method

.method public getRawImageWriter(I)Landroid/media/ImageWriter;
    .locals 2
    .param p1, "type"    # I

    .line 136
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->mRawImageWriterMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ImageWriter;

    return-object v0
.end method

.method public getServicePictureLock()Ljava/lang/Object;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->mServicePictureLock:Ljava/lang/Object;

    return-object v0
.end method

.method public isServiceInitialized()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->mServiceInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isYuvSingleCapture()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->mIsYuvSingleCapture:Z

    return v0
.end method

.method public putRawImageWriterMap(ILandroid/media/ImageWriter;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "imageWriter"    # Landroid/media/ImageWriter;

    .line 126
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->mRawImageWriterMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method public queueInputImage(Landroid/media/Image;)V
    .locals 1
    .param p1, "image"    # Landroid/media/Image;

    .line 105
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->mPictureImageWriter:Landroid/media/ImageWriter;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->mPictureImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v0, p1}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    .line 108
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .line 52
    iput p1, p0, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->mOrientation:I

    .line 53
    return-void
.end method

.method public setPictureCaptureResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1, "pictureCaptureResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 34
    iput-object p1, p0, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->mPictureCaptureResult:Landroid/hardware/camera2/CaptureResult;

    .line 35
    return-void
.end method

.method public setPictureImageWriter(Landroid/media/ImageWriter;)V
    .locals 0
    .param p1, "pictureImageWriter"    # Landroid/media/ImageWriter;

    .line 116
    iput-object p1, p0, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->mPictureImageWriter:Landroid/media/ImageWriter;

    .line 117
    return-void
.end method

.method public setServiceInitialized(Z)V
    .locals 1
    .param p1, "isInitialized"    # Z

    .line 79
    iget-object v0, p0, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->mServiceInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 80
    return-void
.end method

.method public setYuvSingleCapture(Z)V
    .locals 0
    .param p1, "isYuvSingleCapture"    # Z

    .line 162
    iput-boolean p1, p0, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->mIsYuvSingleCapture:Z

    .line 163
    return-void
.end method
