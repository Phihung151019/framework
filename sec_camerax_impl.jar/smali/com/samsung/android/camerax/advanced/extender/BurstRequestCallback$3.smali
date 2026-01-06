.class Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$3;
.super Ljava/lang/Object;
.source "BurstRequestCallback.java"

# interfaces
.implements Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->getProcessRunnable(Ljava/util/Map;)Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

.field final synthetic val$captureStageMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;
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

    .line 274
    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$3;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    iput-object p2, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$3;->val$captureStageMap:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 277
    invoke-static {}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Capture is failed/canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$3;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->notifyCaptureFailed()V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$3;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->notifyCaptureSequenceCompleted()V

    .line 283
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$3;->val$captureStageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 284
    .local v1, "value":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;

    invoke-interface {v2}, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;->decrement()Z

    .line 285
    .end local v1    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;>;"
    goto :goto_0

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$3;->val$captureStageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 287
    return-void
.end method

.method public run()V
    .locals 8

    .line 291
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$3;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->notifyCaptureProcessStarted()V

    .line 292
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$3;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->notifyCaptureProcessProgressed(I)V

    .line 294
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$3;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->-$$Nest$fgetmImageProcessor(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$ImageProcessor;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$3;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    iget-object v2, v0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mCaptureRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$3;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->-$$Nest$fgetmLatestResult(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$3;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-static {v0}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->-$$Nest$fgetmCaptureStartTimestamp(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$3;->val$captureStageMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$3;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$ImageProcessor;->process(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;JLjava/util/Map;Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)V

    .line 299
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$3;->val$captureStageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 300
    .local v1, "value":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;

    invoke-interface {v2}, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;->decrement()Z

    .line 301
    .end local v1    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;>;"
    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$3;->val$captureStageMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 303
    return-void
.end method
