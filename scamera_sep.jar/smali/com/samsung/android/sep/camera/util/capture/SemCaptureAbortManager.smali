.class public abstract Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;
.super Ljava/lang/Object;
.source "SemCaptureAbortManager.java"


# static fields
.field public static final CAPTURE_STATE_ABORTED:I = 0x4

.field public static final CAPTURE_STATE_ABORTED_PENDING_ONREADY:I = 0x5

.field public static final CAPTURE_STATE_FRAME_CAPTURED:I = 0x3

.field public static final CAPTURE_STATE_IDLE:I = 0x0

.field public static final CAPTURE_STATE_PREPARED:I = 0x2

.field public static final CAPTURE_STATE_STARTED:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field protected volatile mCaptureState:I

.field protected volatile mCaptureType:I

.field protected mClientId:Ljava/lang/Integer;

.field protected mProcessHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const-class v0, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/hardware/camera2/CameraCaptureSession;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "clientId"    # I
    .param p2, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "type"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->mClientId:Ljava/lang/Integer;

    .line 35
    iput-object p2, p0, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->mCameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 36
    iput-object p3, p0, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->mProcessHandler:Landroid/os/Handler;

    .line 37
    iput p4, p0, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->mCaptureType:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->mCaptureState:I

    .line 39
    return-void
.end method


# virtual methods
.method public abstract abortCapture()Z
.end method

.method protected abstract checkAndAbortSessionCapture()V
.end method

.method public declared-synchronized getState()I
    .locals 1

    monitor-enter p0

    .line 74
    :try_start_0
    iget v0, p0, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->mCaptureState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 74
    .end local p0    # "this":Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public abstract isAbortSupportedInService()Z
.end method

.method public declared-synchronized isAborted()Z
    .locals 2

    monitor-enter p0

    .line 93
    :try_start_0
    iget v0, p0, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->mCaptureState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 93
    .end local p0    # "this":Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected declared-synchronized isAllFrameCaptured()Z
    .locals 2

    monitor-enter p0

    .line 79
    :try_start_0
    iget v0, p0, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->mCaptureState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 79
    .end local p0    # "this":Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected declared-synchronized isCapturing()Z
    .locals 2

    monitor-enter p0

    .line 88
    :try_start_0
    iget v0, p0, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->mCaptureState:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->mCaptureState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 88
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isProcessing()Z
    .locals 2

    monitor-enter p0

    .line 98
    :try_start_0
    iget v0, p0, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->mCaptureState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->mCaptureState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 98
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected declared-synchronized needServiceAbort()Z
    .locals 1

    monitor-enter p0

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->isAbortSupportedInService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;->isProcessing()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .end local p0    # "this":Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;
    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 84
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public abstract updateCaptureState(I)V
.end method
