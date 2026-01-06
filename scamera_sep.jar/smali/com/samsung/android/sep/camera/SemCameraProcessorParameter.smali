.class public Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;
.super Ljava/lang/Object;
.source "SemCameraProcessorParameter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemCameraProcessorParameters"


# instance fields
.field private final mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

.field private final mClientId:Ljava/lang/Integer;

.field private mIsVIPClient:Z

.field private final mProcessHandler:Landroid/os/Handler;

.field private final mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

.field private final mSupportedParameters:Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;


# direct methods
.method public static synthetic $r8$lambda$Ylu1pkT0vwMzopY9pJ-igGr4Fw0(Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->lambda$setBeautyMode$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b39tZ4ok4bfqF9EFffibaa4ahec(Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->lambda$setPhotoHdrMode$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lJFdMHSjYSfDY305g2AR3SB1CBY(Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->lambda$setImageFormat$0(Ljava/lang/Integer;)V

    return-void
.end method

.method protected constructor <init>(Lcom/samsung/android/sep/camera/data/CaptureData;ILcom/samsung/android/sep/camera/data/ProcessorStateManager;)V
    .locals 1
    .param p1, "captureData"    # Lcom/samsung/android/sep/camera/data/CaptureData;
    .param p2, "clientId"    # I
    .param p3, "processorStateManager"    # Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mClientId:Ljava/lang/Integer;

    .line 52
    iput-object p3, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    .line 53
    invoke-static {}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->getsInstance()Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->getProcessHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mProcessHandler:Landroid/os/Handler;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mIsVIPClient:Z

    .line 55
    new-instance v0, Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;

    invoke-direct {v0}, Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mSupportedParameters:Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;

    .line 56
    return-void
.end method

.method private synthetic lambda$setBeautyMode$1(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 204
    invoke-static {}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mClientId:Ljava/lang/Integer;

    .line 206
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;

    sget-object v3, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_FACE_BEAUTY:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 210
    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->getName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Ljava/lang/Boolean;

    invoke-direct {v2, v3, p1, v4}, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;-><init>(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;)V

    .line 205
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->setProcessorParameter(ILcom/samsung/android/camerasdkservice/data/ProcessParameters;)V

    .line 204
    return-void
.end method

.method private synthetic lambda$setImageFormat$0(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/Integer;

    .line 182
    invoke-static {}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mClientId:Ljava/lang/Integer;

    .line 184
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;

    sget-object v3, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_IMAGE_FORMAT:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 187
    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->getName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v2, v3, p1, v4}, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;-><init>(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;)V

    .line 183
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->setProcessorParameter(ILcom/samsung/android/camerasdkservice/data/ProcessParameters;)V

    .line 182
    return-void
.end method

.method private synthetic lambda$setPhotoHdrMode$2(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 232
    invoke-static {}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mClientId:Ljava/lang/Integer;

    .line 234
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;

    sget-object v3, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_PHOTO_HDR:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 237
    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->getName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Ljava/lang/Boolean;

    invoke-direct {v2, v3, p1, v4}, Lcom/samsung/android/camerasdkservice/data/ProcessParameters;-><init>(Ljava/lang/String;Ljava/io/Serializable;Ljava/lang/Class;)V

    .line 233
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->setProcessorParameter(ILcom/samsung/android/camerasdkservice/data/ProcessParameters;)V

    .line 232
    return-void
.end method

.method private setBeautyMode(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 199
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mSupportedParameters:Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_FACE_BEAUTY:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;->setParamSetting(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mProcessHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mProcessHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 214
    :cond_0
    return-void
.end method

.method private setClientMode(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Integer;

    .line 115
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "argument for PARAMETER_CLIENT_MODE should be a valid client type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mIsVIPClient:Z

    .line 123
    :cond_2
    return-void
.end method

.method private setHdrMode(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Integer;

    .line 156
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "argument for PARAMETER_ENABLE_HDR_MODE should be a valid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mSupportedParameters:Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_HDR_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;->setParamSetting(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method private setImageFormat(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Integer;

    .line 172
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x100

    if-eq v0, v1, :cond_1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "argument for PARAMETER_IMAGE_FORMAT should be a valid image format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mSupportedParameters:Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_IMAGE_FORMAT:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;->setParamSetting(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mProcessHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mProcessHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 191
    :cond_2
    return-void
.end method

.method private setNightMode(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Integer;

    .line 140
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "argument for PARAMETER_ENABLE_NIGHT_MODE should be a valid value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mSupportedParameters:Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_NIGHT_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;->setParamSetting(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method private setPhotoHdrMode(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 223
    invoke-static {}, Lcom/samsung/android/sep/camera/util/SemUtil;->isPhotoHDRSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mSupportedParameters:Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_PHOTO_HDR:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;->setParamSetting(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mProcessHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mProcessHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    :cond_0
    return-void

    .line 224
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PARAMETER_ENABLE_PHOTO_HDR is not supported !!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setSingleCapture(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 131
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->setForceSingleCapture(Z)V

    .line 132
    return-void
.end method


# virtual methods
.method public declared-synchronized getAvailableParameters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 266
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v0, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;>;"
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->isForceSingleCapture()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 269
    monitor-exit p0

    return-object v0

    .line 272
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mSupportedParameters:Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;->getParamSettings()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    monitor-exit p0

    return-object v0

    .line 265
    .end local v0    # "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;>;"
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getIsVIPClient()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mIsVIPClient:Z

    return v0
.end method

.method public getProcessorParameter(Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;)Ljava/lang/Object;
    .locals 2
    .param p1, "parameter"    # Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;",
            ")TT;"
        }
    .end annotation

    .line 249
    const-string v0, "argument parameter"

    invoke-static {p1, v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProcessorParameter - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemCameraProcessorParameters"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mSupportedParameters:Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sep/camera/util/SemProcessorParameterHolder;->getProcessorParameter(Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 256
    const/4 v1, 0x0

    return-object v1
.end method

.method public setProcessorParameter(Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;Ljava/lang/Object;)V
    .locals 3
    .param p1, "parameter"    # Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;",
            "TT;)V"
        }
    .end annotation

    .line 63
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/sep/camera/data/ProcessState;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZING:Lcom/samsung/android/sep/camera/data/ProcessState;

    aput-object v2, v0, v1

    .line 64
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 65
    .local v0, "allowedStates":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/data/ProcessState;>;"
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    const-string v2, "setProcessorParameter"

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->checkIllegalState(Ljava/util/List;Ljava/lang/String;)V

    .line 67
    const-string v1, "argument parameter"

    invoke-static {p1, v1}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProcessorParameter - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemCameraProcessorParameters"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_SINGLE_CAPTURE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-direct {p0, v1}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->setSingleCapture(Ljava/lang/Boolean;)V

    .line 74
    return-void

    .line 77
    :cond_0
    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_FACE_BEAUTY:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-direct {p0, v1}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->setBeautyMode(Ljava/lang/Boolean;)V

    .line 79
    return-void

    .line 82
    :cond_1
    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_PHOTO_HDR:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-direct {p0, v1}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->setPhotoHdrMode(Ljava/lang/Boolean;)V

    .line 84
    return-void

    .line 87
    :cond_2
    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_CLIENT_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->setClientMode(Ljava/lang/Integer;)V

    .line 89
    return-void

    .line 92
    :cond_3
    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_IMAGE_FORMAT:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->setImageFormat(Ljava/lang/Integer;)V

    .line 94
    return-void

    .line 97
    :cond_4
    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_HDR_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 98
    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->setHdrMode(Ljava/lang/Integer;)V

    .line 99
    return-void

    .line 102
    :cond_5
    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_NIGHT_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 103
    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->setNightMode(Ljava/lang/Integer;)V

    .line 107
    return-void

    .line 105
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported parameter"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
