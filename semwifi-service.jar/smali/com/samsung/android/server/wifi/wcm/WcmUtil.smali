.class public Lcom/samsung/android/server/wifi/wcm/WcmUtil;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/wcm/WcmUtil$WcmUtilHolder;
    }
.end annotation


# static fields
.field private static final MIN_LLS_UPDATE_INTERVAL:J = 0x3e8L

.field private static final MIN_RSSI_UPDATE_INTERVAL:J = 0x3e8L

.field private static final MIN_WIFI_INFO_UPDATE_INTERVAL:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "WcmUtil"

.field private static mContext:Landroid/content/Context;

.field private static mLastRssiUpdate:J

.field private static mLastStoredValidRssi:I

.field private static mLastWifiInfoUpdate:J

.field private static mLastWifiLinkLayerStatsUpdate:J

.field private static mRssi:I


# instance fields
.field private final mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mIsScreenOn:Z

.field private mUnknownAkmMap:Landroid/util/SparseIntArray;

.field private final mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiLinkLayerStats:Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mIsScreenOn:Z

    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mUnknownAkmMap:Landroid/util/SparseIntArray;

    .line 5
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 6
    sget-object v0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mContext:Landroid/content/Context;

    const-string v1, "wifinl80211"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 7
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 8
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 9
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    return-void
.end method

.method synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;-><init>()V

    return-void
.end method

.method private generateSecurityParamsListFromCapabilities(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/SecurityParams;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance p0, Landroid/net/wifi/ScanResult;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/net/wifi/ScanResult;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->generateSecurityParamsListFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;
    .locals 0

    .line 1
    sput-object p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    sget-object p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil$WcmUtilHolder;->INSTANCE:Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 4
    .line 5
    return-object p0
.end method

.method private getSecurityTypeFromScanResult(Landroid/net/wifi/ScanResult;)I
    .locals 1

    .line 1
    iget-object p0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "EAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 2
    :cond_0
    iget-object p0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "SAE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    return p0

    .line 3
    :cond_1
    iget-object p0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "PSK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 4
    :cond_2
    iget-object p0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "WEP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    .line 5
    :cond_3
    iget-object p0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string p1, "OWE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private getSemWifiConfigurationFromConfigKey(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/samsung/android/wifi/SemWifiConfiguration;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    const/16 v0, 0x3e8

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public checkAlternativeNetworksFromScanResults(Ljava/util/List;Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Landroid/net/wifi/WifiConfiguration;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 16
    .line 17
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->qualifiedToHandover(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string p1, "checkAlternativeNetworks - There\'s internet available AP "

    .line 26
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, " RSSI: "

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget p1, v0, Landroid/net/wifi/ScanResult;->level:I

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string p1, "WcmUtil"

    .line 50
    .line 51
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    iget p0, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 55
    .line 56
    return p0

    .line 57
    :cond_1
    const/4 p0, -0x1

    .line 58
    return p0
.end method

.method public compareSsidAndSecurity(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4

    .line 1
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x2

    .line 18
    if-le v1, v2, :cond_0

    .line 19
    .line 20
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    sub-int/2addr v2, v3

    .line 28
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSecurityTypeFromScanResult(Landroid/net/wifi/ScanResult;)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-ne p2, v0, :cond_0

    .line 43
    .line 44
    iget-object p1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 49
    .line 50
    if-eqz p0, :cond_0

    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-nez p0, :cond_0

    .line 61
    .line 62
    return v3

    .line 63
    :cond_0
    const/4 p0, 0x0

    .line 64
    return p0
.end method

.method public getCurrentSemWifiConfiguration(Z)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSemWifiConfiguration(IZ)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiInfo()Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getWifiConfiguration(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return-object p0
.end method

.method public getCurrentWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-wide v2, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mLastWifiInfoUpdate:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    const-wide/16 v4, 0xbb8

    .line 10
    .line 11
    cmp-long v2, v2, v4

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-lez v2, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iput-object v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 23
    .line 24
    sput-wide v0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mLastWifiInfoUpdate:J

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 45
    .line 46
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    return-object p0

    .line 52
    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/16 v1, -0x7e

    .line 57
    .line 58
    if-le v0, v1, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/16 v1, 0xc8

    .line 67
    .line 68
    if-ge v0, v1, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    sput v0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mLastStoredValidRssi:I

    .line 77
    .line 78
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 79
    .line 80
    return-object p0
.end method

.method public getLastStoredValidRssi()I
    .locals 0

    .line 1
    sget p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mLastStoredValidRssi:I

    .line 2
    .line 3
    return p0
.end method

.method public getPrivilegedConfiguredNetworks()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getSavedNetworks(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks(I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getScreenStatus()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mIsScreenOn:Z

    .line 2
    .line 3
    return p0
.end method

.method public getSecurityType(Landroid/net/wifi/WifiConfiguration;)I
    .locals 4

    .line 1
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    const/4 v1, 0x2

    .line 9
    if-nez p0, :cond_5

    .line 10
    .line 11
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->get(I)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 22
    .line 23
    const/16 v3, 0x8

    .line 24
    .line 25
    invoke-virtual {p0, v3}, Ljava/util/BitSet;->get(I)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    return v2

    .line 32
    :cond_1
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 33
    .line 34
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    const/4 v1, 0x3

    .line 39
    if-nez p0, :cond_5

    .line 40
    .line 41
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 51
    .line 52
    const/16 v1, 0x9

    .line 53
    .line 54
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-eqz p0, :cond_3

    .line 59
    .line 60
    const/4 p0, 0x5

    .line 61
    return p0

    .line 62
    :cond_3
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    aget-object p0, p0, p1

    .line 66
    .line 67
    if-eqz p0, :cond_4

    .line 68
    .line 69
    return v0

    .line 70
    :cond_4
    return p1

    .line 71
    :cond_5
    :goto_0
    return v1
.end method

.method public getSecurityTypeFromScanResult(Landroid/net/wifi/nl80211/NativeScanResult;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/nl80211/NativeScanResult;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/SecurityParams;",
            ">;"
        }
    .end annotation

    .line 6
    invoke-virtual {p1}, Landroid/net/wifi/nl80211/NativeScanResult;->getSsid()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    const/4 v2, 0x0

    const-string v3, "WcmUtil"

    if-le v0, v1, :cond_0

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Invalid SSID length (> 32 bytes): "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/net/wifi/nl80211/NativeScanResult;->getSsid()[B

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/nl80211/NativeScanResult;->getSsid()[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiSsid;->fromBytes([B)Landroid/net/wifi/WifiSsid;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Landroid/net/wifi/nl80211/NativeScanResult;->getBssid()Landroid/net/MacAddress;

    move-result-object v1

    if-nez v1, :cond_1

    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Invalid MAC (BSSID) for SSID "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 13
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/nl80211/NativeScanResult;->getInformationElements()[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil;->parseInformationElements([B)[Landroid/net/wifi/ScanResult$InformationElement;

    move-result-object v2

    .line 14
    new-instance v1, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/net/wifi/nl80211/NativeScanResult;->getCapabilities()I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 16
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isEnhancedOpenSupported()Z

    move-result v4

    .line 17
    invoke-virtual {p1}, Landroid/net/wifi/nl80211/NativeScanResult;->getFrequencyMhz()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mUnknownAkmMap:Landroid/util/SparseIntArray;

    const/4 v5, 0x1

    .line 18
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->from([Landroid/net/wifi/ScanResult$InformationElement;IZZILandroid/util/SparseIntArray;)V

    .line 19
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/WcmIEUtil$Capabilities;->generateCapabilitiesString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->generateSecurityParamsListFromCapabilities(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSemWifiConfiguration(IZ)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetworks()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 42
    .line 43
    iget-object v3, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    return-object v2

    .line 52
    :cond_2
    if-eqz p2, :cond_3

    .line 53
    .line 54
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSemWifiConfigurationFromConfigKey(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :cond_3
    return-object v0
.end method

.method public getTxPacketCounters()Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const-string p0, "WcmUtil"

    .line 12
    .line 13
    const-string v2, "getTxPacketCounters called without an interface"

    .line 14
    .line 15
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->result:I

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    const-string v2, "wlan0"

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getTxPacketCounters(Ljava/lang/String;)Landroid/net/wifi/nl80211/WifiNl80211Manager$TxPacketCounters;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->result:I

    .line 31
    .line 32
    iget v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$TxPacketCounters;->txPacketSucceeded:I

    .line 33
    .line 34
    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->mTxgood:I

    .line 35
    .line 36
    iget p0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$TxPacketCounters;->txPacketFailed:I

    .line 37
    .line 38
    iput p0, v0, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->mTxbad:I

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_1
    iput v1, v0, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->result:I

    .line 42
    .line 43
    return-object v0
.end method

.method public getUpdatedRssi()I
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-wide v2, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mLastRssiUpdate:J

    .line 6
    .line 7
    sub-long v2, v0, v2

    .line 8
    .line 9
    const-wide/16 v4, 0x3e8

    .line 10
    .line 11
    cmp-long v2, v2, v4

    .line 12
    .line 13
    if-lez v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 16
    .line 17
    const-string v3, "wlan0"

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->signalPoll(Ljava/lang/String;)Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget v2, v2, Landroid/net/wifi/nl80211/WifiNl80211Manager$SignalPollResult;->currentRssiDbm:I

    .line 26
    .line 27
    sput v2, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mRssi:I

    .line 28
    .line 29
    :cond_0
    sput-wide v0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mLastRssiUpdate:J

    .line 30
    .line 31
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    sget v0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mRssi:I

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    sget p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mRssi:I

    .line 41
    .line 42
    return p0
.end method

.method public getWifiBand(I)I
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-static {p1}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x2

    .line 16
    return p0

    .line 17
    :cond_1
    invoke-static {p1}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_2

    .line 22
    .line 23
    const/16 p0, 0x8

    .line 24
    .line 25
    return p0

    .line 26
    :cond_2
    invoke-static {p1}, Landroid/net/wifi/ScanResult;->is60GHz(I)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_3

    .line 31
    .line 32
    const/16 p0, 0x10

    .line 33
    .line 34
    return p0

    .line 35
    :cond_3
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getWifiConfiguration(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getWifiLinkLayerStats(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    sget-wide v2, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mLastWifiLinkLayerStatsUpdate:J

    .line 14
    .line 15
    sub-long v2, v0, v2

    .line 16
    .line 17
    const-wide/16 v4, 0x3e8

    .line 18
    .line 19
    cmp-long v2, v2, v4

    .line 20
    .line 21
    if-lez v2, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 24
    .line 25
    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getWifiLinkLayerStats(Ljava/lang/String;)Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiLinkLayerStats:Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 30
    .line 31
    sput-wide v0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mLastWifiLinkLayerStatsUpdate:J

    .line 32
    .line 33
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiLinkLayerStats:Lcom/samsung/android/server/wifi/halclient/SemWifiLinkLayerStats;

    .line 34
    .line 35
    return-object p0
.end method

.method public is24GHz(Landroid/net/wifi/ScanResult;)Z
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget p1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    .line 5
    .line 6
    const/16 v0, 0x96c

    .line 7
    .line 8
    if-lt p1, v0, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x9b4

    .line 11
    .line 12
    if-gt p1, v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    :cond_0
    return p0
.end method

.method public is5GHz(Landroid/net/wifi/ScanResult;)Z
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget p1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    .line 5
    .line 6
    const/16 v0, 0x1428

    .line 7
    .line 8
    if-lt p1, v0, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x16e9

    .line 11
    .line 12
    if-gt p1, v0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x1

    .line 15
    :cond_0
    return p0
.end method

.method public isBlockedByAutoblocker(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSecurityType(Landroid/net/wifi/WifiConfiguration;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mFrameworkFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 6
    .line 7
    sget-object v0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "rampart_blocked_unsecure_wifi_autojoin"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSecureIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 v0, 0x1

    .line 17
    if-ne p0, v0, :cond_1

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    if-eq p1, v0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x5

    .line 24
    if-ne p1, p0, :cond_1

    .line 25
    .line 26
    :cond_0
    return v0

    .line 27
    :cond_1
    return v2
.end method

.method public qualifiedToHandover(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->compareSsidAndSecurity(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_3

    .line 6
    .line 7
    iget p0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    .line 8
    .line 9
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    iget p0, p1, Landroid/net/wifi/ScanResult;->level:I

    .line 16
    .line 17
    const/16 p2, -0x3a

    .line 18
    .line 19
    if-gt p0, p2, :cond_2

    .line 20
    .line 21
    :cond_0
    iget p0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    .line 22
    .line 23
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    const/16 p2, -0x3f

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    iget p0, p1, Landroid/net/wifi/ScanResult;->level:I

    .line 32
    .line 33
    if-gt p0, p2, :cond_2

    .line 34
    .line 35
    :cond_1
    iget p0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    .line 36
    .line 37
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_3

    .line 42
    .line 43
    iget p0, p1, Landroid/net/wifi/ScanResult;->level:I

    .line 44
    .line 45
    if-le p0, p2, :cond_3

    .line 46
    .line 47
    :cond_2
    const/4 p0, 0x1

    .line 48
    return p0

    .line 49
    :cond_3
    const/4 p0, 0x0

    .line 50
    return p0
.end method

.method public qualifiedToHandoverCandidate(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3

    .line 1
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getSemWifiConfiguration(IZ)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 9
    .line 10
    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 11
    .line 12
    if-eq p1, v2, :cond_1

    .line 13
    .line 14
    iget-boolean p1, p2, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-boolean p1, p2, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->isBlockedByAutoblocker(Landroid/net/wifi/WifiConfiguration;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    iget p1, p2, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    .line 29
    .line 30
    const/4 p2, -0x1

    .line 31
    if-eq p1, p2, :cond_0

    .line 32
    .line 33
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 34
    .line 35
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isCarrierNetworkOffloadEnabled(IZ)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    :cond_0
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_1

    .line 48
    .line 49
    const/4 p0, 0x1

    .line 50
    return p0

    .line 51
    :cond_1
    return v1
.end method

.method public setScreenStatus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->mIsScreenOn:Z

    .line 2
    .line 3
    return-void
.end method
