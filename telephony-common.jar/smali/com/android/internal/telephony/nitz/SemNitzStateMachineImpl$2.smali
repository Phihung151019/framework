.class Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "SemNitzStateMachineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/NitzStateMachine$DeviceState;Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$NitzSignalInputFilterPredicate;Lcom/android/internal/telephony/nitz/NitzStateMachineImpl$TimeZoneSuggester;Lcom/android/internal/telephony/nitz/NitzStateMachineImpl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$2;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 141
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$2;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$mlog(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 150
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$2;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-static {p1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 151
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "android.telephony.extra.ACTIVE_SIM_SUPPORTED_COUNT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-lt p1, p2, :cond_3

    .line 153
    invoke-static {}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$sfgetmNeedMultiTimezonePopup()Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$2;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-static {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void

    .line 146
    :pswitch_1
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$2;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-static {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$mprepareMultiTimezonePopup(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6311576f -> :sswitch_2
        0x2f94f923 -> :sswitch_1
        0x412a6228 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
