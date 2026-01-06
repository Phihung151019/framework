.class Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$1;
.super Ljava/lang/Object;
.source "SamsungUwbTestManager.java"

# interfaces
.implements Landroid/uwb/RangingSession$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/uwb/IVendorExtension;Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$1;->this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 140
    return-void
.end method

.method public onOpenFailed(ILandroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 99
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$1;->this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$fgetmTestModeSessionObject(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$1;->this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$fgetmTestModeSessionObject(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$1;->this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$fputmTestModeSessionStatus(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;I)V

    .line 102
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$1;->this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$fgetmTestModeSessionObject(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 103
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 105
    :cond_0
    :goto_0
    return-void
.end method

.method public onOpened(Landroid/uwb/RangingSession;)V
    .locals 3
    .param p1, "session"    # Landroid/uwb/RangingSession;

    .line 88
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$1;->this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$fgetmTestModeSessionObject(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$1;->this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$fgetmTestModeSessionObject(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$1;->this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    invoke-static {v1, p1}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$fputmRangingSession(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;Landroid/uwb/RangingSession;)V

    .line 91
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$1;->this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$fputmTestModeSessionStatus(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;I)V

    .line 92
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$1;->this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$fgetmTestModeSessionObject(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 93
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 95
    :cond_0
    :goto_0
    return-void
.end method

.method public onReconfigureFailed(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 125
    return-void
.end method

.method public onReconfigured(Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/PersistableBundle;

    .line 120
    return-void
.end method

.method public onReportReceived(Landroid/uwb/RangingReport;)V
    .locals 5
    .param p1, "rangingReport"    # Landroid/uwb/RangingReport;

    .line 144
    invoke-virtual {p1}, Landroid/uwb/RangingReport;->getRangingReportMetadata()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 145
    .local v0, "bundle":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 146
    const-string v1, "rf_operation_type"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 147
    .local v1, "type":I
    invoke-virtual {p1}, Landroid/uwb/RangingReport;->getRangingReportMetadata()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/google/uwb/support/oemextension/RangingReportMetadata;->fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/RangingReportMetadata;

    move-result-object v2

    .line 148
    .local v2, "metadata":Lcom/google/uwb/support/oemextension/RangingReportMetadata;
    invoke-virtual {v2}, Lcom/google/uwb/support/oemextension/RangingReportMetadata;->getRawNtfData()[B

    move-result-object v3

    .line 149
    .local v3, "rawDataNtf":[B
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$1;->this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$fgetmNotificationHandler(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;)Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;->handleUwbLoopBackTestDataNtf([B)V

    .line 158
    goto :goto_0

    .line 154
    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$1;->this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$fgetmNotificationHandler(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;)Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;->handlePerRxDataNtf([B)V

    .line 155
    goto :goto_0

    .line 151
    :pswitch_3
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$1;->this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$fgetmNotificationHandler(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;)Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/samsung/android/server/uwb/factory/rfTest/UwbTestNotificationHandler;->handlePeriodicTxDataNtf([B)V

    .line 152
    nop

    .line 164
    .end local v1    # "type":I
    .end local v2    # "metadata":Lcom/google/uwb/support/oemextension/RangingReportMetadata;
    .end local v3    # "rawDataNtf":[B
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStartFailed(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 115
    return-void
.end method

.method public onStarted(Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "sessionInfo"    # Landroid/os/PersistableBundle;

    .line 110
    return-void
.end method

.method public onStopFailed(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "params"    # Landroid/os/PersistableBundle;

    .line 135
    return-void
.end method

.method public onStopped(ILandroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "parameters"    # Landroid/os/PersistableBundle;

    .line 130
    return-void
.end method
