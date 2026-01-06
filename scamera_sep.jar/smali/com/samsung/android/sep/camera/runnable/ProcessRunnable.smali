.class public Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;
.super Ljava/lang/Object;
.source "ProcessRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "ProcessRunnable"


# instance fields
.field private final mCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

.field private final mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

.field private mIsTestMode:Z

.field private final mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

.field private final mProcessedData:Lcom/samsung/android/sep/camera/util/PictureProcessedData;

.field private final mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;


# direct methods
.method public static synthetic $r8$lambda$5hYDi7AOMz1vSSYHKlWrCWtk-HA(Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->lambda$sendErrorCallback$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$eWtb3Qvz7k0CwD0SrUsmOegYUDM(Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->lambda$insertErrorSALog$1()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sep/camera/util/PictureProcessedData;Lcom/samsung/android/sep/camera/data/CaptureData;Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;Lcom/samsung/android/sep/camera/data/ProcessRunnableData;Lcom/samsung/android/sep/camera/data/ProcessorStateManager;)V
    .locals 1
    .param p1, "data"    # Lcom/samsung/android/sep/camera/util/PictureProcessedData;
    .param p2, "captureData"    # Lcom/samsung/android/sep/camera/data/CaptureData;
    .param p3, "captureAbortManager"    # Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;
    .param p4, "processRunnableData"    # Lcom/samsung/android/sep/camera/data/ProcessRunnableData;
    .param p5, "processorStateManager"    # Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mIsTestMode:Z

    .line 42
    iput-object p2, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 43
    iput-object p3, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    .line 44
    iput-object p4, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    .line 45
    iput-object p5, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    .line 46
    iput-object p1, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mProcessedData:Lcom/samsung/android/sep/camera/util/PictureProcessedData;

    .line 47
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/sep/camera/util/PictureProcessedData;Lcom/samsung/android/sep/camera/data/CaptureData;Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;Lcom/samsung/android/sep/camera/data/ProcessRunnableData;Lcom/samsung/android/sep/camera/data/ProcessorStateManager;Z)V
    .locals 1
    .param p1, "data"    # Lcom/samsung/android/sep/camera/util/PictureProcessedData;
    .param p2, "captureData"    # Lcom/samsung/android/sep/camera/data/CaptureData;
    .param p3, "captureAbortManager"    # Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;
    .param p4, "processRunnableData"    # Lcom/samsung/android/sep/camera/data/ProcessRunnableData;
    .param p5, "processorStateManager"    # Lcom/samsung/android/sep/camera/data/ProcessorStateManager;
    .param p6, "testMode"    # Z

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mIsTestMode:Z

    .line 64
    iput-object p1, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mProcessedData:Lcom/samsung/android/sep/camera/util/PictureProcessedData;

    .line 65
    iput-object p2, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 66
    iput-object p3, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    .line 67
    iput-object p4, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    .line 68
    iput-object p5, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    .line 69
    iput-boolean p6, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mIsTestMode:Z

    .line 70
    return-void
.end method

.method private insertErrorSALog()V
    .locals 2

    .line 219
    invoke-static {}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->getsInstance()Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->getProcessHandler()Landroid/os/Handler;

    move-result-object v0

    .line 220
    .local v0, "processHandler":Landroid/os/Handler;
    iget-object v1, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->isForceSingleCapture()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 221
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->isSALoggingDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 223
    new-instance v1, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    :cond_0
    return-void
.end method

.method private isSendRequestToServiceAvailable()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    .line 193
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->isAbortSupportedInService()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    .line 194
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->isAborted()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 192
    :goto_1
    return v0
.end method

.method private synthetic lambda$insertErrorSALog$1()V
    .locals 6

    .line 225
    invoke-static {}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 227
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->getClientId()I

    move-result v1

    .line 230
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 226
    const-string v2, "ERRO"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->SALogInsert(ILjava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    .line 225
    return-void
.end method

.method private synthetic lambda$sendErrorCallback$0()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getSdkCaptureCallback()Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 206
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getSdkCaptureCallback()Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

    move-result-object v0

    .line 207
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;->onError(I)V

    .line 209
    :cond_0
    return-void
.end method

.method private processData(Lcom/samsung/android/sep/camera/util/PictureProcessedData;)V
    .locals 7
    .param p1, "processedData"    # Lcom/samsung/android/sep/camera/util/PictureProcessedData;

    .line 86
    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/util/PictureProcessedData;->getImage()Landroid/media/Image;

    move-result-object v0

    .line 87
    .local v0, "pictureImage":Landroid/media/Image;
    invoke-virtual {v0}, Landroid/media/Image;->getFormat()I

    move-result v1

    .line 89
    .local v1, "format":I
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->isSendRequestToServiceAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    const-string v2, "ProcessRunnable"

    const-string v3, "processData isSendRequestToServiceAvailable false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/16 v2, 0x23

    if-ne v1, v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->closeImageYuvReader(Landroid/media/Image;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    iget-object v3, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 95
    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCurrentRawPicType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sep/camera/data/CaptureData;->getRawOutputStreamConfig(I)Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->getImageReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v2

    .line 97
    invoke-virtual {v2, v0}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->closeImage(Landroid/media/Image;)V

    .line 99
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/util/PictureProcessedData;->isFirstFrameData()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    invoke-static {}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 106
    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/data/CaptureData;->getClientId()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    .line 107
    invoke-virtual {v4}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->getPictureCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    .line 108
    invoke-virtual {v5}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->getOrientation()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    .line 109
    invoke-virtual {v6}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->isYuvSingleCapture()Z

    move-result v6

    .line 105
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->prepareProcess(ILandroid/hardware/camera2/CaptureResult;IZ)V

    .line 111
    iget-object v2, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    if-eqz v2, :cond_2

    .line 112
    iget-object v2, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->updateCaptureState(I)V

    .line 117
    :cond_2
    invoke-static {}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 119
    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/data/CaptureData;->getClientId()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/util/PictureProcessedData;->getCaptureResultConfig()Lcom/samsung/android/camerasdkservice/data/CaptureResultConfig;

    move-result-object v4

    .line 118
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->prepareImageCaptureResult(ILcom/samsung/android/camerasdkservice/data/CaptureResultConfig;)V

    .line 121
    iget-boolean v2, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mIsTestMode:Z

    if-eqz v2, :cond_3

    .line 122
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->writeImageInternal(Lcom/samsung/android/sep/camera/util/PictureProcessedData;Landroid/media/Image;I)V

    goto :goto_1

    .line 124
    :cond_3
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->writeImage(Lcom/samsung/android/sep/camera/util/PictureProcessedData;Landroid/media/Image;I)V

    .line 126
    :goto_1
    return-void
.end method

.method private sendErrorCallback()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getAppCaptureHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 201
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getAppCaptureHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;)V

    .line 202
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getSdkCaptureCallback()Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getSdkCaptureCallback()Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;->onError(I)V

    .line 215
    :cond_1
    :goto_0
    return-void
.end method

.method private writeImage(Lcom/samsung/android/sep/camera/util/PictureProcessedData;Landroid/media/Image;I)V
    .locals 2
    .param p1, "processedData"    # Lcom/samsung/android/sep/camera/util/PictureProcessedData;
    .param p2, "pictureImage"    # Landroid/media/Image;
    .param p3, "format"    # I

    .line 136
    iget-object v0, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->getServicePictureLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 137
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->writeImageInternal(Lcom/samsung/android/sep/camera/util/PictureProcessedData;Landroid/media/Image;I)V

    .line 138
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private writeImageInternal(Lcom/samsung/android/sep/camera/util/PictureProcessedData;Landroid/media/Image;I)V
    .locals 4
    .param p1, "processedData"    # Lcom/samsung/android/sep/camera/util/PictureProcessedData;
    .param p2, "pictureImage"    # Landroid/media/Image;
    .param p3, "format"    # I

    .line 150
    iget-object v0, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->isServiceInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    return-void

    .line 154
    :cond_0
    const/16 v0, 0x23

    if-ne p3, v0, :cond_1

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    invoke-virtual {v1, p2}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->queueInputImage(Landroid/media/Image;)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 158
    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCurrentRawPicType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->getRawImageWriter(I)Landroid/media/ImageWriter;

    move-result-object v1

    .line 159
    .local v1, "writer":Landroid/media/ImageWriter;
    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->isSendRequestToServiceAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    invoke-virtual {v1, p2}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    .line 164
    .end local v1    # "writer":Landroid/media/ImageWriter;
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/util/PictureProcessedData;->isLastFrameData()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    if-eqz v1, :cond_3

    .line 165
    iget-object v1, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->updateCaptureState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :cond_3
    if-ne p3, v0, :cond_4

    .line 176
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sep/camera/data/CaptureData;->closeImageYuvReader(Landroid/media/Image;)V

    goto :goto_2

    .line 178
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 179
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCurrentRawPicType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->getRawOutputStreamConfig(I)Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->getImageReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v0

    .line 181
    invoke-virtual {v0, p2}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->closeImage(Landroid/media/Image;)V

    .line 183
    goto :goto_2

    .line 175
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 168
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->setServiceInitialized(Z)V

    .line 171
    iget-object v2, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    sget-object v3, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->updateState(Lcom/samsung/android/sep/camera/data/ProcessState;)V

    .line 172
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->sendErrorCallback()V

    .line 173
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->insertErrorSALog()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .end local v1    # "e":Ljava/lang/Exception;
    if-ne p3, v0, :cond_4

    .line 176
    goto :goto_1

    .line 184
    :goto_2
    return-void

    .line 175
    :goto_3
    if-ne p3, v0, :cond_5

    .line 176
    iget-object v0, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0, p2}, Lcom/samsung/android/sep/camera/data/CaptureData;->closeImageYuvReader(Landroid/media/Image;)V

    goto :goto_4

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 179
    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCurrentRawPicType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/sep/camera/data/CaptureData;->getRawOutputStreamConfig(I)Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->getImageReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v0

    .line 181
    invoke-virtual {v0, p2}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->closeImage(Landroid/media/Image;)V

    .line 183
    :goto_4
    throw v1
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mProcessedData:Lcom/samsung/android/sep/camera/util/PictureProcessedData;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->mProcessedData:Lcom/samsung/android/sep/camera/util/PictureProcessedData;

    invoke-direct {p0, v0}, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;->processData(Lcom/samsung/android/sep/camera/util/PictureProcessedData;)V

    .line 78
    :cond_0
    return-void
.end method
