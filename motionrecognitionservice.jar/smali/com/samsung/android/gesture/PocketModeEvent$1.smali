.class Lcom/samsung/android/gesture/PocketModeEvent$1;
.super Landroid/os/Handler;
.source "PocketModeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gesture/PocketModeEvent;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/PocketModeEvent;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/PocketModeEvent;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/gesture/PocketModeEvent;
    .param p2, "arg0"    # Landroid/os/Looper;
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

    .line 273
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .line 276
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v4, 0x6

    const/4 v5, 0x3

    const/16 v6, 0xa

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v9, 0x0

    const/4 v10, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 505
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_SCREEN_OFF"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->handleScreenOff()V

    .line 507
    goto/16 :goto_2

    .line 501
    :pswitch_1
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_SCREEN_ON"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->handleScreenOn()V

    .line 503
    goto/16 :goto_2

    .line 498
    :pswitch_2
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpam()Lcom/samsung/android/gesture/PocketAPDManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketAPDManager;->printTouchData()V

    .line 499
    goto/16 :goto_2

    .line 494
    :pswitch_3
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_STOP_EDGE_LIGHTING"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/PocketModeEvent;->injectDataToSensorHub(F)V

    .line 496
    goto/16 :goto_2

    .line 490
    :pswitch_4
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_START_EDGE_LIGHTING"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    const/high16 v3, 0x42ca0000    # 101.0f

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/PocketModeEvent;->injectDataToSensorHub(F)V

    .line 492
    goto/16 :goto_2

    .line 353
    :pswitch_5
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    sput-boolean v9, Lcom/samsung/android/gesture/PocketModeEvent;->isTimeoutDelayInvalidEnabled:Z

    .line 355
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/gesture/PocketDumpOverlayInfo;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v4

    iget-object v6, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmShowOverlayTime(Lcom/samsung/android/gesture/PocketModeEvent;)J

    move-result-wide v6

    sget v8, Lcom/samsung/android/gesture/PocketModeEvent;->mPopupReleaseReason:I

    iget-object v9, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v9}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuxOutDump(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v9

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/gesture/PocketDumpOverlayInfo;-><init>(JJII)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 356
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$misFlipFolded(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 357
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.KSO_CLOSE_POPUP_SUB"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 358
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_DISABLE_TIMEOUT_DELAY_INVALID"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketSensitivityManager;->isPocketPosSensorReceived()Z

    move-result v2

    if-ne v2, v10, :cond_d

    .line 360
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketSensitivityManager;->getVpPosData()Lcom/samsung/android/gesture/VirtualPocketPosData;

    move-result-object v2

    .line 361
    .local v2, "posData":Lcom/samsung/android/gesture/VirtualPocketPosData;
    if-eqz v2, :cond_0

    .line 362
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/gesture/PocketDumpVirtualPos;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v5

    iget-object v7, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v7}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v7

    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getState()I

    move-result v8

    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getposState()I

    move-result v9

    .line 363
    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getposCase()I

    move-result v10

    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getpedoState()I

    move-result v11

    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getpedoCase()I

    move-result v12

    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getversion()I

    move-result v13

    invoke-direct/range {v4 .. v13}, Lcom/samsung/android/gesture/PocketDumpVirtualPos;-><init>(JIIIIIII)V

    .line 362
    invoke-virtual {v3, v4}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 365
    .end local v2    # "posData":Lcom/samsung/android/gesture/VirtualPocketPosData;
    :cond_0
    goto/16 :goto_2

    .line 312
    :pswitch_6
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 313
    goto/16 :goto_2

    .line 314
    :cond_1
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 316
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$misFlipFolded(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 317
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.KSO_SHOW_POPUP_SUB"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 318
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_ENABLE_TIMEOUT_DELAY_INVALID"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketSensitivityManager;->isPocketPosSensorReceived()Z

    move-result v2

    if-ne v2, v10, :cond_2

    .line 320
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketSensitivityManager;->getVpPosData()Lcom/samsung/android/gesture/VirtualPocketPosData;

    move-result-object v2

    .line 321
    .restart local v2    # "posData":Lcom/samsung/android/gesture/VirtualPocketPosData;
    if-eqz v2, :cond_2

    .line 322
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v3

    new-instance v11, Lcom/samsung/android/gesture/PocketDumpVirtualPos;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v12

    iget-object v4, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v4}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v14

    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getState()I

    move-result v15

    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getposState()I

    move-result v16

    .line 323
    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getposCase()I

    move-result v17

    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getpedoState()I

    move-result v18

    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getpedoCase()I

    move-result v19

    invoke-virtual {v2}, Lcom/samsung/android/gesture/VirtualPocketPosData;->getversion()I

    move-result v20

    invoke-direct/range {v11 .. v20}, Lcom/samsung/android/gesture/PocketDumpVirtualPos;-><init>(JIIIIIII)V

    .line 322
    invoke-virtual {v3, v11}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 327
    .end local v2    # "posData":Lcom/samsung/android/gesture/VirtualPocketPosData;
    :cond_2
    sput-boolean v10, Lcom/samsung/android/gesture/PocketModeEvent;->isTimeoutDelayInvalidEnabled:Z

    .line 328
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/gesture/PocketBigDataManager;->setPopupStartTime(J)V

    .line 329
    goto/16 :goto_2

    .line 485
    :pswitch_7
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 486
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_DISABLE_INSENSITIVE_MODE"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->DISABLED:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/PocketSensitivityManager;->setSensitivityState(Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;)V

    .line 488
    goto/16 :goto_2

    .line 480
    :pswitch_8
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 481
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_ENABLE_INSENSITIVE_MODE"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->ENABLED:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/PocketSensitivityManager;->setSensitivityState(Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;)V

    .line 483
    goto/16 :goto_2

    .line 475
    :pswitch_9
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 476
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_UNREGISTER_POCKET_POSITION_SENSOR"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketSensitivityManager;->unregisterPocketPositionSensor()V

    .line 478
    goto/16 :goto_2

    .line 469
    :pswitch_a
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 470
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_REGISTER_POCKET_POSITION_SENSOR"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketSensitivityManager;->registerPocketPositionSensor()V

    .line 472
    goto/16 :goto_2

    .line 463
    :pswitch_b
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 464
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_RELEASE_POCKET_MODE"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.RELEASE_POCKET_MODE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 466
    goto/16 :goto_2

    .line 457
    :pswitch_c
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 458
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_RECOG_POCKET_MODE"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.RECOG_POCKET_MODE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 460
    goto/16 :goto_2

    .line 451
    :pswitch_d
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 452
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_UNREGISTER_LIGHT_SENSOR"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->unregisterLightSensor()V

    .line 454
    goto/16 :goto_2

    .line 444
    :pswitch_e
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 445
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_PHYSICAL_PROX_DISABLE"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterPhysicalProximitySensorForA71_5g()V

    .line 447
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2, v10}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmIsAvailableTiltUse(Lcom/samsung/android/gesture/PocketModeEvent;Z)V

    .line 448
    goto/16 :goto_2

    .line 434
    :pswitch_f
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 435
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_HOVER_RECHECK_DISABLE"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    sget-boolean v2, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-nez v2, :cond_3

    .line 437
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2, v9}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmIsPocketOutHover(Lcom/samsung/android/gesture/PocketModeEvent;Z)V

    goto/16 :goto_2

    .line 439
    :cond_3
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "popup still showing"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    goto/16 :goto_2

    .line 428
    :pswitch_10
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 429
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_SUBDISPLAY_RECHECK_DISABLE"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    sput-boolean v9, Lcom/samsung/android/gesture/PocketModeEvent;->mIsPocketOutSubDisp:Z

    .line 431
    goto/16 :goto_2

    .line 422
    :pswitch_11
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 423
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_REGISTER_POCKET_SENSOR"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->registerPocketProxySensor()V

    .line 425
    goto/16 :goto_2

    .line 416
    :pswitch_12
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 417
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_UNREGISTER_POCKET_SENSOR"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterPocketProxySensor()V

    .line 419
    goto/16 :goto_2

    .line 410
    :pswitch_13
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 411
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_POCKET_RECOGNITION_TIMEOUT"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/samsung/android/gesture/PocketProximityManager;->setRunningTouchSensor(Z)V

    .line 413
    goto/16 :goto_2

    .line 404
    :pswitch_14
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 405
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_STOP_SENSING"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->unregisterSensor()V

    .line 407
    goto/16 :goto_2

    .line 331
    :pswitch_15
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 332
    sput-boolean v9, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    .line 333
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v2

    new-instance v11, Lcom/samsung/android/gesture/PocketDumpOverlayInfo;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v12

    iget-object v3, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmShowOverlayTime(Lcom/samsung/android/gesture/PocketModeEvent;)J

    move-result-wide v14

    sget v16, Lcom/samsung/android/gesture/PocketModeEvent;->mPopupReleaseReason:I

    iget-object v3, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuxOutDump(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v17

    invoke-direct/range {v11 .. v17}, Lcom/samsung/android/gesture/PocketDumpOverlayInfo;-><init>(JJII)V

    invoke-virtual {v2, v11}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 342
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.KSO_CLOSE_POPUP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 343
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_REMOVE_POPUP"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/gesture/PocketBigDataManager;->setPopupEndTime(J)V

    .line 347
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpam()Lcom/samsung/android/gesture/PocketAPDManager;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v7}, Lcom/samsung/android/gesture/PocketAPDManager;->setEndTimeEachMode(JI)V

    .line 348
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v2

    if-ne v2, v5, :cond_d

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->alertProxAvailable()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningAlertProxSensor()Z

    move-result v2

    if-ne v2, v10, :cond_d

    .line 349
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterAlertProxSensor()V

    goto/16 :goto_2

    .line 369
    :pswitch_16
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 370
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetplm()Lcom/samsung/android/gesture/PocketLogManager;

    move-result-object v2

    new-instance v11, Lcom/samsung/android/gesture/PocketDumpOverlayInfo;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/gesture/PocketDeviceManager;->getScreenOnTime()J

    move-result-wide v12

    iget-object v14, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v14}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmShowOverlayTime(Lcom/samsung/android/gesture/PocketModeEvent;)J

    move-result-wide v14

    sget v16, Lcom/samsung/android/gesture/PocketModeEvent;->mPopupReleaseReason:I

    iget-object v3, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmLuxDump(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v17

    invoke-direct/range {v11 .. v17}, Lcom/samsung/android/gesture/PocketDumpOverlayInfo;-><init>(JJII)V

    invoke-virtual {v2, v11}, Lcom/samsung/android/gesture/PocketLogManager;->addDump(Lcom/samsung/android/gesture/PocketDumpData;)V

    .line 371
    sput-boolean v9, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    .line 372
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_CLICK_POPUP_OK"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v2

    const-wide/16 v11, 0x0

    invoke-virtual {v2, v8, v11, v12}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 375
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v2

    if-ne v2, v4, :cond_4

    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 376
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 378
    :cond_4
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSensorType()I

    move-result v2

    if-ne v2, v5, :cond_7

    .line 379
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v2

    if-ne v2, v10, :cond_5

    .line 380
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->resetPocketProxySensor()V

    .line 382
    :cond_5
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningAlertProxSensor()Z

    move-result v2

    if-ne v2, v10, :cond_6

    .line 383
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->unregisterAlertProxSensor()V

    .line 385
    :cond_6
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->resetPocketProxyCluster()V

    .line 387
    sget v2, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    if-ne v2, v8, :cond_8

    .line 388
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketSensitivityManager;->isDualFlipEnabled()Z

    move-result v2

    if-ne v2, v10, :cond_8

    .line 389
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketSensitivityManager;->disableDualFlipMode()V

    goto :goto_0

    .line 391
    :cond_7
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v2

    if-ne v2, v7, :cond_8

    .line 392
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/samsung/android/gesture/PocketProximityManager;->writeProxInt(I)I

    .line 393
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxCurType(I)V

    .line 395
    :cond_8
    :goto_0
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    invoke-virtual {v2, v8}, Lcom/samsung/android/gesture/PocketBigDataManager;->setRMReason(I)V

    .line 396
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/gesture/PocketBigDataManager;->setPopupEndTime(J)V

    .line 397
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpam()Lcom/samsung/android/gesture/PocketAPDManager;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v7}, Lcom/samsung/android/gesture/PocketAPDManager;->setEndTimeEachMode(JI)V

    .line 398
    sget v2, Lcom/samsung/android/gesture/PocketModeEvent;->mAPDFeatureLevel:I

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpam()Lcom/samsung/android/gesture/PocketAPDManager;

    if-ne v2, v8, :cond_d

    .line 399
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpam()Lcom/samsung/android/gesture/PocketAPDManager;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v10}, Lcom/samsung/android/gesture/PocketAPDManager;->setEndTimeEachMode(JI)V

    goto/16 :goto_2

    .line 287
    :pswitch_17
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketDeviceManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_9

    .line 288
    goto/16 :goto_2

    .line 289
    :cond_9
    sget v2, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v3, 0x14b

    if-ne v2, v3, :cond_a

    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$mgetLIDState(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v2

    if-nez v2, :cond_a

    .line 290
    goto/16 :goto_2

    .line 291
    :cond_a
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmShowOverlayTime(Lcom/samsung/android/gesture/PocketModeEvent;J)V

    .line 292
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 293
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.KSO_SHOW_POPUP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 294
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_SHOW_POPUP"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    sput-boolean v10, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    .line 296
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/gesture/PocketBigDataManager;->setPopupStartTime(J)V

    .line 297
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpam()Lcom/samsung/android/gesture/PocketAPDManager;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v7}, Lcom/samsung/android/gesture/PocketAPDManager;->setStartTimeEachMode(JI)V

    .line 298
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v2

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_b

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningAlertProxSensor()Z

    move-result v2

    if-nez v2, :cond_b

    .line 299
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->registerAlertProxSensor()V

    goto :goto_1

    .line 301
    :cond_b
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxCurType()I

    move-result v2

    if-ne v2, v8, :cond_c

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getProxSubType()I

    move-result v2

    const/16 v3, 0x33

    if-ne v2, v3, :cond_c

    .line 302
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 303
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->registerPhysicalProximitySensorForA71_5g()V

    .line 304
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2, v10}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmIsAvailableTiltUse(Lcom/samsung/android/gesture/PocketModeEvent;Z)V

    .line 307
    :cond_c
    :goto_1
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetelState()Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;->ACTIVE:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    if-ne v2, v3, :cond_d

    .line 308
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    sget-object v3, Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;->NONE:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$mchangeEdgeLightingState(Lcom/samsung/android/gesture/PocketModeEvent;Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;)V

    goto :goto_2

    .line 278
    :pswitch_18
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpmm()Lcom/samsung/android/gesture/PocketMotionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketMotionManager;->requestToUpdateActivityTracker()V

    .line 280
    sput-boolean v9, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    .line 281
    sput-boolean v9, Lcom/samsung/android/gesture/PocketModeEvent;->isTimeoutDelayInvalidEnabled:Z

    .line 282
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2, v9}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputcurrentState(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 283
    iget-object v2, v0, Lcom/samsung/android/gesture/PocketModeEvent$1;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->registerSensor()V

    .line 284
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MSG_TYPE_START_SENSING"

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    nop

    .line 511
    :cond_d
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
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
