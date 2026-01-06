.class Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$4;
.super Ljava/lang/Object;
.source "UwbFactoryManager.java"

# interfaces
.implements Landroid/uwb/RangingSession$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->testCustomSetRangingCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2497
    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$4;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 2546
    return-void
.end method

.method public onOpenFailed(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 2511
    return-void
.end method

.method public onOpened(Landroid/uwb/RangingSession;)V
    .locals 2
    .param p1, "session"    # Landroid/uwb/RangingSession;

    .line 2500
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$4;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmRangingModeSessionObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2501
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$4;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmRangingModeSessionObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2502
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$4;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v1, p1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fputmRangingSession(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;Landroid/uwb/RangingSession;)V

    .line 2503
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler$4;->this$1:Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;->-$$Nest$fgetmRangingModeSessionObject(Lcom/samsung/android/server/uwb/factory/UwbFactoryManager$UwbFactoryHandler;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 2504
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2506
    :cond_0
    :goto_0
    return-void
.end method

.method public onReconfigureFailed(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 2531
    return-void
.end method

.method public onReconfigured(Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 2526
    return-void
.end method

.method public onReportReceived(Landroid/uwb/RangingReport;)V
    .locals 0
    .param p1, "rangingReport"    # Landroid/uwb/RangingReport;

    .line 2551
    return-void
.end method

.method public onStartFailed(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 2521
    return-void
.end method

.method public onStarted(Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "sessionInfo"    # Landroid/os/PersistableBundle;

    .line 2516
    return-void
.end method

.method public onStopFailed(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 2541
    return-void
.end method

.method public onStopped(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 2536
    return-void
.end method
