.class Lcom/android/internal/telephony/SatelliteServiceCommandHandler$2;
.super Landroid/content/BroadcastReceiver;
.source "SatelliteServiceCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SatelliteServiceCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$2;->this$0:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.location.MODE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$2;->this$0:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-static {p1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->-$$Nest$fgetmModemState(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$2;->this$0:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-static {p1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->-$$Nest$fgetmIsLocationSettingsEnabled(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$2;->this$0:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-static {p1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->-$$Nest$fgetmIsLocationProviderEnabled(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 100
    :cond_1
    const-string p1, "LocationManagerStateChanged"

    invoke-static {p1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->-$$Nest$smlogd(Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$2;->this$0:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-static {p1}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->-$$Nest$mcancelRequestCurrentLocation(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)V

    .line 102
    iget-object p0, p0, Lcom/android/internal/telephony/SatelliteServiceCommandHandler$2;->this$0:Lcom/android/internal/telephony/SatelliteServiceCommandHandler;

    invoke-static {p0}, Lcom/android/internal/telephony/SatelliteServiceCommandHandler;->-$$Nest$mqueryCurrentLocation(Lcom/android/internal/telephony/SatelliteServiceCommandHandler;)V

    :cond_2
    return-void
.end method
