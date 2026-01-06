.class public Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;
.super Ljava/lang/Object;
.source "ProcessorConfig.java"


# instance fields
.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEngineCallback:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$EngineCallback;

.field private mIsSALoggingDisabled:Z

.field private mIsThreadRespawnNeeded:Z

.field private mMaxPictureCount:I

.field private mPictureOutputSurface:Landroid/view/Surface;

.field private mPictureSize:Landroid/util/Size;

.field private mPreviewOutputSurface:Landroid/view/Surface;

.field private mPreviewSize:Landroid/util/Size;

.field private mProcessorId:I

.field private mSDKServiceEventCallback:Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

.field private mSDKVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/util/Size;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mPreviewSize:Landroid/util/Size;

    .line 32
    iput-boolean v1, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mIsSALoggingDisabled:Z

    .line 33
    iput-boolean v1, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mIsThreadRespawnNeeded:Z

    .line 34
    return-void
.end method


# virtual methods
.method public getCameraDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getEngineCallback()Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$EngineCallback;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mEngineCallback:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$EngineCallback;

    return-object v0
.end method

.method public getMaxPictureCount()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mMaxPictureCount:I

    return v0
.end method

.method public getPictureHeight()I
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mPictureSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPictureOutputSurface()Landroid/view/Surface;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mPictureOutputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getPictureSize()Landroid/util/Size;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mPictureSize:Landroid/util/Size;

    return-object v0
.end method

.method public getPictureWidth()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mPictureSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mPictureSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPreviewHeight()I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mPreviewSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPreviewOutputSurface()Landroid/view/Surface;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mPreviewOutputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mPreviewSize:Landroid/util/Size;

    return-object v0
.end method

.method public getPreviewWidth()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mPreviewSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getProcessorId()I
    .locals 1

    .line 131
    iget v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mProcessorId:I

    return v0
.end method

.method public getSDKServiceEventCallback()Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mSDKServiceEventCallback:Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mSDKVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isPreviewReaderRequired()Z
    .locals 1

    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getPreviewHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getPreviewWidth()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSALoggingDisabled()Z
    .locals 1

    .line 297
    iget-boolean v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mIsSALoggingDisabled:Z

    return v0
.end method

.method public isThreadRespawnNeeded()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mIsThreadRespawnNeeded:Z

    return v0
.end method

.method public setCameraDevice(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0
    .param p1, "camDev"    # Landroid/hardware/camera2/CameraDevice;

    .line 239
    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 240
    return-void
.end method

.method public setCameraId(Ljava/lang/String;)V
    .locals 0
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mCameraId:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 230
    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mContext:Landroid/content/Context;

    .line 231
    return-void
.end method

.method public setEngineCallback(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$EngineCallback;)V
    .locals 0
    .param p1, "engineCallback"    # Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$EngineCallback;

    .line 212
    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mEngineCallback:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$EngineCallback;

    .line 213
    return-void
.end method

.method public setIsSALoggingDisabled(Z)V
    .locals 0
    .param p1, "isSALoggingDisabled"    # Z

    .line 306
    iput-boolean p1, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mIsSALoggingDisabled:Z

    .line 307
    return-void
.end method

.method public setMaxPictureCount(I)V
    .locals 0
    .param p1, "maxPictureCount"    # I

    .line 158
    iput p1, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mMaxPictureCount:I

    .line 159
    return-void
.end method

.method public setPictureOutputSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "pictureOutputSurface"    # Landroid/view/Surface;

    .line 194
    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mPictureOutputSurface:Landroid/view/Surface;

    .line 195
    return-void
.end method

.method public setPictureSize(Landroid/util/Size;)V
    .locals 0
    .param p1, "pictureSize"    # Landroid/util/Size;

    .line 68
    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mPictureSize:Landroid/util/Size;

    .line 69
    return-void
.end method

.method public setPreviewOutputSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "previewOutputSurface"    # Landroid/view/Surface;

    .line 176
    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mPreviewOutputSurface:Landroid/view/Surface;

    .line 177
    return-void
.end method

.method public setPreviewSize(Landroid/util/Size;)V
    .locals 0
    .param p1, "previewSize"    # Landroid/util/Size;

    .line 95
    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mPreviewSize:Landroid/util/Size;

    .line 96
    return-void
.end method

.method public setProcessorId(I)V
    .locals 0
    .param p1, "processorId"    # I

    .line 140
    iput p1, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mProcessorId:I

    .line 141
    return-void
.end method

.method public setSDKServiceEventCallback(Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;)V
    .locals 0
    .param p1, "mProcessorEventCallback"    # Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    .line 293
    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mSDKServiceEventCallback:Lcom/samsung/android/sep/camera/util/ProcessorEventCallback;

    .line 294
    return-void
.end method

.method public setSDKVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSDKVersion"    # Ljava/lang/String;

    .line 275
    iput-object p1, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mSDKVersion:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setThreadRespawnNeeded(Z)V
    .locals 0
    .param p1, "handlerRespawn"    # Z

    .line 319
    iput-boolean p1, p0, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->mIsThreadRespawnNeeded:Z

    .line 320
    return-void
.end method
