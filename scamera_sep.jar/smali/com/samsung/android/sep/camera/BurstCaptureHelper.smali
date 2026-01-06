.class Lcom/samsung/android/sep/camera/BurstCaptureHelper;
.super Lcom/samsung/android/sep/camera/CaptureHelper;
.source "BurstCaptureHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BurstCaptureHelper"


# direct methods
.method constructor <init>(Lcom/samsung/android/sep/camera/data/CaptureData;Lcom/samsung/android/sep/camera/ZoomController;Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;Lcom/samsung/android/sep/camera/data/ProcessorStateManager;Landroid/os/Handler;Landroid/os/Handler;Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;Lcom/samsung/android/sep/camera/data/ProcessRunnableData;)V
    .locals 0
    .param p1, "captureDataBurstCapture"    # Lcom/samsung/android/sep/camera/data/CaptureData;
    .param p2, "zoomControllerBurstCapture"    # Lcom/samsung/android/sep/camera/ZoomController;
    .param p3, "processorParameterBurstCapture"    # Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;
    .param p4, "processorStateManagerBurstCapture"    # Lcom/samsung/android/sep/camera/data/ProcessorStateManager;
    .param p5, "processorHandlerBurstCapture"    # Landroid/os/Handler;
    .param p6, "backgroundHandlerBurstCapture"    # Landroid/os/Handler;
    .param p7, "abortManagerBurstCapture"    # Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;
    .param p8, "runnableDataBurstCapture"    # Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    .line 40
    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/sep/camera/CaptureHelper;-><init>(Lcom/samsung/android/sep/camera/data/CaptureData;Lcom/samsung/android/sep/camera/ZoomController;Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;Lcom/samsung/android/sep/camera/data/ProcessorStateManager;Landroid/os/Handler;Landroid/os/Handler;Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;Lcom/samsung/android/sep/camera/data/ProcessRunnableData;)V

    .line 49
    return-void
.end method

.method private getCaptureSurface(I)Landroid/view/Surface;
    .locals 4
    .param p1, "dynamicShotMode"    # I

    .line 221
    invoke-static {p1}, Lcom/samsung/android/sep/camera/util/SemUtil;->getDsModeNeedRawPic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCurrentRawPicType()I

    move-result v0

    .line 223
    .local v0, "currentRawPicType":I
    iget-object v1, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 224
    invoke-virtual {v1, v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getRawOutputStreamConfig(I)Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;

    .line 225
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->getImageReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 228
    .local v1, "captureSurface":Landroid/view/Surface;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCaptureSurface: Pic TYPE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BurstCaptureHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v2, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    const/16 v3, 0xf04

    invoke-virtual {v2, v3}, Lcom/samsung/android/sep/camera/data/CaptureData;->setCaptureMode(I)V

    .line 231
    .end local v0    # "currentRawPicType":I
    goto :goto_0

    .line 232
    .end local v1    # "captureSurface":Landroid/view/Surface;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getYuvReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 234
    .restart local v1    # "captureSurface":Landroid/view/Surface;
    :goto_0
    return-object v1
.end method

.method private isPicCbImgSizeSelected(Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;ILcom/samsung/android/sep/camera/util/SensorPixelMode;)Z
    .locals 1
    .param p1, "picCbImgSizeConfig"    # Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;
    .param p2, "physicalCameraId"    # I
    .param p3, "dsSensorPixelMode"    # Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    .line 286
    if-eqz p1, :cond_0

    .line 287
    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->getPhysicalId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 289
    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->getSensorPixelMode()Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    move-result-object v0

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 286
    :goto_0
    return v0
.end method


# virtual methods
.method capture()V
    .locals 19

    .line 53
    move-object/from16 v1, p0

    const-string v0, "multi capture"

    const-string v2, "BurstCaptureHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, v1, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCaptureParameters()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->setCameraConfigMode(Ljava/util/List;)V

    .line 56
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCameraDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    .line 58
    .local v0, "cameraDevice":Landroid/hardware/camera2/CameraDevice;
    if-nez v0, :cond_0

    .line 59
    const-string v3, "capture - capture called without calling createStateCallback() api"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->handleCaptureError()V

    .line 61
    return-void

    .line 64
    :cond_0
    nop

    .line 65
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    .line 67
    .local v3, "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->setupCaptureBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V

    .line 68
    invoke-virtual {v1, v3}, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->setClientIdToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 69
    invoke-virtual {v1, v3}, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->setZoomInfoToCaptureBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 70
    invoke-virtual {v1, v3}, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->setFaceDetectMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 72
    iget-object v5, v1, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    const/16 v6, 0xf03

    invoke-virtual {v5, v6}, Lcom/samsung/android/sep/camera/data/CaptureData;->setCaptureMode(I)V

    .line 74
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v5, "captureRequestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    iget-object v6, v1, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v6}, Lcom/samsung/android/sep/camera/data/CaptureData;->getDynamicShotCondition()I

    move-result v6

    .line 76
    .local v6, "dynamicShotCondition":I
    ushr-int/lit8 v7, v6, 0x10

    .line 81
    .local v7, "dynamicShotMode":I
    const v8, 0xffff

    and-int/2addr v8, v6

    .line 85
    .local v8, "dynamicShotCnt":I
    invoke-virtual {v1, v3}, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->applyPhysicalId(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/lang/String;

    move-result-object v9

    move-object v15, v9

    .line 87
    .local v15, "runningPhysicalId":Ljava/lang/String;
    nop

    .line 88
    invoke-virtual {v1, v3, v5, v6, v7}, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->makeCaptureBuilderForDynamicShotInfo(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/List;II)I

    move-result v9

    .line 94
    .end local v6    # "dynamicShotCondition":I
    .local v9, "dynamicShotCondition":I
    invoke-static {v7}, Lcom/samsung/android/sep/camera/util/SemUtil;->getDsModeNeedRawPic(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 95
    if-eqz v15, :cond_1

    .line 96
    iget-object v6, v1, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 98
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 99
    invoke-static {v7}, Lcom/samsung/android/sep/camera/util/SemUtil;->getDsSensorPixelMode(I)Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    move-result-object v11

    .line 97
    invoke-virtual {v1, v10, v11}, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->getRawPicType(ILcom/samsung/android/sep/camera/util/SensorPixelMode;)I

    move-result v10

    .line 96
    invoke-virtual {v6, v10}, Lcom/samsung/android/sep/camera/data/CaptureData;->setCurrentRawPicType(I)V

    .line 104
    :cond_1
    iget-object v6, v1, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v6}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCurrentRawPicType()I

    move-result v6

    if-nez v6, :cond_2

    .line 106
    const/16 v4, 0x100

    invoke-virtual {v1, v4}, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->captureSinglePicture(I)V

    .line 107
    return-void

    .line 111
    :cond_2
    invoke-virtual {v1, v3, v5, v7, v8}, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->setSurface(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/List;II)V

    .line 113
    sget-object v6, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v10, "capture - dsMode: 0x%X(%d), dsCnt: %d, dsCondition: 0x%X, lightingMode: %d, physicalId: %s, dynamicShotDeviceInfo: %s"

    .line 118
    move-object v11, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 119
    move-object v12, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 120
    move-object v13, v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 121
    move-object v14, v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v4, v1, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    .line 122
    invoke-virtual {v4}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getLightingMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$OperationMode;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    .end local v3    # "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .local v17, "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-wide v3, v1, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mDynamicShotDeviceInfo:J

    .line 124
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v18, v16

    move-object/from16 v16, v3

    move-object v3, v14

    move-object/from16 v14, v18

    filled-new-array/range {v10 .. v16}, [Ljava/lang/Object;

    move-result-object v4

    .line 115
    invoke-static {v6, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 113
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v3, v1, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/android/sep/camera/data/CaptureData;->setCaptureFailed(Z)V

    .line 126
    invoke-virtual {v1, v5}, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->takeMultiPicture(Ljava/util/List;)V

    .line 128
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->sendCaptureLog()V

    .line 129
    iget-object v3, v1, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->updateCaptureState(I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v0    # "cameraDevice":Landroid/hardware/camera2/CameraDevice;
    .end local v5    # "captureRequestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .end local v7    # "dynamicShotMode":I
    .end local v8    # "dynamicShotCnt":I
    .end local v9    # "dynamicShotCondition":I
    .end local v15    # "runningPhysicalId":Ljava/lang/String;
    .end local v17    # "captureBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capture Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->handleCaptureError()V

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected final getRawPicType(ILcom/samsung/android/sep/camera/util/SensorPixelMode;)I
    .locals 3
    .param p1, "physicalCameraId"    # I
    .param p2, "dsSensorPixelMode"    # Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    .line 244
    iget-object v0, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 245
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->getRawOutputStreamConfig(I)Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;

    move-result-object v0

    .line 244
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->isPicCbImgSizeSelected(Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;ILcom/samsung/android/sep/camera/util/SensorPixelMode;)Z

    move-result v0

    const-string v2, "BurstCaptureHelper"

    if-eqz v0, :cond_0

    .line 248
    const-string v0, "getRawPicType - fifth"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return v1

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 251
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->getRawOutputStreamConfig(I)Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;

    move-result-object v0

    .line 250
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->isPicCbImgSizeSelected(Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;ILcom/samsung/android/sep/camera/util/SensorPixelMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    const-string v0, "getRawPicType - fourth"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return v1

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 258
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->getRawOutputStreamConfig(I)Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;

    move-result-object v0

    .line 257
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->isPicCbImgSizeSelected(Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;ILcom/samsung/android/sep/camera/util/SensorPixelMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    const-string v0, "getRawPicType - third"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return v1

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 264
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->getRawOutputStreamConfig(I)Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;

    move-result-object v0

    .line 263
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->isPicCbImgSizeSelected(Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;ILcom/samsung/android/sep/camera/util/SensorPixelMode;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    const-string v0, "getRawPicType - second"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return v1

    .line 271
    :cond_3
    const-string v0, "getRawPicType - First"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method makeCaptureBuilderForDynamicShotInfo(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/List;II)I
    .locals 3
    .param p1, "captureBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p3, "dynamicShotCondition"    # I
    .param p4, "dynamicShotMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;II)I"
        }
    .end annotation

    .line 307
    .local p2, "captureRequestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-static {}, Lcom/samsung/android/sep/camera/util/SemUtil;->getSamsungFeatureDynamicShotDeviceInfoAvailable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_DYNAMIC_DEVICE_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-wide v1, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mDynamicShotDeviceInfo:J

    .line 309
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 308
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 312
    :cond_0
    iget v0, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mDynamicShotExtraInfo:I

    .line 313
    .local v0, "dynamicShotExtraInfo":I
    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 314
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 313
    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 319
    invoke-static {p4}, Lcom/samsung/android/sep/camera/util/SemUtil;->getDsModeNeedSeparatedCompPic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    invoke-static {p4}, Lcom/samsung/android/sep/camera/util/SemUtil;->getDsModeNeedSeparatedUnCompPic(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 321
    invoke-static {p4}, Lcom/samsung/android/sep/camera/util/SemUtil;->getDsModeNeedSeparatedUnCompPicWithRaw(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 323
    add-int/lit8 p3, p3, 0x1

    .line 326
    iget-object v1, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->getJpegReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 327
    iget-object v1, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Lcom/samsung/android/sep/camera/data/CaptureData;->dumpSurfaceInfo(I)V

    .line 328
    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 329
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 328
    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 331
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v1, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->getJpegReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 335
    :cond_1
    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 336
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 335
    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 337
    return p3
.end method

.method setSurface(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/List;II)V
    .locals 5
    .param p1, "captureBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p3, "dynamicShotMode"    # I
    .param p4, "dynamicShotCnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;II)V"
        }
    .end annotation

    .line 168
    .local p2, "captureRequestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-direct {p0, p3}, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->getCaptureSurface(I)Landroid/view/Surface;

    move-result-object v0

    .line 170
    .local v0, "captureSurface":Landroid/view/Surface;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_3

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current Dynamic Shot Count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BurstCaptureHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-nez v1, :cond_2

    .line 178
    invoke-static {p3}, Lcom/samsung/android/sep/camera/util/SemUtil;->getDsModeNeedSeparatedUnCompPic(I)Z

    move-result v2

    const/16 v3, 0x100

    const/16 v4, 0x23

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/data/CaptureData;->getYuvReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 180
    iget-object v2, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v2, v4}, Lcom/samsung/android/sep/camera/data/CaptureData;->dumpSurfaceInfo(I)V

    .line 181
    iget-object v2, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/data/CaptureData;->getJpegReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 182
    iget-object v2, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sep/camera/data/CaptureData;->dumpSurfaceInfo(I)V

    .line 183
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v2, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/data/CaptureData;->getJpegReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 185
    iget-object v2, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/data/CaptureData;->getYuvReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    goto :goto_1

    .line 186
    :cond_0
    invoke-static {p3}, Lcom/samsung/android/sep/camera/util/SemUtil;->getDsModeNeedSeparatedUnCompPicWithRaw(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    iget-object v2, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/data/CaptureData;->getYuvReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 190
    iget-object v2, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v2, v4}, Lcom/samsung/android/sep/camera/data/CaptureData;->dumpSurfaceInfo(I)V

    .line 191
    iget-object v2, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/data/CaptureData;->getJpegReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 192
    iget-object v2, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sep/camera/data/CaptureData;->dumpSurfaceInfo(I)V

    .line 193
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 194
    iget-object v2, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v2, p3}, Lcom/samsung/android/sep/camera/data/CaptureData;->dumpDefaultSurfaceInfo(I)V

    .line 195
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v2, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/data/CaptureData;->getJpegReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 197
    iget-object v2, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/data/CaptureData;->getYuvReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 198
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    goto :goto_1

    .line 200
    :cond_1
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 201
    iget-object v2, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v2, p3}, Lcom/samsung/android/sep/camera/data/CaptureData;->dumpDefaultSurfaceInfo(I)V

    .line 202
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    goto :goto_1

    .line 207
    :cond_2
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 208
    iget-object v2, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v2, p3}, Lcom/samsung/android/sep/camera/data/CaptureData;->dumpDefaultSurfaceInfo(I)V

    .line 209
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 211
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method takeMultiPicture(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 144
    .local p1, "captureRequestList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    new-instance v0, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mProcessHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    iget-object v3, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    iget-object v4, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    iget-object v5, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sep/camera/callback/YuvBurstCaptureCallback;-><init>(Landroid/os/Handler;Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;Lcom/samsung/android/sep/camera/data/CaptureData;Lcom/samsung/android/sep/camera/data/ProcessRunnableData;Lcom/samsung/android/sep/camera/data/ProcessorStateManager;)V

    .line 151
    .local v0, "yuvBurstCaptureCallback":Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;
    iget-object v1, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/BurstCaptureHelper;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v0, v2}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 153
    return-void
.end method
