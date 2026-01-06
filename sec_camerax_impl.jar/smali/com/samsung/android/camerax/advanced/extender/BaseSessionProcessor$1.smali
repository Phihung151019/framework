.class Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor$1;
.super Ljava/lang/Object;
.source "BaseSessionProcessor.java"

# interfaces
.implements Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;->onCaptureSessionStart(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/camerax/advanced/extender/BaseSessionProcessor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


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

    .line 643
    .local p4, "result":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;>;"
    return-void
.end method

.method public onCaptureFailed(I)V
    .locals 0
    .param p1, "captureSequenceId"    # I

    .line 627
    return-void
.end method

.method public onCaptureProcessProgressed(I)V
    .locals 0
    .param p1, "progress"    # I

    .line 648
    return-void
.end method

.method public onCaptureProcessStarted(I)V
    .locals 0
    .param p1, "captureSequenceId"    # I

    .line 622
    return-void
.end method

.method public onCaptureSequenceAborted(I)V
    .locals 0
    .param p1, "captureSequenceId"    # I

    .line 637
    return-void
.end method

.method public onCaptureSequenceCompleted(I)V
    .locals 0
    .param p1, "captureSequenceId"    # I

    .line 632
    return-void
.end method

.method public onCaptureStarted(IJ)V
    .locals 0
    .param p1, "captureSequenceId"    # I
    .param p2, "timestamp"    # J

    .line 617
    return-void
.end method
