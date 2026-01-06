.class Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$2;
.super Ljava/lang/Object;
.source "BurstRequestCallback.java"

# interfaces
.implements Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher$ImageResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->onCaptureStarted(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$2;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageResultMatched(Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;I)V
    .locals 4
    .param p1, "imageReference"    # Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;
    .param p2, "totalCaptureResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p3, "captureStageId"    # I

    .line 179
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$2;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    iget-object v0, v0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$2;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    iget-boolean v1, v1, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->mCaptureFailed:Z

    if-eqz v1, :cond_1

    .line 181
    invoke-static {}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "capture failed, no need to process images"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$2;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-static {v1}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->-$$Nest$fgetmCaptureStageMap(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 185
    .local v2, "value":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;>;"
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;

    invoke-interface {v3}, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;->decrement()Z

    .line 186
    nop

    .end local v2    # "value":Landroid/util/Pair;, "Landroid/util/Pair<Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;>;"
    goto :goto_0

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$2;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-static {v1}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->-$$Nest$fgetmCaptureStageMap(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 189
    monitor-exit v0

    return-void

    .line 192
    :cond_1
    invoke-interface {p1}, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;->increment()Z

    .line 194
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$2;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-static {v1}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->-$$Nest$fgetmCaptureStageMap(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-static {}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImageResultMatched, Stage Id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Captured Stages = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$2;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-static {v3}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->-$$Nest$fgetmCaptureStageMap(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)Ljava/util/Map;

    move-result-object v3

    .line 198
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", progressive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$2;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-static {v3}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->-$$Nest$fgetmProgressiveProcessing(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$2;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-static {v1}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->-$$Nest$fgetmProgressiveProcessing(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$2;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-static {v1}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->-$$Nest$fgetmCaptureStageMap(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)Ljava/util/Map;

    move-result-object v1

    .line 202
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$2;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-static {v2}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->-$$Nest$fgetmMaxCaptureStage(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 203
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$2;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$2;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-static {v3}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->-$$Nest$fgetmCaptureStageMap(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v1, v2}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->-$$Nest$mgetProcessRunnable(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;Ljava/util/Map;)Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;

    move-result-object v1

    .line 205
    .local v1, "runnable":Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$2;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-static {v2}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->-$$Nest$fgetmCaptureStageMap(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 206
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$2;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-static {v2}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->-$$Nest$fgetmExecutor(Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;)Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 208
    .end local v1    # "runnable":Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;
    :cond_3
    monitor-exit v0

    .line 209
    return-void

    .line 208
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onMatchFailed()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback$2;->this$0:Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/BurstRequestCallback;->notifyCaptureFailed()V

    .line 214
    return-void
.end method
