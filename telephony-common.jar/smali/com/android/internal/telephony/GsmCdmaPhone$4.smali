.class Lcom/android/internal/telephony/GsmCdmaPhone$4;
.super Landroid/content/BroadcastReceiver;
.source "GsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/GsmCdmaPhone;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 467
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 471
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget p1, p1, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/16 v0, 0x9

    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result p1

    const-string v0, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    const-string v1, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    if-eqz p1, :cond_0

    .line 472
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 473
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 483
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBroadcastReceiver: action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;)V

    .line 485
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 486
    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    const-string v4, "android.telephony.extra.SLOT_INDEX"

    if-eqz v2, :cond_1

    .line 488
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget p1, p1, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p1, p2, :cond_5

    .line 489
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/16 p1, 0x2b

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 491
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 492
    const-string p1, "android.telecom.extra.CURRENT_TTY_MODE"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 494
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->-$$Nest$mupdateTtyMode(Lcom/android/internal/telephony/GsmCdmaPhone;I)V

    return-void

    .line 495
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 496
    const-string p1, "android.telecom.extra.TTY_PREFERRED_MODE"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 498
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->-$$Nest$mupdateUiTtyMode(Lcom/android/internal/telephony/GsmCdmaPhone;I)V

    return-void

    .line 499
    :cond_3
    const-string v0, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 500
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget p1, p1, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 503
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string v0, "android.telephony.extra.SIM_STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/GsmCdmaPhone;->-$$Nest$fputmSimState(Lcom/android/internal/telephony/GsmCdmaPhone;I)V

    .line 505
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->-$$Nest$fgetmSimState(Lcom/android/internal/telephony/GsmCdmaPhone;)I

    move-result p1

    const/4 p2, 0x0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 506
    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->-$$Nest$mcurrentSlotSubIdChanged(Lcom/android/internal/telephony/GsmCdmaPhone;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 507
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    return-void

    .line 509
    :cond_4
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-static {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->-$$Nest$fgetmSimState(Lcom/android/internal/telephony/GsmCdmaPhone;)I

    move-result p1

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget p1, p1, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const-string v0, "DSG"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 510
    invoke-static {p1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 511
    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->telephony_default_networkmode_automatic()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_5

    .line 512
    iget-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 513
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->telephony_default_networkmode_automatic(Ljava/lang/Boolean;)V

    .line 514
    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaPhone$4;->this$0:Lcom/android/internal/telephony/GsmCdmaPhone;

    const-string p1, "SET_NETWORK_SELECTION_AUTOMATIC: set to automatic for DSG"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->-$$Nest$mlogd(Lcom/android/internal/telephony/GsmCdmaPhone;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
