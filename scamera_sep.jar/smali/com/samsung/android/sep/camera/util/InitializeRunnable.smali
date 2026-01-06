.class public Lcom/samsung/android/sep/camera/util/InitializeRunnable;
.super Ljava/lang/Object;
.source "InitializeRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mClientId:I

.field private mContext:Landroid/content/Context;

.field public mIsPosted:Z

.field private mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

.field private mProcessorHandler:Landroid/os/Handler;

.field private mSemEffectProcessor:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/camerasdkservice/data/ProcessorConfig;Landroid/os/Handler;Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "client"    # I
    .param p3, "processorConfig"    # Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;
    .param p4, "processorHandler"    # Landroid/os/Handler;
    .param p5, "processor"    # Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/sep/camera/util/InitializeRunnable;->mContext:Landroid/content/Context;

    .line 35
    iput p2, p0, Lcom/samsung/android/sep/camera/util/InitializeRunnable;->mClientId:I

    .line 36
    iput-object p4, p0, Lcom/samsung/android/sep/camera/util/InitializeRunnable;->mProcessorHandler:Landroid/os/Handler;

    .line 37
    iput-object p3, p0, Lcom/samsung/android/sep/camera/util/InitializeRunnable;->mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    .line 38
    iput-object p5, p0, Lcom/samsung/android/sep/camera/util/InitializeRunnable;->mSemEffectProcessor:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sep/camera/util/InitializeRunnable;->mIsPosted:Z

    .line 40
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 43
    invoke-static {}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->getInstance()Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sep/camera/util/InitializeRunnable;->mClientId:I

    iget-object v2, p0, Lcom/samsung/android/sep/camera/util/InitializeRunnable;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/sep/camera/util/InitializeRunnable;->mProcessorConfig:Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;

    iget-object v4, p0, Lcom/samsung/android/sep/camera/util/InitializeRunnable;->mProcessorHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/samsung/android/sep/camera/util/InitializeRunnable;->mSemEffectProcessor:Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;

    .line 44
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camerasdkservice/CameraSDKServiceAdapter;->initialize(ILandroid/content/Context;Lcom/samsung/android/camerasdkservice/data/ProcessorConfig;Landroid/os/Handler;Lcom/samsung/android/sep/camera/SemCameraEffectProcessor;)V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sep/camera/util/InitializeRunnable;->mIsPosted:Z

    .line 51
    return-void
.end method
