.class Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$1;
.super Ljava/lang/Object;
.source "RepeatingRequestCallback.java"

# interfaces
.implements Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher$ImageResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->onCaptureStarted(Landroidx/camera/extensions/impl/advanced/RequestProcessorImpl$Request;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;
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

    .line 77
    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$1;->this$0:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;

    iput-wide p2, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$1;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageResultMatched(Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;I)V
    .locals 5
    .param p1, "imageReference"    # Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;
    .param p2, "totalCaptureResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p3, "captureStageId"    # I

    .line 82
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$1;->this$0:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;

    iget-object v0, v0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$1;->this$0:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;

    invoke-static {v1}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->-$$Nest$fgetmImageResultMatcher(Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;)Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$1;->val$timestamp:J

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/camerax/advanced/extender/ImageResultMatcher;->discardPendingListener(J)I

    move-result v1

    .line 86
    .local v1, "pendingResults":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 87
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$1;->this$0:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;

    invoke-virtual {v3}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->notifyCaptureFailed()V

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v2    # "i":I
    :cond_0
    invoke-interface {p1}, Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;->increment()Z

    .line 93
    invoke-static {}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onImageResultMatched, Stage Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$1;->this$0:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;

    invoke-static {v2}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->-$$Nest$fgetmFirstFrameArrived(Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    invoke-static {}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onImageResultMatched for the first frame"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$1;->this$0:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->-$$Nest$fputmFirstFrameArrived(Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;Z)V

    .line 98
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$1;->this$0:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;

    .line 99
    invoke-static {v2, p1, p2}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->-$$Nest$mgetProcessRunnable(Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;Landroidx/camera/extensions/impl/advanced/ImageReferenceImpl;Landroid/hardware/camera2/TotalCaptureResult;)Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;

    move-result-object v2

    .line 100
    .local v2, "runnable":Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;
    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$1;->this$0:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;

    invoke-static {v3}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->-$$Nest$fgetmExecutor(Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;)Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 101
    .end local v1    # "pendingResults":I
    .end local v2    # "runnable":Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;
    monitor-exit v0

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onMatchFailed()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback$1;->this$0:Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;

    invoke-virtual {v0}, Lcom/samsung/android/camerax/advanced/extender/RepeatingRequestCallback;->notifyCaptureFailed()V

    .line 107
    return-void
.end method
