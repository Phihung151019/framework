.class public Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
.super Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;
.source "SemCameraCaptureProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;,
        Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;,
        Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;,
        Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sep/camera/SemCameraEffectProcessor<",
        "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;",
        "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;",
        "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;",
        "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;",
        ">;"
    }
.end annotation


# static fields
.field public static final PARAMETER_CLIENT_MODE:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAMETER_ENABLE_FACE_BEAUTY:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAMETER_ENABLE_HDR_MODE:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAMETER_ENABLE_NIGHT_MODE:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAMETER_ENABLE_PHOTO_HDR:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAMETER_IMAGE_FORMAT:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAMETER_SINGLE_CAPTURE:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemCameraCaptureProcessor"

.field private static mSemCameraCaptureProcessor:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

.field private static final sParameterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;",
            "Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 71
    new-instance v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    const-string v1, "beauty_parameter"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_ENABLE_FACE_BEAUTY:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    .line 79
    new-instance v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    const-string v1, "image_format"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_IMAGE_FORMAT:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    .line 87
    new-instance v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    const-string v1, "hdr_enable"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_ENABLE_HDR_MODE:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    .line 95
    new-instance v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    const-string v1, "photo_hdr"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_ENABLE_PHOTO_HDR:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    .line 103
    new-instance v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    const-string v1, "night_enable"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_ENABLE_NIGHT_MODE:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    .line 111
    new-instance v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    const-string v1, "client_mode"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_CLIENT_MODE:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    .line 115
    new-instance v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    const-string v1, "single_capture"

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_SINGLE_CAPTURE:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sParameterMap:Ljava/util/Map;

    .line 127
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sParameterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_CLIENT_MODE:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    sget-object v2, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_CLIENT_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sParameterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_ENABLE_NIGHT_MODE:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    sget-object v2, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_NIGHT_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sParameterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_SINGLE_CAPTURE:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    sget-object v2, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_SINGLE_CAPTURE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sParameterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_ENABLE_FACE_BEAUTY:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    sget-object v2, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_FACE_BEAUTY:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sParameterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_ENABLE_HDR_MODE:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    sget-object v2, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_HDR_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sParameterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_IMAGE_FORMAT:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    sget-object v2, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_IMAGE_FORMAT:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sParameterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_ENABLE_PHOTO_HDR:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    sget-object v2, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_PHOTO_HDR:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;-><init>()V

    return-void
.end method

.method private static declared-synchronized clearInstance()V
    .locals 2

    const-class v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    monitor-enter v0

    .line 1134
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSemCameraCaptureProcessor:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    monitor-exit v0

    return-void

    .line 1133
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private declared-synchronized createSessionConfigurationHelper(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/params/SessionConfiguration;
    .locals 9
    .param p2, "stateCallback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/hardware/camera2/params/SessionConfiguration;"
        }
    .end annotation

    .local p1, "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    monitor-enter p0

    .line 978
    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Lcom/samsung/android/sep/camera/data/ProcessState;

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZING:Lcom/samsung/android/sep/camera/data/ProcessState;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->PROCESS:Lcom/samsung/android/sep/camera/data/ProcessState;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 979
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 981
    .local v0, "allowedStates":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/data/ProcessState;>;"
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    const-string v5, "createSessionConfigurationHelper"

    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->checkIllegalState(Ljava/util/List;Ljava/lang/String;)V

    .line 983
    const-string v1, "list of output configuration "

    invoke-static {p1, v1}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 984
    const-string v1, "statecallback"

    invoke-static {p2, v1}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 986
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 987
    .local v1, "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 989
    iget-boolean v5, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mIsTest:Z

    if-nez v5, :cond_2

    .line 990
    iget-boolean v5, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mIsUDCCamera:Z

    const/4 v6, -0x1

    if-nez v5, :cond_0

    .line 991
    new-instance v5, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v7, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mYuvReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    .line 994
    invoke-virtual {v7}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-direct {v5, v6, v7, v2, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;II)V

    .line 991
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 997
    iget-object v5, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mYuvReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    invoke-virtual {p0, v6, v5, v2, v4}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->dumpOutputConfiguration(ILcom/samsung/android/sep/camera/util/BlockingImageReader;II)V

    .line 1004
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
    :cond_0
    new-instance v5, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v7, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mJpegReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    .line 1007
    invoke-virtual {v7}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-direct {v5, v6, v7, v2, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;II)V

    .line 1004
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    iget-object v5, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mJpegReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    invoke-virtual {p0, v6, v5, v2, v4}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->dumpOutputConfiguration(ILcom/samsung/android/sep/camera/util/BlockingImageReader;II)V

    .line 1016
    iget-object v4, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mPreviewImageReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    if-eqz v4, :cond_1

    .line 1017
    const-string v4, "SemCameraCaptureProcessor"

    const-string v5, "setting preview surface, Engine  set"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    new-instance v4, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v5, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mPreviewImageReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    .line 1021
    invoke-virtual {v5}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-direct {v4, v6, v5, v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;II)V

    .line 1018
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1024
    iget-object v4, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mPreviewImageReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    invoke-virtual {p0, v6, v4, v2, v3}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->dumpOutputConfiguration(ILcom/samsung/android/sep/camera/util/BlockingImageReader;II)V

    .line 1031
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;

    .line 1032
    .local v4, "configs":Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;
    new-instance v5, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 1035
    invoke-virtual {v4}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->getImageReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v7

    .line 1037
    invoke-virtual {v4}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->getOption()I

    move-result v8

    invoke-direct {v5, v6, v7, v2, v8}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;II)V

    .line 1032
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    nop

    .line 1040
    invoke-virtual {v4}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->getImageReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v5

    .line 1042
    invoke-virtual {v4}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->getOption()I

    move-result v7

    .line 1038
    invoke-virtual {p0, v6, v5, v2, v7}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->dumpOutputConfiguration(ILcom/samsung/android/sep/camera/util/BlockingImageReader;II)V

    .line 1043
    .end local v4    # "configs":Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;
    goto :goto_0

    .line 1047
    :cond_2
    if-nez p3, :cond_3

    .line 1048
    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .local v3, "executor":Ljava/util/concurrent/Executor;
    goto :goto_1

    .line 1050
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    :cond_3
    new-instance v3, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$1;

    invoke-direct {v3, p0, p3}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$1;-><init>(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;Landroid/os/Handler;)V

    .line 1058
    .restart local v3    # "executor":Ljava/util/concurrent/Executor;
    :goto_1
    new-instance v4, Landroid/hardware/camera2/params/SessionConfiguration;

    invoke-direct {v4, v2, v1, v3, p2}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 1065
    .local v4, "temp":Landroid/hardware/camera2/params/SessionConfiguration;
    const-string v2, "SemCameraCaptureProcessor"

    const-string v5, " createSessionConfiguration. "

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    monitor-exit p0

    return-object v4

    .line 977
    .end local v0    # "allowedStates":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/data/ProcessState;>;"
    .end local v1    # "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v4    # "temp":Landroid/hardware/camera2/params/SessionConfiguration;
    .end local p1    # "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local p2    # "stateCallback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .end local p3    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static getCurrentSystemSelfieTone()I
    .locals 2

    .line 791
    invoke-static {}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    move-result-object v0

    .line 792
    invoke-static {}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getInstance()Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mClientId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getCurrentSystemSelfieTone(I)I

    move-result v0

    .line 791
    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
    .locals 2

    const-class v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    monitor-enter v0

    .line 148
    :try_start_0
    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSemCameraCaptureProcessor:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    if-nez v1, :cond_0

    .line 149
    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    invoke-direct {v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;-><init>()V

    sput-object v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSemCameraCaptureProcessor:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;

    .line 151
    :cond_0
    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSemCameraCaptureProcessor:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 147
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getRawStreamConfigs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/util/RawStreamConfig;",
            ">;"
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v0, "rawStreamConfigsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/util/RawStreamConfig;>;"
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isSuperNightSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    const-string v2, "4.0.0"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    .line 241
    invoke-virtual {v1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    .line 240
    invoke-static {v1, v2}, Lcom/samsung/android/sep/camera/util/SemUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 245
    invoke-static {v1}, Lcom/samsung/android/sep/camera/vendor/CameraCharacteristicsUtils;->getSamsungScalerAvailableSuperNightRawStreamConfigs(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v1

    .line 244
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isZoomControllerAvailable(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    .line 251
    invoke-virtual {v1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-static {v1, v2}, Lcom/samsung/android/sep/camera/util/SemUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 256
    invoke-static {v1}, Lcom/samsung/android/sep/camera/vendor/CameraCharacteristicsUtils;->getSamsungScalerAvailableSuperResolutionRawStreamConfigs(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v1

    .line 254
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 260
    :cond_1
    return-object v0
.end method

.method private prepareBurstCaptureData(Landroid/media/Image;)Lcom/samsung/android/sep/camera/util/PictureData;
    .locals 6
    .param p1, "image"    # Landroid/media/Image;

    .line 687
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    .line 689
    .local v0, "timestamp":J
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/data/CaptureData;->getPictureDataMappingTable()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentNavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sep/camera/util/PictureData;

    .line 690
    .local v2, "data":Lcom/samsung/android/sep/camera/util/PictureData;
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 694
    invoke-virtual {v2, p1}, Lcom/samsung/android/sep/camera/util/PictureData;->addImage(Landroid/media/Image;)V

    .line 695
    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/util/PictureData;->isCaptureResultAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v2

    .line 697
    :cond_0
    return-object v3

    .line 702
    :cond_1
    new-instance v4, Lcom/samsung/android/sep/camera/util/PictureData;

    invoke-direct {v4}, Lcom/samsung/android/sep/camera/util/PictureData;-><init>()V

    .line 703
    .end local v2    # "data":Lcom/samsung/android/sep/camera/util/PictureData;
    .local v4, "data":Lcom/samsung/android/sep/camera/util/PictureData;
    invoke-virtual {v4, p1}, Lcom/samsung/android/sep/camera/util/PictureData;->addImage(Landroid/media/Image;)V

    .line 704
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Lcom/samsung/android/sep/camera/data/CaptureData;->putPictureDataMappingTable(Ljava/lang/Long;Lcom/samsung/android/sep/camera/util/PictureData;)Lcom/samsung/android/sep/camera/util/PictureData;

    .line 705
    return-object v3
.end method

.method private prepareJpegBuffer(Landroid/media/Image;)V
    .locals 5
    .param p1, "image"    # Landroid/media/Image;

    .line 586
    invoke-static {p1}, Lcom/samsung/android/sep/camera/util/ImageUtil;->getByteBufferfromJPEGImage(Landroid/media/Image;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 587
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 589
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v1, v2

    .line 590
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 591
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 592
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 593
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 599
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 594
    :catch_0
    move-exception v2

    .line 596
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    sget-object v4, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-virtual {v3, v4}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->updateState(Lcom/samsung/android/sep/camera/data/ProcessState;)V

    .line 597
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->handleError(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 599
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mJpegReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    invoke-virtual {v2, p1}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->closeImage(Landroid/media/Image;)V

    .line 600
    nop

    .line 602
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->setJpegByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 603
    return-void

    .line 599
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mJpegReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    invoke-virtual {v3, p1}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->closeImage(Landroid/media/Image;)V

    .line 600
    throw v2
.end method

.method private prepareYuvByteBuffer(Landroid/media/Image;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "image"    # Landroid/media/Image;

    .line 614
    const/4 v0, 0x0

    .line 616
    .local v0, "imageByteBuffer":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/sep/camera/util/ImageUtil;->YUV48ToNV21(Landroid/media/Image;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 619
    goto :goto_0

    .line 617
    :catch_0
    move-exception v1

    .line 618
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->handleError(I)V

    .line 620
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mYuvReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->closeImage(Landroid/media/Image;)V

    .line 621
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    sget-object v2, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->updateState(Lcom/samsung/android/sep/camera/data/ProcessState;)V

    .line 622
    return-object v0
.end method

.method private setImageReaderForRawStream()V
    .locals 5

    .line 226
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getRawStreamConfigs()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->getDistinctRawStreamConfigs(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->setRawPicCbConfig(Ljava/util/List;)V

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImageReaderForRawStream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemCameraCaptureProcessor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;

    .line 231
    .local v1, "configs":Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->getImageReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mOnImageAvailableListener:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$ImageAvailableListener;

    iget-object v4, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mBackgroundHandler:Landroid/os/Handler;

    .line 232
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 233
    .end local v1    # "configs":Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;
    goto :goto_0

    .line 234
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized abortCapture()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    monitor-enter p0

    .line 844
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSemCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    if-eqz v0, :cond_1

    .line 845
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSemCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->getState()I

    move-result v0

    .line 846
    .local v0, "captureState":I
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSemCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->abortCapture()Z

    .line 847
    const-string v1, "ABTC"

    const-string v2, ""

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v2, v3}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->logSAInsert(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    .line 855
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSemCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->isAbortSupportedInService()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 857
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->moveToInitializedState()V

    .line 859
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSemCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->updateCaptureState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 862
    .end local v0    # "captureState":I
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
    :cond_0
    nop

    .line 865
    monitor-exit p0

    return-void

    .line 863
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Warning, Cannot abort !!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 843
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized buildCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;
    .locals 4
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    monitor-enter p0

    .line 407
    :try_start_0
    const-string v0, "SemCameraCaptureProcessor"

    const-string v1, "buildCaptureRequest E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-string v0, "builder"

    invoke-static {p1, v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    const-string v0, "SemCameraCaptureProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selfie tone mode set to = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentSelfieToneMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isAutoFramingVdisSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    .line 413
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentAutoFramingMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;

    move-result-object v1

    .line 412
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    goto :goto_0

    .line 414
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isPreviewVDISSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentVDISMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 416
    const-string v0, "VDIS"

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    .line 419
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentVDISMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 416
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->logSAInsert(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    .line 423
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isSelfieToneSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    .line 425
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentSelfieToneMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    move-result-object v1

    .line 424
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 426
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isExposureControlSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 427
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    .line 428
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentExposureControlMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;

    move-result-object v1

    .line 427
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 429
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isSuperNightSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 430
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getSuperNightMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 431
    :cond_4
    invoke-super {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->buildCaptureRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 406
    .end local p1    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized capture(Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;Landroid/os/Handler;Ljava/util/List;)V
    .locals 10
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "dynamicShotInfo"    # Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;
    .param p3, "captureCallback"    # Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCaptureSession;",
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;",
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;",
            "Landroid/os/Handler;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;",
            ">;)V"
        }
    .end annotation

    .local p5, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;>;"
    monitor-enter p0

    .line 452
    :try_start_0
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->capture(Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;Landroid/os/Handler;Ljava/util/List;)V

    .line 453
    const-string v0, "SemCameraCaptureProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capture: yuv "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isBurstYuvCapture()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isBurstYuvCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    sget-object v1, Lcom/samsung/android/sep/camera/CaptureFactory$CaptureType;->BURST:Lcom/samsung/android/sep/camera/CaptureFactory$CaptureType;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mZoomController:Lcom/samsung/android/sep/camera/ZoomController;

    iget-object v4, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSemCameraProcessorParameter:Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;

    iget-object v5, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    iget-object v6, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSemCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    iget-object v9, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    .line 458
    invoke-static/range {v1 .. v9}, Lcom/samsung/android/sep/camera/CaptureFactory;->createCaptureHelper(Lcom/samsung/android/sep/camera/CaptureFactory$CaptureType;Lcom/samsung/android/sep/camera/data/CaptureData;Lcom/samsung/android/sep/camera/ZoomController;Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;Lcom/samsung/android/sep/camera/data/ProcessorStateManager;Landroid/os/Handler;Landroid/os/Handler;Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;Lcom/samsung/android/sep/camera/data/ProcessRunnableData;)Lcom/samsung/android/sep/camera/CaptureHelper;

    move-result-object v0

    .local v0, "captureHelper":Lcom/samsung/android/sep/camera/CaptureHelper;
    goto :goto_0

    .line 469
    .end local v0    # "captureHelper":Lcom/samsung/android/sep/camera/CaptureHelper;
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
    :cond_0
    sget-object v0, Lcom/samsung/android/sep/camera/CaptureFactory$CaptureType;->SINGLE:Lcom/samsung/android/sep/camera/CaptureFactory$CaptureType;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mZoomController:Lcom/samsung/android/sep/camera/ZoomController;

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSemCameraProcessorParameter:Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;

    iget-object v4, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    iget-object v5, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSemCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    iget-object v8, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    .line 470
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/sep/camera/CaptureFactory;->createCaptureHelper(Lcom/samsung/android/sep/camera/CaptureFactory$CaptureType;Lcom/samsung/android/sep/camera/data/CaptureData;Lcom/samsung/android/sep/camera/ZoomController;Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;Lcom/samsung/android/sep/camera/data/ProcessorStateManager;Landroid/os/Handler;Landroid/os/Handler;Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;Lcom/samsung/android/sep/camera/data/ProcessRunnableData;)Lcom/samsung/android/sep/camera/CaptureHelper;

    move-result-object v0

    .line 482
    .restart local v0    # "captureHelper":Lcom/samsung/android/sep/camera/CaptureHelper;
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/CaptureHelper;->capture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    monitor-exit p0

    return-void

    .line 451
    .end local v0    # "captureHelper":Lcom/samsung/android/sep/camera/CaptureHelper;
    .end local p1    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .end local p2    # "dynamicShotInfo":Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;
    .end local p3    # "captureCallback":Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;
    .end local p4    # "handler":Landroid/os/Handler;
    .end local p5    # "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureParameter;>;"
    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic capture(Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/sep/camera/internal/SemDynamicShotInfo;Lcom/samsung/android/sep/camera/internal/SemCaptureCallback;Landroid/os/Handler;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 58
    move-object v2, p2

    check-cast v2, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;

    move-object v3, p3

    check-cast v3, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->capture(Landroid/hardware/camera2/CameraCaptureSession;Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$DynamicShotInfo;Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$CaptureCallback;Landroid/os/Handler;Ljava/util/List;)V

    return-void
.end method

.method public declared-synchronized createCaptureCallback(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1
    .param p1, "appCallback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    monitor-enter p0

    .line 893
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->createCaptureCallback(Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 893
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
    .end local p1    # "appCallback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .end local p2    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized createSessionConfiguration(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/os/Handler;)Landroid/hardware/camera2/params/SessionConfiguration;
    .locals 4
    .param p2, "stateCallback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "requestBuilder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/util/SemOutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/hardware/camera2/params/SessionConfiguration;"
        }
    .end annotation

    .local p1, "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/util/SemOutputConfiguration;>;"
    monitor-enter p0

    .line 914
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 915
    .local v0, "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sep/camera/util/SemOutputConfiguration;

    .line 916
    .local v2, "semOutputConfiguration":Lcom/samsung/android/sep/camera/util/SemOutputConfiguration;
    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/util/SemOutputConfiguration;->getConfig()Landroid/hardware/camera2/params/OutputConfiguration;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    nop

    .end local v2    # "semOutputConfiguration":Lcom/samsung/android/sep/camera/util/SemOutputConfiguration;
    goto :goto_0

    .line 919
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
    :cond_0
    new-instance v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;-><init>(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSessionStateCallback:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;

    .line 921
    invoke-virtual {p0, p3}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->setClientIdToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 922
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSessionStateCallback:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$CaptureSessionCallback;

    .line 923
    invoke-direct {p0, v0, v1, p4}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->createSessionConfigurationHelper(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/params/SessionConfiguration;

    move-result-object v1

    .line 925
    .local v1, "temp":Landroid/hardware/camera2/params/SessionConfiguration;
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, v2}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isAutoFramingVdisSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 926
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    .line 927
    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentVDISMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    move-result-object v3

    .line 926
    invoke-virtual {v2, v3, p3}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 928
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    .line 929
    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentAutoFramingMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;

    move-result-object v3

    .line 928
    invoke-virtual {v2, v3, p3}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    goto :goto_1

    .line 930
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, v2}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isPreviewVDISSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 931
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    .line 932
    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentVDISMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    move-result-object v3

    .line 931
    invoke-virtual {v2, v3, p3}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 935
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, v2}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isExposureControlSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 936
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    .line 937
    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentExposureControlMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;

    move-result-object v3

    .line 936
    invoke-virtual {v2, v3, p3}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 939
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, v2}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isSelfieToneSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 940
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    .line 941
    invoke-virtual {v3}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentSelfieToneMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    move-result-object v3

    .line 940
    invoke-virtual {v2, v3, p3}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 944
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    invoke-virtual {v2, p3}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setShootingMode(Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 945
    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    monitor-exit p0

    return-object v1

    .line 913
    .end local v0    # "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v1    # "temp":Landroid/hardware/camera2/params/SessionConfiguration;
    .end local p1    # "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/util/SemOutputConfiguration;>;"
    .end local p2    # "stateCallback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .end local p3    # "requestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local p4    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized createSessionConfiguration(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/params/SessionConfiguration;
    .locals 1
    .param p2, "stateCallback"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/hardware/camera2/params/SessionConfiguration;"
        }
    .end annotation

    .local p1, "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    monitor-enter p0

    .line 963
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->createSessionConfigurationHelper(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/params/SessionConfiguration;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 963
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
    .end local p1    # "outputConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local p2    # "stateCallback":Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .end local p3    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized createStateCallback(Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 1
    .param p1, "stateCallback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    monitor-enter p0

    .line 879
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->createStateCallback(Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)Landroid/hardware/camera2/CameraDevice$StateCallback;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 879
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
    .end local p1    # "stateCallback":Landroid/hardware/camera2/CameraDevice$StateCallback;
    .end local p2    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized deinitialize()V
    .locals 2

    monitor-enter p0

    .line 1128
    :try_start_0
    const-string v0, "SemCameraCaptureProcessor"

    const-string v1, "deinitialize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    invoke-static {}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->clearInstance()V

    .line 1130
    invoke-super {p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->deinitialize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1131
    monitor-exit p0

    return-void

    .line 1127
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getAvailableCameraConfigParameters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1145
    :try_start_0
    invoke-super {p0}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->getAvailableCameraConfigParameters()Ljava/util/List;

    move-result-object v0

    .line 1147
    .local v0, "config":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;>;"
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isSuperNightSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1148
    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->CAMERA_CONFIG_SUPER_NIGHT_SDK_OPERATION_MODE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1150
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isPreviewVDISSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1151
    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->CAMERA_CONFIG_VDIS_CONTROL:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1153
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isAutoFramingVdisSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1154
    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->CAMERA_CONFIG_AUTO_FRAMING_CONTROL:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1156
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isVideoHDRSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1157
    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->CAMERA_CONFIG_LIVE_HDR_OPERATION_MODE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1159
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isExposureControlSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1160
    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->CAMERA_CONFIG_EXPOSURE_CONTROL:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1162
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isSelfieToneSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1163
    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->CAMERA_CONFIG_SELFIE_TONE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1165
    :cond_5
    monitor-exit p0

    return-object v0

    .line 1144
    .end local v0    # "config":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getAvailableParameters()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1099
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSemCameraProcessorParameter:Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->getAvailableParameters()Ljava/util/List;

    move-result-object v0

    .line 1100
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1101
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 1102
    .local v3, "item":Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;
    sget-object v4, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_CLIENT_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    if-ne v3, v4, :cond_0

    .line 1103
    sget-object v4, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_CLIENT_MODE:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1104
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
    :cond_0
    sget-object v4, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_NIGHT_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    if-ne v3, v4, :cond_1

    .line 1105
    sget-object v4, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_ENABLE_NIGHT_MODE:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1106
    :cond_1
    sget-object v4, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_SINGLE_CAPTURE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    if-ne v3, v4, :cond_2

    .line 1107
    sget-object v4, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_SINGLE_CAPTURE:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1108
    :cond_2
    sget-object v4, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_FACE_BEAUTY:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    if-ne v3, v4, :cond_3

    .line 1109
    sget-object v4, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_ENABLE_FACE_BEAUTY:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1110
    :cond_3
    sget-object v4, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_HDR_MODE:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    if-ne v3, v4, :cond_4

    .line 1111
    sget-object v4, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_ENABLE_HDR_MODE:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1112
    :cond_4
    sget-object v4, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_IMAGE_FORMAT:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    if-ne v3, v4, :cond_5

    .line 1113
    sget-object v4, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_IMAGE_FORMAT:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1114
    :cond_5
    sget-object v4, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_PHOTO_HDR:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    if-ne v3, v4, :cond_6

    .line 1115
    invoke-static {}, Lcom/samsung/android/sep/camera/util/SemUtil;->isPhotoHDRSupported()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1116
    sget-object v4, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->PARAMETER_ENABLE_PHOTO_HDR:Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    .end local v3    # "item":Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;
    :cond_6
    :goto_1
    goto :goto_0

    .line 1119
    :cond_7
    monitor-exit p0

    return-object v1

    .line 1098
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;>;"
    .end local v1    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected getJpegImage()Landroid/media/Image;
    .locals 2

    .line 528
    const/4 v0, 0x0

    .line 530
    .local v0, "image":Landroid/media/Image;
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mJpegReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 533
    goto :goto_0

    .line 531
    :catch_0
    move-exception v1

    .line 532
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 534
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-object v0
.end method

.method public getProcessorParameter(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;)Ljava/lang/Object;
    .locals 2
    .param p1, "parameter"    # Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;",
            ")TT;"
        }
    .end annotation

    .line 1086
    const-string v0, "argument parameter"

    invoke-static {p1, v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1087
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sParameterMap:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 1089
    .local v0, "convertedParameter":Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSemCameraProcessorParameter:Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->getProcessorParameter(Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getProcessorParameter(Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 58
    check-cast p1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getProcessorParameter(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getRawImage()Landroid/media/Image;
    .locals 3

    .line 553
    const/4 v0, 0x0

    .line 555
    .local v0, "image":Landroid/media/Image;
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 557
    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCurrentRawPicType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;

    .line 558
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->getImageReader()Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    move-result-object v1

    .line 559
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 562
    goto :goto_0

    .line 560
    :catch_0
    move-exception v1

    .line 561
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 564
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-object v0
.end method

.method protected getYuvImage()Landroid/media/Image;
    .locals 2

    .line 540
    const/4 v0, 0x0

    .line 542
    .local v0, "image":Landroid/media/Image;
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mYuvReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 545
    goto :goto_0

    .line 543
    :catch_0
    move-exception v1

    .line 544
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 547
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-object v0
.end method

.method protected handleBurstImages(Landroid/media/ImageReader;)V
    .locals 3
    .param p1, "imageReader"    # Landroid/media/ImageReader;

    .line 660
    invoke-virtual {p1}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getImage(I)Landroid/media/Image;

    move-result-object v0

    .line 662
    .local v0, "image":Landroid/media/Image;
    if-nez v0, :cond_0

    .line 663
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    sget-object v2, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->updateState(Lcom/samsung/android/sep/camera/data/ProcessState;)V

    .line 664
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->handleError(I)V

    .line 665
    return-void

    .line 668
    :cond_0
    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;->BURST:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sendImage(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;Landroid/media/Image;)V

    .line 669
    return-void
.end method

.method protected handleSingleYuvImage()V
    .locals 4

    .line 674
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->getImage(I)Landroid/media/Image;

    move-result-object v0

    .line 676
    .local v0, "image":Landroid/media/Image;
    if-nez v0, :cond_0

    .line 677
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    sget-object v2, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->updateState(Lcom/samsung/android/sep/camera/data/ProcessState;)V

    .line 678
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->handleError(I)V

    .line 679
    return-void

    .line 682
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSingleYuvImage reader timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemCameraCaptureProcessor"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    sget-object v1, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;->SINGLE_YUV:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sendImage(Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$SendImageType;Landroid/media/Image;)V

    .line 684
    return-void
.end method

.method public declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Landroid/util/Size;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "pictureSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    monitor-enter p0

    .line 163
    :try_start_0
    const-string v0, "SemCameraCaptureProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize: chipset - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", context - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cameraId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pictureSize - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->initialize(Landroid/content/Context;Ljava/lang/String;Landroid/util/Size;)V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->setCaptureImageReader()V

    .line 176
    new-instance v2, Lcom/samsung/android/sep/camera/util/InitializeRunnable;

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mClientId:Ljava/lang/Integer;

    .line 179
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    iget-object v6, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, p0

    :try_start_1
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sep/camera/util/InitializeRunnable;-><init>(Landroid/content/Context;ILcom/samsung/android/camerasdkservice/data/ProcessorConfig;Landroid/os/Handler;Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V

    iput-object v2, v7, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mInitRunnable:Lcom/samsung/android/sep/camera/util/InitializeRunnable;

    .line 183
    const-string v0, "SemCameraCaptureProcessor"

    const-string v1, "initialize X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v0, Lcom/samsung/android/sep/camera/SemCameraConfig;

    iget-object v1, v7, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mClientId:Ljava/lang/Integer;

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/SemCameraConfig;-><init>(Ljava/lang/Integer;)V

    iput-object v0, v7, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 186
    monitor-exit p0

    return-void

    .line 162
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "cameraId":Ljava/lang/String;
    .end local p3    # "pictureSize":Landroid/util/Size;
    :catchall_0
    move-exception v0

    move-object v7, p0

    :goto_0
    move-object p1, v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized initialize(Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;)V
    .locals 8
    .param p1, "config"    # Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    monitor-enter p0

    .line 191
    :try_start_0
    const-string v0, "SemCameraCaptureProcessor"

    const-string v1, "initialize E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v0, "ProcessorConfig"

    invoke-static {p1, v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->setProcessorId(I)V

    .line 194
    invoke-super {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->initialize(Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;)V

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->setCaptureImageReader()V

    .line 197
    invoke-direct {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->setImageReaderForRawStream()V

    .line 200
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isZoomControllerAvailable(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    new-instance v1, Lcom/samsung/android/sep/camera/ZoomController;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/sep/camera/ZoomController;-><init>(ILandroid/hardware/camera2/CameraCharacteristics;)V

    iput-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mZoomController:Lcom/samsung/android/sep/camera/ZoomController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 190
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
    .end local p1    # "config":Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;
    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v7, p0

    goto :goto_3

    .line 205
    .restart local p1    # "config":Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->isForceSingleCapture()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 206
    new-instance v2, Lcom/samsung/android/sep/camera/util/InitializeRunnable;

    iget-object v3, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mClientId:Ljava/lang/Integer;

    .line 209
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    iget-object v6, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessHandler:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v7, p0

    .restart local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
    :try_start_3
    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sep/camera/util/InitializeRunnable;-><init>(Landroid/content/Context;ILcom/samsung/android/camerasdkservice/data/ProcessorConfig;Landroid/os/Handler;Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V

    iput-object v2, v7, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mInitRunnable:Lcom/samsung/android/sep/camera/util/InitializeRunnable;

    .line 213
    iget-object v0, v7, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZING:Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->updateState(Lcom/samsung/android/sep/camera/data/ProcessState;)V

    .line 214
    iget-object v0, v7, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessHandler:Landroid/os/Handler;

    iget-object v1, v7, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mInitRunnable:Lcom/samsung/android/sep/camera/util/InitializeRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 205
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
    :cond_1
    move-object v7, p0

    .line 216
    iget-object v1, v7, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    sget-object v2, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->updateState(Lcom/samsung/android/sep/camera/data/ProcessState;)V

    .line 217
    iget-object v1, v7, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mServiceInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 218
    iget-object v1, v7, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sep/camera/data/ProcessRunnableData;->setServiceInitialized(Z)V

    .line 221
    :goto_1
    new-instance v0, Lcom/samsung/android/sep/camera/SemCameraConfig;

    iget-object v1, v7, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mClientId:Ljava/lang/Integer;

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/SemCameraConfig;-><init>(Ljava/lang/Integer;)V

    iput-object v0, v7, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    .line 222
    const-string v0, "SemCameraCaptureProcessor"

    const-string v1, "initialize X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 223
    monitor-exit p0

    return-void

    .line 190
    .end local p1    # "config":Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;
    :catchall_1
    move-exception v0

    move-object v7, p0

    :goto_2
    move-object p1, v0

    :goto_3
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    :catchall_2
    move-exception v0

    goto :goto_2
.end method

.method public isAutoFramingVdisSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 761
    const-string v0, "CameraCharacteristics"

    invoke-static {p1, v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 762
    const/16 v0, 0x46

    invoke-static {p1, v0}, Lcom/samsung/android/sep/camera/vendor/CameraCharacteristicsUtils;->isVideoModeAvailable(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->AUTO_FRAMING_VDIS:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 764
    invoke-static {v0}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->isAvailableFeature(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 762
    :goto_0
    return v0
.end method

.method public isExposureControlSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 818
    const-string v0, "CameraCharacteristics"

    invoke-static {p1, v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 819
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->EXPOSURE_TABLE_CONTROL:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->isAvailableFeature(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Z

    move-result v0

    return v0
.end method

.method public isPreviewVDISSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 746
    const-string v0, "CameraCharacteristics"

    invoke-static {p1, v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 747
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/samsung/android/sep/camera/vendor/CameraCharacteristicsUtils;->isVideoModeAvailable(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->PREVIEW_DIS:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 749
    invoke-static {v0}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->isAvailableFeature(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 747
    :goto_0
    return v0
.end method

.method protected isProcessingRequired()Z
    .locals 4

    .line 488
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mServiceInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "SemCameraCaptureProcessor"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 489
    const-string v0, "isProcessingRequired: false service not initialized"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return v2

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 493
    const-string v0, "isProcessingRequired: false mProcessHandler is null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return v2

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSemCameraProcessorParameter:Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;

    sget-object v1, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_FACE_BEAUTY:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 498
    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->getProcessorParameter(Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 497
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mPictureCaptureResult:Landroid/hardware/camera2/CaptureResult;

    if-eqz v0, :cond_2

    .line 501
    return v1

    .line 505
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isBurstYuvCapture()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 506
    return v1

    .line 510
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSemCameraProcessorParameter:Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;

    sget-object v3, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;->PARAMETER_ENABLE_PHOTO_HDR:Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 511
    invoke-virtual {v0, v3}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->getProcessorParameter(Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 510
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 513
    return v1

    .line 517
    :cond_4
    iget v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mDynamicShotExtraInfo:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 519
    return v1

    .line 522
    :cond_5
    return v2
.end method

.method public isSelfieToneSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 2
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 776
    const-string v0, "CameraCharacteristics"

    invoke-static {p1, v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 777
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 778
    .local v0, "lensFacing":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->SELFIE_TONE:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 780
    invoke-static {v1}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->isAvailableFeature(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 778
    :goto_0
    return v1
.end method

.method public isSuperNightExposureSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 830
    const-string v0, "CameraCharacteristics"

    invoke-static {p1, v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 831
    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->SUPER_NIGHT_EXPOSURE:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    invoke-static {v0}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->isAvailableFeature(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 833
    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isExposureControlSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 834
    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isSuperNightSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 831
    :goto_0
    return v0
.end method

.method public isSuperNightSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 731
    const-string v0, "CameraCharacteristics"

    invoke-static {p1, v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 732
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/samsung/android/sep/camera/vendor/CameraCharacteristicsUtils;->isSDKModeAvailable(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->SUPER_NIGHT:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 734
    invoke-static {v0}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->isAvailableFeature(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 732
    :goto_0
    return v0
.end method

.method public isVideoHDRSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 803
    const-string v0, "CameraCharacteristics"

    invoke-static {p1, v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 804
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/samsung/android/sep/camera/vendor/CameraCharacteristicsUtils;->isSDKModeAvailable(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->VIDEO_HDR:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 806
    invoke-static {v0}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->isAvailableFeature(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 804
    :goto_0
    return v0
.end method

.method public isZoomControllerAvailable(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 2
    .param p1, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 716
    const-string v0, "CameraCharacteristics"

    invoke-static {p1, v0}, Lcom/samsung/android/sep/camera/util/SemUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 717
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/sep/camera/vendor/CameraCharacteristicsUtils;->isSDKModeAvailable(Landroid/hardware/camera2/CameraCharacteristics;I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;->SMOOTH_ZOOM:Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;

    .line 719
    invoke-static {v1}, Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil;->isAvailableFeature(Lcom/samsung/android/sep/camera/vendor/SDKFloatingFeatureUtil$SDKFeature;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 717
    :goto_0
    return v0
.end method

.method protected sendBurstImage(Landroid/media/Image;)V
    .locals 13
    .param p1, "image"    # Landroid/media/Image;

    .line 628
    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->prepareBurstCaptureData(Landroid/media/Image;)Lcom/samsung/android/sep/camera/util/PictureData;

    move-result-object v0

    .line 629
    .local v0, "data":Lcom/samsung/android/sep/camera/util/PictureData;
    if-nez v0, :cond_0

    return-void

    .line 631
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 632
    const-string v1, "SemCameraCaptureProcessor"

    const-string v2, "mProcessHandler null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    return-void

    .line 636
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/PictureData;->getPendingImages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 638
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 639
    new-instance v2, Lcom/samsung/android/sep/camera/util/PictureProcessedData;

    .line 641
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Image;

    .line 642
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/PictureData;->getCaptureResult()Landroid/hardware/camera2/CaptureResult;

    move-result-object v4

    .line 643
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/PictureData;->isFirstFrameData()Z

    move-result v5

    .line 644
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/PictureData;->isLastFrameData()Z

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/samsung/android/sep/camera/util/PictureProcessedData;-><init>(Landroid/media/Image;Landroid/hardware/camera2/CaptureResult;ZZ)V

    move-object v8, v2

    .line 646
    .local v8, "processedData":Lcom/samsung/android/sep/camera/util/PictureProcessedData;
    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessHandler:Landroid/os/Handler;

    new-instance v7, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;

    iget-object v9, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    iget-object v10, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSemCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    iget-object v11, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessRunnableData:Lcom/samsung/android/sep/camera/data/ProcessRunnableData;

    iget-object v12, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/sep/camera/runnable/ProcessRunnable;-><init>(Lcom/samsung/android/sep/camera/util/PictureProcessedData;Lcom/samsung/android/sep/camera/data/CaptureData;Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;Lcom/samsung/android/sep/camera/data/ProcessRunnableData;Lcom/samsung/android/sep/camera/data/ProcessorStateManager;)V

    invoke-virtual {v2, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 653
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 654
    .end local v8    # "processedData":Lcom/samsung/android/sep/camera/util/PictureProcessedData;
    goto :goto_0

    .line 655
    :cond_2
    return-void
.end method

.method protected sendJpegImage(Landroid/media/Image;)V
    .locals 2
    .param p1, "image"    # Landroid/media/Image;

    .line 570
    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->prepareJpegBuffer(Landroid/media/Image;)V

    .line 573
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCaptureMode()I

    move-result v0

    const/16 v1, 0xf02

    if-ne v0, v1, :cond_1

    .line 574
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->updateState(Lcom/samsung/android/sep/camera/data/ProcessState;)V

    .line 575
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSemCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSemCaptureAbortManager:Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->isAborted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->handleError(I)V

    goto :goto_0

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    .line 579
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getJpegByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 578
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sendOnPictureAvailable(Ljava/nio/ByteBuffer;I)V

    .line 583
    :cond_1
    :goto_0
    return-void
.end method

.method protected sendSingleYuvImage(Landroid/media/Image;)V
    .locals 2
    .param p1, "image"    # Landroid/media/Image;

    .line 608
    invoke-direct {p0, p1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->prepareYuvByteBuffer(Landroid/media/Image;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 609
    .local v0, "imageByteBuffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    .line 610
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sendOnPictureAvailable(Ljava/nio/ByteBuffer;I)V

    .line 611
    :cond_0
    return-void
.end method

.method public declared-synchronized setCameraConfigParameter(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 4
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter<",
            "TT;>;TT;)",
            "Landroid/hardware/camera2/CaptureRequest$Builder;"
        }
    .end annotation

    .local p2, "parameter":Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;, "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 1179
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;->setCameraConfigParameter(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;Ljava/lang/Object;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 1181
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->CAMERA_CONFIG_SUPER_NIGHT_SDK_OPERATION_MODE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    .line 1182
    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getSuperNightMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;

    move-result-object v0

    if-eq v0, p3, :cond_1

    .line 1183
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isSuperNightSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 1187
    invoke-virtual {p0, v2}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isSuperNightExposureSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v2

    .line 1186
    invoke-virtual {v0, v2}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setSuperNightExposureSupported(Z)V

    .line 1189
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    move-object v2, p3

    check-cast v2, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 1191
    const-string v0, "SNIGHT"

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    .line 1194
    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getSuperNightMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SuperNightOperationMode;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1191
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->logSAInsert(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1197
    .end local p0    # "this":Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;
    :cond_0
    monitor-exit p0

    return-object p1

    .line 1198
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isAutoFramingVdisSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->CAMERA_CONFIG_AUTO_FRAMING_CONTROL:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    .line 1199
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1200
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    move-object v1, p3

    check-cast v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1202
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isAutoFramingVdisSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->CAMERA_CONFIG_VDIS_CONTROL:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    .line 1203
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1204
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    move-object v1, p3

    check-cast v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCurrentVDISMode(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;)V

    .line 1205
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    .line 1206
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentAutoFramingMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;

    move-result-object v1

    .line 1205
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$AutoFramingMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1207
    :cond_3
    :try_start_3
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->CAMERA_CONFIG_VDIS_CONTROL:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 1208
    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isPreviewVDISSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1209
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    move-object v2, p3

    check-cast v2, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 1211
    const-string v0, "VDIS"

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    .line 1214
    invoke-virtual {v2}, Lcom/samsung/android/sep/camera/SemCameraConfig;->getCurrentVDISMode()Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$VideoVDISMode;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1211
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->logSAInsert(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1216
    monitor-exit p0

    return-object p1

    .line 1217
    :cond_4
    :try_start_4
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->CAMERA_CONFIG_EXPOSURE_CONTROL:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 1218
    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isExposureControlSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1221
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    sget-object v2, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;->DEFAULT:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;

    if-ne p3, v2, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setExposureControlDisabledFromApp(Z)V

    .line 1223
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    move-object v1, p3

    check-cast v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$ExposureControlMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1225
    :cond_6
    :try_start_5
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->CAMERA_CONFIG_SELFIE_TONE:Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 1226
    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isSelfieToneSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1227
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->semCameraConfig:Lcom/samsung/android/sep/camera/SemCameraConfig;

    move-object v1, p3

    check-cast v1, Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/sep/camera/SemCameraConfig;->setCameraConfigParameter(Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter$SelfieToneMode;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1231
    :cond_7
    monitor-exit p0

    return-object p1

    .line 1178
    .end local p1    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local p2    # "parameter":Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter;, "Lcom/samsung/android/sep/camera/internal/SemCameraConfigParameter<TT;>;"
    .end local p3    # "value":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method setCaptureImageReader()V
    .locals 5

    .line 379
    new-instance v0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mPictureSize:Landroid/util/Size;

    .line 382
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mPictureSize:Landroid/util/Size;

    .line 383
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 381
    const/16 v3, 0x100

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;-><init>(Landroid/media/ImageReader;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mJpegReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    .line 386
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mJpegReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mOnJPEGImageAvailableListener:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$JPEGImageAvailableListener;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 387
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mJpegReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->setJpegReader(Lcom/samsung/android/sep/camera/util/BlockingImageReader;)V

    .line 388
    new-instance v0, Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mPictureSize:Landroid/util/Size;

    .line 391
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mPictureSize:Landroid/util/Size;

    .line 392
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    .line 390
    const/16 v3, 0x23

    const/4 v4, 0x5

    invoke-static {v1, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;-><init>(Landroid/media/ImageReader;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mYuvReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    .line 395
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mYuvReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mOnImageAvailableListener:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor$ImageAvailableListener;

    iget-object v2, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sep/camera/util/BlockingImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 396
    iget-object v0, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mYuvReader:Lcom/samsung/android/sep/camera/util/BlockingImageReader;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/CaptureData;->setYuvReader(Lcom/samsung/android/sep/camera/util/BlockingImageReader;)V

    .line 397
    return-void
.end method

.method public setProcessorParameter(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;Ljava/lang/Object;)V
    .locals 2
    .param p1, "parameter"    # Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;",
            "TT;)V"
        }
    .end annotation

    .line 1075
    .local p2, "value":Ljava/lang/Object;, "TT;"
    sget-object v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->sParameterMap:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;

    .line 1076
    .local v0, "convertedParameter":Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;
    iget-object v1, p0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mSemCameraProcessorParameter:Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;

    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/sep/camera/SemCameraProcessorParameter;->setProcessorParameter(Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;Ljava/lang/Object;)V

    .line 1077
    return-void
.end method

.method public bridge synthetic setProcessorParameter(Lcom/samsung/android/sep/camera/internal/SemProcessorParameter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 58
    check-cast p1, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->setProcessorParameter(Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor$ProcessorParameter;Ljava/lang/Object;)V

    return-void
.end method

.method setRawPicCbConfig(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sep/camera/util/RawStreamConfig;",
            ">;)V"
        }
    .end annotation

    .line 275
    .local p1, "rawStreamConfigList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sep/camera/util/RawStreamConfig;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 283
    iget-object v1, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    .line 284
    invoke-virtual {v1}, Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;->getSDKVersion()Ljava/lang/String;

    move-result-object v1

    .line 283
    const-string v2, "4.0.0"

    invoke-static {v1, v2}, Lcom/samsung/android/sep/camera/util/SemUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v2, "setRawPicCbConfig: "

    const-string v3, "SemCameraCaptureProcessor"

    const/4 v4, 0x1

    .line 311
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 283
    const/4 v5, 0x2

    .line 321
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 283
    if-ltz v1, :cond_3

    iget-object v1, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 287
    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->isSuperNightSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 288
    invoke-static {v1}, Lcom/samsung/android/sep/camera/vendor/CameraCharacteristicsUtils;->isSamsungFeatureSingleCamSupportMultiRawStream(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    iget-object v1, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mPictureSize:Landroid/util/Size;

    .line 292
    move-object/from16 v7, p1

    invoke-static {v7, v1}, Lcom/samsung/android/sep/camera/util/SemUtil;->getFirstOverFitRawStreamConfig(Ljava/util/List;Landroid/util/Size;)Lcom/samsung/android/sep/camera/util/RawStreamConfig;

    move-result-object v1

    .line 294
    .local v1, "rawStreamConfig":Lcom/samsung/android/sep/camera/util/RawStreamConfig;
    if-eqz v1, :cond_0

    .line 295
    new-instance v6, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;

    .line 297
    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCameraID:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->getFormat()I

    move-result v10

    invoke-direct {v6, v8, v9, v10}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;-><init>(Landroid/util/Size;Ljava/lang/String;I)V

    .line 298
    .local v6, "config":Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;
    invoke-virtual {v6, v5}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->setOption(I)V

    .line 299
    iget-object v5, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v4, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    iget-object v5, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Lcom/samsung/android/sep/camera/data/CaptureData;->setRawOutputStreamConfigMap(Ljava/util/HashMap;)V

    .line 301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .end local v6    # "config":Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;
    :cond_0
    return-void

    .line 288
    .end local v1    # "rawStreamConfig":Lcom/samsung/android/sep/camera/util/RawStreamConfig;
    :cond_1
    move-object/from16 v7, p1

    goto :goto_0

    .line 287
    :cond_2
    move-object/from16 v7, p1

    goto :goto_0

    .line 283
    :cond_3
    move-object/from16 v7, p1

    .line 306
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sep/camera/util/RawStreamConfig;

    .line 307
    .local v8, "rawStreamConfig":Lcom/samsung/android/sep/camera/util/RawStreamConfig;
    invoke-virtual {v8}, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->getSize()Landroid/util/Size;

    move-result-object v9

    .line 308
    .local v9, "rawStreamSize":Landroid/util/Size;
    invoke-virtual {v8}, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->getDeviceId()I

    move-result v10

    .line 309
    .local v10, "physicalId":I
    invoke-virtual {v8}, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->getFormat()I

    move-result v11

    .line 310
    .local v11, "format":I
    invoke-virtual {v8}, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->getSensorPixelMode()Lcom/samsung/android/sep/camera/util/SensorPixelMode;

    move-result-object v12

    .line 311
    .local v12, "sensorPixelMode":Lcom/samsung/android/sep/camera/util/SensorPixelMode;
    iget-object v13, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_4

    .line 313
    new-instance v13, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;

    .line 316
    invoke-virtual {v8}, Lcom/samsung/android/sep/camera/util/RawStreamConfig;->getDeviceId()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v9, v14, v12, v11}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;-><init>(Landroid/util/Size;Ljava/lang/String;Lcom/samsung/android/sep/camera/util/SensorPixelMode;I)V

    .line 319
    .local v13, "config":Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;
    invoke-virtual {v13, v5}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->setOption(I)V

    .line 320
    iget-object v14, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    invoke-virtual {v14, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    .end local v13    # "config":Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;
    goto/16 :goto_3

    :cond_4
    iget-object v13, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_5

    .line 323
    new-instance v13, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;

    .line 326
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v9, v14, v12, v11}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;-><init>(Landroid/util/Size;Ljava/lang/String;Lcom/samsung/android/sep/camera/util/SensorPixelMode;I)V

    .line 329
    .restart local v13    # "config":Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;
    const/4 v14, 0x2

    .line 330
    .local v14, "option":I
    shl-int/lit8 v15, v10, 0x10

    or-int/2addr v14, v15

    .line 331
    invoke-virtual {v13, v14}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->setOption(I)V

    .line 332
    iget-object v15, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    .line 333
    nop

    .line 332
    invoke-virtual {v15, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .end local v13    # "config":Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;
    .end local v14    # "option":I
    goto/16 :goto_3

    :cond_5
    iget-object v13, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    const/4 v14, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_6

    .line 336
    new-instance v13, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;

    .line 339
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v9, v15, v12, v11}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;-><init>(Landroid/util/Size;Ljava/lang/String;Lcom/samsung/android/sep/camera/util/SensorPixelMode;I)V

    .line 342
    .restart local v13    # "config":Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;
    const/4 v15, 0x2

    .line 343
    .local v15, "option":I
    shl-int/lit8 v16, v10, 0x10

    or-int v15, v15, v16

    .line 344
    invoke-virtual {v13, v15}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->setOption(I)V

    .line 345
    iget-object v5, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .end local v13    # "config":Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;
    .end local v15    # "option":I
    goto :goto_3

    :cond_6
    iget-object v5, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    const/4 v13, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_7

    .line 348
    new-instance v5, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;

    .line 351
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v9, v14, v12, v11}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;-><init>(Landroid/util/Size;Ljava/lang/String;Lcom/samsung/android/sep/camera/util/SensorPixelMode;I)V

    .line 354
    .local v5, "config":Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;
    const/4 v14, 0x2

    .line 355
    .restart local v14    # "option":I
    shl-int/lit8 v15, v10, 0x10

    or-int/2addr v14, v15

    .line 356
    invoke-virtual {v5, v14}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->setOption(I)V

    .line 357
    iget-object v15, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    .line 358
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 357
    invoke-virtual {v15, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v5    # "config":Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;
    .end local v14    # "option":I
    goto :goto_2

    .line 359
    :cond_7
    iget-object v5, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    const/4 v13, 0x5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8

    .line 361
    new-instance v5, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;

    .line 364
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v9, v14, v12, v11}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;-><init>(Landroid/util/Size;Ljava/lang/String;Lcom/samsung/android/sep/camera/util/SensorPixelMode;I)V

    .line 367
    .restart local v5    # "config":Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;
    const/4 v14, 0x2

    .line 368
    .restart local v14    # "option":I
    shl-int/lit8 v15, v10, 0x10

    or-int/2addr v14, v15

    .line 369
    invoke-virtual {v5, v14}, Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;->setOption(I)V

    .line 370
    iget-object v15, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v15, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 359
    .end local v5    # "config":Lcom/samsung/android/sep/camera/util/RawPcStreamOutputConfig;
    .end local v14    # "option":I
    :cond_8
    :goto_2
    nop

    .line 372
    .end local v8    # "rawStreamConfig":Lcom/samsung/android/sep/camera/util/RawStreamConfig;
    .end local v9    # "rawStreamSize":Landroid/util/Size;
    .end local v10    # "physicalId":I
    .end local v11    # "format":I
    .end local v12    # "sensorPixelMode":Lcom/samsung/android/sep/camera/util/SensorPixelMode;
    :goto_3
    const/4 v5, 0x2

    goto/16 :goto_1

    .line 374
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v1, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    iget-object v2, v0, Lcom/samsung/android/sep/camera/SemCameraCaptureProcessor;->mRawOutputStreamConfigMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sep/camera/data/CaptureData;->setRawOutputStreamConfigMap(Ljava/util/HashMap;)V

    .line 376
    return-void
.end method
