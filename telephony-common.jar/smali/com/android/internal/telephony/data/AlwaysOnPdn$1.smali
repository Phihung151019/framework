.class Lcom/android/internal/telephony/data/AlwaysOnPdn$1;
.super Landroid/content/BroadcastReceiver;
.source "AlwaysOnPdn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/AlwaysOnPdn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/AlwaysOnPdn;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/AlwaysOnPdn;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent.getAction() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->-$$Nest$mlog(Lcom/android/internal/telephony/data/AlwaysOnPdn;Ljava/lang/String;)V

    .line 83
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 84
    const-string p1, "networkInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 85
    iget-object p2, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {p2, v1}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->-$$Nest$fputmIsWifiConnected(Lcom/android/internal/telephony/data/AlwaysOnPdn;Z)V

    .line 86
    iget-object p1, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NETWORK_STATE_CHANGED_ACTION: mIsWifiConnected="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    invoke-static {v0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->-$$Nest$fgetmIsWifiConnected(Lcom/android/internal/telephony/data/AlwaysOnPdn;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->-$$Nest$mlog(Lcom/android/internal/telephony/data/AlwaysOnPdn;Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    invoke-static {p1}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->-$$Nest$misNumericSysPropNotExist(Lcom/android/internal/telephony/data/AlwaysOnPdn;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 89
    iget-object p0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    const-string p1, "Numeric sysprop does not exist!"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->-$$Nest$mlog(Lcom/android/internal/telephony/data/AlwaysOnPdn;Ljava/lang/String;)V

    return-void

    .line 93
    :cond_1
    iget-object p0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    invoke-static {p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->-$$Nest$mshouldRequestAlwaysOnPdn(Lcom/android/internal/telephony/data/AlwaysOnPdn;)V

    return-void

    .line 94
    :cond_2
    const-string v0, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    iget-object p0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    iput-boolean v1, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn;->mIsSetAlwaysOnPdn:Z

    return-void

    .line 97
    :cond_3
    const-string v0, "com.sec.epdg.action.EPDG_CONFIGURATION_UPDATED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_5

    .line 98
    const-string p1, "phoneId"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 99
    const-string v0, "epdg_support"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 102
    :cond_4
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 103
    iget-object v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_EPDG_CONFIGURATION_UPDATED: epdg_support="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->-$$Nest$mlog(Lcom/android/internal/telephony/data/AlwaysOnPdn;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    invoke-static {v0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/AlwaysOnPdn;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 105
    iget-object p1, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->-$$Nest$fputmSupportVowifi(Lcom/android/internal/telephony/data/AlwaysOnPdn;Z)V

    .line 106
    iget-object p0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    invoke-static {p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->-$$Nest$mshouldRequestAlwaysOnPdn(Lcom/android/internal/telephony/data/AlwaysOnPdn;)V

    return-void

    .line 108
    :cond_5
    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 109
    const-string p1, "subscription"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 110
    iget-object p2, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED, subId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->-$$Nest$mlog(Lcom/android/internal/telephony/data/AlwaysOnPdn;Ljava/lang/String;)V

    .line 111
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    invoke-static {p2}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/AlwaysOnPdn;)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    .line 112
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p2

    if-ne p2, p1, :cond_6

    .line 113
    iget-object p0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    invoke-static {p0}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->-$$Nest$mshouldRequestAlwaysOnPdn(Lcom/android/internal/telephony/data/AlwaysOnPdn;)V

    :cond_6
    :goto_0
    return-void

    .line 116
    :cond_7
    iget-object p0, p0, Lcom/android/internal/telephony/data/AlwaysOnPdn$1;->this$0:Lcom/android/internal/telephony/data/AlwaysOnPdn;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: Unknown action="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/AlwaysOnPdn;->-$$Nest$mlog(Lcom/android/internal/telephony/data/AlwaysOnPdn;Ljava/lang/String;)V

    return-void
.end method
