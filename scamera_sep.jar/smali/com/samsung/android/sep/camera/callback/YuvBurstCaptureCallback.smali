.class public Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;
.super Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;
.source "YuvBurstCaptureCallback.java"


# static fields
.field private static final CAPTURE_MODE_CAPTURE_BURST_RAW:I = 0xf04

.field private static final TAG:Ljava/lang/String; = "YuvBurstCaptureCallback"


# instance fields
.field private mCaptureCompletedCount:I


# direct methods
.method public static synthetic $r8$lambda$f3UAS9d0djedPC-bd3WBrwRvuxE(Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->lambda$sendOnPictureAvailable$0(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;Lcom/samsung/android/sep/camera/data/CaptureData;Lcom/samsung/android/sep/camera/data/ProcessRunnableData;Lcom/samsung/android/sep/camera/data/ProcessorStateManager;)V
    .locals 2
    .param p1, "processHandler"    # Landroid/os/Handler;
    .param p2, "captureAbortManager"    # Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;
    .param p3, "captureData"    # Lcom/samsung/android/sep/camera/data/CaptureData;
    .param p4, "processRunnableData"    # Lcom/samsung/android/sep/camera/data/ProcessRunnableData;
    .param p5, "processorStateManager"    # Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    .line 47
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;-><init>(Landroid/os/Handler;Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;Lcom/samsung/android/sep/camera/data/CaptureData;Lcom/samsung/android/sep/camera/data/ProcessRunnableData;Lcom/samsung/android/sep/camera/data/ProcessorStateManager;)V

    .line 53
    move-object v0, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "processHandler":Landroid/os/Handler;
    .local v0, "processorStateManager":Lcom/samsung/android/sep/camera/data/ProcessorStateManager;
    .local p2, "processHandler":Landroid/os/Handler;
    .local p3, "captureAbortManager":Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;
    .local p4, "captureData":Lcom/samsung/android/sep/camera/data/CaptureData;
    .local p5, "processRunnableData":Lcom/samsung/android/sep/camera/data/ProcessRunnableData;
    const/4 v1, 0x0

    iput v1, p1, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureCompletedCount:I

    .line 54
    return-void
.end method

.method private checkCaptureFailure(Z)V
    .locals 2
    .param p1, "isCbNeeded"    # Z

    .line 243
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->isCaptureFailed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->setCaptureFailed(Z)V

    .line 245
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->resetState()V

    .line 246
    if-eqz p1, :cond_1

    .line 247
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCaptureMode()I

    move-result v0

    const/16 v1, 0xf04

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 248
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getJpegByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getJpegByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->sendOnPictureAvailable(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 251
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->sendErrorCallback(I)V

    .line 252
    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->sendErrorSALog(I)V

    .line 256
    :cond_1
    :goto_0
    return-void
.end method

.method private configurePictureData(Lcom/samsung/android/sep/camera/util/PictureData;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1
    .param p1, "data"    # Lcom/samsung/android/sep/camera/util/PictureData;
    .param p2, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 226
    invoke-virtual {p1, p2}, Lcom/samsung/android/sep/camera/util/PictureData;->setCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->isFirstFrameCapture()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sep/camera/util/PictureData;->setIsFirstFrameData(Z)V

    .line 229
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->isLastFrameCaptured()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sep/camera/util/PictureData;->setIsLastFrameData(Z)V

    .line 232
    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/util/PictureData;->isLastFrameData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->sendOnShutterCallback()V

    .line 235
    :cond_0
    return-void
.end method

.method private dispatchOnPictureAvailable(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "imageByteBuffer"    # Ljava/nio/ByteBuffer;

    .line 275
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getSdkCaptureCallback()Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 276
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 280
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    .line 279
    const-string v1, "2.1.0"

    invoke-static {v0, v1}, Lcom/samsung/android/sep/camera/util/SemUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getSdkCaptureCallback()Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;->onPictureAvailable(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 285
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getSdkCaptureCallback()Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;

    move-result-object v0

    .line 286
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;->onPictureAvailable(Ljava/nio/ByteBuffer;I)V

    .line 289
    :goto_0
    return-void
.end method

.method private isFirstFrameCapture()Z
    .locals 4

    .line 300
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 301
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getDynamicShotCondition()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    .line 304
    .local v0, "dynamicShotMode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dynamicShotMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "YuvBurstCaptureCallback"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCaptureCompletedCount: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureCompletedCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget v1, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureCompletedCount:I

    .line 309
    nop

    .line 308
    invoke-static {v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->getDsModeNeedSeparatedCompPic(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 309
    invoke-static {v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->getDsModeNeedSeparatedUnCompPic(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 310
    invoke-static {v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->getDsModeNeedSeparatedUnCompPicWithRaw(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 312
    const/4 v2, 0x2

    goto :goto_0

    .line 313
    :cond_0
    move v2, v3

    :goto_0
    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 307
    :goto_1
    return v3
.end method

.method private isLastFrameCaptured()Z
    .locals 4

    .line 318
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 319
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getDynamicShotCondition()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    .line 322
    .local v0, "dynamicShotMode":I
    iget-object v1, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 323
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->getDynamicShotCondition()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    .line 326
    .local v1, "dynamicShotCnt":I
    iget v2, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureCompletedCount:I

    .line 328
    nop

    .line 327
    invoke-static {v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->getDsModeNeedSeparatedCompPic(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    invoke-static {v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->getDsModeNeedSeparatedUnCompPic(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 329
    invoke-static {v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->getDsModeNeedSeparatedUnCompPicWithRaw(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 331
    add-int/lit8 v3, v1, 0x1

    goto :goto_0

    .line 332
    :cond_0
    move v3, v1

    :goto_0
    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 326
    :goto_1
    return v2
.end method

.method private synthetic lambda$sendOnPictureAvailable$0(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "imageByteBuffer"    # Ljava/nio/ByteBuffer;

    .line 266
    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->dispatchOnPictureAvailable(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private resetState()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->clearPictureDataMappingTable()V

    .line 294
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->updateState(Lcom/samsung/android/sep/camera/data/ProcessState;)V

    .line 295
    const-string v0, "YuvBurstCaptureCallback"

    const-string v1, "setCaptureState STATE_INITIALIZED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void
.end method

.method private sendOnPictureAvailable(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "imageByteBuffer"    # Ljava/nio/ByteBuffer;

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->getAppCaptureHandler()Landroid/os/Handler;

    move-result-object v0

    .line 266
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 267
    return-void
.end method


# virtual methods
.method handleCaptureComplete(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 14
    .param p1, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 177
    iget v0, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureCompletedCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureCompletedCount:I

    .line 178
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureResultKey;->RESULT_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 179
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 180
    .local v0, "timestamp":Ljava/lang/Long;
    const-string v2, "YuvBurstCaptureCallback"

    if-nez v0, :cond_0

    .line 181
    iget-object v3, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v3, v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->setCaptureFailed(Z)V

    .line 182
    const-string v1, "handleCaptureComplete: Time Stamp is null"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void

    .line 185
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/data/CaptureData;->getPictureDataMappingTable()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sep/camera/util/PictureData;

    .line 187
    .local v3, "data":Lcom/samsung/android/sep/camera/util/PictureData;
    if-nez v3, :cond_1

    .line 190
    new-instance v1, Lcom/samsung/android/sep/camera/util/PictureData;

    invoke-direct {v1}, Lcom/samsung/android/sep/camera/util/PictureData;-><init>()V

    .line 192
    .end local v3    # "data":Lcom/samsung/android/sep/camera/util/PictureData;
    .local v1, "data":Lcom/samsung/android/sep/camera/util/PictureData;
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->configurePictureData(Lcom/samsung/android/sep/camera/util/PictureData;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 193
    iget-object v2, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->putPictureDataMappingTable(Ljava/lang/Long;Lcom/samsung/android/sep/camera/util/PictureData;)Lcom/samsung/android/sep/camera/util/PictureData;

    .line 194
    return-void

    .line 197
    .end local v1    # "data":Lcom/samsung/android/sep/camera/util/PictureData;
    .restart local v3    # "data":Lcom/samsung/android/sep/camera/util/PictureData;
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mProcessHandler:Landroid/os/Handler;

    if-nez v4, :cond_2

    .line 198
    iget-object v2, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->setCaptureFailed(Z)V

    .line 199
    return-void

    .line 202
    :cond_2
    const-string v1, "handle captured data"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-direct {p0, v3, p1}, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->configurePictureData(Lcom/samsung/android/sep/camera/util/PictureData;Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 205
    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/util/PictureData;->getPendingImages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 206
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 207
    new-instance v2, Lcom/samsung/android/sep/camera/util/PictureProcessedData;

    .line 209
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/Image;

    .line 210
    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/util/PictureData;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v5

    .line 211
    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/util/PictureData;->isFirstFrameData()Z

    move-result v6

    .line 212
    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/util/PictureData;->isLastFrameData()Z

    move-result v7

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/samsung/android/sep/camera/util/PictureProcessedData;-><init>(Landroid/media/Image;Landroid/hardware/camera2/CaptureResult;ZZ)V

    move-object v9, v2

    .line 213
    .local v9, "processedData":Lcom/samsung/android/sep/camera/util/PictureProcessedData;
    iget-object v2, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mProcessHandler:Landroid/os/Handler;

    new-instance v8, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;

    iget-object v10, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    iget-object v11, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    iget-object v12, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    iget-object v13, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;-><init>(Lcom/samsung/android/sep/camera/util/PictureProcessedData;Lcom/samsung/android/sep/camera/data/CaptureData;Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;Lcom/samsung/android/sep/camera/data/ProcessRunnableData;Lcom/samsung/android/sep/camera/data/ProcessorStateManager;)V

    invoke-virtual {v2, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 221
    .end local v9    # "processedData":Lcom/samsung/android/sep/camera/util/PictureProcessedData;
    goto :goto_0

    .line 223
    .end local v0    # "timestamp":Ljava/lang/Long;
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v3    # "data":Lcom/samsung/android/sep/camera/util/PictureData;
    :cond_3
    return-void
.end method

.method handleCaptureFail()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->setCaptureFailed(Z)V

    .line 162
    return-void
.end method

.method handleCaptureSequenceComplete()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->getState()Lcom/samsung/android/sep/camera/data/ProcessState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->PROCESS:Lcom/samsung/android/sep/camera/data/ProcessState;

    if-eq v0, v1, :cond_0

    .line 167
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->isAborted()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->checkCaptureFailure(Z)V

    .line 173
    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 101
    const-string v0, "YuvBurstCaptureCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureCompleted timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    .line 104
    invoke-virtual {p3, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", frame number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 106
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCaptureCallbackLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 109
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->handleCaptureComplete(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 110
    monitor-exit v0

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureFailed: failure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YuvBurstCaptureCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->handleCaptureFail()V

    .line 127
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureProgressed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureResult;->getSequenceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YuvBurstCaptureCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I

    .line 156
    const-string v0, "YuvBurstCaptureCallback"

    const-string v1, "onCaptureSequenceAborted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    .line 141
    const-string v0, "YuvBurstCaptureCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureSequenceCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->getState()Lcom/samsung/android/sep/camera/data/ProcessState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCaptureCallbackLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;->handleCaptureSequenceComplete()V

    .line 144
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureStarted: timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frameNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YuvBurstCaptureCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method
