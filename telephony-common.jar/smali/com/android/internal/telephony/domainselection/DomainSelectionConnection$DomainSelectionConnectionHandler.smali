.class public final Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;
.super Landroid/os/Handler;
.source "DomainSelectionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "DomainSelectionConnectionHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 250
    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    .line 251
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 257
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 332
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage unexpected msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->loge(Ljava/lang/String;)V

    return-void

    .line 327
    :pswitch_0
    iget-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 328
    :try_start_0
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$monModemReset(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)V

    .line 329
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 315
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 316
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v1, v3}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$mcheckState(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$mcheckState(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 319
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_1

    .line 320
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 321
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .line 322
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    .line 321
    invoke-static {p0, v1, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$monTriggerNetworkScanError(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;ILcom/android/internal/telephony/CommandException$Error;)V

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 324
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 317
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    .line 324
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 304
    :pswitch_2
    iget-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 305
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$mclearState(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;I)V

    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$mcheckState(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmPendingScanRequest(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$ScanRequest;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    .line 310
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmPendingScanRequest(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$ScanRequest;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$ScanRequest;->mPreferredNetworks:[I

    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmPendingScanRequest(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$ScanRequest;

    move-result-object p0

    iget p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$ScanRequest;->mScanType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onRequestEmergencyNetworkScan([IIZ)V

    .line 312
    monitor-exit p1

    return-void

    :catchall_2
    move-exception p0

    goto :goto_4

    .line 308
    :cond_4
    :goto_3
    monitor-exit p1

    return-void

    .line 312
    :goto_4
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    .line 297
    :pswitch_3
    iget-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 298
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v0, v3}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$mcheckState(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$mcheckState(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 299
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onServiceBindingTimeout()V

    goto :goto_5

    :catchall_3
    move-exception p0

    goto :goto_6

    .line 301
    :cond_5
    :goto_5
    monitor-exit p1

    return-void

    :goto_6
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p0

    .line 285
    :pswitch_4
    iget-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 286
    :try_start_4
    iget-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {p1, v3}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$mcheckState(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;I)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$mcheckState(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;I)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_8

    .line 290
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmController(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    move-result-object p1

    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmSelectionAttributes(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Landroid/telephony/DomainSelectionService$SelectionAttributes;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmTransportSelectorCallback(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Lcom/android/internal/telephony/ITransportSelectorCallback;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->selectDomain(Landroid/telephony/DomainSelectionService$SelectionAttributes;Lcom/android/internal/telephony/ITransportSelectorCallback;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 292
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$mclearWaitingForServiceBinding(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)V

    goto :goto_7

    :catchall_4
    move-exception p0

    goto :goto_9

    .line 294
    :cond_7
    :goto_7
    monitor-exit v0

    return-void

    .line 287
    :cond_8
    :goto_8
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    const-string p1, "EVENT_SERVICE_CONNECTED disposed or not waiting for binding"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->loge(Ljava/lang/String;)V

    .line 288
    monitor-exit v0

    return-void

    .line 294
    :goto_9
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p0

    .line 277
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    if-eqz p1, :cond_a

    .line 278
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez p1, :cond_9

    goto :goto_a

    .line 282
    :cond_9
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->onQualifiedNetworksChanged(Ljava/util/List;)V

    return-void

    .line 279
    :cond_a
    :goto_a
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    const-string p1, "handleMessage EVENT_QUALIFIED_NETWORKS_CHANGED null result"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->loge(Ljava/lang/String;)V

    return-void

    .line 259
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 260
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/EmergencyRegistrationResult;

    .line 261
    invoke-static {}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_EMERGENCY_NETWORK_SCAN_RESULT result="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->logd(Ljava/lang/String;)V

    .line 262
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 263
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$mclearState(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;I)V

    .line 264
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmResultCallback(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Lcom/android/internal/telephony/IWwanSelectorResultCallback;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v1, :cond_c

    .line 266
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    invoke-static {v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$fgetmResultCallback(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;)Lcom/android/internal/telephony/IWwanSelectorResultCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/IWwanSelectorResultCallback;->onComplete(Landroid/telephony/EmergencyRegistrationResult;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_b

    :catchall_5
    move-exception p0

    goto :goto_c

    :catch_0
    move-exception p1

    .line 268
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_EMERGENCY_NETWORK_SCAN_RESULT exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->loge(Ljava/lang/String;)V

    .line 271
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection$DomainSelectionConnectionHandler;->this$0:Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;->-$$Nest$mwaitForServiceBinding(Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;Landroid/telephony/DomainSelectionService$SelectionAttributes;)V

    .line 274
    :cond_c
    :goto_b
    monitor-exit v0

    return-void

    :goto_c
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
