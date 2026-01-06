.class Lcom/samsung/android/gesture/MotionRecognitionSAR$1;
.super Landroid/content/BroadcastReceiver;
.source "MotionRecognitionSAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 595
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 599
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "com.sec.intent.action.SARDEVICE_CP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v1, "com.samsung.UsbOtgCableConnection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v1, "android.samsung.media.action.receiver_sar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_4
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :goto_0
    move v0, v4

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 668
    const-string v0, "MotionRecognitionService"

    const-string v1, "[SAR] not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 664
    :pswitch_0
    const-string v0, "Connect"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, "isConnected":Ljava/lang/String;
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SAR]  onReceive : USB_OTG_CABLE_CONNECTION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    goto/16 :goto_a

    .line 652
    .end local v0    # "isConnected":Ljava/lang/String;
    :pswitch_1
    const-string v0, "state"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 653
    .local v1, "state":I
    const-string v0, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SAR]  onReceive : ACTION_HEADSET_PLUG, state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensors(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 657
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensors(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;

    .line 658
    .local v3, "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    invoke-virtual {v3, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->onHeadSetStatusChanged(I)V

    .line 659
    .end local v3    # "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    goto :goto_2

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmProximitySAR(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmProximitySAR(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->onHeadSetStatusChanged(I)V

    .line 661
    :cond_2
    monitor-exit v2

    .line 662
    goto/16 :goto_a

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 644
    .end local v1    # "state":I
    :pswitch_2
    const-string v0, "MotionRecognitionService"

    const-string v1, "[SAR]  onReceive : ACTION_POWER_DISCONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensors(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 646
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensors(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;

    .line 647
    .local v2, "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->onTAStatusChanged(Z)V

    .line 648
    .end local v2    # "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    goto :goto_3

    .line 649
    :cond_3
    monitor-exit v1

    .line 650
    goto/16 :goto_a

    .line 649
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 636
    :pswitch_3
    const-string v0, "MotionRecognitionService"

    const-string v1, "[SAR]  onReceive : ACTION_POWER_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensors(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 638
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensors(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;

    .line 639
    .restart local v3    # "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    invoke-virtual {v3, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->onTAStatusChanged(Z)V

    .line 640
    .end local v3    # "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    goto :goto_4

    .line 641
    :cond_4
    monitor-exit v1

    .line 642
    goto/16 :goto_a

    .line 641
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 627
    :pswitch_4
    const-string v0, "plugged"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 628
    .local v1, "plugged":I
    const-string v0, "MotionRecognitionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SAR]  onReceive : ACTION_BATTERY_CHANGED, Plugged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensors(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 630
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensors(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;

    .line 631
    .local v5, "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    if-lez v1, :cond_5

    move v6, v2

    goto :goto_6

    :cond_5
    move v6, v3

    :goto_6
    invoke-virtual {v5, v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->onTAStatusChanged(Z)V

    .line 632
    .end local v5    # "s":Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
    goto :goto_5

    .line 633
    :cond_6
    monitor-exit v4

    .line 634
    goto/16 :goto_a

    .line 633
    :catchall_3
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    .line 622
    .end local v1    # "plugged":I
    :pswitch_5
    const-string v0, "android.samsung.media.extra.receiver"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 623
    .local v0, "isRCV":Z
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SAR]  onReceive : MEDIA_SAR :: isRCV = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmProximitySAR(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmProximitySAR(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->onReceiverChanged(Z)V

    goto/16 :goto_a

    .line 601
    .end local v0    # "isRCV":Z
    :pswitch_6
    const-string v0, "cmd"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 602
    .local v8, "callAction":Ljava/lang/String;
    const/4 v1, 0x0

    .line 604
    .local v1, "deviceID":I
    :try_start_4
    const-string v0, "device"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 607
    .end local v1    # "deviceID":I
    .local v0, "deviceID":I
    goto :goto_7

    .line 605
    .end local v0    # "deviceID":I
    .restart local v1    # "deviceID":I
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    move v0, v1

    .line 608
    .end local v1    # "deviceID":I
    .local v0, "deviceID":I
    :goto_7
    const/4 v1, 0x0

    .line 609
    .local v1, "slot":I
    const/4 v2, 0x0

    .line 610
    .local v2, "deviceExt":I
    const-string v3, "slot"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 611
    const-string v3, "slot"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    move v9, v1

    goto :goto_8

    .line 610
    :cond_7
    move v9, v1

    .line 613
    .end local v1    # "slot":I
    .local v9, "slot":I
    :goto_8
    const-string v1, "device_ext"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 614
    const-string v1, "device_ext"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v10, v2

    goto :goto_9

    .line 613
    :cond_8
    move v10, v2

    .line 616
    .end local v2    # "deviceExt":I
    .local v10, "deviceExt":I
    :goto_9
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SAR]  onReceive : SARDEVICE_CP, callAction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " deviceID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 617
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " slot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " device_ext = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 618
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 616
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    int-to-long v6, v0

    invoke-static/range {v5 .. v10}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$mcallSARDeviceID(Lcom/samsung/android/gesture/MotionRecognitionSAR;JLjava/lang/String;II)V

    .line 620
    nop

    .line 671
    .end local v0    # "deviceID":I
    .end local v8    # "callAction":Ljava/lang/String;
    .end local v9    # "slot":I
    .end local v10    # "deviceExt":I
    :cond_9
    :goto_a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7073f927 -> :sswitch_6
        -0x63ecb970 -> :sswitch_5
        -0x5bb23923 -> :sswitch_4
        -0x21f4771 -> :sswitch_3
        0x1d39695c -> :sswitch_2
        0x373e5fe2 -> :sswitch_1
        0x3cbf870b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
