.class Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "SemEmergencyNumberTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 125
    const-string p1, "ss"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    const-string v0, "android.telephony.extra.SLOT_INDEX"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 127
    const-string v1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    const v2, 0x7fffffff

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 128
    iget-object v1, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_SIM_STATE_CHANGED - Update EmergencyNumberList when SIM state is changed. phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", subId: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", state: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->-$$Nest$mlogd(Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;Ljava/lang/String;)V

    .line 131
    iget-object p0, p0, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->-$$Nest$mupdateEmergencyNumberListVendorDatabaseAndNotify(Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;Z)V

    :cond_0
    return-void
.end method
