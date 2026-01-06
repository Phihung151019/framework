.class Lcom/samsung/android/gesture/PocketModeEvent$8;
.super Landroid/content/BroadcastReceiver;
.source "PocketModeEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/PocketModeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/PocketModeEvent;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/PocketModeEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/gesture/PocketModeEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2021
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2025
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2027
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketModeEvent;->checkSettingEnable()V

    .line 2028
    sget-boolean v1, Lcom/samsung/android/gesture/PocketModeEvent;->mIsSettingEnabled:Z

    if-nez v1, :cond_0

    .line 2029
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PocketModeSetting is off "

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    return-void

    .line 2033
    :cond_0
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketDeviceManager;->isFactoryBinary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2034
    return-void

    .line 2037
    :cond_1
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ")"

    if-eqz v1, :cond_2

    .line 2038
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_BOOT_COMPLETED("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%.1f"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "b"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2040
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketModeEvent;->handleBootComplete()V

    .line 2043
    :cond_2
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    .line 2044
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    const-string v6, "why"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v1, v5}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 2045
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v5}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/gesture/PocketProximityManager;->setWakeUpReason(I)V

    .line 2046
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_SCREEN_ON(by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v6}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmWakeUpReason(Lcom/samsung/android/gesture/PocketModeEvent;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v1}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmIsInitalized(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 2048
    :cond_3
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto/16 :goto_2

    .line 2050
    :cond_4
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2051
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTION_SCREEN_OFF"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v1}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmIsInitalized(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v1

    if-nez v1, :cond_5

    return-void

    .line 2053
    :cond_5
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto/16 :goto_2

    .line 2055
    :cond_6
    const-string v1, "com.samsung.intent.action.KSO_CLICK_OK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v6, 0x5

    if-eqz v1, :cond_7

    .line 2056
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v1

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 2057
    sput v6, Lcom/samsung/android/gesture/PocketModeEvent;->mPopupReleaseReason:I

    .line 2058
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTENT_KSO_CLICK_OK"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2059
    :cond_7
    const-string v1, "com.samsung.android.intent.action.IRIS_LED_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2060
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->TURN_ON:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputirisState(Lcom/samsung/android/gesture/PocketModeEvent;Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;)V

    .line 2061
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTENT_KSO_IRIS_LED_ON"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2062
    :cond_8
    const-string v1, "com.samsung.android.intent.action.IRIS_LED_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2063
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v1}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetirisState(Lcom/samsung/android/gesture/PocketModeEvent;)Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->TURN_ON:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    if-ne v1, v2, :cond_18

    .line 2064
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;->TURN_OFF:Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputirisState(Lcom/samsung/android/gesture/PocketModeEvent;Lcom/samsung/android/gesture/PocketModeEvent$IRIS_STATE;)V

    .line 2065
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmIrisLedOffTime(Lcom/samsung/android/gesture/PocketModeEvent;J)V

    .line 2066
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTENT_KSO_IRIS_LED_OFF"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2068
    :cond_9
    const-string v1, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_a

    .line 2069
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HQM DATA REQUEST"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 2071
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketBigDataManager;->printBigData()V

    .line 2073
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/PocketModeEvent;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    const-string v3, "sm"

    const-string v4, "PKMD"

    invoke-virtual {v1, v2, v4, v7, v3}, Lcom/samsung/android/gesture/PocketBigDataManager;->sendHWParamServer(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 2074
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpbdm()Lcom/samsung/android/gesture/PocketBigDataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketBigDataManager;->initialize()V

    goto/16 :goto_2

    .line 2076
    :cond_a
    const-string v1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2077
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    const-string v2, "INTENT_SCREEN_ON_BY_PROXIMITY"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$mstopVirtualPocketOperation(Lcom/samsung/android/gesture/PocketModeEvent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2078
    :cond_b
    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2079
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    const-string v2, "INTENT_SCREEN_OFF_BY_PROXIMITY"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$mstopVirtualPocketOperation(Lcom/samsung/android/gesture/PocketModeEvent;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2080
    :cond_c
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2081
    const-string v1, "temperature"

    const/16 v2, -0x64

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2082
    .local v1, "temperature":I
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2, v1}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputbatteryTemp(Lcom/samsung/android/gesture/PocketModeEvent;I)V

    .line 2083
    .end local v1    # "temperature":I
    goto/16 :goto_2

    :cond_d
    const-string v1, "com.samsung.android.bixby.intent.action.POCKET_MODE_CHECK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2084
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTENT_BIXBY_UPDATED"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v1, v5}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmIsOccurTouch(Lcom/samsung/android/gesture/PocketModeEvent;Z)V

    goto/16 :goto_2

    .line 2086
    :cond_e
    const-string v1, "com.samsung.keyguard.FACE_UNLOCK_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2087
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTENT_ACTION_FACE_UNLOCK"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v1}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetisRunning(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v1

    if-ne v1, v5, :cond_18

    .line 2089
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketModeEvent;->handlePocketOut()V

    .line 2090
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->isRunningPocketSensor()Z

    move-result v1

    if-ne v1, v5, :cond_18

    .line 2091
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetppm()Lcom/samsung/android/gesture/PocketProximityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->resetPocketProxySensor()V

    goto/16 :goto_2

    .line 2094
    :cond_f
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2095
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTENT_ACTION_USER_SWITCHED"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketModeEvent;->checkSensorType()V

    .line 2097
    sget-boolean v1, Lcom/samsung/android/gesture/PocketModeEvent;->mIsSettingEnabled:Z

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fgetmIsSettingEnabledPrev(Lcom/samsung/android/gesture/PocketModeEvent;)Z

    move-result v2

    if-eq v1, v2, :cond_18

    .line 2098
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketModeEvent;->checkRegisterProximitySensor()V

    goto/16 :goto_2

    .line 2100
    :cond_10
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v8, 0x4

    if-eqz v1, :cond_14

    .line 2101
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v3, "INTENT_ACTION_USER_PRESENT"

    invoke-static {v1, v3}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2102
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    invoke-static {v1, v7}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$fputmIsLockScreenState(Lcom/samsung/android/gesture/PocketModeEvent;Z)V

    .line 2104
    sget v1, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    if-eq v1, v5, :cond_12

    sget v1, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    if-eq v1, v2, :cond_12

    sget v1, Lcom/samsung/android/gesture/PocketModeEvent;->mSensitivityFeatureLevel:I

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    if-ne v1, v8, :cond_11

    goto :goto_0

    .line 2108
    :cond_11
    sget v1, Lcom/samsung/android/gesture/PocketModeEvent;->mFeatureLevel:I

    const/16 v2, 0x14c

    if-ne v1, v2, :cond_13

    .line 2109
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketSensitivityManager;->isDualFlipEnabled()Z

    move-result v1

    if-ne v1, v5, :cond_13

    .line 2110
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketSensitivityManager;->disableDualFlipMode()V

    goto :goto_1

    .line 2105
    :cond_12
    :goto_0
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpsm()Lcom/samsung/android/gesture/PocketSensitivityManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;->END:Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/PocketSensitivityManager;->setSensitivityState(Lcom/samsung/android/gesture/PocketSensitivityManager$SENSITIVITY_STATE;)V

    .line 2106
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "END_INSENSITIVE_MODE"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    :cond_13
    :goto_1
    sget v1, Lcom/samsung/android/gesture/PocketModeEvent;->mAPDFeatureLevel:I

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpam()Lcom/samsung/android/gesture/PocketAPDManager;

    if-ne v1, v6, :cond_18

    .line 2113
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[APD] unregister by INTENT_ACTION_USER_PRESENT"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpam()Lcom/samsung/android/gesture/PocketAPDManager;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v5}, Lcom/samsung/android/gesture/PocketAPDManager;->setEndTimeEachMode(JI)V

    .line 2115
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpam()Lcom/samsung/android/gesture/PocketAPDManager;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/gesture/PocketAPDManager;->setEndTimeEachMode(JI)V

    .line 2116
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpam()Lcom/samsung/android/gesture/PocketAPDManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketAPDManager;->unregisterLightSensorForAPD()V

    .line 2117
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpam()Lcom/samsung/android/gesture/PocketAPDManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketAPDManager;->unregisterAPD()V

    goto/16 :goto_2

    .line 2119
    :cond_14
    const-string v1, "com.android.systemui.edgelighting.start"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2120
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTENT_EDGE_LIGHTING_SHOW"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketDeviceManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetelState()Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;->NONE:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    if-ne v1, v2, :cond_18

    .line 2122
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;->SHOWN:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$mchangeEdgeLightingState(Lcom/samsung/android/gesture/PocketModeEvent;Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;)V

    .line 2123
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto :goto_2

    .line 2125
    :cond_15
    const-string v1, "com.android.systemui.edgelighting.stop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2126
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INTENT_EDGE_LIGHTING_REMOVE"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketModeEvent$8;->this$0:Lcom/samsung/android/gesture/PocketModeEvent;

    sget-object v2, Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;->NONE:Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$mchangeEdgeLightingState(Lcom/samsung/android/gesture/PocketModeEvent;Lcom/samsung/android/gesture/PocketModeEvent$EL_STATE;)V

    .line 2128
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    goto :goto_2

    .line 2129
    :cond_16
    const-string v1, "androidx.car.app.connection.action.CAR_CONNECTION_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2130
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTION_CAR_CONNECTION_UPDATED"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    sget-boolean v1, Lcom/samsung/android/gesture/PocketModeEvent;->isPopUpShowing:Z

    if-eqz v1, :cond_18

    .line 2132
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpdm()Lcom/samsung/android/gesture/PocketDeviceManager;

    move-result-object v1

    invoke-virtual {v1, v8, v3, v4}, Lcom/samsung/android/gesture/PocketDeviceManager;->sendMessage(IJ)V

    .line 2133
    sget v1, Lcom/samsung/android/gesture/PocketModeEvent;->mAPDFeatureLevel:I

    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetpam()Lcom/samsung/android/gesture/PocketAPDManager;

    if-ne v1, v6, :cond_18

    .line 2134
    sput v7, Lcom/samsung/android/gesture/PocketAPDManager;->popUpState:I

    goto :goto_2

    .line 2138
    :cond_17
    invoke-static {}, Lcom/samsung/android/gesture/PocketModeEvent;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "We don\'t use this"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2140
    :cond_18
    :goto_2
    return-void
.end method
