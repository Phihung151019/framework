.class Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$2;
.super Ljava/lang/Object;
.source "RepeatingRequestCallback.java"

# interfaces
.implements Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->getProcessRunnable(Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;)Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;

.field final synthetic val$imageReference:Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;

.field final synthetic val$totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;


# direct methods
.method constructor <init>(Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;Landroid/hardware/camera2/TotalCaptureResult;Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$2;->this$0:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;

    iput-object p2, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$2;->val$totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    iput-object p3, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$2;->val$imageReference:Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 162
    invoke-static {}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Preview buffer is dropped"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$2;->this$0:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->notifyCaptureProcessStarted()V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$2;->this$0:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$2;->val$totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->notifyCaptureCompleted(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$2;->val$imageReference:Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;->decrement()Z

    .line 171
    return-void
.end method

.method public run()V
    .locals 6

    .line 175
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$2;->this$0:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->notifyCaptureProcessStarted()V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$2;->this$0:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->-$$Nest$fgetmImageProcessor(Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;)Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$ImageProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$2;->this$0:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;

    iget-object v1, v1, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$2;->this$0:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;

    invoke-static {v2}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->-$$Nest$fgetmLatestResult(Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v2

    new-instance v3, Landroid/util/Pair;

    iget-object v4, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$2;->val$imageReference:Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;

    iget-object v5, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$2;->val$totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$2;->this$0:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$ImageProcessor;->process(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;Landroid/util/Pair;Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$2;->val$imageReference:Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;

    invoke-interface {v0}, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;->decrement()Z

    .line 183
    return-void
.end method
