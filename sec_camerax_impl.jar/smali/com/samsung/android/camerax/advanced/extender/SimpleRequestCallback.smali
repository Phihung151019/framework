.class public Lcom/samsung/android/camerax/advanced/extender/SimpleRequestCallback;
.super Lcom/samsung/android/camerax/advanced/extender/RequestCallback;
.source "SimpleRequestCallback.java"


# instance fields
.field private final mNotifyProgress:Z


# direct methods
.method public constructor <init>(ILcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;Landroid/hardware/camera2/CaptureRequest;Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;Z)V
    .locals 1
    .param p1, "sequenceId"    # I
    .param p2, "extensionMetadata"    # Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;
    .param p3, "sequenceCompleteListener"    # Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;
    .param p4, "resultListener"    # Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;
    .param p5, "captureRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p6, "callback"    # Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;
    .param p7, "notifyProgress"    # Z

    .line 44
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/camerax/advanced/extender/RequestCallback;-><init>(ILcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;Landroid/hardware/camera2/CaptureRequest;Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)V

    .line 46
    move-object v0, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "sequenceId":I
    .local v0, "callback":Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;
    .local p2, "sequenceId":I
    .local p3, "extensionMetadata":Lcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;
    .local p4, "sequenceCompleteListener":Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;
    .local p5, "resultListener":Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;
    .local p6, "captureRequest":Landroid/hardware/camera2/CaptureRequest;
    iput-boolean p7, p1, Lcom/samsung/android/camerax/advanced/extender/SimpleRequestCallback;->mNotifyProgress:Z

    .line 47
    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;JI)V
    .locals 0
    .param p1, "request"    # Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;
    .param p2, "frameNumber"    # J
    .param p4, "outputStreamId"    # I

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/extender/SimpleRequestCallback;->notifyCaptureFailed()V

    .line 87
    return-void
.end method

.method public onCaptureCompleted(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2
    .param p1, "request"    # Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;
    .param p2, "totalCaptureResult"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 64
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/SimpleRequestCallback;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/SimpleRequestCallback;->mResultListener:Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/SimpleRequestCallback;->mResultListener:Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;

    invoke-interface {v1, p2}, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;->onUpdateLatestPreviewResult(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/extender/SimpleRequestCallback;->notifyCaptureProcessStarted()V

    .line 69
    iget-boolean v1, p0, Lcom/samsung/android/camerax/advanced/extender/SimpleRequestCallback;->mNotifyProgress:Z

    if-eqz v1, :cond_1

    .line 70
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/camerax/advanced/extender/SimpleRequestCallback;->notifyCaptureProcessProgressed(I)V

    .line 71
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/samsung/android/camerax/advanced/extender/SimpleRequestCallback;->notifyCaptureProcessProgressed(I)V

    .line 73
    :cond_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/camerax/advanced/extender/SimpleRequestCallback;->notifyCaptureCompleted(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 74
    monitor-exit v0

    .line 75
    return-void

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCaptureFailed(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0
    .param p1, "request"    # Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;
    .param p2, "captureFailure"    # Landroid/hardware/camera2/CaptureFailure;

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/extender/SimpleRequestCallback;->notifyCaptureFailed()V

    .line 81
    return-void
.end method

.method public onCaptureProgressed(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1, "request"    # Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;
    .param p2, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .line 59
    return-void
.end method

.method public onCaptureSequenceAborted(I)V
    .locals 0
    .param p1, "sequenceId"    # I

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/extender/SimpleRequestCallback;->notifyCaptureSequenceAborted()V

    .line 97
    return-void
.end method

.method public onCaptureSequenceCompleted(IJ)V
    .locals 0
    .param p1, "sequenceId"    # I
    .param p2, "frameNumber"    # J

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/camerax/advanced/extender/SimpleRequestCallback;->notifyCaptureSequenceCompleted()V

    .line 92
    return-void
.end method

.method public onCaptureStarted(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;JJ)V
    .locals 0
    .param p1, "request"    # Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;
    .param p2, "frameNumber"    # J
    .param p4, "timestamp"    # J

    .line 52
    invoke-virtual {p0, p4, p5}, Lcom/samsung/android/camerax/advanced/extender/SimpleRequestCallback;->notifyCaptureStarted(J)V

    .line 53
    return-void
.end method
