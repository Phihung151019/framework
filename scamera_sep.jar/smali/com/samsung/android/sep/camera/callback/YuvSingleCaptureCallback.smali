.class public Lcom/samsung/android/sep/camera/callback/YuvSingleCaptureCallback;
.super Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;
.source "YuvSingleCaptureCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "YuvSingleCaptureCallback"


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;Lcom/samsung/android/sep/camera/data/CaptureData;Lcom/samsung/android/sep/camera/data/ProcessRunnableData;Lcom/samsung/android/sep/camera/data/ProcessorStateManager;)V
    .locals 0
    .param p1, "yuvProcessHandler"    # Landroid/os/Handler;
    .param p2, "yuvCaptureAbortManager"    # Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;
    .param p3, "yuvCaptureData"    # Lcom/samsung/android/sep/camera/data/CaptureData;
    .param p4, "yuvProcessRunnableData"    # Lcom/samsung/android/sep/camera/data/ProcessRunnableData;
    .param p5, "yuvProcessorStateManager"    # Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    .line 42
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;-><init>(Landroid/os/Handler;Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;Lcom/samsung/android/sep/camera/data/CaptureData;Lcom/samsung/android/sep/camera/data/ProcessRunnableData;Lcom/samsung/android/sep/camera/data/ProcessorStateManager;)V

    .line 48
    return-void
.end method


# virtual methods
.method handleSingleCaptureComplete(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 14
    .param p1, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/YuvSingleCaptureCallback;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->getState()Lcom/samsung/android/sep/camera/data/ProcessState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->PROCESS:Lcom/samsung/android/sep/camera/data/ProcessState;

    if-eq v0, v1, :cond_0

    .line 99
    return-void

    .line 101
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 102
    .local v0, "timestamp":Ljava/lang/Long;
    const-string v1, "YuvSingleCaptureCallback"

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 103
    iget-object v3, p0, Lcom/samsung/android/sep/camera/callback/YuvSingleCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v3, v2}, Lcom/samsung/android/sep/camera/data/CaptureData;->setCaptureFailed(Z)V

    .line 104
    const-string v2, "handleSingleCaptureComplete: Time Stamp is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void

    .line 107
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sep/camera/callback/YuvSingleCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/data/CaptureData;->getPictureDataMappingTable()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sep/camera/util/PictureData;

    .line 109
    .local v3, "pictureData":Lcom/samsung/android/sep/camera/util/PictureData;
    if-nez v3, :cond_2

    .line 112
    new-instance v1, Lcom/samsung/android/sep/camera/util/PictureData;

    invoke-direct {v1}, Lcom/samsung/android/sep/camera/util/PictureData;-><init>()V

    .line 113
    .end local v3    # "pictureData":Lcom/samsung/android/sep/camera/util/PictureData;
    .local v1, "pictureData":Lcom/samsung/android/sep/camera/util/PictureData;
    invoke-virtual {v1, v2}, Lcom/samsung/android/sep/camera/util/PictureData;->setIsFirstFrameData(Z)V

    .line 114
    invoke-virtual {v1, v2}, Lcom/samsung/android/sep/camera/util/PictureData;->setIsLastFrameData(Z)V

    .line 115
    invoke-virtual {v1, p1}, Lcom/samsung/android/sep/camera/util/PictureData;->setCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 116
    iget-object v2, p0, Lcom/samsung/android/sep/camera/callback/YuvSingleCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->putPictureDataMappingTable(Ljava/lang/Long;Lcom/samsung/android/sep/camera/util/PictureData;)Lcom/samsung/android/sep/camera/util/PictureData;

    .line 117
    return-void

    .line 120
    .end local v1    # "pictureData":Lcom/samsung/android/sep/camera/util/PictureData;
    .restart local v3    # "pictureData":Lcom/samsung/android/sep/camera/util/PictureData;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/sep/camera/callback/YuvSingleCaptureCallback;->mProcessHandler:Landroid/os/Handler;

    if-nez v4, :cond_3

    .line 121
    iget-object v1, p0, Lcom/samsung/android/sep/camera/callback/YuvSingleCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sep/camera/data/CaptureData;->setCaptureFailed(Z)V

    .line 122
    return-void

    .line 125
    :cond_3
    const-string v4, "handle captured data"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v3, p1}, Lcom/samsung/android/sep/camera/util/PictureData;->setCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 127
    invoke-virtual {v3, v2}, Lcom/samsung/android/sep/camera/util/PictureData;->setIsFirstFrameData(Z)V

    .line 128
    invoke-virtual {v3, v2}, Lcom/samsung/android/sep/camera/util/PictureData;->setIsLastFrameData(Z)V

    .line 130
    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/util/PictureData;->getPendingImages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 131
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 132
    new-instance v2, Lcom/samsung/android/sep/camera/util/PictureProcessedData;

    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/Image;

    .line 135
    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/util/PictureData;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v5

    .line 136
    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/util/PictureData;->isFirstFrameData()Z

    move-result v6

    .line 137
    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/util/PictureData;->isLastFrameData()Z

    move-result v7

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/samsung/android/sep/camera/util/PictureProcessedData;-><init>(Landroid/media/Image;Landroid/hardware/camera2/CaptureResult;ZZ)V

    move-object v9, v2

    .line 138
    .local v9, "pictureProcessedData":Lcom/samsung/android/sep/camera/util/PictureProcessedData;
    iget-object v2, p0, Lcom/samsung/android/sep/camera/callback/YuvSingleCaptureCallback;->mProcessHandler:Landroid/os/Handler;

    new-instance v8, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;

    iget-object v10, p0, Lcom/samsung/android/sep/camera/callback/YuvSingleCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    iget-object v11, p0, Lcom/samsung/android/sep/camera/callback/YuvSingleCaptureCallback;->mCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    iget-object v12, p0, Lcom/samsung/android/sep/camera/callback/YuvSingleCaptureCallback;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    iget-object v13, p0, Lcom/samsung/android/sep/camera/callback/YuvSingleCaptureCallback;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;-><init>(Lcom/samsung/android/sep/camera/util/PictureProcessedData;Lcom/samsung/android/sep/camera/data/CaptureData;Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;Lcom/samsung/android/sep/camera/data/ProcessRunnableData;Lcom/samsung/android/sep/camera/data/ProcessorStateManager;)V

    invoke-virtual {v2, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 146
    .end local v9    # "pictureProcessedData":Lcom/samsung/android/sep/camera/util/PictureProcessedData;
    goto :goto_0

    .line 147
    :cond_4
    return-void
.end method

.method handleSingleCaptureFail()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/YuvSingleCaptureCallback;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->getState()Lcom/samsung/android/sep/camera/data/ProcessState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->PROCESS:Lcom/samsung/android/sep/camera/data/ProcessState;

    if-eq v0, v1, :cond_0

    .line 170
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/YuvSingleCaptureCallback;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->updateState(Lcom/samsung/android/sep/camera/data/ProcessState;)V

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/callback/YuvSingleCaptureCallback;->sendErrorCallback(I)V

    .line 174
    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/callback/YuvSingleCaptureCallback;->sendErrorSALog(I)V

    .line 175
    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 86
    const-string v0, "YuvSingleCaptureCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureCompleted timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/YuvSingleCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCaptureCallbackLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 88
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/samsung/android/sep/camera/callback/YuvSingleCaptureCallback;->handleSingleCaptureComplete(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 89
    monitor-exit v0

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .line 161
    const-string v0, "YuvSingleCaptureCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureFailed reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/YuvSingleCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCaptureCallbackLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 163
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/callback/YuvSingleCaptureCallback;->handleSingleCaptureFail()V

    .line 164
    monitor-exit v0

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 2
    .param p1, "yuvCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "yuvCaptureRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureStarted: capture timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frames number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YuvSingleCaptureCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/callback/YuvSingleCaptureCallback;->sendOnShutterCallback()V

    .line 72
    return-void
.end method
