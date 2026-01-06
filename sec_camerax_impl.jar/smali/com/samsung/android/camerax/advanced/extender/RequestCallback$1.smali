.class Lcom/samsung/android/camerax/advanced/extender/RequestCallback$1;
.super Ljava/lang/Object;
.source "RequestCallback.java"

# interfaces
.implements Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camerax/advanced/extender/RequestCallback;-><init>(ILcom/samsung/android/camerax/advanced/extender/internal/ExtensionMetadata;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$SequenceCompleteListener;Lcom/samsung/android/camerax/advanced/extender/RequestCallback$CaptureResultListener;Landroid/hardware/camera2/CaptureRequest;Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field final synthetic val$callback:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cx/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    .line 69
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$1;->TAG:Ljava/lang/String;

    .line 68
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/camerax/advanced/extender/RequestCallback;Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/camerax/advanced/extender/RequestCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    iput-object p2, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$1;->val$callback:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(JILjava/util/Map;)V
    .locals 3
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

    .line 105
    .local p4, "result":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;>;"
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureCompleted, seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$1;->val$callback:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;->onCaptureCompleted(JILjava/util/Map;)V

    .line 108
    return-void
.end method

.method public onCaptureFailed(I)V
    .locals 3
    .param p1, "captureSequenceId"    # I

    .line 86
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureFailed, seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$1;->val$callback:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;->onCaptureFailed(I)V

    .line 88
    return-void
.end method

.method public onCaptureProcessProgressed(I)V
    .locals 3
    .param p1, "progress"    # I

    .line 112
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureProcessProgressed, progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-boolean v0, Lcom/samsung/android/camerax/advanced/ExtensionVersion;->PROCESS_PROGRESS_API_SUPPORTED:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$1;->val$callback:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;->onCaptureProcessProgressed(I)V

    goto :goto_0

    .line 116
    :cond_0
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$1;->TAG:Ljava/lang/String;

    const-string v1, "unable to post progress callback, library is old"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    return-void
.end method

.method public onCaptureProcessStarted(I)V
    .locals 3
    .param p1, "captureSequenceId"    # I

    .line 80
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureProcessStarted, seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$1;->val$callback:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;->onCaptureProcessStarted(I)V

    .line 82
    return-void
.end method

.method public onCaptureSequenceAborted(I)V
    .locals 3
    .param p1, "captureSequenceId"    # I

    .line 98
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureSequenceAborted, seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$1;->val$callback:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;->onCaptureSequenceAborted(I)V

    .line 100
    return-void
.end method

.method public onCaptureSequenceCompleted(I)V
    .locals 3
    .param p1, "captureSequenceId"    # I

    .line 92
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureSequenceCompleted, seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$1;->val$callback:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    invoke-interface {v0, p1}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;->onCaptureSequenceCompleted(I)V

    .line 94
    return-void
.end method

.method public onCaptureStarted(IJ)V
    .locals 3
    .param p1, "captureSequenceId"    # I
    .param p2, "timestamp"    # J

    .line 73
    sget-object v0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$1;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStarted, seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RequestCallback$1;->val$callback:Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;

    invoke-interface {v0, p1, p2, p3}, Landroidx/camera/extensions/impl/advanced/SessionProcessorImpl$CaptureCallback;->onCaptureStarted(IJ)V

    .line 76
    return-void
.end method
