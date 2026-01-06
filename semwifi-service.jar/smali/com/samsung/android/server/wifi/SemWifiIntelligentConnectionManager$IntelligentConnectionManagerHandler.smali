.class Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntelligentConnectionManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    iget v0, v2, Landroid/os/Message;->what:I

    const/16 v3, 0x50

    const/16 v4, 0x9

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_90

    .line 2
    :pswitch_0
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgettrProgress(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_dc

    .line 3
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetaiTrServiceIntent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIwhTrServiceConnection(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v12}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const-string v2, "IWH tr. service bind err: "

    .line 5
    invoke-static {v2, v0}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v1, v2, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_90

    .line 8
    :pswitch_1
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    return-void

    .line 9
    :pswitch_2
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mpScanTimeQuery(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 10
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->requestPartialScan()V

    return-void

    .line 11
    :pswitch_3
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mresetTrainedData(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 12
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmGroupKey(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mfnHistoryControl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;Z)V

    .line 13
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputhoDecisionCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 14
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputhoSuccessCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 15
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputhoSamplingCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 16
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputhoMissingCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 17
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputaRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 18
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputaScore(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 19
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const-string v2, "Re-tr triggered"

    invoke-static {v0, v2, v11}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 20
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0, v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputlastTrScore(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 21
    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$sfputisWellTrained(Z)V

    .line 22
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mcheck_scan_count(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputscan_count(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    return-void

    .line 23
    :pswitch_4
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const-string v1, "IP renew"

    invoke-static {v0, v1, v11}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    return-void

    .line 24
    :pswitch_5
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Saved network change: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v11}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 25
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 26
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 27
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mroamingGroupManagement(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)Z

    move-result v0

    .line 28
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_dc

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisHeRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_dc

    :cond_0
    if-eqz v0, :cond_dc

    .line 29
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0, v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmGroupKey(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V

    .line 30
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIntelligentConnectionManagerHandler(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 31
    :cond_1
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetAIdataLocation(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mresetAllData(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V

    .line 32
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_dc

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisHeRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 33
    :cond_2
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0, v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmGroupKey(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V

    .line 34
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIntelligentConnectionManagerHandler(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    move-result-object v0

    invoke-static {v0, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 35
    :pswitch_6
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmInitScanRequired(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 36
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0, v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputinitScanCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 37
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisHeRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 38
    :cond_3
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgethoWaiting(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DF: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmGroupKey(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetlastTrScore(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgethoSuccessCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgethoDecisionCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgethoDecisionCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v2

    if-lez v2, :cond_4

    .line 48
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetaRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v2

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgethoDecisionCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v3

    div-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetaScore(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v2

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgethoDecisionCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v3

    div-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    :cond_4
    const-string v2, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgethoMissingCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v2, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgethoSamplingCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v11}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 57
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmDebug(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 58
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$msaveDebugTestResults(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V

    .line 59
    :cond_5
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmGroupKey(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mdataManagement(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V

    .line 60
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 61
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisHeRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 62
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmActivityListenerRegistered(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 63
    :try_start_1
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmActionFilter(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)[I

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;-><init>([I)V

    .line 64
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSemContextManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/hardware/context/SemContextManager;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSemContextListener(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/hardware/context/SemContextManager;->unregisterListener(Lcom/samsung/android/hardware/context/SemContextListener;)V

    .line 65
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmActivityListenerRegistered(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 66
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmMobilityDetected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 67
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmPositionChanged(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_90

    :catch_1
    move-exception v0

    .line 68
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Acti. listener unregistration failure: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    goto/16 :goto_90

    .line 69
    :cond_6
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmTargetAbnormalAP(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_dc

    .line 70
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmTargetAbnormalAP(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mupdateAbnormalAP(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V

    return-void

    .line 71
    :pswitch_7
    :try_start_2
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 72
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSilentRoamingManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updatePnoNetworkList()V

    .line 73
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSilentRoamingManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/net/wifi/ScanResult;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/wifi/ScanResult;

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->filterScanResults([Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object v2

    .line 74
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmScanResultList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    const-string v4, "SF: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgettestNeighboringApInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v4

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 78
    :try_start_3
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputtestNeighboringApInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/StringBuilder;)V

    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v5, v13

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    .line 80
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSsid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v15}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSecurityType(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v15

    invoke-static {v9, v14, v15, v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$misMatched(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;ILandroid/net/wifi/ScanResult;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 81
    iget v9, v6, Landroid/net/wifi/ScanResult;->level:I

    if-gez v9, :cond_7

    .line 82
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmScanResultList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    .line 83
    :cond_7
    :goto_1
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v9

    iget v14, v6, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 84
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v9

    iget v14, v6, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v5, v5, 0x1

    .line 85
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$sfgetisWellTrained()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmEapNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmPidList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v9

    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget-object v15, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mgetEditedBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 86
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmEnvChange(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "EC: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x5

    add-int/lit8 v10, v16, -0x5

    iget-object v7, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v15, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7, v11}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    goto :goto_2

    :cond_9
    const/16 v17, 0x5

    .line 88
    :goto_2
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget-object v7, v7, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->reset()V

    .line 89
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-virtual {v6}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mupdateThroughputParamsFromIes(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V

    .line 90
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget-object v7, v7, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->getMaxNumberSpatialStreams()I

    move-result v26

    .line 91
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSemThroughputPredictor(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    move-result-object v20

    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmCapabilities(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    move-result-object v21

    .line 92
    invoke-virtual {v6}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    move-result v22

    iget v7, v6, Landroid/net/wifi/ScanResult;->channelWidth:I

    iget v8, v6, Landroid/net/wifi/ScanResult;->level:I

    iget v9, v6, Landroid/net/wifi/ScanResult;->frequency:I

    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget-object v10, v10, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 93
    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->getChannelUtilization()I

    move-result v27

    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget v14, v6, Landroid/net/wifi/ScanResult;->frequency:I

    .line 94
    invoke-static {v10, v14}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mgetUtilizationRatio(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)I

    move-result v28

    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIsBluetoothConnected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z

    move-result v29

    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v25, v9

    .line 95
    invoke-virtual/range {v20 .. v29}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;IIIIIIIZ)I

    move-result v7

    .line 96
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmDebug(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 97
    invoke-virtual {v6}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v8, " / "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_a
    iget-object v8, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x5

    iget-object v10, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v8, " / "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget v8, v6, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    const-string v8, " / "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget v8, v6, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const-string v8, " / "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v8, " / "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget-object v8, v8, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->getChannelUtilization()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    const-string v8, "("

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget v9, v6, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v8, v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mgetUtilizationRatio(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    const-string v8, ")"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmlConnection(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 112
    invoke-virtual {v6}, Landroid/net/wifi/ScanResult;->getApMldMacAddress()Landroid/net/MacAddress;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual {v6}, Landroid/net/wifi/ScanResult;->getApMldMacAddress()Landroid/net/MacAddress;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmMldMacAddress(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/MacAddress;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/net/MacAddress;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssidMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v8

    .line 113
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    iget-object v9, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 114
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmLastChannelUtilizationMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssidMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v9

    iget-object v10, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget-object v10, v10, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->getChannelUtilization()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v8, v12

    goto :goto_3

    :cond_b
    move v8, v13

    .line 115
    :goto_3
    const-string v9, " / "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_c

    .line 116
    const-string v8, "M"

    goto :goto_4

    :cond_c
    const-string v8, "N"

    :goto_4
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_d
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 118
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget-object v9, v8, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->getChannelUtilization()I

    move-result v9

    invoke-static {v8, v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmLastChannelUtilization(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 119
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8, v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputlastScanScore(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 120
    :cond_e
    const-string v7, " | "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgettestNeighboringApInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgettestNeighboringApInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgettestNeighboringApInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgettestNeighboringApInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgettestNeighboringApInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgettestNeighboringApInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgettestNeighboringApInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v6, v6, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgettestNeighboringApInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_f
    const/16 v17, 0x5

    :goto_5
    const-wide/16 v7, 0x0

    goto/16 :goto_0

    :cond_10
    const/16 v17, 0x5

    .line 129
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v13

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/ScanResult;

    .line 130
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetsavedConfigList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_17

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    .line 131
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9, v6, v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$misConfigured(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 132
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget-object v7, v7, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->reset()V

    .line 133
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-virtual {v6}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mupdateThroughputParamsFromIes(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V

    .line 134
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget-object v7, v7, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->getMaxNumberSpatialStreams()I

    move-result v26

    .line 135
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmDebug(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 136
    invoke-virtual {v6}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v7, " / "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_12
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSemThroughputPredictor(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    move-result-object v20

    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmCapabilities(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    move-result-object v21

    .line 139
    invoke-virtual {v6}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    move-result v22

    iget v7, v6, Landroid/net/wifi/ScanResult;->channelWidth:I

    iget v9, v6, Landroid/net/wifi/ScanResult;->level:I

    iget v10, v6, Landroid/net/wifi/ScanResult;->frequency:I

    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget-object v14, v14, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    .line 140
    invoke-virtual {v14}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->getChannelUtilization()I

    move-result v27

    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget v15, v6, Landroid/net/wifi/ScanResult;->frequency:I

    .line 141
    invoke-static {v14, v15}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mgetUtilizationRatio(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)I

    move-result v28

    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v14}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIsBluetoothConnected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z

    move-result v29

    move/from16 v23, v7

    move/from16 v24, v9

    move/from16 v25, v10

    .line 142
    invoke-virtual/range {v20 .. v29}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;IIIIIIIZ)I

    move-result v32

    .line 143
    new-instance v20, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;

    iget-object v7, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget v9, v6, Landroid/net/wifi/ScanResult;->level:I

    iget v10, v6, Landroid/net/wifi/ScanResult;->frequency:I

    iget v14, v6, Landroid/net/wifi/ScanResult;->channelWidth:I

    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v15}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSilentRoamingManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    move-result-object v15

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v11

    .line 144
    invoke-virtual {v15, v8, v11, v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isEverMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/wifi/ScanResult;)Z

    move-result v30

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSilentRoamingManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 145
    invoke-static {v8}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isFromCarrierOrPrivilegedApp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v31

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSilentRoamingManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    move-result-object v11

    .line 146
    invoke-virtual {v11, v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getAffiliatedMloLinksFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object v33

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v26, 0x0

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v14

    invoke-direct/range {v20 .. v33}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;-><init>(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;IIIDZZZZILjava/util/List;)V

    move-object/from16 v9, v20

    move/from16 v7, v32

    .line 147
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmThroughputScorer(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;

    move-result-object v10

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetcurrConfig(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result v11

    xor-int/2addr v11, v12

    invoke-virtual {v10, v9, v11}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->getCandidateScore(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;Z)D

    move-result-wide v9

    double-to-int v9, v9

    .line 148
    iget-object v10, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x5

    iget-object v14, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v10, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v10, " / "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget v10, v6, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    const-string v10, " / "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget v10, v6, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    const-string v10, " / "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    const-string v7, " / "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    const-string v7, " / "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget-object v7, v7, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->getChannelUtilization()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    const-string v7, "("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget v9, v6, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v7, v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mgetUtilizationRatio(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    const-string v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget v9, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v7, v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mgetSemWifiConfiguration(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 163
    invoke-virtual {v7}, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected()Z

    move-result v7

    move v9, v13

    goto :goto_7

    :cond_13
    move v7, v12

    move v9, v7

    .line 164
    :goto_7
    iget-boolean v10, v8, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    if-eqz v10, :cond_16

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v10

    if-eqz v10, :cond_16

    if-nez v9, :cond_16

    if-nez v7, :cond_16

    .line 165
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result v10

    if-nez v10, :cond_16

    .line 166
    iget v2, v6, Landroid/net/wifi/ScanResult;->level:I

    if-gez v2, :cond_14

    .line 167
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmScanResultList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_14
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v2

    iget v7, v6, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 169
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v2

    iget v7, v6, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    add-int/lit8 v5, v5, 0x1

    .line 170
    const-string v2, " (E)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v12

    goto :goto_8

    .line 171
    :cond_16
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " (D) "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " , "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " , "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :goto_8
    const-string v7, " | "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgettestNeighboringApInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgettestNeighboringApInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgettestNeighboringApInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgettestNeighboringApInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgettestNeighboringApInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgettestNeighboringApInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgettestNeighboringApInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v6, v6, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgettestNeighboringApInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    const/4 v11, 0x2

    goto/16 :goto_6

    .line 181
    :cond_18
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    :try_start_4
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIwhConfiguration()I

    move-result v0

    if-le v0, v12, :cond_1c

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmB2bPolicyManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    move-result-object v0

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isNCHOModeEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmScpmHeRoamingEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisHeRoamingEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmEapTransitionEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmEapNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$misCarrierNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_9

    :catch_2
    move-exception v0

    goto/16 :goto_11

    :cond_19
    :goto_9
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 183
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$misInternetNotRequiredNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$misNoInternetAccessExpected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$misMultiNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIwhEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 184
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisHeRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1c

    if-eqz v2, :cond_1c

    .line 185
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-virtual {v0, v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->renewConnection(Z)V

    .line 186
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Near-by AP state change: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisHeRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "T"

    goto :goto_a

    :cond_1a
    const-string v4, "F"

    :goto_a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1b

    const-string v2, "T"

    goto :goto_b

    :cond_1b
    const-string v2, "F"

    :goto_b
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    return-void

    .line 187
    :cond_1c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    const-string v0, " / "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmOpportunisticFullScan(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "F"

    goto :goto_c

    :cond_1d
    const-string v0, "P"

    :goto_c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 191
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmInitScanRequired(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    if-nez v0, :cond_1f

    .line 192
    :try_start_5
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmScanResultList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$msaveScanResultsToCsv(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_f

    :catch_3
    move-exception v0

    goto :goto_d

    :catch_4
    move-exception v0

    goto :goto_e

    .line 193
    :goto_d
    :try_start_6
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scan data save failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 194
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    .line 195
    :goto_e
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scan data save failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 196
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 197
    :goto_f
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmEnvChange(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 198
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmGroupKey(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mresetScanData(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V

    .line 199
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputhoDecisionCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 200
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputhoSamplingCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 201
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputhoSuccessCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 202
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputhoMissingCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 203
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputaRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 204
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputaScore(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 205
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputaBenefit(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 206
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputbfCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 207
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIntelligentConnectionManagerHandler(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIntelligentConnectionManagerHandler(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    move-result-object v2

    const/16 v3, 0xb

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_12

    .line 208
    :cond_1e
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgethoTriggered(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->hoDecisionFollowUp(Z)V

    goto :goto_12

    .line 209
    :cond_1f
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIntelligentConnectionManagerHandler(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_12

    .line 210
    :goto_10
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 211
    :goto_11
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const-string v3, "SF err: "

    .line 212
    invoke-static {v3, v0}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-static {v2, v0, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 214
    :goto_12
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetscanProgress(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 215
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIntelligentConnectionManagerHandler(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_90

    .line 216
    :pswitch_8
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetscanProgress(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 217
    :pswitch_9
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;

    .line 218
    iget-object v0, v2, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;->gKey:Ljava/lang/String;

    if-nez v0, :cond_20

    goto/16 :goto_90

    .line 219
    :cond_20
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmPowerManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/os/PowerManager;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 220
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IWH TC: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;->gKey:Ljava/lang/String;

    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmGroupKey(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    const-string v6, "T"

    goto :goto_13

    :cond_21
    const-string v6, "N"

    :goto_13
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;->score:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;->mode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;->numBssids:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetlastTrScanCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmPowerManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/os/PowerManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager;->getCurrentThermalStatus()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v0, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    goto :goto_15

    .line 221
    :cond_22
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IWH TC: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;->gKey:Ljava/lang/String;

    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmGroupKey(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    const-string v6, "T"

    goto :goto_14

    :cond_23
    const-string v6, "N"

    :goto_14
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;->score:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;->mode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;->numBssids:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetlastTrScanCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v0, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 222
    :goto_15
    :try_start_9
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIwhTrServiceConnection(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/ServiceConnection;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 223
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetaiTrServiceIntent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 224
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmTrServicePid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v0

    if-ltz v0, :cond_24

    .line 225
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmTrServicePid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v0

    invoke-static {v0, v4}, Landroid/os/Process;->sendSignal(II)V

    goto :goto_16

    :catch_5
    move-exception v0

    goto :goto_17

    .line 226
    :cond_24
    :goto_16
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgettrProgress(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_18

    .line 227
    :goto_17
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const-string v5, "IWH tr. service unbind err: "

    .line 228
    invoke-static {v5, v0}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    .line 229
    invoke-static {v4, v5, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 230
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    :goto_18
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget-object v4, v2, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;->gKey:Ljava/lang/String;

    iget v5, v2, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;->score:I

    iget v6, v2, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;->mode:I

    iget v7, v2, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;->numBssids:I

    invoke-static {v0, v4, v5, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mtrHistoryControl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;III)V

    .line 232
    iget-object v0, v2, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;->gKey:Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmGroupKey(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v4, 0x384

    if-eqz v0, :cond_26

    iget v0, v2, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;->mode:I

    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIwhMode(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v5

    if-ne v0, v5, :cond_26

    .line 233
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetlastTrScanCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v5

    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetTRAINING_STEP_SCAN_COUNT(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputtrainingStepScanCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 234
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget v5, v2, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;->score:I

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputlastTrScore(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 235
    iget v0, v2, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;->score:I

    if-lt v0, v3, :cond_25

    .line 236
    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$sfputisWellTrained(Z)V

    .line 237
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmGroupKey(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mgetPidList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmPidList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V

    goto/16 :goto_90

    .line 238
    :cond_25
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetlastTrScanCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v0

    if-lt v0, v4, :cond_dc

    .line 239
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;->gKey:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mresetScanData(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V

    .line 240
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mcheck_scan_count(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputscan_count(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 241
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetTRAINING_STEP_SCAN_COUNT(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputtrainingStepScanCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    goto/16 :goto_90

    .line 242
    :cond_26
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetlastTrScanCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v0

    if-lt v0, v4, :cond_dc

    .line 243
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget-object v1, v2, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$TrainingResult;->gKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mresetScanData(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V

    goto/16 :goto_90

    .line 244
    :pswitch_a
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_dc

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBootComplete(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 245
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIntelligentConnectionManagerHandler(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 246
    :pswitch_b
    :try_start_a
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIwhInfServiceConnection(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 247
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetaiInfServiceIntent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 248
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmInfServicePid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v0

    if-ltz v0, :cond_27

    .line 249
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmInfServicePid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v0

    invoke-static {v0, v4}, Landroid/os/Process;->sendSignal(II)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_19

    :catch_6
    move-exception v0

    .line 250
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const-string v4, "Iwh inf. service unbind err: "

    .line 251
    invoke-static {v4, v0}, Lcom/samsung/android/server/wifi/SemL4sController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    .line 252
    invoke-static {v3, v4, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 253
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 254
    :cond_27
    :goto_19
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ---> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgethoTriggered(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_28

    const-string v3, "H"

    goto :goto_1a

    :cond_28
    const-string v3, "S"

    :goto_1a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetunSeenBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_29

    const-string v3, "S"

    goto :goto_1b

    :cond_29
    const-string v3, "U"

    :goto_1b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 261
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmDebug(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 262
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$msaveDebugTestResults(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V

    .line 263
    :cond_2a
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgethoTriggered(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 264
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->requestPartialScan()V

    goto/16 :goto_90

    .line 265
    :cond_2b
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$sfgetisWellTrained()Z

    move-result v0

    if-eqz v0, :cond_dc

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoQueryRequired(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_dc

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 266
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v2

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmStabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/16 v0, 0xa

    goto :goto_1c

    :cond_2c
    const/16 v0, 0x14

    :goto_1c
    int-to-double v2, v0

    cmpg-double v0, v4, v2

    if-gez v0, :cond_dc

    .line 267
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->requestPartialScan()V

    goto/16 :goto_90

    :pswitch_c
    const/16 v17, 0x5

    .line 268
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmPositionChanged(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 269
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 270
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgethoTriggered(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 271
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWaitingReInit(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 272
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/net/wifi/WifiInfo;)V

    .line 273
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 276
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 277
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIwhEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v10

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIwhConfiguration()I

    move-result v11

    if-lez v11, :cond_2d

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v11

    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v14}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmContentResolver(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "wifi_handover_ai_mode"

    invoke-virtual {v11, v14, v15, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_2d

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIwhCmdControl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v11

    .line 278
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-eqz v11, :cond_2d

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIwhWlanTestControl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-eqz v11, :cond_2d

    move v11, v12

    goto :goto_1d

    :cond_2d
    move v11, v13

    .line 279
    :goto_1d
    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 280
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIwhEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-nez v10, :cond_30

    .line 281
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "Iwh disabled : "

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v14}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIwhConfiguration()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " / "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v14}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v14

    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v15}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmContentResolver(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/ContentResolver;

    move-result-object v15

    const-string v3, "wifi_handover_ai_mode"

    invoke-virtual {v14, v15, v3, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIwhCmdControl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_2e

    const-string v3, "T"

    goto :goto_1e

    :cond_2e
    const-string v3, "F"

    :goto_1e
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIwhWlanTestControl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_2f

    const-string v3, "T"

    goto :goto_1f

    :cond_2f
    const-string v3, "F"

    :goto_1f
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x2

    .line 283
    invoke-static {v10, v3, v11}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 284
    :cond_30
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmB2bPolicyManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    move-result-object v3

    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isNCHOModeEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    div-long/2addr v10, v5

    .line 286
    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v14}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiManagerScanTimeS(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)J

    move-result-wide v14

    sub-long v14, v10, v14

    const-wide/16 v19, 0xa

    cmp-long v14, v14, v19

    if-gtz v14, :cond_31

    .line 287
    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v14}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v14

    goto :goto_20

    .line 288
    :cond_31
    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v14}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmScanResultList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v14

    .line 289
    :goto_20
    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v15}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmInitScanRequired(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 290
    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v15}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmlConnection(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 291
    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v15, v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputheKeyList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V

    .line 292
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v9, v15}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputnonAutoheKeyList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V

    .line 293
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9, v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputlinkOutageCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 294
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9, v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputrssiOutageCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 295
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    if-eqz v9, :cond_a0

    .line 296
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v15

    invoke-static {v9, v15}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmSsid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V

    .line 297
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    move-result v15

    invoke-static {v9, v15}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmSecurityType(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 298
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v9, v15}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmPrevBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V

    .line 299
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v15

    invoke-static {v9, v15}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V

    .line 300
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v15

    invoke-static {v9, v15}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmFrequency(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 301
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmEapNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v9

    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v15}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$misEapNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    invoke-virtual {v9, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 302
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getAssociatedMloLinks()Ljava/util/List;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmMloLinks(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V

    .line 303
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmlConnection(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmMloLinks(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_32

    move v9, v12

    goto :goto_21

    :cond_32
    move v9, v13

    :goto_21
    invoke-virtual {v2, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 304
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2, v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmMlHas2G(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Z)V

    .line 305
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_33

    .line 306
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const-string v2, "Init. error: bssid"

    invoke-static {v0, v2, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 307
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWaitingReInit(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 308
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIntelligentConnectionManagerHandler(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    move-result-object v0

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 309
    :cond_33
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmlConnection(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 310
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getApMldMacAddress()Landroid/net/MacAddress;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmMldMacAddress(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/net/MacAddress;)V

    .line 311
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmChannelWidthMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/Map;)V

    .line 312
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmFrequencyMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/Map;)V

    .line 313
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmApMaxNssMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/Map;)V

    .line 314
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmApFoundMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/Map;)V

    .line 315
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmBssidMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/Map;)V

    .line 316
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmIdBssidMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/Map;)V

    .line 317
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmLinkIdList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/ArrayList;)V

    .line 318
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmLastChannelUtilizationMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/Map;)V

    .line 319
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmMloLinks(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/MloLink;

    .line 320
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmLinkIdList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/wifi/MloLink;->getLinkId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmApFoundMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/wifi/MloLink;->getLinkId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v6, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssidMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/wifi/MloLink;->getApMacAddress()Landroid/net/MacAddress;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Landroid/net/wifi/MloLink;->getLinkId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIdBssidMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/wifi/MloLink;->getLinkId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5}, Landroid/net/wifi/MloLink;->getApMacAddress()Landroid/net/MacAddress;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v6, v9, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFrequencyMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/wifi/MloLink;->getLinkId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 325
    invoke-virtual {v5}, Landroid/net/wifi/MloLink;->getChannel()I

    move-result v15

    invoke-virtual {v5}, Landroid/net/wifi/MloLink;->getBand()I

    move-result v13

    .line 326
    invoke-static {v15, v13}, Landroid/net/wifi/ScanResult;->convertChannelToFrequencyMhzIfSupported(II)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-virtual {v5}, Landroid/net/wifi/MloLink;->getBand()I

    move-result v5

    if-ne v5, v12, :cond_34

    .line 328
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmMlHas2G(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Z)V

    :cond_34
    const/4 v13, 0x0

    goto/16 :goto_22

    .line 329
    :cond_35
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getRoamingAssistant()Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    move-result-object v2

    .line 330
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputsavedConfigList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V

    .line 331
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetworks()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputsavedSemConfigList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V

    .line 332
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v5

    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/Context;

    move-result-object v6

    const-string v9, "sem_wifi_switch_to_better_wifi_enabled"

    invoke-virtual {v5, v6, v9, v12}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v12, :cond_36

    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v5

    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/Context;

    move-result-object v6

    const-string v9, "sem_wifi_switch_to_better_wifi_on_screen_enabled"

    .line 333
    invoke-virtual {v5, v6, v9, v12}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v12, :cond_36

    .line 334
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisHeRoamingEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_23

    .line 335
    :cond_36
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisHeRoamingEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_23
    if-eqz v14, :cond_42

    .line 336
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetsavedConfigList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_42

    .line 337
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_41

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    .line 338
    iget-object v13, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSsid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v15

    move/from16 v23, v12

    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSecurityType(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v12

    invoke-static {v13, v15, v12, v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$misMatched(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;ILandroid/net/wifi/ScanResult;)Z

    move-result v12

    if-eqz v12, :cond_3b

    .line 339
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_37

    .line 340
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_37
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmlConnection(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    if-eqz v12, :cond_38

    .line 342
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssidMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    iget-object v13, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_38

    .line 343
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmApFoundMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v12

    iget-object v13, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssidMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v13

    iget-object v15, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v12, v13, v15}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmChannelWidthMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v12

    iget-object v13, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssidMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v13

    iget-object v15, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    iget v15, v9, Landroid/net/wifi/ScanResult;->channelWidth:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFrequencyMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v12

    iget-object v13, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssidMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v13

    iget-object v15, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    iget v15, v9, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget-object v12, v12, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->reset()V

    .line 347
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-virtual {v9}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mupdateThroughputParamsFromIes(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V

    .line 348
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmApMaxNssMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v12

    iget-object v13, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssidMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v13

    iget-object v15, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    invoke-virtual {v15}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->getMaxNumberSpatialStreams()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmLastChannelUtilizationMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v12

    iget-object v13, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssidMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v13

    iget-object v15, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget-object v15, v15, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    invoke-virtual {v15}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->getChannelUtilization()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v12, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :cond_38
    iget-object v12, v9, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v13, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_39

    .line 351
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget v12, v9, Landroid/net/wifi/ScanResult;->channelWidth:I

    invoke-static {v6, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmChannelWidth(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 352
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget v12, v9, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v6, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmFrequency(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 353
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-virtual {v9}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    move-result v12

    invoke-static {v6, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmgetWifiStandard(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 354
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget-object v6, v6, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->reset()V

    .line 355
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-virtual {v9}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mupdateThroughputParamsFromIes(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V

    .line 356
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget-object v12, v6, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->getMaxNumberSpatialStreams()I

    move-result v12

    invoke-static {v6, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmApMaxNumberSpatialStreams(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 357
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget-object v12, v6, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->mThroughputParams:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;

    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$ThroughputParams;->getChannelUtilization()I

    move-result v12

    invoke-static {v6, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmLastChannelUtilization(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 358
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSemThroughputPredictor(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    move-result-object v24

    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmCapabilities(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    move-result-object v25

    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmgetWifiStandard(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v26

    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmChannelWidth(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v27

    iget v12, v9, Landroid/net/wifi/ScanResult;->level:I

    iget-object v13, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFrequency(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v29

    iget-object v13, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmApMaxNumberSpatialStreams(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v30

    iget-object v13, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmLastChannelUtilization(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v31

    iget-object v13, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFrequency(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v15

    .line 359
    invoke-static {v13, v15}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mgetUtilizationRatio(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)I

    move-result v32

    iget-object v13, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIsBluetoothConnected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z

    move-result v33

    move/from16 v28, v12

    .line 360
    invoke-virtual/range {v24 .. v33}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;IIIIIIIZ)I

    move-result v12

    invoke-static {v6, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputlastScanScore(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 361
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetlastScanScore(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v12

    invoke-static {v6, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputlastQueryScore(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 362
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetlastScanScore(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v12

    invoke-static {v6, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmEstimatedTput(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 363
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget v9, v9, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v6, v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputlastScanRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    move/from16 v24, v3

    move/from16 v6, v23

    goto/16 :goto_28

    .line 364
    :cond_39
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmEapNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    if-eqz v12, :cond_3a

    .line 365
    iget v9, v9, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    move/from16 v24, v3

    goto/16 :goto_28

    .line 366
    :cond_3b
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetsavedConfigList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_25
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    .line 367
    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    move/from16 v24, v3

    iget v3, v13, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v15, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mgetSemWifiConfiguration(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 368
    invoke-virtual {v3}, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected()Z

    move-result v3

    move v15, v3

    const/16 v25, 0x0

    goto :goto_26

    :cond_3c
    move/from16 v15, v23

    move/from16 v25, v15

    .line 369
    :goto_26
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3, v9, v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$misConfigured(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-boolean v3, v13, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    if-eqz v3, :cond_3f

    .line 370
    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkPermanentlyDisabled()Z

    move-result v3

    if-nez v3, :cond_3f

    if-nez v25, :cond_3f

    if-nez v15, :cond_3f

    .line 371
    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 372
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 373
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_3d
    iget v3, v9, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 375
    iget v3, v9, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_3e
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetheKeyList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 377
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetheKeyList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 378
    :cond_3f
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3, v9, v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$misConfigured(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-boolean v3, v13, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    if-nez v3, :cond_40

    .line 379
    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkPermanentlyDisabled()Z

    move-result v3

    if-nez v3, :cond_40

    if-nez v25, :cond_40

    if-nez v15, :cond_40

    .line 380
    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->hasNoInternetAccess()Z

    move-result v3

    if-nez v3, :cond_40

    .line 381
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetnonAutoheKeyList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 382
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetnonAutoheKeyList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_40
    :goto_27
    move/from16 v3, v24

    goto/16 :goto_25

    :goto_28
    move/from16 v12, v23

    move/from16 v3, v24

    goto/16 :goto_24

    :cond_41
    move/from16 v24, v3

    move/from16 v23, v12

    goto :goto_29

    :cond_42
    move/from16 v24, v3

    move/from16 v23, v12

    const/4 v6, 0x0

    .line 383
    :goto_29
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmlConnection(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 384
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmApFoundMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v6, v3, 0x1

    .line 385
    :cond_43
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_44

    .line 386
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v5

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputcurrConfig(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_2a

    .line 387
    :cond_44
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputcurrConfig(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/net/wifi/WifiConfiguration;)V

    :goto_2a
    if-nez v6, :cond_51

    .line 388
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputheKeyList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_45

    .line 390
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetcurrConfig(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-eqz v3, :cond_45

    .line 391
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetcurrConfig(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v5

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetheKeyList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v9

    const/4 v12, 0x0

    invoke-static {v3, v5, v9, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mroamingGroupQuery(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v5

    .line 392
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v3

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetcurrConfig(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v3, v9}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->getNetworkFrequencyList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_2b

    :cond_45
    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_2b
    if-nez v5, :cond_46

    if-eqz v2, :cond_50

    .line 393
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_50

    :cond_46
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v3

    .line 394
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIwhConfiguration()I

    move-result v3

    if-lez v3, :cond_50

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmScpmRoamingEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_47

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmScpmHeRoamingEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisHeRoamingEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 395
    :cond_47
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetScanFileNamePrefix(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".csv"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputscanFileName(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V

    .line 396
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mcheck_scan_count(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputscan_count(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 397
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V

    .line 398
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v3

    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 399
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v3

    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_48
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmlConnection(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 401
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmMloLinks(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_49
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/MloLink;

    .line 402
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v9

    .line 403
    invoke-virtual {v5}, Landroid/net/wifi/MloLink;->getChannel()I

    move-result v12

    invoke-virtual {v5}, Landroid/net/wifi/MloLink;->getBand()I

    move-result v13

    .line 404
    invoke-static {v12, v13}, Landroid/net/wifi/ScanResult;->convertChannelToFrequencyMhzIfSupported(II)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_49

    .line 405
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v9

    .line 406
    invoke-virtual {v5}, Landroid/net/wifi/MloLink;->getChannel()I

    move-result v12

    invoke-virtual {v5}, Landroid/net/wifi/MloLink;->getBand()I

    move-result v5

    .line 407
    invoke-static {v12, v5}, Landroid/net/wifi/ScanResult;->convertChannelToFrequencyMhzIfSupported(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 408
    :cond_4a
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmPidFreqMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4b
    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 409
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v9

    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmPidFreqMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4b

    .line 410
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v9

    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmPidFreqMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_4c
    if-eqz v2, :cond_4e

    const/4 v3, 0x0

    .line 411
    :goto_2e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4e

    .line 412
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 413
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 414
    :cond_4e
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmInitScanRequired(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    move/from16 v5, v23

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 415
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetscan_count(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v3

    if-ge v3, v5, :cond_4f

    if-eqz v2, :cond_50

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_50

    :cond_4f
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetinitScanCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v3

    move/from16 v5, v17

    if-gt v3, v5, :cond_50

    .line 416
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetinitScanCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v5

    const/16 v23, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputinitScanCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 417
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->requestPartialScan()V

    :cond_50
    move-object v5, v2

    const/4 v14, 0x0

    :goto_2f
    move-object v2, v0

    goto/16 :goto_43

    .line 418
    :cond_51
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const/4 v12, 0x0

    invoke-static {v3, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputinitScanCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 419
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$misNoInternetAccessExpected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/net/wifi/WifiInfo;)Z

    move-result v3

    if-eqz v2, :cond_5d

    .line 420
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetcurrConfig(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    if-eqz v5, :cond_5d

    .line 421
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v5

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetcurrConfig(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->getNetworkFrequencyList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_52

    .line 422
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_53

    :cond_52
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_54

    :cond_53
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIwhConfiguration()I

    move-result v2

    if-lez v2, :cond_54

    if-nez v24, :cond_54

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmScpmRoamingEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 423
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$misInternetNotRequiredNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z

    move-result v2

    if-nez v2, :cond_54

    if-nez v3, :cond_54

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIwhEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 424
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v12, 0x0

    goto/16 :goto_35

    :cond_54
    if-eqz v5, :cond_55

    .line 425
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_56

    :cond_55
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5c

    .line 426
    :cond_56
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "HO config: "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIwhConfiguration()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " / "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmScpmRoamingEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    if-eqz v12, :cond_57

    const-string v12, "T"

    goto :goto_30

    :cond_57
    const-string v12, "F"

    :goto_30
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " / "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$misInternetNotRequiredNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z

    move-result v12

    if-nez v12, :cond_58

    const-string v12, "T"

    goto :goto_31

    :cond_58
    const-string v12, "F"

    :goto_31
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " / "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_59

    const-string v12, "T"

    goto :goto_32

    :cond_59
    const-string v12, "F"

    :goto_32
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " / "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v24, :cond_5a

    .line 428
    const-string v12, "T"

    goto :goto_33

    :cond_5a
    const-string v12, "F"

    :goto_33
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " / "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIwhEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    if-eqz v12, :cond_5b

    const-string v12, "T"

    goto :goto_34

    :cond_5b
    const-string v12, "F"

    :goto_34
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x2

    .line 429
    invoke-static {v2, v9, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 430
    :cond_5c
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_35
    const/4 v9, 0x1

    goto :goto_38

    :cond_5d
    const/4 v12, 0x0

    .line 431
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 432
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "Init. check err.:"

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_5e

    const/4 v2, 0x1

    goto :goto_36

    :cond_5e
    const/4 v2, 0x0

    :goto_36
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetcurrConfig(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_5f

    const/4 v2, 0x1

    goto :goto_37

    :cond_5f
    const/4 v2, 0x0

    :goto_37
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x1

    invoke-static {v5, v2, v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    const/4 v5, 0x0

    .line 433
    :goto_38
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetcurrConfig(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_61

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIwhConfiguration()I

    move-result v2

    if-le v2, v9, :cond_61

    if-nez v24, :cond_61

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmScpmHeRoamingEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisHeRoamingEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmEapTransitionEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_60

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmEapNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_60

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$misCarrierNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z

    move-result v2

    if-eqz v2, :cond_61

    :cond_60
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 434
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$misInternetNotRequiredNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z

    move-result v2

    if-nez v2, :cond_61

    if-nez v3, :cond_61

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$misMultiNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/net/wifi/WifiInfo;)Z

    move-result v2

    if-nez v2, :cond_61

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetheKeyList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_61

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIwhEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 435
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisHeRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_2f

    .line 436
    :cond_61
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetheKeyList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6c

    .line 437
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "HHO config: "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIwhConfiguration()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " / "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmScpmHeRoamingEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    if-eqz v12, :cond_62

    const-string v12, "T"

    goto :goto_39

    :cond_62
    const-string v12, "F"

    :goto_39
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " / "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisHeRoamingEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    if-eqz v12, :cond_63

    const-string v12, "T"

    goto :goto_3a

    :cond_63
    const-string v12, "F"

    :goto_3a
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " / "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$misInternetNotRequiredNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z

    move-result v12

    if-nez v12, :cond_64

    const-string v12, "T"

    goto :goto_3b

    :cond_64
    const-string v12, "F"

    :goto_3b
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " / "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_65

    const-string v3, "T"

    goto :goto_3c

    :cond_65
    const-string v3, "F"

    :goto_3c
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$misMultiNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/net/wifi/WifiInfo;)Z

    move-result v3

    if-nez v3, :cond_66

    const-string v3, "T"

    goto :goto_3d

    :cond_66
    const-string v3, "F"

    :goto_3d
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmEapNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_67

    const-string v3, "T"

    goto :goto_3e

    :cond_67
    const-string v3, "F"

    :goto_3e
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$misCarrierNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z

    move-result v3

    if-eqz v3, :cond_68

    const-string v3, "T"

    goto :goto_3f

    :cond_68
    const-string v3, "F"

    :goto_3f
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmEapTransitionEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_69

    const-string v3, "T"

    goto :goto_40

    :cond_69
    const-string v3, "F"

    :goto_40
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v24, :cond_6a

    .line 440
    const-string v3, "T"

    goto :goto_41

    :cond_6a
    const-string v3, "F"

    :goto_41
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIwhEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_6b

    const-string v3, "T"

    goto :goto_42

    :cond_6b
    const-string v3, "F"

    :goto_42
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x2

    .line 441
    invoke-static {v2, v3, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 442
    :cond_6c
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisHeRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_2f

    .line 443
    :goto_43
    :try_start_b
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgethoWaiting(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 444
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmTargetAbnormalAP(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6d

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmTargetAbnormalAP(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 445
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmTargetAbnormalAP(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mupdateAbnormalAP(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V

    goto :goto_44

    :catch_7
    move-exception v0

    goto :goto_45

    .line 446
    :cond_6d
    :goto_44
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmAbnormalAPList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 448
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmAbnormalAPList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;

    .line 449
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;->-$$Nest$fgetlatestTimestamp(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$AbnormalAP;)J

    move-result-wide v25

    sub-long v12, v12, v25

    .line 450
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmMalTimeDiff(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)J

    move-result-wide v25

    cmp-long v0, v12, v25

    if-lez v0, :cond_6e

    .line 451
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmAbnormalAPList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_46

    .line 452
    :goto_45
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "AbnormalAP save failure: "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x1

    invoke-static {v3, v9, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 453
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 454
    :cond_6e
    :goto_46
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgethoWaiting(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 455
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmInitScanRequired(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_8d

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetcurrConfig(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_8d

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6f

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisHeRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 456
    :cond_6f
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmActivityListenerRegistered(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_75

    .line 457
    :try_start_c
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 458
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/Context;

    move-result-object v3

    const-string v9, "scontext"

    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/context/SemContextManager;

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmSemContextManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Lcom/samsung/android/hardware/context/SemContextManager;)V

    .line 459
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSemContextManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/hardware/context/SemContextManager;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 460
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSemContextManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/hardware/context/SemContextManager;

    move-result-object v0

    const/16 v3, 0x1b

    invoke-virtual {v0, v3}, Lcom/samsung/android/hardware/context/SemContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 461
    new-instance v9, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;

    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmActionFilter(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)[I

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;-><init>([I)V

    .line 462
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSemContextManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/hardware/context/SemContextManager;

    move-result-object v12

    iget-object v13, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSemContextListener(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/hardware/context/SemContextListener;

    move-result-object v13

    invoke-virtual {v12, v13, v3, v9}, Lcom/samsung/android/hardware/context/SemContextManager;->registerListener(Lcom/samsung/android/hardware/context/SemContextListener;ILcom/samsung/android/hardware/context/SemContextAttribute;)Z

    .line 463
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmActivityListenerRegistered(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_47

    :catch_8
    move-exception v0

    goto :goto_4a

    :cond_70
    const/4 v0, 0x0

    .line 464
    :cond_71
    :goto_47
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSemContextManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/hardware/context/SemContextManager;

    move-result-object v3

    if-eqz v3, :cond_72

    if-nez v0, :cond_75

    .line 465
    :cond_72
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mobility info. not available: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSemContextManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/hardware/context/SemContextManager;

    move-result-object v12

    if-nez v12, :cond_73

    const-string v12, "F"

    goto :goto_48

    :cond_73
    const-string v12, "T"

    :goto_48
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " / "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_74

    const-string v0, "T"

    goto :goto_49

    :cond_74
    const-string v0, "F"

    :goto_49
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x2

    invoke-static {v3, v0, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    :cond_75
    const/4 v9, 0x1

    goto :goto_4b

    .line 466
    :goto_4a
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "Acti. listener registration failure: "

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x1

    invoke-static {v3, v0, v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 467
    :goto_4b
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetcurrConfig(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetheKeyList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v12

    invoke-static {v0, v3, v12, v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mroamingGroupQuery(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    .line 468
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_76

    const/4 v3, 0x0

    goto :goto_4c

    :cond_76
    const/4 v3, -0x1

    .line 469
    :goto_4c
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisHeRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-eqz v9, :cond_77

    const/4 v3, 0x1

    .line 470
    :cond_77
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIwhMode(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v9

    if-eq v9, v3, :cond_78

    .line 471
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmIwhMode(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 472
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmEnvChange(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 473
    :cond_78
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmGroupKey(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_79

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmGroupKey(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmEnvChange(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_79

    .line 474
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgethoFollowUp(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_4d

    .line 475
    :cond_79
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3, v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmGroupKey(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V

    .line 476
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgethoFollowUp(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 477
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmEnvChange(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 478
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmStabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 479
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmPrevBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V

    .line 480
    :goto_4d
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgethoFollowUp(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_7a

    .line 481
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V

    .line 482
    :cond_7a
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 483
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmlConnection(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 485
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmMloLinks(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7b
    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/MloLink;

    .line 486
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v9

    .line 487
    invoke-virtual {v3}, Landroid/net/wifi/MloLink;->getChannel()I

    move-result v12

    invoke-virtual {v3}, Landroid/net/wifi/MloLink;->getBand()I

    move-result v13

    .line 488
    invoke-static {v12, v13}, Landroid/net/wifi/ScanResult;->convertChannelToFrequencyMhzIfSupported(II)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7b

    .line 489
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v9

    .line 490
    invoke-virtual {v3}, Landroid/net/wifi/MloLink;->getChannel()I

    move-result v12

    invoke-virtual {v3}, Landroid/net/wifi/MloLink;->getBand()I

    move-result v3

    .line 491
    invoke-static {v12, v3}, Landroid/net/wifi/ScanResult;->convertChannelToFrequencyMhzIfSupported(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    .line 492
    :cond_7c
    :try_start_d
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiCondManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/nl80211/WifiNl80211Manager;

    move-result-object v3

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getDeviceWiphyCapabilities(Ljava/lang/String;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmCapabilities(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;)V

    .line 493
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmCapabilities(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 494
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmCapabilities(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    move-result-object v3

    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isWifiStandardSupported(I)Z

    move-result v3

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmDeviceSupportsMlo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Z)V

    goto :goto_4f

    .line 495
    :cond_7d
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const/4 v12, 0x0

    invoke-static {v0, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmDeviceSupportsMlo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Z)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_4f

    .line 496
    :catch_9
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const/4 v12, 0x0

    invoke-static {v0, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmDeviceSupportsMlo(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Z)V

    :goto_4f
    if-eqz v14, :cond_7f

    .line 497
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7e
    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 498
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSsid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSecurityType(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v13

    invoke-static {v9, v12, v13, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$misMatched(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;ILandroid/net/wifi/ScanResult;)Z

    move-result v9

    if-eqz v9, :cond_7e

    .line 499
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-eqz v9, :cond_7e

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v9

    iget v12, v3, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7e

    .line 500
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v9

    iget v3, v3, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_7f
    if-eqz v5, :cond_81

    const/4 v0, 0x0

    .line 501
    :goto_51
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_81

    .line 502
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    .line 503
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_81
    const/4 v0, 0x0

    .line 504
    :goto_52
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_83

    .line 505
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    .line 506
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_82
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    :cond_83
    const/4 v0, 0x0

    .line 507
    :goto_53
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_85

    .line 508
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_84

    .line 509
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_84
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 510
    :cond_85
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgethoFollowUp(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 511
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetScanFileNamePrefix(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmGroupKey(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ".csv"

    .line 512
    invoke-static {v2, v3, v5}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 513
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputscanFileName(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V

    .line 514
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmGroupKey(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIwhMode(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetCheckPointFile_policy_network_postFix(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputpolicyNetworkFileName(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V

    .line 515
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmGroupKey(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIwhMode(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetCheckPointFile_target_network_postFix(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputtargetNetworkFileName(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V

    .line 516
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mcheck_scan_count(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputscan_count(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 517
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$miwh_check_model(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 518
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmGroupKey(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mgetPidList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmPidList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V

    const/16 v23, 0x1

    .line 519
    invoke-static/range {v23 .. v23}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$sfputisWellTrained(Z)V

    const/16 v22, 0x0

    goto :goto_54

    :cond_86
    const/16 v22, 0x0

    .line 520
    invoke-static/range {v22 .. v22}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$sfputisWellTrained(Z)V

    .line 521
    :goto_54
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmGroupKey(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIwhMode(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mtrHistoryCheck(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)[I

    move-result-object v0

    .line 522
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    aget v3, v0, v22

    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputlastTrScore(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 523
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const/4 v3, 0x3

    aget v5, v0, v3

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetTRAINING_STEP_SCAN_COUNT(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v7

    if-ge v5, v7, :cond_87

    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetTRAINING_STEP_SCAN_COUNT(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v5

    goto :goto_55

    :cond_87
    aget v5, v0, v3

    :goto_55
    invoke-static {v2, v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputtrainingStepScanCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 524
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Last TR: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x0

    aget v7, v0, v22

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " / "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v23, 0x1

    aget v7, v0, v23

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " / "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x2

    aget v7, v0, v12

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " / "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v0, v3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 525
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$sfgetisWellTrained()Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetlastTrScore(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v0

    const/16 v2, 0x50

    if-ge v0, v2, :cond_88

    .line 526
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tr history missed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetlastTrScore(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 527
    :cond_88
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmGroupKey(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x1

    invoke-static {v0, v2, v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mfnHistoryControl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;Z)V

    .line 528
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmPidFreqMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_89
    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 529
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v3

    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmPidFreqMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    .line 530
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v3

    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmPidFreqMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 531
    :cond_8a
    :try_start_e
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0, v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$msaveScanResultsToCsv(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_57

    :catch_a
    move-exception v0

    .line 532
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Init scan data save failure: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x1

    invoke-static {v2, v3, v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 533
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 534
    :cond_8b
    :goto_57
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgethoFollowUp(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8c

    const-string v0, "IWH cont.: "

    goto :goto_58

    :cond_8c
    const-string v0, "IWH init: "

    :goto_58
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmGroupKey(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v17, 0x5

    add-int/lit8 v2, v2, -0x5

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmChannelWidth(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 540
    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFrequency(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 542
    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmgetWifiStandard(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 544
    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmApMaxNumberSpatialStreams(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 546
    const-string v0, " | "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetheKeyList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_90

    const/4 v0, 0x0

    .line 549
    :goto_59
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_90

    .line 550
    const-string v2, " / "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRcl(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_59

    .line 552
    :cond_8d
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmIwhMode(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 553
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const/4 v12, 0x0

    invoke-static {v0, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputscan_count(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 554
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputlastTrScore(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 555
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmInitScanRequired(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8e

    const-string v0, "Init Scan: "

    goto :goto_5a

    :cond_8e
    const-string v0, "IWH not enabled: "

    :goto_5a
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v17, 0x5

    add-int/lit8 v2, v2, -0x5

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_8f

    const/4 v0, 0x0

    goto :goto_5b

    .line 558
    :cond_8f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    :goto_5b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 559
    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetheKeyList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 561
    :cond_90
    const-string v0, " | "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v24, :cond_91

    .line 562
    const-string v0, "T"

    goto :goto_5c

    :cond_91
    const-string v0, "F"

    :goto_5c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIwhConfiguration()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 565
    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmScpmRoamingEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_92

    const-string v0, "T"

    goto :goto_5d

    :cond_92
    const-string v0, "F"

    :goto_5d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmScpmHeRoamingEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_93

    const-string v0, "T"

    goto :goto_5e

    :cond_93
    const-string v0, "F"

    :goto_5e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisHeRoamingEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_94

    const-string v0, "T ("

    goto :goto_5f

    :cond_94
    const-string v0, "F ("

    :goto_5f
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "sem_wifi_switch_to_better_wifi_enabled"

    const/4 v9, 0x1

    invoke-virtual {v0, v2, v3, v9}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 572
    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "sem_wifi_switch_to_better_wifi_on_screen_enabled"

    invoke-virtual {v0, v2, v3, v9}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 574
    const-string v0, ") | "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_95

    const-string v0, "T"

    goto :goto_60

    :cond_95
    const-string v0, "F"

    :goto_60
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisHeRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_96

    const-string v0, "T"

    goto :goto_61

    :cond_96
    const-string v0, "F"

    :goto_61
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetsavedConfigList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_97

    const-string v0, "F"

    goto :goto_62

    :cond_97
    const-string v0, "T"

    :goto_62
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetcurrConfig(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_98

    const-string v0, "F"

    goto :goto_63

    :cond_98
    const-string v0, "T"

    :goto_63
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmlConnection(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_99

    const-string v0, "T: "

    goto :goto_64

    :cond_99
    const-string v0, "F"

    :goto_64
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmlConnection(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 585
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmLinkIdList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    :cond_9a
    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmEapNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9b

    const-string v0, "T"

    goto :goto_65

    :cond_9b
    const-string v0, "F"

    :goto_65
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$misCarrierNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z

    move-result v0

    if-eqz v0, :cond_9c

    const-string v0, "T"

    goto :goto_66

    :cond_9c
    const-string v0, "F"

    :goto_66
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_9d

    .line 591
    const-string v0, "T"

    goto :goto_67

    :cond_9d
    const-string v0, "F"

    :goto_67
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIwhMode(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 594
    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$sfgetisWellTrained()Z

    move-result v0

    if-eqz v0, :cond_9e

    const-string v0, "T"

    goto :goto_68

    :cond_9e
    const-string v0, "F"

    :goto_68
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    const-string v0, " | "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 598
    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiManagerScanTimeS(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)J

    move-result-wide v2

    sub-long/2addr v10, v2

    cmp-long v0, v10, v19

    if-gtz v0, :cond_9f

    const-string v0, "T"

    goto :goto_69

    :cond_9f
    const-string v0, "F"

    :goto_69
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiManagerScanCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 602
    const-string v0, " / "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIwhEnabled(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 604
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgethoFollowUp(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 605
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    goto/16 :goto_90

    :cond_a0
    const/4 v3, 0x2

    .line 606
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const-string v2, "Init. error: wifiInfo"

    const/4 v9, 0x1

    invoke-static {v0, v2, v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 607
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWaitingReInit(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 608
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIntelligentConnectionManagerHandler(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 609
    :pswitch_d
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_dc

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetscanProgress(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_dc

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgethoWaiting(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_dc

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWaitingReInit(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_dc

    const/16 v22, 0x0

    .line 610
    invoke-static/range {v22 .. v22}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$sfputisAutojoinChanged(Z)V

    .line 611
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiManager(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputsavedConfigList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/util/List;)V

    .line 612
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetsavedConfigList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a6

    .line 613
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetsavedConfigList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 614
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetheKeyList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a3

    iget-boolean v4, v3, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    if-nez v4, :cond_a3

    .line 615
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->renewConnection(Z)V

    .line 616
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Autojoin AP state change: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    if-eqz v3, :cond_a1

    const-string v3, "T"

    goto :goto_6b

    :cond_a1
    const-string v3, "F"

    :goto_6b
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x2

    invoke-static {v4, v3, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    const/16 v23, 0x1

    .line 617
    invoke-static/range {v23 .. v23}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$sfputisAutojoinChanged(Z)V

    :cond_a2
    const/4 v9, 0x1

    const/4 v12, 0x2

    goto :goto_6a

    .line 618
    :cond_a3
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetnonAutoheKeyList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a2

    iget-boolean v4, v3, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    if-eqz v4, :cond_a2

    .line 619
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->renewConnection(Z)V

    .line 620
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Autojoin AP state change: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    if-eqz v3, :cond_a4

    const-string v3, "T"

    goto :goto_6c

    :cond_a4
    const-string v3, "F"

    :goto_6c
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x2

    invoke-static {v4, v3, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    const/4 v9, 0x1

    .line 621
    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$sfputisAutojoinChanged(Z)V

    goto/16 :goto_6a

    :cond_a5
    const/4 v9, 0x1

    goto :goto_6d

    :cond_a6
    const/4 v9, 0x1

    const/4 v12, 0x2

    .line 622
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const-string v3, "SavedConfigList is null"

    invoke-static {v0, v3, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 623
    :goto_6d
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$sfgetisAutojoinChanged()Z

    move-result v0

    if-ne v0, v9, :cond_a7

    goto/16 :goto_90

    .line 624
    :cond_a7
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiUsabilityStatsEntry;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Landroid/net/wifi/WifiUsabilityStatsEntry;)V

    .line 625
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/StringBuilder;)V

    .line 626
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSemThroughputPredictor(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmVerbose(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->enableVerboseLogging(Z)V

    .line 627
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v7, 0xf4240

    div-long/2addr v2, v7

    .line 628
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmLastUpdateTimeMs(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)J

    move-result-wide v7

    sub-long v7, v2, v7

    const-wide/16 v18, 0x0

    cmp-long v4, v7, v18

    if-lez v4, :cond_a8

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmAggBytesInUse(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)J

    move-result-wide v7

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmLastAggBytesInUse(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x8

    mul-long/2addr v7, v9

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmLastUpdateTimeMs(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)J

    move-result-wide v9

    sub-long v9, v2, v9

    div-long/2addr v7, v9

    goto :goto_6e

    :cond_a8
    move-wide/from16 v7, v18

    :goto_6e
    invoke-static {v0, v7, v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmTrafficRateKbps(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;J)V

    .line 629
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmAggBytesInUse(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)J

    move-result-wide v7

    invoke-static {v0, v7, v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmLastAggBytesInUse(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;J)V

    .line 630
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmLastUpdateTimeMs(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;J)V

    .line 631
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$misFocusAppAGame(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputgameManagerQuery(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Z)V

    .line 632
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHhoSuspended(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-wide/16 v7, 0x14

    if-eqz v0, :cond_a9

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisHeRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_a9

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetrtServiceDetected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_a9

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetgameManagerQuery(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z

    move-result v0

    if-nez v0, :cond_a9

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmTrafficRateKbps(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)J

    move-result-wide v9

    cmp-long v0, v9, v7

    if-gtz v0, :cond_a9

    .line 633
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoQueryRequired(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_6f

    .line 634
    :cond_a9
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoQueryRequired(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 635
    :goto_6f
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHhoSuspended(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisHeRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_ab

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetrtServiceDetected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_aa

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetgameManagerQuery(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z

    move-result v4

    if-nez v4, :cond_aa

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmTrafficRateKbps(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)J

    move-result-wide v9

    cmp-long v4, v9, v7

    if-lez v4, :cond_ab

    :cond_aa
    const/4 v4, 0x1

    goto :goto_70

    :cond_ab
    const/4 v4, 0x0

    :goto_70
    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 636
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmlConnection(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 637
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiLinkQualityMonitor(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getBestLinkId()I

    move-result v4

    .line 638
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmLinkIdList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmChannelWidthMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v0

    .line 639
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFrequencyMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v0

    .line 640
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmApMaxNssMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v0

    .line 641
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b3

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmLastChannelUtilizationMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v0

    .line 642
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ac

    goto/16 :goto_79

    .line 643
    :cond_ac
    :try_start_f
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIdBssidMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;)V

    .line 644
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiUsabilityStatsEntry;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getRssi(I)I

    move-result v7

    invoke-static {v0, v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 645
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiUsabilityStatsEntry;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTxLinkSpeedMbps(I)I

    move-result v7

    invoke-static {v0, v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmTxSpeed(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 646
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFrequencyMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v0, v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmFrequency(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 647
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSemThroughputPredictor(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    move-result-object v24

    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmCapabilities(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    move-result-object v25

    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmgetWifiStandard(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v26

    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmChannelWidthMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v7

    .line 648
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v27

    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v28

    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFrequency(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v29

    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmApMaxNssMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v7

    .line 649
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v30

    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmLastChannelUtilizationMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v7

    .line 650
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v31

    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFrequency(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v8

    .line 651
    invoke-static {v7, v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mgetUtilizationRatio(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)I

    move-result v32

    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIsBluetoothConnected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z

    move-result v33

    .line 652
    invoke-virtual/range {v24 .. v33}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;IIIIIIIZ)I

    move-result v7

    invoke-static {v0, v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmEstimatedTput(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 653
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const/4 v12, 0x0

    invoke-static {v0, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmActiveLinkNumber(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 654
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiUsabilityStatsEntry;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getLinkIds()[I

    move-result-object v0

    array-length v7, v0

    const/4 v8, 0x0

    :goto_71
    if-ge v8, v7, :cond_ba

    aget v9, v0, v8

    .line 655
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiUsabilityStatsEntry;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getLinkState(I)I

    move-result v9

    const/4 v12, 0x2

    if-ne v9, v12, :cond_ad

    .line 656
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmActiveLinkNumber(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v10

    const/16 v23, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-static {v9, v10}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmActiveLinkNumber(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_72

    :catch_b
    move-exception v0

    goto :goto_73

    :cond_ad
    :goto_72
    add-int/lit8 v8, v8, 0x1

    goto :goto_71

    .line 657
    :goto_73
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const-string v3, "Wrong idx: "

    const-string v5, " / "

    .line 658
    invoke-static {v3, v4, v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 659
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmLinkIdList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ae

    const-string v5, "T"

    goto :goto_74

    :cond_ae
    const-string v5, "F"

    :goto_74
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmChannelWidthMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_af

    const-string v5, "T"

    goto :goto_75

    :cond_af
    const-string v5, "F"

    :goto_75
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFrequencyMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b0

    const-string v5, "T"

    goto :goto_76

    :cond_b0
    const-string v5, "F"

    :goto_76
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmApMaxNssMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b1

    const-string v5, "T"

    goto :goto_77

    :cond_b1
    const-string v5, "F"

    :goto_77
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmLastChannelUtilizationMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b2

    const-string v5, "T"

    goto :goto_78

    :cond_b2
    const-string v5, "F"

    :goto_78
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmTxSpeed(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x1

    .line 662
    invoke-static {v2, v3, v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 663
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    if-ltz v4, :cond_dc

    .line 664
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->renewConnection(Z)V

    goto/16 :goto_90

    .line 665
    :cond_b3
    :goto_79
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const-string v2, "Wrong idx: "

    const-string v3, " / "

    .line 666
    invoke-static {v2, v4, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 667
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmLinkIdList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b4

    const-string v3, "T"

    goto :goto_7a

    :cond_b4
    const-string v3, "F"

    :goto_7a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmChannelWidthMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    const-string v3, "T"

    goto :goto_7b

    :cond_b5
    const-string v3, "F"

    :goto_7b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFrequencyMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b6

    const-string v3, "T"

    goto :goto_7c

    :cond_b6
    const-string v3, "F"

    :goto_7c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmApMaxNssMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b7

    const-string v3, "T"

    goto :goto_7d

    :cond_b7
    const-string v3, "F"

    :goto_7d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmLastChannelUtilizationMap(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    const-string v3, "T"

    goto :goto_7e

    :cond_b8
    const-string v3, "F"

    :goto_7e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x1

    .line 670
    invoke-static {v0, v2, v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    if-ltz v4, :cond_dc

    .line 671
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->renewConnection(Z)V

    return-void

    .line 672
    :cond_b9
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiUsabilityStatsEntry;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getRssi()I

    move-result v4

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 673
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/WifiUsabilityStatsEntry;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getLinkSpeedMbps()I

    move-result v4

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmTxSpeed(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 674
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSemThroughputPredictor(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    move-result-object v24

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmCapabilities(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    move-result-object v25

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmgetWifiStandard(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v26

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmChannelWidth(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v27

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v28

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFrequency(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v29

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmApMaxNumberSpatialStreams(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v30

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmLastChannelUtilization(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v31

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFrequency(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v7

    .line 675
    invoke-static {v4, v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mgetUtilizationRatio(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)I

    move-result v32

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIsBluetoothConnected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z

    move-result v33

    .line 676
    invoke-virtual/range {v24 .. v33}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;IIIIIIIZ)I

    move-result v4

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputmEstimatedTput(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 677
    :cond_ba
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiLinkQualityMonitor(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    const/4 v10, 0x2

    const-wide/16 v11, 0xdac

    const/4 v13, 0x2

    invoke-virtual/range {v7 .. v13}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->linkQosEstimation(JIJI)[D

    move-result-object v0

    const/16 v22, 0x0

    aget-wide v7, v0, v22

    .line 678
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiLinkQualityMonitor(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getLinkStateUpdateNumber()J

    move-result-wide v9

    .line 679
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetlastLinkUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)J

    move-result-wide v11

    cmp-long v0, v11, v9

    const-wide/16 v11, 0x0

    if-eqz v0, :cond_be

    cmpl-double v0, v7, v11

    if-lez v0, :cond_bb

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v7, v13

    if-gez v0, :cond_bb

    .line 680
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputlinkOutageCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 681
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bd

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetrssiOutageCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v0

    if-nez v0, :cond_bd

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBadLinkList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 682
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBadLinkList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "BL removed: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v17, 0x5

    add-int/lit8 v8, v8, -0x5

    iget-object v13, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v7, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    invoke-static {v0, v4, v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    goto/16 :goto_7f

    :cond_bb
    const-wide/high16 v13, 0x4014000000000000L    # 5.0

    cmpl-double v0, v7, v13

    if-ltz v0, :cond_bd

    .line 684
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetlinkOutageCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v4

    const/16 v23, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputlinkOutageCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 685
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_bd

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetlinkOutageCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_bd

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBadLinkList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBadLinkList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v4

    if-ge v0, v4, :cond_bd

    .line 686
    :cond_bc
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBadLinkList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v4

    iget-object v13, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v4, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v13, "BL added: "

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v14}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v17, 0x5

    add-int/lit8 v14, v14, -0x5

    iget-object v15, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v15}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " / "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " / "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    invoke-static {v0, v4, v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 688
    :cond_bd
    :goto_7f
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0, v9, v10}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputlastLinkUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;J)V

    .line 689
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputlastLinkUpdateTime(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;J)V

    goto/16 :goto_80

    .line 690
    :cond_be
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetlastLinkUpdateTime(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)J

    move-result-wide v7

    sub-long/2addr v2, v7

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetLINK_OUTAGE_RETENTION_DURATION_MS(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v0

    int-to-long v7, v0

    cmp-long v0, v2, v7

    if-gtz v0, :cond_bf

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBadLinkList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v0

    .line 691
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBadLinkList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v2

    if-ge v0, v2, :cond_c0

    .line 692
    :cond_bf
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputlinkOutageCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 693
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c0

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetrssiOutageCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v0

    if-nez v0, :cond_c0

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBadLinkList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 694
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBadLinkList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BL removed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v17, 0x5

    add-int/lit8 v4, v4, -0x5

    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 696
    :cond_c0
    :goto_80
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmWifiLinkQualityMonitor(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getRssiThreshold()D

    move-result-wide v2

    cmpg-double v0, v2, v11

    const-wide v7, -0x3fad400000000000L    # -75.0

    if-gez v0, :cond_c2

    .line 697
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    cmpl-double v4, v2, v7

    if-lez v4, :cond_c1

    goto :goto_81

    :cond_c1
    move-wide v2, v7

    :goto_81
    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputrssiThreshold(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;D)V

    goto :goto_82

    .line 698
    :cond_c2
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0, v7, v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputrssiThreshold(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;D)V

    .line 699
    :goto_82
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v0

    int-to-double v2, v0

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetrssiThreshold(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)D

    move-result-wide v7

    cmpg-double v0, v2, v7

    if-gtz v0, :cond_c4

    .line 700
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetrssiOutageCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v2

    const/16 v23, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputrssiOutageCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 701
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c5

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetrssiOutageCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_c5

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBadLinkList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c3

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBadLinkList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetrssiThreshold(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)D

    move-result-wide v2

    double-to-int v2, v2

    if-ge v0, v2, :cond_c5

    .line 702
    :cond_c3
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBadLinkList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetrssiThreshold(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BL added: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v17, 0x5

    add-int/lit8 v4, v4, -0x5

    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetrssiThreshold(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    goto :goto_83

    .line 704
    :cond_c4
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    const/4 v12, 0x0

    invoke-static {v0, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputrssiOutageCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 705
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c5

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetlinkOutageCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v0

    if-nez v0, :cond_c5

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBadLinkList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 706
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBadLinkList(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BL removed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v17, 0x5

    add-int/lit8 v4, v4, -0x5

    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 708
    :cond_c5
    :goto_83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v5

    .line 709
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetlastQueryTime(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)J

    move-result-wide v4

    sub-long v4, v2, v4

    .line 710
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetPREDICTION_TIMEOUT_SEC(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_c6

    const/4 v0, 0x1

    goto :goto_84

    :cond_c6
    const/4 v0, 0x0

    .line 711
    :goto_84
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetgameDetected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    const/16 v7, -0x46

    if-nez v6, :cond_c9

    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetgameManagerQuery(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z

    move-result v6

    if-nez v6, :cond_c9

    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmEapNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    .line 712
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_c7

    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetrtServiceDetected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_c9

    :cond_c7
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisHeRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v6

    .line 713
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_c8

    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v6

    if-ge v6, v7, :cond_c8

    goto :goto_85

    :cond_c8
    const/4 v6, 0x0

    goto :goto_86

    :cond_c9
    :goto_85
    const/4 v6, 0x1

    .line 714
    :goto_86
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "HQ: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmGroupKey(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmDebug(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_ca

    .line 718
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmSsid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    :cond_ca
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v17, 0x5

    add-int/lit8 v10, v10, -0x5

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmFrequency(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 723
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 725
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmTxSpeed(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 727
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmEstimatedTput(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 729
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " | "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetlastTrScore(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 731
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetscan_count(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 733
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgethoDecisionCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 735
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetrtServiceDetected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-eqz v9, :cond_cb

    const-string v9, "R"

    goto :goto_87

    :cond_cb
    const-string v9, "NR"

    :goto_87
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetgameDetected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-eqz v9, :cond_cc

    const-string v9, "T"

    goto :goto_88

    :cond_cc
    const-string v9, "F"

    :goto_88
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetgameManagerQuery(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z

    move-result v9

    if-eqz v9, :cond_cd

    const-string v9, "T"

    goto :goto_89

    :cond_cd
    const-string v9, "F"

    :goto_89
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmIsBluetoothConnected(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z

    move-result v9

    if-eqz v9, :cond_ce

    const-string v9, "T"

    goto :goto_8a

    :cond_ce
    const-string v9, "F"

    :goto_8a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmTrafficRateKbps(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 745
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 747
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetlinkOutageCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 749
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetrssiOutageCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 751
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetrssiThreshold(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 753
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$sfgetisWellTrained()Z

    move-result v4

    if-eqz v4, :cond_d9

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetisHeRoamingNetwork(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_d0

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetrssiOutageCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v4

    rem-int/lit8 v4, v4, 0x4

    const/4 v12, 0x2

    if-eq v4, v12, :cond_cf

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetlinkOutageCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v4

    rem-int/lit8 v4, v4, 0x4

    if-eq v4, v12, :cond_cf

    goto :goto_8c

    :cond_cf
    :goto_8b
    move v3, v12

    goto/16 :goto_8f

    :cond_d0
    const/4 v12, 0x2

    :goto_8c
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v4

    if-lt v4, v7, :cond_d1

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetlinkOutageCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v4

    rem-int/lit8 v4, v4, 0x4

    if-ne v4, v12, :cond_d1

    goto :goto_8b

    .line 755
    :cond_d1
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmDebug(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_d3

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmPositionChanged(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_d3

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetlastQueryTime(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)J

    move-result-wide v4

    sub-long v4, v2, v4

    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetPERIODIC_CHECK_INTERVAL_SEC(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v7

    int-to-long v7, v7

    cmp-long v4, v4, v7

    if-lez v4, :cond_d2

    goto :goto_8d

    .line 756
    :cond_d2
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetscoreChanged(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_8e

    :cond_d3
    :goto_8d
    if-nez v6, :cond_d4

    if-eqz v0, :cond_d4

    .line 757
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetscoreChanged(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_8e

    .line 758
    :cond_d4
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoQueryRequired(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d5

    .line 759
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x2

    invoke-static {v0, v4, v12}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    .line 760
    :cond_d5
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetscoreChanged(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 761
    :goto_8e
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgettrProgress(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d7

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetscoreChanged(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d6

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoQueryRequired(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 762
    :cond_d6
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$miwh_predict_action(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)V

    .line 763
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmEstimatedTput(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputlastQueryScore(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 764
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputlastQueryRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 765
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputlastQueryTime(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;J)V

    .line 766
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmPositionChanged(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 767
    :cond_d7
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetscoreChanged(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d8

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoQueryRequired(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 768
    :cond_d8
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    return-void

    :cond_d9
    const/4 v3, 0x2

    .line 769
    :goto_8f
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmPositionChanged(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_da

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetrssiOutageCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-eq v0, v3, :cond_da

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetlinkOutageCnt(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_dc

    :cond_da
    if-nez v6, :cond_db

    .line 770
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$mpScanTimeQuery(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 771
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->requestPartialScan()V

    .line 772
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmEstimatedTput(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputlastScanScore(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 773
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fputlastScanRssi(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;I)V

    .line 774
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmPositionChanged(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 775
    :cond_db
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager$IntelligentConnectionManagerHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$fgetmHoCommStrBuilder(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->-$$Nest$maddEvent(Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;Ljava/lang/String;I)V

    :cond_dc
    :goto_90
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
