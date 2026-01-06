.class final Lcom/android/internal/telephony/NetworkTypeController$DefaultState;
.super Lcom/android/internal/telephony/State;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkTypeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkTypeController;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1224
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-direct {p0}, Lcom/android/internal/telephony/State;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/NetworkTypeController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;-><init>(Lcom/android/internal/telephony/NetworkTypeController;)V

    return-void
.end method

.method private blacklist handlePcoData(Landroid/os/AsyncResult;)V
    .locals 3

    .line 1432
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 1433
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->loge(Ljava/lang/String;)V

    return-void

    .line 1436
    :cond_0
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/PcoData;

    if-eqz p1, :cond_8

    .line 1437
    iget-object v0, p1, Landroid/telephony/PcoData;->contents:[B

    array-length v0, v0

    if-gtz v0, :cond_1

    goto/16 :goto_1

    .line 1438
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pcoId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/telephony/PcoData;->pcoId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/telephony/PcoData;->contents:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1439
    iget v0, p1, Landroid/telephony/PcoData;->pcoId:I

    const v1, 0xff81

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 1440
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget-object p1, p1, Landroid/telephony/PcoData;->contents:[B

    array-length v0, p1

    sub-int/2addr v0, v2

    aget-byte p1, p1, v0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monReceiveCpIconTypeChanged(Lcom/android/internal/telephony/NetworkTypeController;I)V

    return-void

    :cond_2
    const v1, 0xff03

    if-eq v0, v1, :cond_3

    .line 1441
    iget-object v1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrAdvancedCapablePcoId(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 1443
    :cond_3
    iget-object p1, p1, Landroid/telephony/PcoData;->contents:[B

    array-length v0, p1

    sub-int/2addr v0, v2

    aget-byte p1, p1, v0

    const/4 v0, 0x0

    if-ne p1, v2, :cond_4

    goto :goto_0

    :cond_4
    move v2, v0

    .line 1444
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrAdvancedCapablePcoId(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    if-lez p1, :cond_7

    .line 1445
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsNrAdvancedAllowedByPco(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-ne p1, v2, :cond_5

    goto :goto_1

    .line 1446
    :cond_5
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsNrAdvancedAllowedByPco(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1447
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsUwDsqEnabled(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1448
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mhandleNrAdvancedNotAllowed(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1450
    :cond_6
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void

    .line 1451
    :cond_7
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmNrAdvancedCapablePcoId(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p1

    if-nez p1, :cond_8

    .line 1452
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsNrAdvancedAllowedByPco(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1228
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultState: process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v2, v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetEventName(Lcom/android/internal/telephony/NetworkTypeController;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1229
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1425
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received invalid event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1400
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->handlePcoData(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    .line 1408
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misUwDsqNotRequired(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 1409
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mhandleUwDsqChanged(Lcom/android/internal/telephony/NetworkTypeController;I)V

    goto/16 :goto_1

    .line 1404
    :pswitch_2
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misUwDisqualifiedAndHandled(Lcom/android/internal/telephony/NetworkTypeController;)Z

    goto/16 :goto_1

    .line 1421
    :pswitch_3
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mhandlePreciseCallStateChanged(Lcom/android/internal/telephony/NetworkTypeController;I)V

    goto/16 :goto_1

    .line 1418
    :pswitch_4
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mhandleUcRefreshTimer(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_1

    .line 1413
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 1414
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monCellInfoChanged(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/List;)V

    goto/16 :goto_1

    .line 1373
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 1374
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmInVoiceCall(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1375
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/QosBearerSession;

    .line 1377
    invoke-virtual {v0}, Landroid/telephony/data/QosBearerSession;->getQos()Landroid/telephony/data/Qos;

    move-result-object v2

    instance-of v3, v2, Landroid/telephony/data/EpsQos;

    if-eqz v3, :cond_2

    check-cast v2, Landroid/telephony/data/EpsQos;

    invoke-virtual {v2}, Landroid/telephony/data/EpsQos;->getQci()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 1378
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmInVoiceCall(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    goto :goto_0

    .line 1380
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/data/QosBearerSession;->getQos()Landroid/telephony/data/Qos;

    move-result-object v0

    instance-of v2, v0, Landroid/telephony/data/NrQos;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/telephony/data/NrQos;

    invoke-virtual {v0}, Landroid/telephony/data/NrQos;->get5Qi()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1381
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmInVoiceCall(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1386
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsTimerResetEnabledOnVoiceQos(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmInVoiceCall(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1387
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "Device in voice call, reset all timers"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1393
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mhandleVolteCall(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_1

    .line 1361
    :pswitch_7
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 1362
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsDeviceIdleMode(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1364
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsDeviceIdleMode changed to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsDeviceIdleMode(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1366
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsDeviceIdleMode(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1367
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "Reset timers since device is in idle mode."

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1368
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1370
    :cond_4
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionToCurrentState(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_1

    .line 1353
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1354
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdatePhysicalChannelConfigs(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/List;)V

    .line 1355
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misUsingPhysicalChannelConfigForRrcDetection(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1356
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetPhysicalLinkStatusFromPhysicalChannelConfig(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1358
    :cond_5
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionToCurrentState(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_1

    .line 1348
    :pswitch_9
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "Reset timers since preferred network mode changed."

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1349
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1350
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionToCurrentState(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_1

    .line 1322
    :pswitch_a
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "Reset timers since radio is off or unavailable."

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1323
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1324
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmRatchetedNrBands(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 1325
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmRatchetedNrBandwidths(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1326
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmLastAnchorNrCellId(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1327
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmDoesPccListIndicateIdle(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1328
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsNrAdvancedAllowedByPco(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1329
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmInVoiceCall(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1330
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalChannelConfigs(Lcom/android/internal/telephony/NetworkTypeController;Ljava/util/List;)V

    .line 1333
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1336
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mstopUCRefreshTimer(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1337
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIs5GUCToidle(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1338
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsUpdateToUCIconInIdle(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1341
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetUwDsqEvent(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1342
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmRilNrIconType(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1343
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmSoleBandwidth(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1345
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmLegacyState(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/NetworkTypeController$LegacyState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->transitionTo(Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_1

    .line 1306
    :pswitch_b
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Secondary timer expired for state: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmSecondaryTimerState(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1307
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsSecondaryTimerActive(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1308
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-wide/16 v3, 0x0

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmSecondaryTimerExpireTimestamp(Lcom/android/internal/telephony/NetworkTypeController;J)V

    .line 1309
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmSecondaryTimerState(Lcom/android/internal/telephony/NetworkTypeController;Ljava/lang/String;)V

    .line 1311
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsUwIratChanged(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1312
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inter-RAT timer expired and moved to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    .line 1313
    invoke-virtual {v3}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1312
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1314
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsUwIratChanged(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1317
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1318
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmLastShownNrDueToAdvancedBand(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1319
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mupdateOverrideNetworkType(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_1

    .line 1293
    :pswitch_c
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Primary timer expired for state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPrimaryTimerState(Lcom/android/internal/telephony/NetworkTypeController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1295
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsUwDsqEnabled(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1296
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mhandleVolteCall(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1297
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mhandleVolteEmergencyCall(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1299
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misUwDisqualifiedAndHandled(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_1

    .line 1303
    :cond_8
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/IState;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionWithSecondaryTimerTo(Lcom/android/internal/telephony/NetworkTypeController;Lcom/android/internal/telephony/IState;)V

    goto/16 :goto_1

    .line 1283
    :pswitch_d
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mparseCarrierConfigs(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1284
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "Reset timers since carrier configurations changed."

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1285
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1287
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mstopUCRefreshTimer(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1288
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monNrAdvBandIndiChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1290
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionToCurrentState(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto/16 :goto_1

    .line 1264
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 1265
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsPhysicalChannelConfigOn(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1267
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsPhysicalChannelConfigOn changed to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPhysicalChannelConfigOn(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1269
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsPhysicalChannelConfigOn(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 1271
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "Reset timers since physical channel config indications are off."

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1274
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmShow5GUC(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1275
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmRetainUC(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 1278
    :cond_9
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1280
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionToCurrentState(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_1

    .line 1258
    :pswitch_f
    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPhysicalLinkStatus(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 1260
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mprocessPendingPhysicalLinkStatusChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_1

    .line 1251
    :pswitch_10
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monServiceStateChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1252
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionToCurrentState(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1254
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monNrAdvBandIndiChanged(Lcom/android/internal/telephony/NetworkTypeController;)V

    goto :goto_1

    .line 1244
    :pswitch_11
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mregisterForAllEvents(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1245
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mparseCarrierConfigs(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1247
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCurrentCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mgetCidFromCellIdentity(Lcom/android/internal/telephony/NetworkTypeController;Landroid/telephony/CellIdentity;)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmCurrentCellId(Lcom/android/internal/telephony/NetworkTypeController;J)V

    goto :goto_1

    .line 1235
    :pswitch_12
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "Reset timers on state machine quitting."

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 1236
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1237
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$munRegisterForAllEvents(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1238
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->quit()V

    goto :goto_1

    .line 1231
    :pswitch_13
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mresetAllTimers(Lcom/android/internal/telephony/NetworkTypeController;)V

    .line 1232
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$DefaultState;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$mtransitionToCurrentState(Lcom/android/internal/telephony/NetworkTypeController;)V

    :cond_b
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
