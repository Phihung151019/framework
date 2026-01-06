.class Lcom/android/internal/telephony/emergency/EmergencyNumberTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyNumberTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 191
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.telephony.action.NETWORK_COUNTRY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 193
    const-string p1, "phone"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 195
    const-string v0, "android.telephony.extra.NETWORK_COUNTRY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_NETWORK_COUNTRY_CHANGED: PhoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " CountryIso: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->-$$Nest$mlogd(Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;Ljava/lang/String;)V

    .line 201
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->updateEmergencyCountryIsoAllPhones(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
