.class Lcom/android/internal/telephony/NetworkTypeController$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTypeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NetworkTypeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/NetworkTypeController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/NetworkTypeController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :goto_0
    move v1, v3

    goto :goto_1

    :sswitch_0
    const-string v4, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v4, "com.samsung.intent.action.LTE_BAND"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v4, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "com.samsung.telephony.event.EVENT_ICON_UW_DSQ_CHANGED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, p1

    goto :goto_1

    :sswitch_4
    const-string v4, "com.samsung.carrier.action.CARRIER_CHANGED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 214
    :pswitch_0
    const-string v1, "request_status"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 215
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "ACTION_DEVICE_CONFIG_UPDATED"

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 216
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p2, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmIsDeviceConfigUpdated(Lcom/android/internal/telephony/NetworkTypeController;Z)V

    .line 217
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void

    .line 222
    :pswitch_1
    const-string p1, "BAND"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 223
    iget-object p2, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fputmPrimaryBand(Lcom/android/internal/telephony/NetworkTypeController;I)V

    .line 224
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_LTE_BAND_CHANGED mPrimaryBand: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPrimaryBand(Lcom/android/internal/telephony/NetworkTypeController;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    return-void

    .line 209
    :pswitch_2
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void

    .line 232
    :pswitch_3
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    const-string v0, "ACTION_UW_DSQ_CHANGED"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/NetworkTypeController;->log(Ljava/lang/String;)V

    .line 233
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmIsUwDsqEnabled(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$misUwDsqNotRequired(Lcom/android/internal/telephony/NetworkTypeController;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 236
    :cond_5
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monReceiveUwDsqNrAdvancedDisabled(Lcom/android/internal/telephony/NetworkTypeController;Landroid/content/Intent;)V

    .line 237
    const-string p1, "SlotIdx"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {v0}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/NetworkTypeController;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_6

    goto :goto_2

    .line 240
    :cond_6
    iget-object p1, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monReceiveUwDsqOutOfNrAdvanced(Lcom/android/internal/telephony/NetworkTypeController;Landroid/content/Intent;)V

    .line 241
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/NetworkTypeController;->-$$Nest$monReceiveIconTypeChanged(Lcom/android/internal/telephony/NetworkTypeController;Landroid/content/Intent;)V

    :cond_7
    :goto_2
    return-void

    .line 228
    :pswitch_4
    iget-object p0, p0, Lcom/android/internal/telephony/NetworkTypeController$1;->this$0:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6695ea54 -> :sswitch_4
        0x232e91d0 -> :sswitch_3
        0x33e5d967 -> :sswitch_2
        0x42b5455e -> :sswitch_1
        0x5d219d68 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
