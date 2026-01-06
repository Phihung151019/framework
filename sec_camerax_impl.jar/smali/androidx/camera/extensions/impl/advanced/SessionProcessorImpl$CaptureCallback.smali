.class public interface abstract Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;
.super Ljava/lang/Object;
.source "SessionProcessorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureCallback"
.end annotation


# virtual methods
.method public onCaptureCompleted(JILjava/util/Map;)V
    .locals 0
    .param p1, "timestamp"    # J
    .param p3, "captureSequenceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 392
    .local p4, "result":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;>;"
    return-void
.end method

.method public abstract onCaptureFailed(I)V
.end method

.method public onCaptureFailed(II)V
    .locals 0
    .param p1, "captureSequenceId"    # I
    .param p2, "reason"    # I

    .line 422
    return-void
.end method

.method public onCaptureProcessProgressed(I)V
    .locals 0
    .param p1, "progress"    # I

    .line 407
    return-void
.end method

.method public abstract onCaptureProcessStarted(I)V
.end method

.method public abstract onCaptureSequenceAborted(I)V
.end method

.method public abstract onCaptureSequenceCompleted(I)V
.end method

.method public abstract onCaptureStarted(IJ)V
.end method
