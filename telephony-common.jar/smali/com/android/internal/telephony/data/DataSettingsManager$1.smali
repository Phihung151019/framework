.class Lcom/android/internal/telephony/data/DataSettingsManager$1;
.super Landroid/content/BroadcastReceiver;
.source "DataSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/DataSettingsManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/data/DataSettingsManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/DataSettingsManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 268
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager$1;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 271
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.carrier.action.CARRIER_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 273
    const-string p1, "com.samsung.carrier.extra.CARRIER_STATE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 274
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataSettingsManager$1;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "carrier config state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/internal/telephony/data/DataSettingsManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataSettingsManager;Ljava/lang/String;)V

    .line 275
    const-string p2, "LOADED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "UPDATED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 276
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$1;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->-$$Nest$mloadCarrierConfig(Lcom/android/internal/telephony/data/DataSettingsManager;)V

    return-void

    .line 278
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 280
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataSettingsManager$1;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    const-string p2, "set DATA_ROAMING value by dds change."

    invoke-static {p1, p2}, Lcom/android/internal/telephony/data/DataSettingsManager;->-$$Nest$mlog(Lcom/android/internal/telephony/data/DataSettingsManager;Ljava/lang/String;)V

    .line 281
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataSettingsManager$1;->this$0:Lcom/android/internal/telephony/data/DataSettingsManager;

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->-$$Nest$mcopyDataRoamingForDds(Lcom/android/internal/telephony/data/DataSettingsManager;)V

    :cond_2
    return-void
.end method
