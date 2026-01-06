.class Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "CarrierRoamingSatelliteSessionStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$1;->this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$1;->this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "On Available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->-$$Nest$mlogd(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$1;->this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->-$$Nest$fgetmConnectivityManager(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;)Landroid/net/ConnectivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$1;->this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->-$$Nest$fgetmConnectivityManager(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;)Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 141
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->-$$Nest$fputmNetworkcapabilities(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;Landroid/net/NetworkCapabilities;)V

    .line 142
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$1;->this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->-$$Nest$fgetmNetworkcapabilities(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$1;->this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->-$$Nest$fgetmNetworkcapabilities(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    const/16 v0, 0xa

    .line 143
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$1;->this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    invoke-static {p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->-$$Nest$fgetmNetworkcapabilities(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    const/16 v0, 0xc

    .line 145
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$1;->this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    const-string v0, "found satellite data connection"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->-$$Nest$mlogd(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;Ljava/lang/String;)V

    .line 148
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$1;->this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    invoke-static {p0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->-$$Nest$mstartDataConnectionTracker(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;)V

    :cond_0
    return-void
.end method

.method public whitelist onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$1;->this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCapabilitiesChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->-$$Nest$mlogd(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;Ljava/lang/String;)V

    .line 158
    iget-object p0, p0, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats$1;->this$0:Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->-$$Nest$fputmNetworkcapabilities(Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;Landroid/net/NetworkCapabilities;)V

    return-void
.end method
