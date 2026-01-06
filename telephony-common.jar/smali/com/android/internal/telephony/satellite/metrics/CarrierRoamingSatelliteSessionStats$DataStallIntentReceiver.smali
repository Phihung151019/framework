.class public Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$DataStallIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CarrierRoamingSatelliteSessionStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataStallIntentReceiver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$DataStallIntentReceiver;->this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.DATA_STALL_DETECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 166
    const-string p1, "EXTRA_DSRS_STATS_BUNDLE"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 167
    const-string p2, "IsRecovered"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_1

    move v1, v2

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 174
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$DataStallIntentReceiver;->this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->-$$Nest$fgetmCurrentState(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 175
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$DataStallIntentReceiver;->this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->-$$Nest$fgetmCountOfDataStalls(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;)I

    move-result p2

    add-int/2addr p2, v2

    invoke-static {p1, p2}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->-$$Nest$fputmCountOfDataStalls(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;I)V

    .line 176
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$DataStallIntentReceiver;->this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "data stall count: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$DataStallIntentReceiver;->this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->-$$Nest$fgetmCountOfDataStalls(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->-$$Nest$mlogd(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
