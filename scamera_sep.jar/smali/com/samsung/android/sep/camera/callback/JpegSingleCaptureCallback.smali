.class public Lcom/samsung/android/sep/camera/callback/JpegSingleCaptureCallback;
.super Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;
.source "JpegSingleCaptureCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "JpegSingleCaptureCallback"


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;Lcom/samsung/android/sep/camera/data/CaptureData;Lcom/samsung/android/sep/camera/data/ProcessRunnableData;Lcom/samsung/android/sep/camera/data/ProcessorStateManager;)V
    .locals 0
    .param p1, "jpegProcessHandler"    # Landroid/os/Handler;
    .param p2, "jpegCaptureAbortManager"    # Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;
    .param p3, "jpegCaptureData"    # Lcom/samsung/android/sep/camera/data/CaptureData;
    .param p4, "jpegProcessRunnableData"    # Lcom/samsung/android/sep/camera/data/ProcessRunnableData;
    .param p5, "jpegProcessorStateManager"    # Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sep/camera/callback/CaptureCallbackBase;-><init>(Landroid/os/Handler;Lcom/samsung/android/sep/camera/util/capture/SemCaptureAbortManager;Lcom/samsung/android/sep/camera/data/CaptureData;Lcom/samsung/android/sep/camera/data/ProcessRunnableData;Lcom/samsung/android/sep/camera/data/ProcessorStateManager;)V

    .line 42
    return-void
.end method


# virtual methods
.method handleJpegSingleCaptureFail()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/JpegSingleCaptureCallback;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->getState()Lcom/samsung/android/sep/camera/data/ProcessState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->PROCESS:Lcom/samsung/android/sep/camera/data/ProcessState;

    if-eq v0, v1, :cond_0

    .line 99
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/JpegSingleCaptureCallback;->mProcessorStateManager:Lcom/samsung/android/sep/camera/data/ProcessorStateManager;

    sget-object v1, Lcom/samsung/android/sep/camera/data/ProcessState;->INITIALIZED:Lcom/samsung/android/sep/camera/data/ProcessState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sep/camera/data/ProcessorStateManager;->updateState(Lcom/samsung/android/sep/camera/data/ProcessState;)V

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/callback/JpegSingleCaptureCallback;->sendErrorCallback(I)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/samsung/android/sep/camera/callback/JpegSingleCaptureCallback;->sendErrorSALog(I)V

    .line 104
    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 75
    const-string v0, "JpegSingleCaptureCallback"

    const-string v1, "onCaptureCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 3
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .line 90
    const-string v0, "JpegSingleCaptureCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onCaptureFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/samsung/android/sep/camera/callback/JpegSingleCaptureCallback;->mCaptureData:Lcom/samsung/android/sep/camera/data/CaptureData;

    invoke-virtual {v0}, Lcom/samsung/android/sep/camera/data/CaptureData;->getCaptureCallbackLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 92
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/callback/JpegSingleCaptureCallback;->handleJpegSingleCaptureFail()V

    .line 93
    monitor-exit v0

    .line 94
    return-void

    .line 93
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 2
    .param p1, "jpegCaptureSession"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "jpegCaptureRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureStarted: timestamp: "

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

    const-string v1, "JpegSingleCaptureCallback"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/sep/camera/callback/JpegSingleCaptureCallback;->sendOnShutterCallback()V

    .line 61
    return-void
.end method
