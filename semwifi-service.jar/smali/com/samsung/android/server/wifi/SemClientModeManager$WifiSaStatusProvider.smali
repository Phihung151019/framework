.class Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/bigdata/SaStatusProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemClientModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiSaStatusProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    return-void
.end method


# virtual methods
.method public getConnectedCarrierPasspointApCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmPasspointLogger(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/PasspointLogger;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/PasspointLogger;->getConnectedCarrierPasspointApCount()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public getConnectedOpenroamingApCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmOpenRoamingLogger(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/OpenRoamingLogger;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/OpenRoamingLogger;->getConnectedOpenroamingApCount()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public getConnectedUnknownCarrierPasspointApCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmPasspointLogger(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/PasspointLogger;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/PasspointLogger;->getConnectedUnknownCarrierPasspointApCount()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public getEasySetupLaunchCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiEasySetupManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->getEasySetupLaunchCount()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public getEasySetupPartialScanCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiEasySetupManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->getEasySetupPartialScanCount()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public getHalIssueCount()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmBigDataManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getEventCount(I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public getHangCount()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmBigDataManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->getEventCount(I)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public getL4sConnectionCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getL4sController()Lcom/samsung/android/server/wifi/SemL4sController;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getL4sController()Lcom/samsung/android/server/wifi/SemL4sController;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemL4sController;->getL4sConnectionCount()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    const/4 p0, -0x1

    .line 29
    return p0
.end method

.method public getLocationNullCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiGeofenceManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getLocationNullCount()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public getMscsSupportedUniqueApCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getQboxController()Lcom/samsung/android/server/wifi/SemQboxController;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getQboxController()Lcom/samsung/android/server/wifi/SemQboxController;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->getMscsSupportedUniqueApCount()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public getNoCandidateCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getStrongRssiRoaming()Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getStrongRssiRoaming()Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->getNoCandidateCount()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public getNoScanResultCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getStrongRssiRoaming()Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getStrongRssiRoaming()Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->getNoScanResultCount()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public getOpenNetworkDistanceError10kmTo100mCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiGeofenceManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getOpenNetworkDistanceError10kmTo100kmCount()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public getOpenNetworkDistanceError5kmTo10kmCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiGeofenceManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getOpenNetworkDistanceError5kmTo10kmCount()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public getOpenNetworkDistanceError600mTo5kmCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiGeofenceManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getOpenNetworkDistanceError600mTo5kmCount()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public getOtherNetworkDistanceError10kmTo100mCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiGeofenceManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getOtherNetworkDistanceError10kmTo100kmCount()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public getOtherNetworkDistanceError5kmTo10kmCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiGeofenceManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getOtherNetworkDistanceError5kmTo10kmCount()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public getOtherNetworkDistanceError600mTo5kmCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiGeofenceManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getOtherNetworkDistanceError600mTo5kmCount()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public getPskNetworkDistanceError10kmTo100mCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiGeofenceManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getPskNetworkDistanceError10kmTo100kmCount()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public getPskNetworkDistanceError5kmTo10kmCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiGeofenceManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getPskNetworkDistanceError5kmTo10kmCount()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public getPskNetworkDistanceError600mTo5kmCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiGeofenceManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->getPskNetworkDistanceError600mTo5kmCount()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public getRoamFailCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getStrongRssiRoaming()Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getStrongRssiRoaming()Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->getRoamFailCount()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public getScanCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getStrongRssiRoaming()Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getStrongRssiRoaming()Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->getScanCount()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public getScannedOpenroamingApCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmOpenRoamingLogger(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/OpenRoamingLogger;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/OpenRoamingLogger;->getScannedOpenroamingApCount()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public getSilentRoamingW24hSwitchAbortedCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mgetSilentRoamingW24hStats(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchAbortedCount:I

    .line 8
    .line 9
    return p0
.end method

.method public getSilentRoamingW24hSwitchCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mgetSilentRoamingW24hStats(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchCount:I

    .line 8
    .line 9
    return p0
.end method

.method public getSilentRoamingW24hSwitchFailureCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mgetSilentRoamingW24hStats(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchFailureCount:I

    .line 8
    .line 9
    return p0
.end method

.method public getSilentRoamingW24hSwitchNoInternetCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mgetSilentRoamingW24hStats(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchNoInternetCount:I

    .line 8
    .line 9
    return p0
.end method

.method public getSilentRoamingW24hSwitchSuccessCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mgetSilentRoamingW24hStats(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchSuccessCount:I

    .line 8
    .line 9
    return p0
.end method

.method public getSilentRoamingW24hToggleCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mgetSilentRoamingW24hStats(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalToggleCount:I

    .line 8
    .line 9
    return p0
.end method

.method public getSilentRoamingW24hVersion()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mgetSilentRoamingW24hStats(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->silentRoamingVersion:Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method public getTotalUniqueApCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getQboxController()Lcom/samsung/android/server/wifi/SemQboxController;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getQboxController()Lcom/samsung/android/server/wifi/SemQboxController;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->getTotalUniqueApCount()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public resetCounter()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmBigDataManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->resetEventCounters()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiEasySetupManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->resetStatusCounters()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiGeofenceManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/WifiGeofenceManager;->resetStatusCounters()V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getStrongRssiRoaming()Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getStrongRssiRoaming()Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->resetStatusCounters()V

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmOpenRoamingLogger(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/OpenRoamingLogger;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/OpenRoamingLogger;->reset()V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmPasspointLogger(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/PasspointLogger;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/PasspointLogger;->reset()V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getL4sController()Lcom/samsung/android/server/wifi/SemL4sController;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getL4sController()Lcom/samsung/android/server/wifi/SemL4sController;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemL4sController;->resetL4sConnectionCount()V

    .line 94
    .line 95
    .line 96
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getQboxController()Lcom/samsung/android/server/wifi/SemQboxController;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$WifiSaStatusProvider;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 109
    .line 110
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmInjector(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getQboxController()Lcom/samsung/android/server/wifi/SemQboxController;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->resetApCounts()V

    .line 119
    .line 120
    .line 121
    :cond_2
    return-void
.end method
