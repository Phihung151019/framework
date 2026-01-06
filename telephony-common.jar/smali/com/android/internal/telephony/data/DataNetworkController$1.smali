.class Lcom/android/internal/telephony/data/DataNetworkController$1;
.super Landroid/content/BroadcastReceiver;
.source "DataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataNetworkController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataNetworkController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 547
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/16 p1, 0x9

    .line 551
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent.getAction() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V

    .line 554
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "KTT"

    const-string v2, "call onTrySetupData cause of received intent retrySetupData"

    const/4 v3, 0x1

    const/4 v4, 0x5

    const-string v5, "phone"

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_0
    move v0, v6

    goto/16 :goto_1

    :sswitch_0
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string v8, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v8, "com.samsung.knox.action.KNOX_MMS_CONTROL"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, p1

    goto/16 :goto_1

    :sswitch_3
    const-string v8, "com.samsung.action.RETRY_LOST_CONN_IMT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v8, "com.samsung.action.SIM_ICCID_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_5
    const-string v8, "android.intent.action.retrySetupData"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v8, "com.sec.android.UsimRegistrationKOR.UsimDownload.end"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v0, v4

    goto :goto_1

    :sswitch_7
    const-string v8, "android.intent.action.ACTION_DATA_CALL_SETUP_RETRY"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_8
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_9
    const-string v8, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_a
    const-string v8, "com.samsung.carrier.action.CARRIER_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    move v0, v3

    goto :goto_1

    :sswitch_b
    const-string v8, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    move v0, v7

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 656
    :pswitch_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmDataAllowPopup(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/data/DataAllowPopup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->onBootCompleted()V

    return-void

    .line 681
    :pswitch_1
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    const-string v0, "setPhoneId"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne p1, v0, :cond_11

    .line 682
    const-string p1, "setMmsControlFlag"

    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 683
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataNetworkController;->setKnoxMmsControl(Z)V

    return-void

    .line 690
    :pswitch_2
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 691
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-ne p1, v0, :cond_11

    .line 692
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    const-string v0, "cid"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fputmRetryCid(Lcom/android/internal/telephony/data/DataNetworkController;I)V

    .line 693
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->retryLostConnImmediately()V

    return-void

    .line 662
    :pswitch_3
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    const-string p2, "set data_enabled to false due to tariff change"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V

    .line 663
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmDataAllowPopup(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/data/DataAllowPopup;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataAllowPopup;->initDataAllowPopupForTariffChange()V

    return-void

    .line 636
    :pswitch_4
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-virtual {p2, v5, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 637
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    if-ne p1, p2, :cond_11

    .line 638
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V

    .line 639
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_RETRY:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 594
    :pswitch_5
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "SKT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "LUC"

    const-string p2, "KOO"

    const-string v0, "SKC"

    const-string v1, "KTC"

    filled-new-array {v0, v1, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 595
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->isSalesCodeSpecific([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 596
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_RETRY:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 622
    :pswitch_6
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_4

    .line 625
    :cond_c
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-virtual {p2, v5, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 626
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p2

    if-ne p1, p2, :cond_11

    .line 627
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p1, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V

    .line 628
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    sget-object p1, Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;->DATA_RETRY_PERMANENT:Lcom/android/internal/telephony/data/DataEvaluation$DataEvaluationReason;

    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 604
    :pswitch_7
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "LGT"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 606
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    .line 605
    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 607
    :cond_d
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetworkController;->getAirplaneMode()Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmDataSettingsManager(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object p1

    .line 609
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabledInternal()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmDataAllowPopup(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/data/DataAllowPopup;

    move-result-object p1

    .line 611
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->isWaitingForUserPress()Z

    move-result p1

    if-nez p1, :cond_11

    .line 612
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    const-string p2, "DATA : air plane mode is disabled "

    invoke-static {p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V

    .line 613
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmDataAllowPopup(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/data/DataAllowPopup;

    move-result-object p0

    const-string p1, "apmModeOff"

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/data/DataAllowPopup;->setNeedRoamingDataAllowPopup(ZLjava/lang/String;)V

    return-void

    .line 568
    :pswitch_8
    const-string v0, "android.telephony.extra.SLOT_INDEX"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 570
    const-string v1, "android.telephony.extra.SIM_STATE"

    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 572
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    if-ne v1, v0, :cond_e

    .line 573
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-virtual {p0, p1, p2, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 574
    :cond_e
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p1, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mvalidateSlotId(Lcom/android/internal/telephony/data/DataNetworkController;I)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 575
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    const/16 p1, 0x26

    invoke-virtual {p0, p1, p2, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 668
    :pswitch_9
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    const-string v0, "Carrier Changed so update Network Slice State"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V

    .line 669
    const-string p1, "com.samsung.carrier.extra.CARRIER_PHONE_ID"

    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 670
    const-string v0, "com.samsung.carrier.extra.CARRIER_STATE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 671
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/DataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-ne p1, v0, :cond_11

    const-string p1, "UPDATED"

    .line 672
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 673
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    const-string p2, "Carrier Changed so update Network Slice PDNs"

    invoke-static {p1, p2}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V

    .line 674
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    const/16 p1, 0x24

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 583
    :pswitch_a
    const-string p1, "tetherArray"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 584
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTetherStateChanged, tethered = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTetherRequested = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {v1}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmTetherRequested(Lcom/android/internal/telephony/data/DataNetworkController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataNetworkController;Ljava/lang/String;)V

    .line 586
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    invoke-static {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->-$$Nest$fgetmTetherRequested(Lcom/android/internal/telephony/data/DataNetworkController;)Z

    move-result p2

    if-lez p1, :cond_f

    move v0, v3

    goto :goto_2

    :cond_f
    move v0, v7

    :goto_2
    if-eq p2, v0, :cond_11

    .line 587
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/DataNetworkController;

    if-lez p1, :cond_10

    goto :goto_3

    :cond_10
    move v3, v7

    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/data/DataNetworkController;->onTetherStateChanged(Z)V

    :cond_11
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6898c375 -> :sswitch_b
        -0x6695ea54 -> :sswitch_a
        -0x44ff4dd4 -> :sswitch_9
        -0x402b4235 -> :sswitch_8
        -0x36d48c4a -> :sswitch_7
        -0x362f2365 -> :sswitch_6
        -0x16d121fc -> :sswitch_5
        -0x19c1e66 -> :sswitch_4
        0x75543aa -> :sswitch_3
        0x11f5d795 -> :sswitch_2
        0x272c3142 -> :sswitch_1
        0x2f94f923 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method
