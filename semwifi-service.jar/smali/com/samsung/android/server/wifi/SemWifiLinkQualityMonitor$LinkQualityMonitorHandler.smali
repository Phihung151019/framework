.class Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinkQualityMonitorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

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
    .locals 47

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    const-string v3, " / "

    const-string v4, "ML association: "

    const-string v5, "Exception occurred: "

    const-string v0, "Pcheck: "

    iget v6, v2, Landroid/os/Message;->what:I

    const/4 v7, 0x0

    .line 2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    const/16 v10, 0x9

    const/4 v13, -0x1

    const-wide/16 v14, 0x0

    const/16 v16, 0x3

    const/4 v12, 0x2

    const/16 v17, 0xa

    const/4 v11, 0x1

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_91

    .line 3
    :pswitch_0
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "INS prediction: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "INS prediction: "

    .line 6
    invoke-static {v0, v3}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 9
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addL2LogHistory(Ljava/lang/StringBuilder;)V

    return-void

    .line 10
    :pswitch_1
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlqCallbackLegacyTriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9f

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetoutageLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v0

    if-lez v0, :cond_9f

    .line 11
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mgetBssidEdited(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_9f

    .line 13
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaSupported(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_9f

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlqCallbackILATriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_9f

    .line 14
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 15
    :pswitch_2
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Network disconnected, last BSSIDE="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlastBssidEdited(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from renewConnection? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 16
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetisIlaTrInProcess(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const-string v3, "ILA tr. terminated by disconnection"

    invoke-virtual {v0, v3, v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 18
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaServiceConnection(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 19
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetaiTrServiceIntent(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 20
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmServicePid(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 21
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmServicePid(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v0

    invoke-static {v0, v10}, Landroid/os/Process;->sendSignal(II)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetisIlaTrInProcess(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "ILA train forcibly terminated"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-virtual {v3, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addL2LogHistory(Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 25
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ILA unbind error"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-virtual {v4, v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addL2LogHistory(Ljava/lang/StringBuilder;)V

    .line 27
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unbind error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    :cond_1
    :goto_2
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaSupported(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 30
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const-string v1, "ILA not supported, break"

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    goto/16 :goto_91

    .line 31
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/File;

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmDataDirectory(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    goto :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_d

    .line 33
    :cond_3
    :goto_3
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 35
    new-instance v6, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-value.csv"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    .line 37
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    :try_start_2
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v8, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 39
    :try_start_3
    const-string v0, "SemWifiLinkQualityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New numTransitOccurred value for "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->newLine()V

    .line 42
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v5, v0

    .line 44
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 45
    :goto_6
    :try_start_7
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Writing exception in disconnection 1: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_4

    .line 47
    :cond_5
    :try_start_8
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 48
    :try_start_9
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string v10, "SemWifiLinkQualityMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "numTransitOccurred file="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " fw="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-ne v0, v10, :cond_6

    move v0, v11

    goto :goto_7

    :cond_6
    move v0, v7

    .line 51
    :goto_7
    :try_start_a
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v10, v0

    .line 52
    :try_start_b
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    :try_start_c
    invoke-virtual {v10, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v10
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    .line 53
    :goto_9
    :try_start_d
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Reading exception in disconnection: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    move v0, v7

    :goto_a
    if-nez v0, :cond_4

    .line 55
    :try_start_e
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v8, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    .line 56
    :try_start_f
    const-string v0, "SemWifiLinkQualityMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Writing numTransitOccurred to file: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->newLine()V

    .line 59
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 60
    :try_start_10
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    goto/16 :goto_4

    :catch_4
    move-exception v0

    goto :goto_c

    :catchall_4
    move-exception v0

    move-object v5, v0

    .line 61
    :try_start_11
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_b

    :catchall_5
    move-exception v0

    :try_start_12
    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v5
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    .line 62
    :goto_c
    :try_start_13
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Writing exception in disconnection 2: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    goto/16 :goto_4

    .line 64
    :goto_d
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception in disconnection: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    :cond_7
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-ne v0, v11, :cond_8

    .line 67
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmLinkQualityMonitorHandler(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 68
    :cond_8
    :try_start_14
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmTMIDirectory(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 70
    :cond_9
    new-instance v2, Ljava/io/File;

    const-string v3, "bssidE-pn-rto.csv"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    .line 72
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6

    .line 73
    :cond_a
    :try_start_15
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v2, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5

    .line 74
    :try_start_16
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmRtoHistory(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 77
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    move-object v1, v0

    goto :goto_f

    .line 78
    :cond_b
    :try_start_17
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_5

    goto/16 :goto_91

    .line 79
    :goto_f
    :try_start_18
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    goto :goto_10

    :catchall_7
    move-exception v0

    :try_start_19
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_10
    throw v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_5

    :catch_5
    move-exception v0

    .line 80
    :try_start_1a
    const-string v1, "SemWifiLinkQualityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RTO writing exception 1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_6

    goto/16 :goto_91

    :catch_6
    move-exception v0

    .line 81
    const-string v1, "SemWifiLinkQualityMonitor"

    const-string v2, "RTO writing exception 2: "

    .line 82
    invoke-static {v2, v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_91

    .line 83
    :pswitch_3
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const-string v2, "Setting disabled"

    invoke-virtual {v0, v2, v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 84
    :try_start_1b
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmDataDirectory(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 87
    :goto_11
    array-length v2, v0

    if-ge v7, v2, :cond_9f

    .line 88
    aget-object v2, v0, v7

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 89
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DB deleted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    goto :goto_12

    :catch_7
    move-exception v0

    goto :goto_13

    .line 90
    :cond_c
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DB deletion err: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_7

    :goto_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 91
    :goto_13
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in network reset: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_91

    .line 93
    :pswitch_4
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Saved network change: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 94
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_19

    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_19

    .line 95
    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 96
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 98
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmDataDirectory(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaResDirectory(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_d

    goto/16 :goto_91

    .line 101
    :cond_d
    new-instance v5, Ljava/io/File;

    const-string v6, "configkey-bssidE-map.csv"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_18

    .line 103
    :try_start_1c
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_8

    .line 104
    :cond_e
    :goto_14
    :try_start_1d
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_16

    .line 105
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 106
    aget-object v10, v9, v7

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 107
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    array-length v10, v8

    move v12, v7

    :goto_15
    if-ge v12, v10, :cond_12

    aget-object v13, v8, v12

    .line 108
    aget-object v14, v9, v11

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 109
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v3, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 111
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 112
    const-string v14, "SemWifiLinkQualityMonitor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " delete successful"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :catchall_8
    move-exception v0

    move-object v3, v0

    goto/16 :goto_18

    .line 113
    :cond_f
    const-string v14, "SemWifiLinkQualityMonitor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " delete failed"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 114
    :cond_10
    const-string v14, "SemWifiLinkQualityMonitor"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " does not exist"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_16
    add-int/lit8 v12, v12, 0x1

    goto :goto_15

    .line 115
    :cond_12
    new-instance v8, Ljava/io/File;

    aget-object v10, v9, v11

    invoke-direct {v8, v4, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_14

    .line 117
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 118
    const-string v8, "SemWifiLinkQualityMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v9, v11

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " in "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaResDirectory(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " delete successful"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 119
    :cond_13
    const-string v8, "SemWifiLinkQualityMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v9, v11

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " in "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaResDirectory(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " delete failed"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 120
    :cond_14
    const-string v8, "SemWifiLinkQualityMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v9, v11

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " in "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaResDirectory(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " does not exist"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_17
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaSupported(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v8

    aget-object v10, v9, v11

    invoke-interface {v8, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 122
    iget-object v8, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v8

    aget-object v9, v9, v11

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14

    .line 123
    :cond_15
    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    goto/16 :goto_14

    .line 124
    :cond_16
    :try_start_1e
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_8

    goto :goto_1b

    :catch_8
    move-exception v0

    goto :goto_1a

    .line 125
    :goto_18
    :try_start_1f
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    goto :goto_19

    :catchall_9
    move-exception v0

    :try_start_20
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_19
    throw v3
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_8

    .line 126
    :goto_1a
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Reading exception in network removed: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    :goto_1b
    :try_start_21
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v5, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_9

    .line 129
    :try_start_22
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 130
    invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_1c

    :catchall_a
    move-exception v0

    move-object v2, v0

    goto :goto_1d

    .line 132
    :cond_17
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    .line 133
    :try_start_23
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_9

    goto/16 :goto_91

    :catch_9
    move-exception v0

    goto :goto_1f

    .line 134
    :goto_1d
    :try_start_24
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    goto :goto_1e

    :catchall_b
    move-exception v0

    :try_start_25
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1e
    throw v2
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_9

    .line 135
    :goto_1f
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Writing exception in network removed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_91

    .line 137
    :cond_18
    :try_start_26
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_a

    goto/16 :goto_91

    :catch_a
    move-exception v0

    .line 138
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Creating exception in network removed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_91

    :cond_19
    if-ne v0, v11, :cond_1d

    .line 140
    :try_start_27
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmDataDirectory(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 143
    :goto_20
    array-length v2, v0

    if-ge v7, v2, :cond_1b

    .line 144
    aget-object v2, v0, v7

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 145
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DB deleted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    goto :goto_21

    :catch_b
    move-exception v0

    goto :goto_22

    .line 146
    :cond_1a
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DB deletion err: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    :goto_21
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 147
    :cond_1b
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaSupported(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 148
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_b

    goto :goto_23

    .line 149
    :goto_22
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception in network reset: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    :cond_1c
    :goto_23
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmLinkQualityMonitorHandler(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_91

    .line 152
    :cond_1d
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const-string v1, "Invalid argument and/or object"

    invoke-virtual {v0, v1, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    return-void

    .line 153
    :pswitch_5
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 154
    :try_start_28
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaServiceConnection(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/ServiceConnection;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 155
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetaiTrServiceIntent(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 156
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmServicePid(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v0

    if-ltz v0, :cond_1e

    .line 157
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmServicePid(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v0

    invoke-static {v0, v10}, Landroid/os/Process;->sendSignal(II)V

    goto :goto_24

    :catch_c
    move-exception v0

    goto :goto_25

    .line 158
    :cond_1e
    :goto_24
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetisIlaTrInProcess(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "ILA trained "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 161
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-virtual {v2, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addL2LogHistory(Ljava/lang/StringBuilder;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_c

    return-void

    .line 162
    :goto_25
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ILA unbind error"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addL2LogHistory(Ljava/lang/StringBuilder;)V

    .line 164
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unbind error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_91

    .line 166
    :pswitch_6
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetisIlaTrInProcess(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9f

    .line 167
    :try_start_29
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetaiTrServiceIntent(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaServiceConnection(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v11}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 168
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetisIlaTrInProcess(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ILA queried"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-virtual {v2, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addL2LogHistory(Ljava/lang/StringBuilder;)V

    .line 171
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const-string v2, "ILA queried"

    invoke-virtual {v0, v2, v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_d

    return-void

    :catch_d
    move-exception v0

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ILA bind error"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addL2LogHistory(Ljava/lang/StringBuilder;)V

    .line 174
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bind error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_91

    .line 176
    :pswitch_7
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const-string v3, "BL callback unregistered"

    invoke-virtual {v0, v3, v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 177
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetbestLinkIdChangedCallbacks(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SemWifiBestLinkIdChangedCallback;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    .line 178
    :pswitch_8
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const-string v3, "BL callback registered"

    invoke-virtual {v0, v3, v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 179
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetbestLinkIdChangedCallbacks(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SemWifiBestLinkIdChangedCallback;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 180
    :pswitch_9
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 181
    :try_start_2a
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlinkStateRingBufferMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 182
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetbufferIdxMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 183
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgettxSpeedRingBufferMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 184
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgettimeRingBufferMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 185
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlastLinkStateMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 186
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlinkIdBandMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 187
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlinkActivenessMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 188
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$minitializeClassifier(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V

    const/4 v2, 0x0

    .line 189
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 190
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10, v14, v15}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputl2tTimeByIlaMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;J)V

    .line 191
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10, v14, v15}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputl2tTimeByLegacyMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;J)V

    .line 192
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10, v7}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputnumRecoveredAfterIlaL2t(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 193
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10, v7}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputdataCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 194
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v14, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;

    invoke-direct {v14, v10, v7}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    iput-object v14, v10, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mSavedRssiThreshold:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SavedRssiThreshold;

    .line 195
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const-string v14, "Link initialized"

    invoke-virtual {v10, v14, v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 196
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v14

    invoke-static {v10, v14}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Landroid/net/wifi/WifiInfo;)V

    .line 197
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v10

    if-eqz v10, :cond_3e

    .line 198
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->getAssociatedMloLinks()Ljava/util/List;

    move-result-object v14

    invoke-static {v10, v14}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputmMloLinks(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/util/List;)V

    .line 199
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmMloLinks(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/List;

    move-result-object v14

    if-eqz v14, :cond_1f

    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v14}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmMloLinks(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    goto :goto_26

    :catchall_c
    move-exception v0

    goto/16 :goto_53

    :cond_1f
    move v14, v7

    :goto_26
    invoke-static {v10, v14}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputmlLinkNumber(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 200
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmloConnection(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v10

    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v14}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmlLinkNumber(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v14

    if-lez v14, :cond_20

    move v14, v11

    goto :goto_27

    :cond_20
    move v14, v7

    :goto_27
    invoke-virtual {v10, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_c

    .line 201
    :try_start_2b
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v10

    const-string v14, "ro.product.vendor.device"

    invoke-virtual {v10, v14, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    const-string v0, "gts9u"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 204
    const-string v0, "0"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmloConnection(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_28

    :catch_e
    move-exception v0

    goto :goto_29

    .line 206
    :cond_21
    const-string v0, "1"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :goto_28
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_e
    .catchall {:try_start_2b .. :try_end_2b} :catchall_c

    goto :goto_2a

    .line 208
    :goto_29
    :try_start_2c
    const-string v2, "SemWifiLinkQualityMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :goto_2a
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmlLinkNumber(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmloConnection(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 211
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgethas2G(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 212
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputactiveLinkNumber(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V

    .line 213
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2, v13}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputbestLinkId(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 214
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmBestLinkSentToWcm(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 215
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmMloLinks(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/MloLink;

    .line 216
    invoke-virtual {v3}, Landroid/net/wifi/MloLink;->getLinkId()I

    move-result v4

    .line 217
    invoke-virtual {v3}, Landroid/net/wifi/MloLink;->getBand()I

    move-result v5

    .line 218
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " / "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " ("

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " / "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/wifi/MloLink;->getChannel()I

    move-result v14

    invoke-virtual {v3}, Landroid/net/wifi/MloLink;->getBand()I

    move-result v15

    invoke-static {v14, v15}, Landroid/net/wifi/ScanResult;->convertChannelToFrequencyMhzIfSupported(II)I

    move-result v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v5, v11, :cond_22

    .line 219
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgethas2G(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 220
    :cond_22
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlinkIdBandMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v10, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlinkStateRingBufferMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v14, v12, [I

    aput v17, v14, v11

    aput v16, v14, v7

    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[D

    invoke-interface {v5, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetbufferIdxMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgettxSpeedRingBufferMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move/from16 v14, v17

    new-array v15, v14, [I

    invoke-interface {v5, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgettimeRingBufferMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v15, v14, [J

    invoke-interface {v5, v10, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetperLinkVariables(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlastLinkStateMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-array v14, v9, [J

    invoke-virtual {v5, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlinkActivenessMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v5, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmLinkVariableKeys(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[Ljava/lang/String;

    move-result-object v5

    array-length v10, v5

    move v14, v7

    :goto_2c
    if-ge v14, v10, :cond_23

    aget-object v15, v5, v14

    .line 229
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetperLinkVariables(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/HashMap;

    move-result-object v9

    move/from16 v18, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    move/from16 v7, v18

    const/4 v9, 0x4

    goto :goto_2c

    :cond_23
    move/from16 v18, v7

    .line 230
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v4

    .line 231
    invoke-virtual {v3}, Landroid/net/wifi/MloLink;->getChannel()I

    move-result v5

    invoke-virtual {v3}, Landroid/net/wifi/MloLink;->getBand()I

    move-result v7

    invoke-static {v5, v7}, Landroid/net/wifi/ScanResult;->convertChannelToFrequencyMhzIfSupported(II)I

    move-result v5

    if-ne v4, v5, :cond_24

    .line 232
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/MloLink;->getLinkId()I

    move-result v3

    invoke-static {v4, v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputbestLinkId(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 233
    const-string v3, " BL "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmBestLinkSentToWcm(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 235
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetbestLinkIdChangedCallbacks(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SemWifiBestLinkIdChangedCallback;

    .line 236
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetbestLinkId(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SemWifiBestLinkIdChangedCallback;->bestLinkIdChanged(I)V

    goto :goto_2d

    :cond_24
    move/from16 v7, v18

    const/4 v9, 0x4

    const/16 v17, 0xa

    goto/16 :goto_2b

    :cond_25
    move/from16 v18, v7

    goto :goto_2e

    :cond_26
    move/from16 v18, v7

    .line 237
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetis2G(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :goto_2e
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi_switch_to_mobile_data_ai_mode_2"

    invoke-virtual {v2, v3, v4, v13}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v13, :cond_27

    .line 240
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIlaConfiguration()I

    move-result v2

    if-lez v2, :cond_27

    .line 241
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi_switch_to_mobile_data_ai_mode_2"

    invoke-virtual {v2, v3, v4, v11}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 242
    :cond_27
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaSupported(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIlaConfiguration()I

    move-result v3

    if-lez v3, :cond_28

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmContentResolver(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_switch_to_mobile_data_ai_mode_2"

    invoke-virtual {v3, v4, v5, v13}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetscpmEnabled(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_28

    move v3, v11

    goto :goto_2f

    :cond_28
    move/from16 v3, v18

    :goto_2f
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 243
    const-string v2, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIlaConfiguration()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmContentResolver(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_switch_to_mobile_data_ai_mode_2"

    invoke-virtual {v2, v3, v4, v13}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 248
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaSupported(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 249
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const-string v2, "ILA supported"

    invoke-virtual {v0, v2, v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 250
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 251
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmloConnection(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 252
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmMloLinks(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/MloLink;

    .line 253
    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-virtual {v3}, Landroid/net/wifi/MloLink;->getApMacAddress()Landroid/net/MacAddress;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 254
    invoke-virtual {v3}, Landroid/net/wifi/MloLink;->getChannel()I

    move-result v9

    invoke-virtual {v3}, Landroid/net/wifi/MloLink;->getBand()I

    move-result v3

    invoke-static {v7, v9, v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mfromChannelNumberToFreq(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;II)I

    move-result v3

    .line 255
    invoke-static {v4, v5, v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mgetBssidEdited(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 256
    :cond_29
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mgetBssidEdited(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_2a
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 259
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto/16 :goto_4a

    .line 260
    :cond_2b
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 261
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v18

    :goto_31
    if-ge v0, v4, :cond_3a

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v7, v0, 0x1

    check-cast v5, Ljava/lang/String;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_c

    .line 262
    :try_start_2d
    new-instance v9, Ljava/io/File;

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmDataDirectory(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    goto :goto_32

    :catch_f
    move-exception v0

    goto/16 :goto_3d

    :catch_10
    move-exception v0

    goto/16 :goto_3e

    :catch_11
    move-exception v0

    goto/16 :goto_3f

    .line 264
    :cond_2c
    :goto_32
    new-instance v10, Ljava/io/File;

    const-string v0, "configkey-bssidE-map.csv"

    invoke-direct {v10, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_2d} :catch_11
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_10
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_f
    .catchall {:try_start_2d .. :try_end_2d} :catchall_c

    .line 266
    :cond_2d
    :try_start_2e
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v13, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_13
    .catchall {:try_start_2e .. :try_end_2e} :catchall_c

    .line 267
    :cond_2e
    :try_start_2f
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 268
    const-string v14, ","

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 269
    aget-object v14, v0, v18

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2e

    aget-object v0, v0, v11

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_d

    if-eqz v0, :cond_2e

    move v14, v11

    goto :goto_33

    :catchall_d
    move-exception v0

    move-object v14, v0

    goto :goto_34

    :cond_2f
    move/from16 v14, v18

    .line 270
    :goto_33
    :try_start_30
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_12
    .catchall {:try_start_30 .. :try_end_30} :catchall_c

    goto :goto_37

    :catch_12
    move-exception v0

    goto :goto_36

    .line 271
    :goto_34
    :try_start_31
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_e

    goto :goto_35

    :catchall_e
    move-exception v0

    :try_start_32
    invoke-virtual {v14, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_35
    throw v14
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_13
    .catchall {:try_start_32 .. :try_end_32} :catchall_c

    :catch_13
    move-exception v0

    move/from16 v14, v18

    .line 272
    :goto_36
    :try_start_33
    iget-object v13, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Reading exception at CSV file filling: "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 273
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_37
    if-nez v14, :cond_30

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_33} :catch_11
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_10
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_f
    .catchall {:try_start_33 .. :try_end_33} :catchall_c

    .line 275
    :try_start_34
    new-instance v12, Ljava/io/BufferedWriter;

    new-instance v13, Ljava/io/FileWriter;

    invoke-direct {v13, v10, v11}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v12, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_14
    .catchall {:try_start_34 .. :try_end_34} :catchall_c

    .line 276
    :try_start_35
    invoke-virtual {v12, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->newLine()V

    .line 278
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->flush()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_f

    .line 279
    :try_start_36
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_14
    .catchall {:try_start_36 .. :try_end_36} :catchall_c

    goto :goto_3a

    :catch_14
    move-exception v0

    goto :goto_39

    :catchall_f
    move-exception v0

    move-object v10, v0

    .line 280
    :try_start_37
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_10

    goto :goto_38

    :catchall_10
    move-exception v0

    :try_start_38
    invoke-virtual {v10, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_38
    throw v10
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_14
    .catchall {:try_start_38 .. :try_end_38} :catchall_c

    .line 281
    :goto_39
    :try_start_39
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Writing exception at CSV file filling: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 282
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 283
    :cond_30
    :goto_3a
    new-instance v0, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "-value.csv"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_39} :catch_11
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_10
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_39} :catch_f
    .catchall {:try_start_39 .. :try_end_39} :catchall_c

    if-eqz v9, :cond_31

    .line 285
    :try_start_3a
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_15
    .catchall {:try_start_3a .. :try_end_3a} :catchall_c

    .line 286
    :try_start_3b
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 287
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_11

    .line 288
    :try_start_3c
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3c} :catch_15
    .catchall {:try_start_3c .. :try_end_3c} :catchall_c

    goto/16 :goto_40

    :catch_15
    move-exception v0

    goto :goto_3c

    :catchall_11
    move-exception v0

    move-object v10, v0

    .line 289
    :try_start_3d
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_12

    goto :goto_3b

    :catchall_12
    move-exception v0

    :try_start_3e
    invoke-virtual {v10, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3b
    throw v10
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_15
    .catchall {:try_start_3e .. :try_end_3e} :catchall_c

    .line 290
    :goto_3c
    :try_start_3f
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in numTransitOccurred reading: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 291
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    .line 293
    :cond_31
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const-string v9, "numTransitOccurred file does not exist, set to 0"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 294
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_3f} :catch_11
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_3f} :catch_10
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_3f} :catch_f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_c

    goto :goto_40

    .line 295
    :goto_3d
    :try_start_40
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Other exception at CSV file filling: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 296
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 297
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    .line 298
    :goto_3e
    const-string v9, "SemWifiLinkQualityMonitor"

    const-string v10, "IOException at CSV file filling"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 300
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    .line 301
    :goto_3f
    const-string v9, "SemWifiLinkQualityMonitor"

    const-string v10, "File not found at CSV file filling"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 303
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_40
    move/from16 v9, v18

    :goto_41
    const/16 v0, 0xd

    if-ge v9, v0, :cond_36

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    const-string v10, "-"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const-string v10, "%02d"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v10, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v10, ".csv"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    new-instance v10, Ljava/io/File;

    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmDataDirectory(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_32

    .line 310
    const-string v0, "SemWifiLinkQualityMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Directory not exist in mNumDataInRssiLevel init "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmNumDataInRssiLevel(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I

    move-result-object v0

    aput v18, v0, v9

    goto/16 :goto_49

    .line 312
    :cond_32
    new-instance v12, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v10, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_33

    .line 314
    const-string v0, "SemWifiLinkQualityMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File not exist in mNumDataInRssiLevel init "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmNumDataInRssiLevel(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I

    move-result-object v0

    aput v18, v0, v9
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_c

    goto/16 :goto_49

    .line 316
    :cond_33
    :try_start_41
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_41
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_41} :catch_18
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_41} :catch_17
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_16
    .catchall {:try_start_41 .. :try_end_41} :catchall_c

    .line 317
    :try_start_42
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 318
    new-instance v12, Ljava/util/LinkedList;

    const-string v13, ","

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v12, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 319
    :goto_42
    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v13, 0x12c

    if-lt v0, v13, :cond_34

    invoke-virtual {v12}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_42

    :catchall_13
    move-exception v0

    move-object v12, v0

    goto :goto_44

    .line 320
    :cond_34
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmNumDataInRssiLevel(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I

    move-result-object v0

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v12

    aput v12, v0, v9
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_13

    .line 321
    :goto_43
    :try_start_43
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_43 .. :try_end_43} :catch_18
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_43} :catch_17
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_43} :catch_16
    .catchall {:try_start_43 .. :try_end_43} :catchall_c

    goto/16 :goto_49

    :catch_16
    move-exception v0

    goto :goto_46

    :catch_17
    move-exception v0

    goto :goto_47

    :catch_18
    move-exception v0

    goto :goto_48

    .line 322
    :cond_35
    :try_start_44
    const-string v0, "SemWifiLinkQualityMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Data not exist in mNumDataInRssiLevel init "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmNumDataInRssiLevel(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I

    move-result-object v0

    aput v18, v0, v9
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_13

    goto :goto_43

    .line 324
    :goto_44
    :try_start_45
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_14

    goto :goto_45

    :catchall_14
    move-exception v0

    :try_start_46
    invoke-virtual {v12, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_45
    throw v12
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_46} :catch_18
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_46} :catch_17
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_46} :catch_16
    .catchall {:try_start_46 .. :try_end_46} :catchall_c

    .line 325
    :goto_46
    :try_start_47
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Other exception in mNumDataInRssiLevel init "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 326
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 327
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmNumDataInRssiLevel(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I

    move-result-object v0

    aput v18, v0, v9

    goto :goto_49

    .line 328
    :goto_47
    const-string v10, "SemWifiLinkQualityMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IOException in mNumDataInRssiLevel init "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 330
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmNumDataInRssiLevel(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I

    move-result-object v0

    aput v18, v0, v9

    goto :goto_49

    .line 331
    :goto_48
    const-string v10, "SemWifiLinkQualityMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "File not found in mNumDataInRssiLevel init "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 333
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmNumDataInRssiLevel(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I

    move-result-object v0

    aput v18, v0, v9

    :goto_49
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_41

    :cond_36
    move v0, v7

    const/4 v12, 0x2

    goto/16 :goto_31

    .line 334
    :cond_37
    :goto_4a
    monitor-exit v6

    goto/16 :goto_91

    .line 335
    :cond_38
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ILA not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIlaConfiguration()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmContentResolver(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_switch_to_mobile_data_ai_mode_2"

    invoke-virtual {v3, v4, v5, v13}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetscpmEnabled(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v3, "T"

    goto :goto_4b

    :cond_39
    const-string v3, "F"

    :goto_4b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x2

    invoke-virtual {v0, v2, v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_c

    .line 336
    :cond_3a
    :try_start_48
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmRtoHistory(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 337
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmTMIDirectory(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_4c

    :catch_19
    move-exception v0

    goto :goto_51

    .line 339
    :cond_3b
    :goto_4c
    new-instance v2, Ljava/io/File;

    const-string v3, "bssidE-pn-rto.csv"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_19
    .catchall {:try_start_48 .. :try_end_48} :catchall_c

    if-eqz v0, :cond_3d

    .line 341
    :try_start_49
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_49} :catch_1a
    .catchall {:try_start_49 .. :try_end_49} :catchall_c

    .line 342
    :goto_4d
    :try_start_4a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 343
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmRtoHistory(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_15

    goto :goto_4d

    :catchall_15
    move-exception v0

    move-object v1, v0

    goto :goto_4e

    .line 344
    :cond_3c
    :try_start_4b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4b} :catch_1a
    .catchall {:try_start_4b .. :try_end_4b} :catchall_c

    goto :goto_52

    :catch_1a
    move-exception v0

    goto :goto_50

    .line 345
    :goto_4e
    :try_start_4c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_16

    goto :goto_4f

    :catchall_16
    move-exception v0

    :try_start_4d
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4f
    throw v1
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_1a
    .catchall {:try_start_4d .. :try_end_4d} :catchall_c

    .line 346
    :goto_50
    :try_start_4e
    const-string v1, "SemWifiLinkQualityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RTO reading exception 1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_19
    .catchall {:try_start_4e .. :try_end_4e} :catchall_c

    goto :goto_52

    .line 347
    :goto_51
    :try_start_4f
    const-string v1, "SemWifiLinkQualityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RTO reading exception 2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_3d
    :goto_52
    monitor-exit v6

    goto/16 :goto_91

    :cond_3e
    move/from16 v18, v7

    .line 349
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const-string v2, "WifiInfo not available"

    invoke-virtual {v0, v2, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 350
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmloConnection(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    move/from16 v2, v18

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 351
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputmlLinkNumber(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 352
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetis2G(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 353
    monitor-exit v6

    return-void

    .line 354
    :goto_53
    monitor-exit v6
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_c

    throw v0

    .line 355
    :pswitch_a
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const-string v3, "LQ callback unregistered"

    const/4 v10, 0x2

    invoke-virtual {v0, v3, v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 356
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetcallbacks(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SemWifiLinkQualityMonitorCallback;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_b
    move v10, v12

    .line 357
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const-string v3, "LQ callback registered"

    invoke-virtual {v0, v3, v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 358
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetcallbacks(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SemWifiLinkQualityMonitorCallback;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 359
    :pswitch_c
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    .line 360
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 361
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getInstance()Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    move-result-object v0

    .line 362
    const-string v7, "XXX"

    .line 363
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getTcpMonitorInfoHistoryList()Ljava/util/List;

    move-result-object v0

    const/4 v12, 0x7

    const-wide/16 v19, 0x4e20

    const/4 v5, 0x6

    if-eqz v0, :cond_44

    .line 364
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v5, :cond_44

    .line 365
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v9, 0x0

    const/16 v21, 0x5

    :goto_54
    const/16 v13, 0x17

    move-wide/from16 v22, v14

    const/16 v14, 0x16

    if-ge v9, v6, :cond_3f

    if-lt v9, v5, :cond_40

    :cond_3f
    move/from16 v26, v11

    goto :goto_55

    :cond_40
    add-int/lit8 v15, v6, -0x1

    sub-int/2addr v15, v9

    .line 366
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 367
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetdateWindow(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[Ljava/lang/String;

    move-result-object v5

    rsub-int/lit8 v24, v9, 0x5

    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    move/from16 v26, v11

    const/4 v11, 0x0

    invoke-static {v10, v15, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mgetStringFromTcpMonitorInfo(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v24

    .line 368
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetsynWindow(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I

    move-result-object v5

    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10, v15, v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mgetIntegerFromTcpMonitorInfo(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;I)I

    move-result v10

    aput v10, v5, v24

    .line 369
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetrtoWindow(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I

    move-result-object v5

    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10, v15, v14}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mgetIntegerFromTcpMonitorInfo(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;I)I

    move-result v10

    aput v10, v5, v24

    .line 370
    iget-object v5, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetcwndWindow(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I

    move-result-object v5

    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10, v15, v13}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mgetIntegerFromTcpMonitorInfo(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;I)I

    move-result v10

    aput v10, v5, v24

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v14, v22

    move/from16 v11, v26

    const/4 v5, 0x6

    const/16 v10, 0x9

    goto :goto_54

    .line 371
    :goto_55
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss "

    invoke-direct {v5, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 372
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetdateWindow(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v21

    invoke-static {v9, v10, v5}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mgetUnixTimeFromSimpleDateFormat(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;Ljava/text/SimpleDateFormat;)J

    move-result-wide v9

    .line 373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    cmp-long v15, v9, v22

    if-lez v15, :cond_43

    sub-long v27, v13, v9

    cmp-long v15, v27, v22

    if-ltz v15, :cond_43

    const-wide/16 v29, 0xbb8

    cmp-long v15, v27, v29

    if-gez v15, :cond_43

    .line 374
    iget-object v7, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetrtoWindow(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I

    move-result-object v7

    aget v7, v7, v21

    .line 375
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/4 v13, 0x2

    invoke-static {v9, v10, v13}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mgetStringFromTcpMonitorInfo(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 376
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move/from16 v6, v26

    invoke-static {v10, v0, v6}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mgetIntegerFromTcpMonitorInfo(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;I)I

    move-result v13

    .line 377
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetsynWindow(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I

    move-result-object v6

    invoke-static {v0, v6, v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mcheckMonotonicNonDecreasing(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;[II)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetrtoWindow(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I

    move-result-object v6

    const/16 v5, 0x16

    .line 378
    invoke-static {v0, v6, v5}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mcheckMonotonicNonDecreasing(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;[II)Z

    move-result v0

    if-nez v0, :cond_42

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetcwndWindow(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I

    move-result-object v5

    const/16 v11, 0x17

    .line 379
    invoke-static {v0, v5, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mcheckMonotonicNonDecreasing(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;[II)Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_56

    :cond_41
    const/4 v0, 0x0

    goto :goto_57

    :cond_42
    :goto_56
    const/4 v0, 0x1

    :goto_57
    move v5, v0

    move v0, v7

    move-object v7, v9

    goto :goto_58

    .line 380
    :cond_43
    const-string v0, "SemWifiLinkQualityMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Too old or invalid TMI: currentTime="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " lastDateWindow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v13, -0x1

    :goto_58
    move v6, v0

    const/4 v9, 0x1

    goto :goto_59

    :cond_44
    move-wide/from16 v22, v14

    const/16 v21, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v13, -0x1

    .line 381
    :goto_59
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetisIlaTrInProcess(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlastTrTimeStampMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J

    move-result-wide v14

    sub-long/2addr v10, v14

    const-wide/32 v14, 0x493e0

    cmp-long v0, v10, v14

    if-lez v0, :cond_46

    .line 382
    :try_start_50
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const-string v10, "ILA tr. timelimit exceeds. unbind service: "

    const/4 v11, 0x2

    invoke-virtual {v0, v10, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 383
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaServiceConnection(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/ServiceConnection;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 384
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/Context;

    move-result-object v0

    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetaiTrServiceIntent(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 385
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmServicePid(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v0

    if-ltz v0, :cond_45

    .line 386
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmServicePid(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v0

    const/16 v10, 0x9

    invoke-static {v0, v10}, Landroid/os/Process;->sendSignal(II)V

    goto :goto_5a

    :catch_1b
    move-exception v0

    goto :goto_5b

    .line 387
    :cond_45
    :goto_5a
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetisIlaTrInProcess(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "ILA train forcibly terminated"

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-virtual {v10, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addL2LogHistory(Ljava/lang/StringBuilder;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_1b

    goto :goto_5c

    .line 390
    :goto_5b
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ILA unbind error"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-virtual {v11, v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addL2LogHistory(Ljava/lang/StringBuilder;)V

    .line 392
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "Unbind error: "

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x1

    invoke-virtual {v10, v11, v14}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 393
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 394
    :cond_46
    :goto_5c
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiUsabilityStatsEntry;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Landroid/net/wifi/WifiUsabilityStatsEntry;)V

    .line 395
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmLastUpdateTimeMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J

    move-result-wide v10

    cmp-long v2, v3, v10

    if-nez v2, :cond_47

    move-wide/from16 v10, v22

    goto :goto_5d

    :cond_47
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgettxBytes(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J

    move-result-wide v10

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlastTxBytes(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J

    move-result-wide v14

    sub-long/2addr v10, v14

    const-wide/16 v14, 0x8

    mul-long/2addr v10, v14

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmLastUpdateTimeMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J

    move-result-wide v14

    sub-long v14, v3, v14

    div-long/2addr v10, v14

    :goto_5d
    invoke-static {v0, v10, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputtxTrafficKbps(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;J)V

    .line 396
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgettxBytes(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J

    move-result-wide v10

    invoke-static {v0, v10, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputlastTxBytes(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;J)V

    .line 397
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgettxTrafficInUse(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgettxTrafficKbps(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J

    move-result-wide v10

    const-wide/16 v14, 0x1

    cmp-long v2, v10, v14

    if-lez v2, :cond_48

    const/4 v2, 0x1

    goto :goto_5e

    :cond_48
    const/4 v2, 0x0

    :goto_5e
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 398
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/StringBuilder;)V

    .line 399
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputmL2TransitionLog(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/StringBuilder;)V

    .line 400
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mupdateLinkLayerStats(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)V

    .line 401
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetbestLinkId(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v0

    .line 402
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const-wide/16 v28, 0x0

    const/16 v30, 0x2

    const-wide/16 v31, 0xbb8

    const/16 v33, 0x1

    move-object/from16 v27, v2

    invoke-virtual/range {v27 .. v33}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->mlQosEstimation(JIJI)[D

    move-result-object v2

    .line 403
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmloConnection(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-eqz v10, :cond_4c

    .line 404
    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetbestLinkId(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v10

    if-ltz v10, :cond_4a

    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetbestLinkId(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v10

    if-ne v0, v10, :cond_49

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmBestLinkSentToWcm(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 405
    :cond_49
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "BL: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetbestLinkId(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v0, v10, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 406
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmBestLinkSentToWcm(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 407
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetbestLinkIdChangedCallbacks(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SemWifiBestLinkIdChangedCallback;

    .line 408
    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetbestLinkId(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v11

    invoke-interface {v10, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SemWifiBestLinkIdChangedCallback;->bestLinkIdChanged(I)V

    goto :goto_5f

    .line 409
    :cond_4a
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetis2G(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlinkIdBandMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v10

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetbestLinkId(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4b

    iget-object v10, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlinkIdBandMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v10

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetbestLinkId(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4b

    const/4 v10, 0x1

    goto :goto_60

    :cond_4b
    const/4 v10, 0x0

    :goto_60
    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 410
    :try_start_51
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/net/wifi/WifiUsabilityStatsEntry;

    move-result-object v10

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetbestLinkId(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getTxLinkSpeedMbps(I)I

    move-result v10

    invoke-static {v0, v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputmTxSpeed(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 411
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/net/wifi/WifiUsabilityStatsEntry;

    move-result-object v10

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetbestLinkId(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getRssi(I)I

    move-result v10

    int-to-double v10, v10

    invoke-static {v0, v10, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputmRssi(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;D)V
    :try_end_51
    .catch Ljava/util/NoSuchElementException; {:try_start_51 .. :try_end_51} :catch_1c

    goto :goto_61

    .line 412
    :catch_1c
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/net/wifi/WifiUsabilityStatsEntry;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getLinkSpeedMbps()I

    move-result v10

    invoke-static {v0, v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputmTxSpeed(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 413
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Landroid/net/wifi/WifiUsabilityStatsEntry;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getRssi()I

    move-result v10

    int-to-double v10, v10

    invoke-static {v0, v10, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputmRssi(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;D)V

    .line 414
    :cond_4c
    :goto_61
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mgetBssidEdited(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;

    move-result-object v10

    .line 415
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0, v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputlastBssidEdited(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;)V

    .line 416
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaSupported(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string v0, "000000000000"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    const-string v0, "XXXXXXXXXXXX"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    goto :goto_62

    :cond_4d
    const/16 v18, 0x0

    goto :goto_63

    .line 417
    :cond_4e
    :goto_62
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid BSSID edited, break: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x1

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    goto/16 :goto_91

    .line 418
    :goto_63
    aget-wide v24, v2, v18

    const-wide/16 v35, 0x0

    cmpl-double v0, v24, v35

    if-lez v0, :cond_52

    .line 419
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmLinkStateUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J

    move-result-wide v24

    add-long v14, v24, v14

    invoke-static {v0, v14, v15}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputmLinkStateUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;J)V

    .line 420
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputmLastLinkStateUpdateTimeMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;J)V

    .line 421
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmMloDeterminedByMl(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmQosStateMachine(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 422
    :try_start_52
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmQosDecisionTree(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;

    move-result-object v0

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmloConnection(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-eqz v11, :cond_4f

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetperLinkVariables(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/HashMap;

    move-result-object v11

    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v14}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetbestLinkId(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    goto :goto_64

    :catch_1d
    move-exception v0

    goto :goto_67

    :cond_4f
    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmLinkVariables(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/HashMap;

    move-result-object v11

    :goto_64
    invoke-virtual {v0, v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosDecisionTree;->evaluateLinkQoS(Ljava/util/HashMap;)Z

    move-result v0

    .line 423
    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmMloDeterminedByMl(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v11

    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v14}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmQosStateMachine(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;

    move-result-object v14

    invoke-virtual {v14, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$QosStateMachine;->run(I)Z

    move-result v14

    invoke-virtual {v11, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 424
    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v14, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v14}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmMloDeterminedByMl(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v14

    if-eqz v14, :cond_50

    const-string v14, "G"

    goto :goto_65

    :cond_50
    const-string v14, "B"

    :goto_65
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, " ("

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v0, :cond_51

    const-string v0, "G"

    goto :goto_66

    :cond_51
    const-string v0, "B"

    :goto_66
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ") || "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_1d

    goto :goto_68

    .line 428
    :goto_67
    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v11

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "RT QoS assessment failure: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " || "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :cond_52
    :goto_68
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmL2TransitionMode(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v0

    const-wide/high16 v14, -0x3fb5000000000000L    # -54.0

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    const-wide/high16 v27, 0x4008000000000000L    # 3.0

    if-eqz v0, :cond_55

    const/4 v11, 0x1

    if-eq v0, v11, :cond_53

    move-wide/from16 v14, v35

    move-wide/from16 v27, v14

    const/4 v0, 0x1

    const/4 v11, 0x1

    const/16 v29, 0x0

    goto :goto_6d

    .line 430
    :cond_53
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)D

    move-result-wide v29

    cmpl-double v0, v29, v14

    if-ltz v0, :cond_54

    const/4 v0, 0x1

    goto :goto_69

    :cond_54
    const/4 v0, 0x0

    :goto_69
    move v11, v0

    move-wide/from16 v14, v27

    const/4 v0, 0x0

    const/16 v29, 0x2

    move-wide/from16 v27, v24

    goto :goto_6d

    .line 431
    :cond_55
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)D

    move-result-wide v29

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetis2G(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_56

    goto :goto_6a

    :cond_56
    const-wide v14, -0x3fb0800000000000L    # -63.0

    :goto_6a
    cmpl-double v0, v29, v14

    if-ltz v0, :cond_57

    const/4 v0, 0x1

    goto :goto_6b

    :cond_57
    const/4 v0, 0x0

    .line 432
    :goto_6b
    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetvoiceCallDetected(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-eqz v11, :cond_58

    goto :goto_69

    .line 433
    :cond_58
    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)D

    move-result-wide v14

    const-wide v29, -0x3fae800000000000L    # -70.0

    cmpg-double v11, v14, v29

    if-gez v11, :cond_59

    move/from16 v11, v16

    goto :goto_6c

    :cond_59
    move/from16 v11, v21

    :goto_6c
    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    move/from16 v29, v11

    move v11, v0

    const/4 v0, 0x1

    .line 434
    :goto_6d
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlqCallbackLegacyTriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    const-wide v37, -0x3fac800000000000L    # -78.0

    if-nez v12, :cond_66

    .line 435
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmLastLinkStateUpdateTimeMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J

    move-result-wide v30

    sub-long v30, v3, v30

    cmp-long v12, v30, v19

    if-lez v12, :cond_5a

    .line 436
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    move-object/from16 p1, v2

    const/4 v2, 0x0

    invoke-static {v12, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputoutageLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 437
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v12, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputoutageRecoveredCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 438
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaSupported(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_5b

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlqCallbackILATriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    .line 439
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_5b

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetl2tTimeByIlaMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J

    move-result-wide v30

    sub-long v30, v3, v30

    cmp-long v2, v30, v19

    if-gtz v2, :cond_5b

    const/16 v18, 0x0

    aget-wide v30, p1, v18

    cmpl-double v2, v30, v35

    if-lez v2, :cond_5b

    const/4 v2, 0x1

    goto :goto_6e

    :cond_5a
    move-object/from16 p1, v2

    :cond_5b
    const/4 v2, 0x0

    :goto_6e
    if-nez v11, :cond_64

    .line 440
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetrssiBasedTransitionEnabled(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)D

    move-result-wide v30

    cmpg-double v0, v30, v37

    if-gtz v0, :cond_5c

    .line 441
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetoutageLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v6

    const/16 v26, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-static {v0, v6}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputoutageLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 442
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const/4 v12, 0x0

    invoke-static {v0, v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputoutageRecoveredCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    :goto_6f
    move/from16 v27, v2

    goto/16 :goto_71

    :cond_5c
    const/4 v12, 0x0

    .line 443
    aget-wide v30, p1, v12

    cmpl-double v0, v30, v35

    if-lez v0, :cond_63

    cmpl-double v0, v30, v14

    if-lez v0, :cond_5e

    .line 444
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetoutageLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v0

    if-nez v0, :cond_5d

    if-eqz v9, :cond_5d

    .line 445
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetsynWindow(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I

    move-result-object v6

    aget v6, v6, v21

    invoke-static {v0, v6}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputsocketCritSyn(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 446
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetrtoWindow(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I

    move-result-object v6

    aget v6, v6, v21

    invoke-static {v0, v6}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputsocketCritRto(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 447
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetcwndWindow(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I

    move-result-object v6

    aget v6, v6, v21

    invoke-static {v0, v6}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputsocketCritCwnd(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 448
    :cond_5d
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetoutageLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v6

    const/16 v26, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-static {v0, v6}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputoutageLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 449
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const/4 v12, 0x0

    invoke-static {v0, v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputoutageRecoveredCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    goto :goto_6f

    :cond_5e
    sub-double v27, v14, v27

    cmpg-double v0, v30, v27

    if-gez v0, :cond_62

    .line 450
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetoutageLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v0

    if-lez v0, :cond_5f

    .line 451
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetoutageRecoveredCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v12

    move/from16 v27, v2

    const/4 v2, 0x1

    add-int/2addr v12, v2

    invoke-static {v0, v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputoutageRecoveredCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    goto :goto_70

    :cond_5f
    move/from16 v27, v2

    const/4 v2, 0x1

    .line 452
    :goto_70
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetoutageRecoveredCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v0

    if-lt v0, v2, :cond_60

    .line 453
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputoutageLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 454
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputoutageRecoveredCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 455
    :cond_60
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaSupported(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlqCallbackILATriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    .line 456
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetl2tTimeByIlaMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J

    move-result-wide v30

    sub-long v30, v3, v30

    cmp-long v0, v30, v19

    if-gtz v0, :cond_61

    const/16 v27, 0x1

    :cond_61
    if-lez v6, :cond_65

    .line 457
    const-string v0, "SemWifiLinkQualityMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v12, "Abnormal RTO with low latency: "

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " / "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " / "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-static {v0, v6, v2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 459
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addRtoHistory(Ljava/lang/String;)V

    .line 460
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetrtoWhiteList(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 461
    const-string v0, "SemWifiLinkQualityMonitor"

    const-string v2, "RTO whitelist package detected, will kill all corresponding sockets (not now)"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_71

    :cond_62
    move/from16 v27, v2

    .line 462
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetoutageLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v0

    if-lez v0, :cond_65

    if-eqz v5, :cond_65

    .line 463
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetoutageLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v2

    const/16 v26, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputoutageLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 464
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputoutageRecoveredCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    goto :goto_71

    :cond_63
    move/from16 v27, v2

    .line 465
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetoutageLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v0

    if-lez v0, :cond_65

    .line 466
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetoutageLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v2

    const/16 v26, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputoutageLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 467
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputoutageRecoveredCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    goto :goto_71

    :cond_64
    move/from16 v27, v2

    const/4 v2, 0x0

    if-eqz v0, :cond_65

    .line 468
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputoutageLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 469
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputoutageRecoveredCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 470
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaSupported(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlqCallbackILATriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetl2tTimeByIlaMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J

    move-result-wide v6

    sub-long v6, v3, v6

    cmp-long v0, v6, v19

    if-gtz v0, :cond_65

    const/16 v18, 0x0

    aget-wide v6, p1, v18

    cmpl-double v0, v6, v35

    if-lez v0, :cond_65

    const/16 v27, 0x1

    :cond_65
    :goto_71
    if-eqz v27, :cond_67

    .line 472
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumRecoveredAfterIlaL2t(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v2

    const/16 v26, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputnumRecoveredAfterIlaL2t(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    goto :goto_72

    :cond_66
    move-object/from16 p1, v2

    .line 473
    :cond_67
    :goto_72
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlqComebackTriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6c

    const/16 v18, 0x0

    .line 474
    aget-wide v6, p1, v18

    cmpl-double v0, v6, v35

    if-lez v0, :cond_6a

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v6, v12

    if-gtz v0, :cond_68

    .line 475
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetrecoveryLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v2

    const/16 v26, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputrecoveryLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 476
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmConsecutiveAboveComebackThres(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_73

    :cond_68
    cmpg-double v0, v6, v24

    if-gtz v0, :cond_69

    .line 477
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmConsecutiveAboveComebackThres(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_69

    .line 478
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmConsecutiveAboveComebackThres(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_73

    .line 479
    :cond_69
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputrecoveryLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 480
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmConsecutiveAboveComebackThres(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_73

    .line 481
    :cond_6a
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgettrafficOutageCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v2

    const/16 v26, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputtrafficOutageCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 482
    :goto_73
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)D

    move-result-wide v6

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetcallbackRssi(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)D

    move-result-wide v12

    sub-double/2addr v6, v12

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetCOMEBACK_RSSI_DIFF(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v0

    int-to-double v12, v0

    cmpl-double v0, v6, v12

    if-ltz v0, :cond_6b

    .line 483
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetcomebackRssiCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v2

    const/16 v26, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputcomebackRssiCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    goto :goto_74

    .line 484
    :cond_6b
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputcomebackRssiCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 485
    :cond_6c
    :goto_74
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-virtual {v0, v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getRssiThresholdFromResultFile(Ljava/lang/String;)D

    move-result-wide v32

    .line 486
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaSupported(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-wide/high16 v6, -0x3fa7000000000000L    # -100.0

    if-eqz v0, :cond_73

    .line 487
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlqCallbackILATriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_71

    cmpg-double v0, v32, v35

    if-gez v0, :cond_6e

    cmpl-double v0, v32, v6

    if-lez v0, :cond_6e

    .line 488
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)D

    move-result-wide v12

    cmpg-double v0, v12, v32

    if-gez v0, :cond_6e

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmloConnection(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmlLinkNumber(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v0

    const/4 v13, 0x2

    if-lt v0, v13, :cond_6d

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mmultiLinkCtlEnabled(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgethas2G(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetactiveLinkNumber(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_6e

    :cond_6d
    const/16 v18, 0x0

    goto :goto_75

    :cond_6e
    move-wide/from16 v24, v6

    move/from16 v0, v29

    goto/16 :goto_76

    :goto_75
    aget-wide v12, p1, v18

    cmpl-double v0, v12, v14

    if-lez v0, :cond_6e

    if-nez v11, :cond_6e

    .line 490
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputl2tTimeByIlaMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;J)V

    .line 491
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlqCallbackLegacyTriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 492
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :cond_6f
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlqCallbackILATriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 494
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmTPChecked(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 495
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0, v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputbssidEditedAfterILA(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;)V

    .line 496
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    aget-wide v30, p1, v2

    const/16 v34, 0x1

    move-object/from16 v27, v0

    move-object/from16 v28, v10

    invoke-static/range {v27 .. v34}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mrecordIlaResults(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;IDDI)V

    move/from16 v0, v29

    .line 497
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlqCallbackLegacyTriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v12

    if-nez v12, :cond_70

    .line 498
    iget-object v12, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    move-wide/from16 v24, v6

    invoke-static {v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)D

    move-result-wide v6

    invoke-static {v12, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputcallbackRssi(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;D)V

    .line 499
    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    aget-wide v12, p1, v2

    invoke-static {v6, v12, v13}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mcallbackLinkQualityUpdateForPoorLink(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;D)V

    goto :goto_77

    :cond_70
    move-wide/from16 v24, v6

    goto :goto_77

    .line 500
    :goto_76
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    move-wide/from16 v6, v22

    invoke-static {v2, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputl2tTimeByIlaMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;J)V

    goto :goto_77

    :cond_71
    move-wide/from16 v24, v6

    move/from16 v0, v29

    .line 501
    :goto_77
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIsWifiValidState(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_74

    .line 502
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputl2tTimeByLegacyMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;J)V

    .line 503
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetl2tTimeByIlaMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J

    move-result-wide v6

    sub-long v6, v3, v6

    .line 504
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetl2tTimeByIlaMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J

    move-result-wide v12

    const-wide/16 v22, 0x0

    cmp-long v2, v12, v22

    if-lez v2, :cond_72

    cmp-long v2, v6, v19

    if-gtz v2, :cond_72

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmTPChecked(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_72

    .line 505
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "L2TError: URL check failed before LQCBL, "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x2

    invoke-virtual {v2, v6, v13}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 506
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetbssidEditedAfterILA(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x0

    const-wide/high16 v42, -0x4010000000000000L    # -1.0

    const-wide v44, -0x3fa7400000000000L    # -99.0

    const/16 v46, 0x4

    move-object/from16 v39, v2

    invoke-static/range {v39 .. v46}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mrecordIlaResults(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;IDDI)V

    .line 507
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmTPChecked(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_78

    .line 508
    :cond_72
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "L2TError: URL check failed, "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x2

    invoke-virtual {v2, v6, v13}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    goto :goto_78

    :cond_73
    move-wide/from16 v24, v6

    move/from16 v0, v29

    .line 509
    :cond_74
    :goto_78
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlqCallbackLegacyTriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_7f

    const/16 v18, 0x0

    .line 510
    aget-wide v6, p1, v18

    cmpl-double v2, v6, v14

    if-gtz v2, :cond_78

    if-nez v5, :cond_75

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)D

    move-result-wide v6

    const-wide/high16 v12, -0x3fac000000000000L    # -80.0

    cmpg-double v2, v6, v12

    if-gez v2, :cond_76

    :cond_75
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetoutageLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v2

    if-gtz v2, :cond_78

    :cond_76
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetrssiBasedTransitionEnabled(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_77

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)D

    move-result-wide v6

    cmpg-double v2, v6, v37

    if-gtz v2, :cond_77

    goto :goto_79

    :cond_77
    move/from16 v29, v0

    move-object/from16 v28, v10

    goto/16 :goto_7e

    :cond_78
    :goto_79
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmloConnection(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    .line 511
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_79

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmlLinkNumber(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v2

    const/4 v13, 0x2

    if-lt v2, v13, :cond_79

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mmultiLinkCtlEnabled(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Z

    move-result v2

    if-eqz v2, :cond_79

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgethas2G(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_79

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetactiveLinkNumber(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v2

    const/4 v14, 0x1

    if-le v2, v14, :cond_77

    :cond_79
    if-nez v11, :cond_77

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetoutageLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v2

    if-lt v2, v0, :cond_77

    .line 512
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaSupported(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_7a

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlqCallbackILATriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_7a

    .line 513
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v2

    iget-object v6, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v14, 0x1

    add-int/2addr v6, v14

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7a

    :cond_7a
    const/4 v14, 0x1

    .line 514
    :goto_7a
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlqCallbackLegacyTriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 515
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaSupported(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_7b

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlqCallbackILATriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_7c

    .line 516
    :cond_7b
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)D

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputcallbackRssi(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;D)V

    .line 517
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const/16 v18, 0x0

    aget-wide v6, p1, v18

    invoke-static {v2, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mcallbackLinkQualityUpdateForPoorLink(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;D)V

    .line 518
    :cond_7c
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaSupported(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_7f

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmTPChecked(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_7f

    cmpl-double v2, v32, v35

    if-gez v2, :cond_7d

    cmpg-double v2, v32, v24

    if-gtz v2, :cond_7e

    :cond_7d
    move-object/from16 v28, v10

    goto :goto_7c

    .line 519
    :cond_7e
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const-string v6, "L2TError: LQCBL TP or FN"

    const/4 v13, 0x2

    invoke-virtual {v2, v6, v13}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 520
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputl2tTimeByLegacyMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;J)V

    .line 521
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const/16 v18, 0x0

    aget-wide v30, p1, v18

    const/16 v34, 0x2

    move/from16 v29, v0

    move-object/from16 v27, v2

    move-object/from16 v28, v10

    invoke-static/range {v27 .. v34}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mrecordIlaResults(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;IDDI)V

    .line 522
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmTPChecked(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_7f
    :goto_7b
    move-wide/from16 v6, v32

    goto/16 :goto_7f

    .line 523
    :goto_7c
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const-string v2, "L2TError: LQCBL invalid RSSI threshold"

    const/4 v13, 0x2

    invoke-virtual {v0, v2, v13}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 524
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const-wide/16 v6, 0x0

    invoke-static {v0, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputl2tTimeByLegacyMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;J)V

    :cond_80
    :goto_7d
    move-object/from16 v10, v28

    goto :goto_7b

    .line 525
    :goto_7e
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaSupported(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_80

    .line 526
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetl2tTimeByIlaMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J

    move-result-wide v6

    sub-long v6, v3, v6

    cmp-long v0, v6, v19

    if-lez v0, :cond_81

    cmpg-double v0, v32, v35

    if-gez v0, :cond_80

    cmpl-double v0, v32, v24

    if-lez v0, :cond_80

    .line 527
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlqCallbackILATriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    .line 528
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmTPChecked(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    .line 529
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_80

    .line 530
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const/4 v2, 0x0

    aget-wide v30, p1, v2

    const/16 v34, 0x5

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v34}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mrecordIlaResults(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;IDDI)V

    .line 531
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const-wide/16 v6, 0x0

    invoke-static {v0, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputl2tTimeByIlaMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;J)V

    .line 532
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputnumRecoveredAfterIlaL2t(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 533
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmTPChecked(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_7d

    :cond_81
    const/4 v2, 0x0

    .line 534
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    aget-wide v30, p1, v2

    const/16 v34, 0x6

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v34}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mrecordIlaResults(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;IDDI)V

    goto :goto_7d

    .line 535
    :goto_7f
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlqComebackTriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_84

    .line 536
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetrecoveryLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_82

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgettrafficOutageCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetCOMEBACK_TRAFFIC_OUTAGE_CNT_LIMIT(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v2

    if-lt v0, v2, :cond_84

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetcomebackRssiCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetCOMEBACK_RSSI_CNT_LIMIT(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v2

    if-ge v0, v2, :cond_82

    if-eqz v11, :cond_84

    .line 537
    :cond_82
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetcallbacks(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_80
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SemWifiLinkQualityMonitorCallback;

    const/4 v11, 0x0

    .line 538
    aget-wide v12, p1, v11

    const/4 v14, 0x1

    invoke-interface {v2, v14, v12, v13, v14}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$SemWifiLinkQualityMonitorCallback;->linkQualityUpdate(IDI)V

    goto :goto_80

    :cond_83
    const/4 v11, 0x0

    const/4 v14, 0x1

    .line 539
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlqComebackTriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 540
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmConsecutiveAboveComebackThres(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 541
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    const-string v2, "LQ L1 callback triggered"

    const/4 v13, 0x2

    invoke-virtual {v0, v2, v13}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 542
    :cond_84
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_91

    .line 543
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x0

    .line 545
    aget-wide v11, p1, v18

    cmpl-double v0, v11, v35

    if-lez v0, :cond_86

    .line 546
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%.3f"

    aget-wide v11, p1, v18

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v2, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%.3f"

    const/16 v26, 0x1

    aget-wide v11, p1, v26

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v2, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetdefaultValueUsed(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Z

    move-result v2

    if-eqz v2, :cond_85

    const-string v2, " / D || "

    goto :goto_81

    :cond_85
    const-string v2, " / N || "

    :goto_81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_82

    .line 550
    :cond_86
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "0.000 / 0.000 / @ || "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    :goto_82
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getCurrentL2TransitionModeStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetvoiceCallDetected(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_87

    const-string v2, " V / "

    goto :goto_83

    :cond_87
    const-string v2, " N / "

    :goto_83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetoutageLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 554
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetoutageRecoveredCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 556
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlqCallbackILATriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_88

    const-string v2, " / Y "

    goto :goto_84

    :cond_88
    const-string v2, " / N "

    :goto_84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 558
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlqCallbackLegacyTriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_89

    const-string v2, " / Y "

    goto :goto_85

    :cond_89
    const-string v2, " / N "

    :goto_85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v5, :cond_8a

    const-string v2, "O "

    goto :goto_86

    :cond_8a
    const-string v2, "X "

    :goto_86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaSupported(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 561
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_87

    .line 562
    :cond_8b
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    :goto_87
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 565
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetl2tTimeByIlaMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 567
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " || "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_8e

    .line 568
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetdateWindow(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetsocketCritSyn(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 571
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_88
    const/4 v2, 0x6

    if-ge v0, v2, :cond_8c

    .line 572
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetsynWindow(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I

    move-result-object v9

    aget v9, v9, v0

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_88

    .line 574
    :cond_8c
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetsocketCritRto(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 576
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_89
    const/4 v2, 0x6

    if-ge v0, v2, :cond_8d

    .line 577
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetrtoWindow(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I

    move-result-object v9

    aget v9, v9, v0

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    .line 579
    :cond_8d
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetsocketCritCwnd(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 581
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v2, 0x6

    :goto_8a
    if-ge v0, v2, :cond_8f

    .line 582
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetcwndWindow(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)[I

    move-result-object v11

    aget v11, v11, v0

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8a

    .line 584
    :cond_8e
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Invalid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    :cond_8f
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v18, 0x0

    aget-wide v11, p1, v18

    cmpl-double v9, v11, v35

    if-lez v9, :cond_90

    const/4 v12, 0x2

    goto :goto_8b

    :cond_90
    move/from16 v12, v18

    :goto_8b
    invoke-virtual {v0, v2, v12}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 586
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaSupported(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 587
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    aget-wide v28, p1, v18

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)D

    move-result-wide v30

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetoutageLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v32

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlqCallbackLegacyTriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v33

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmSb(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v34}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mcallbackOutageCountChanged(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;DDIZLjava/lang/String;)V

    .line 588
    :cond_91
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmL2TransitionLog(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%.0f"

    iget-object v9, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmL2TransitionLog(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x0

    .line 590
    aget-wide v11, p1, v18

    const-wide v13, 0x408f400000000000L    # 1000.0

    cmpl-double v0, v11, v13

    const-wide/high16 v13, 0x4059000000000000L    # 100.0

    if-ltz v0, :cond_92

    .line 591
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmL2TransitionLog(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%.0f"

    aget-wide v11, p1, v18

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8c

    :cond_92
    cmpl-double v0, v11, v13

    if-ltz v0, :cond_93

    .line 592
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmL2TransitionLog(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%.1f"

    aget-wide v11, p1, v18

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8c

    .line 593
    :cond_93
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmL2TransitionLog(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%.2f"

    aget-wide v11, p1, v18

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    :goto_8c
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmL2TransitionLog(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " || "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmL2TransitionLog(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->getCurrentL2TransitionModeStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaSupported(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_98

    const/16 v18, 0x0

    .line 597
    aget-wide v11, p1, v18

    cmpl-double v0, v11, v35

    if-lez v0, :cond_94

    const-string v0, "XXXXXXXXXXXX"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    .line 598
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetdataCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v2

    const/16 v26, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputdataCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;I)V

    .line 599
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmRssi(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)D

    move-result-wide v29

    const/16 v18, 0x0

    aget-wide v31, p1, v18

    move-object/from16 v27, v0

    move-object/from16 v28, v10

    invoke-static/range {v27 .. v32}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mcopyLatencyToCsvPerRssiLevel(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;DD)V

    :cond_94
    cmpg-double v0, v6, v35

    if-ltz v0, :cond_95

    cmpl-double v0, v6, v13

    if-ltz v0, :cond_96

    .line 600
    :cond_95
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v0

    .line 601
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v2, v16

    if-ge v0, v2, :cond_97

    :cond_96
    cmpl-double v0, v6, v35

    if-ltz v0, :cond_98

    cmpg-double v0, v6, v13

    if-gez v0, :cond_98

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v0

    .line 602
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v14, 0xa

    if-lt v0, v14, :cond_98

    .line 603
    :cond_97
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmLinkQualityMonitorHandler(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;

    move-result-object v0

    const/4 v2, 0x7

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v6, 0x0

    invoke-virtual {v1, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 604
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetnumTransitOccurredMap(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    :cond_98
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmL2TransitionLog(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmL2TransitionLog(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetvoiceCallDetected(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_99

    const-string v2, "V"

    goto :goto_8d

    :cond_99
    const-string v2, "N"

    :goto_8d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmL2TransitionLog(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmL2TransitionLog(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetoutageLastingCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 609
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmL2TransitionLog(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmL2TransitionLog(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetoutageRecoveredCnt(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 611
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmL2TransitionLog(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlqCallbackILATriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_9a

    const-string v2, " Y"

    goto :goto_8e

    :cond_9a
    const-string v2, " N"

    :goto_8e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmL2TransitionLog(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetlqCallbackLegacyTriggered(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_9b

    const-string v2, " Y"

    goto :goto_8f

    :cond_9b
    const-string v2, " N"

    :goto_8f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmL2TransitionLog(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v5, :cond_9c

    const-string v2, " O"

    goto :goto_90

    :cond_9c
    const-string v2, " X"

    :goto_90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmL2TransitionLog(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addL2LogHistory(Ljava/lang/StringBuilder;)V

    .line 615
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputmLastUpdateTimeMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;J)V

    goto :goto_91

    :cond_9d
    const-wide/16 v19, 0x4e20

    .line 616
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmIlaSupported(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 617
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fputl2tTimeByLegacyMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;J)V

    .line 618
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetl2tTimeByIlaMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 619
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetl2tTimeByIlaMs(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)J

    move-result-wide v5

    const-wide/16 v22, 0x0

    cmp-long v0, v5, v22

    if-lez v0, :cond_9e

    cmp-long v0, v3, v19

    if-gtz v0, :cond_9e

    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetmTPChecked(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9e

    .line 620
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "L2TError: Disconnected before LQCBL, "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x2

    invoke-virtual {v0, v2, v13}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    .line 621
    iget-object v3, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$fgetbssidEditedAfterILA(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide v8, -0x3fa7400000000000L    # -99.0

    const/4 v10, 0x3

    invoke-static/range {v3 .. v10}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->-$$Nest$mrecordIlaResults(Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;Ljava/lang/String;IDDI)V

    return-void

    .line 622
    :cond_9e
    iget-object v0, v1, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor$LinkQualityMonitorHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "L2TError: Disconnected, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x2

    invoke-virtual {v0, v1, v13}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->addEvent(Ljava/lang/String;I)V

    :cond_9f
    :goto_91
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
