.class Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService$1;
.super Ljava/lang/Object;
.source "SamsungExtension.java"

# interfaces
.implements Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;->registerSecUwbCallback(Lcom/samsung/android/uwb_extras/ISecUwbCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 336
    iput-object p1, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService$1;->this$1:Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRangingReportReceived(Landroid/uwb/RangingReport;)Landroid/uwb/RangingReport;
    .locals 1
    .param p1, "rangingReport"    # Landroid/uwb/RangingReport;

    .line 371
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSessionConfigurationChanged(Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 367
    return-void
.end method

.method public onSessionStatusNotificationReceived(Landroid/os/PersistableBundle;)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 339
    invoke-static {p1}, Lcom/google/uwb/support/oemextension/SessionStatus;->fromBundle(Landroid/os/PersistableBundle;)Lcom/google/uwb/support/oemextension/SessionStatus;

    move-result-object v0

    .line 340
    .local v0, "uwbSessionStatus":Lcom/google/uwb/support/oemextension/SessionStatus;
    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/SessionStatus;->getSessionToken()I

    move-result v1

    .line 341
    .local v1, "uwbSessionToken":I
    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/SessionStatus;->getSessionId()J

    move-result-wide v2

    long-to-int v2, v2

    .line 342
    .local v2, "uwbSessionId":I
    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/SessionStatus;->getReasonCode()I

    move-result v3

    .line 345
    .local v3, "uwbReasonCode":I
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService$1;->this$1:Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;

    iget-object v4, v4, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fgetmSecCallback(Lcom/samsung/android/server/uwb/SamsungExtension;)Lcom/samsung/android/uwb_extras/ISecUwbCallback;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 346
    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/SessionStatus;->getState()I

    move-result v4

    if-nez v4, :cond_0

    .line 347
    const-string v4, "UwbSamsungExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notify Session ID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Session Token : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/server/uwb/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v4, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService$1;->this$1:Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;

    iget-object v4, v4, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fgetmSecCallback(Lcom/samsung/android/server/uwb/SamsungExtension;)Lcom/samsung/android/uwb_extras/ISecUwbCallback;

    move-result-object v4

    invoke-interface {v4, v2, v1}, Lcom/samsung/android/uwb_extras/ISecUwbCallback;->notifySessionToken(II)V

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/SessionStatus;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 350
    iget-object v4, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService$1;->this$1:Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;

    iget-object v4, v4, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fgetmSecCallback(Lcom/samsung/android/server/uwb/SamsungExtension;)Lcom/samsung/android/uwb_extras/ISecUwbCallback;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v2, v5}, Lcom/samsung/android/uwb_extras/ISecUwbCallback;->notifySessionToken(II)V

    .line 354
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 355
    iget-object v4, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService$1;->this$1:Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;

    iget-object v4, v4, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fgetmBigdataManager(Lcom/samsung/android/server/uwb/SamsungExtension;)Lcom/samsung/android/server/uwb/bigdata/BigdataManager;

    move-result-object v4

    const-string v5, "UW_SSN"

    invoke-virtual {v0}, Lcom/google/uwb/support/oemextension/SessionStatus;->getAppPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Lcom/samsung/android/server/uwb/bigdata/BigdataManager;->sendErrorBigdata(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 361
    :catch_0
    move-exception v4

    .line 362
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 358
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 359
    .local v4, "e":Landroid/os/DeadObjectException;
    iget-object v5, p0, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService$1;->this$1:Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;

    iget-object v5, v5, Lcom/samsung/android/server/uwb/SamsungExtension$UwbExtrasAdapterService;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fputmSecCallback(Lcom/samsung/android/server/uwb/SamsungExtension;Lcom/samsung/android/uwb_extras/ISecUwbCallback;)V

    .line 360
    invoke-virtual {v4}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 363
    .end local v4    # "e":Landroid/os/DeadObjectException;
    :cond_2
    :goto_1
    nop

    .line 364
    return-void
.end method
