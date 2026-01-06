.class public Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;,
        Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;
    }
.end annotation


# static fields
.field private static final INVALID:I = -0x1

.field private static final ROAMING_CANDIDATE_MIN_RSSI:I = -0x3c

.field private static final ROAMING_CANDIDATE_MLO_PREFER:D = 1.1

.field private static final SAME_AP_BSSID_DIFF_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SemRoamingProcessor0.9"

.field private static final VERSION:Ljava/lang/String; = "0.9"

.field private static final WIFI_CHANNEL_UTILIZATION_2G:I = 0x50

.field private static final WIFI_CHANNEL_UTILIZATION_5G:I = 0xf

.field private static final WIFI_CHANNEL_UTILIZATION_6G:I = 0xa


# instance fields
.field mApThroughputParams:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;

.field private mIsBluetoothConnected:Z

.field private final mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

.field private mLogManager:Lcom/samsung/android/server/wifi/strongrssiroaming/LogManager;

.field mSelectedAp:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;

.field private final mThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field mWifiRoamingCandidateAps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsBluetoothConnected(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mIsBluetoothConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsBluetoothConnected(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mIsBluetoothConnected:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mApThroughputParams:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiRoamingCandidateAps:Ljava/util/List;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mSelectedAp:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mIsBluetoothConnected:Z

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemThroughputPredictor()Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 41
    .line 42
    const-string v1, "wifinl80211"

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiMonitor()Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iput-object p2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 57
    .line 58
    new-instance p2, Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 59
    .line 60
    invoke-direct {p2}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object p2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mVerboseLoggingEnabled:Z

    .line 70
    .line 71
    new-instance p2, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$1;

    .line 72
    .line 73
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$1;-><init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;)V

    .line 74
    .line 75
    .line 76
    new-instance p0, Landroid/content/IntentFilter;

    .line 77
    .line 78
    const-string v0, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    .line 79
    .line 80
    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/4 v0, 0x2

    .line 84
    invoke-virtual {p1, p2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    sget-object p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    .line 88
    .line 89
    const-string p1, "Initiated Roaming Processor version 0.9"

    .line 90
    .line 91
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method private isSecurityMatch(ILandroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->generateSecurityParamsListFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Landroid/net/wifi/SecurityParams;

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/net/wifi/SecurityParams;->getSecurityType()I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-ne p1, p2, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_1
    sget-object p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    const-string p1, "isSecurityMatch: Security is not matched"

    .line 32
    .line 33
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    return p0
.end method

.method private isTwoBssidAtSameAP(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 p0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    if-eqz p2, :cond_3

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    move v0, p0

    .line 26
    move v1, v0

    .line 27
    :goto_0
    array-length v2, p1

    .line 28
    if-ge v0, v2, :cond_2

    .line 29
    .line 30
    aget-char v2, p1, v0

    .line 31
    .line 32
    aget-char v3, p2, v0

    .line 33
    .line 34
    if-eq v2, v3, :cond_1

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 p1, 0x2

    .line 42
    if-gt v1, p1, :cond_3

    .line 43
    .line 44
    const/4 p0, 0x1

    .line 45
    :cond_3
    :goto_1
    return p0
.end method

.method private recordLog(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mLogManager:Lcom/samsung/android/server/wifi/strongrssiroaming/LogManager;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/LogManager;->addLog(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public enableVerboseLogging(I)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mVerboseLoggingEnabled:Z

    .line 7
    .line 8
    return-void
.end method

.method public getSelectedApFrequency()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mSelectedAp:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->-$$Nest$fgetmFrequency(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    sget-object p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "getSelectedAp: mSelectedAp is empty"

    .line 13
    .line 14
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const/4 p0, -0x1

    .line 18
    return p0
.end method

.method getUtilizationRatio(I)I
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
    const/16 p0, 0x50

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    invoke-static {p1}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    const/16 p0, 0xf

    .line 17
    .line 18
    return p0

    .line 19
    :cond_1
    const/16 p0, 0xa

    .line 20
    .line 21
    return p0
.end method

.method protected logV(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mVerboseLoggingEnabled:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public makeCandidateAPList(Ljava/lang/String;[Landroid/net/wifi/ScanResult;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 6
    .line 7
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "makeCandidateAPList: wifiInfo is null"

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v3, v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiCondManager:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 22
    .line 23
    move-object/from16 v4, p1

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getDeviceWiphyCapabilities(Ljava/lang/String;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    sget-object v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v1, "makeCandidateAPList: capabilities is null"

    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const/16 v4, 0x8

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;->isWifiStandardSupported(I)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    iget-object v5, v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiRoamingCandidateAps:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 48
    .line 49
    .line 50
    array-length v5, v1

    .line 51
    const/4 v6, 0x0

    .line 52
    :goto_0
    if-ge v6, v5, :cond_3

    .line 53
    .line 54
    aget-object v7, v1, v6

    .line 55
    .line 56
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    invoke-virtual {v9}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-eqz v8, :cond_2

    .line 73
    .line 74
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    invoke-direct {v0, v8, v7}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->isSecurityMatch(ILandroid/net/wifi/ScanResult;)Z

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    if-eqz v8, :cond_2

    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 89
    .line 90
    invoke-direct {v0, v8, v9}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->isTwoBssidAtSameAP(Ljava/lang/String;Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-eqz v8, :cond_2

    .line 95
    .line 96
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v8

    .line 106
    if-nez v8, :cond_2

    .line 107
    .line 108
    invoke-virtual {v0, v3, v7, v4}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Landroid/net/wifi/ScanResult;Z)I

    .line 109
    .line 110
    .line 111
    move-result v16

    .line 112
    new-instance v9, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;

    .line 113
    .line 114
    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 115
    .line 116
    iget v11, v7, Landroid/net/wifi/ScanResult;->level:I

    .line 117
    .line 118
    iget v12, v7, Landroid/net/wifi/ScanResult;->frequency:I

    .line 119
    .line 120
    iget v13, v7, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 121
    .line 122
    iget-object v7, v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mApThroughputParams:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;

    .line 123
    .line 124
    iget v14, v7, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->channelUtilization:I

    .line 125
    .line 126
    invoke-static {v7}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->-$$Nest$mgetMaxNumberSpatialStreams(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;)I

    .line 127
    .line 128
    .line 129
    move-result v15

    .line 130
    invoke-direct/range {v9 .. v16}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;-><init>(Ljava/lang/String;IIIIII)V

    .line 131
    .line 132
    .line 133
    iget-object v7, v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiRoamingCandidateAps:Ljava/util/List;

    .line 134
    .line 135
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_3
    sget-object v3, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    .line 142
    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v5, "wifiInfo.SSID: "

    .line 146
    .line 147
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v2, ", Scanned APs: "

    .line 158
    .line 159
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    array-length v1, v1

    .line 163
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, ", Candidate APs: "

    .line 167
    .line 168
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v0, v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiRoamingCandidateAps:Ljava/util/List;

    .line 172
    .line 173
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    return-void
.end method

.method predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Landroid/net/wifi/ScanResult;Z)I
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mApThroughputParams:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->-$$Nest$mreset(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->updateApThroughputParamsFromIes(Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mThroughputPredictor:Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    iget v4, p2, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 20
    .line 21
    iget v5, p2, Landroid/net/wifi/ScanResult;->level:I

    .line 22
    .line 23
    iget v6, p2, Landroid/net/wifi/ScanResult;->frequency:I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mApThroughputParams:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->-$$Nest$mgetMaxNumberSpatialStreams(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;)I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mApThroughputParams:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->-$$Nest$mgetChannelUtilization(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;)I

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    iget p2, p2, Landroid/net/wifi/ScanResult;->frequency:I

    .line 38
    .line 39
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->getUtilizationRatio(I)I

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    iget-boolean v10, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mIsBluetoothConnected:Z

    .line 44
    .line 45
    move-object v2, p1

    .line 46
    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputPredictor;->predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;IIIIIIIZ)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p3, :cond_0

    .line 51
    .line 52
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mApThroughputParams:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;

    .line 53
    .line 54
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->isMloSupported:Z

    .line 55
    .line 56
    if-eqz p0, :cond_0

    .line 57
    .line 58
    int-to-double p0, p1

    .line 59
    const-wide p2, 0x3ff199999999999aL    # 1.1

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    mul-double/2addr p0, p2

    .line 65
    double-to-int p0, p0

    .line 66
    return p0

    .line 67
    :cond_0
    return p1
.end method

.method public roamToSelectedAp(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mSelectedAp:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mSelectedAp:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->-$$Nest$fgetmFrequency(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, p1, v0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->sendLegacyReassociationFrequencyRequestFrame(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 18
    .line 19
    .line 20
    sget-object p1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v1, "roamToSelectedAp: Try to roam to BSSID "

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mSelectedAp:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;

    .line 32
    .line 33
    invoke-static {v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v0, "(SELECT) "

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mLog:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mSelectedAp:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;

    .line 61
    .line 62
    invoke-static {v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->-$$Nest$fgetmBssid(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->recordLog(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_0
    sget-object p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->TAG:Ljava/lang/String;

    .line 82
    .line 83
    const-string p1, "roamToSelectedAp: mSelectedAp is null"

    .line 84
    .line 85
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public selectBestCandidateAp()Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mSelectedAp:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mWifiRoamingCandidateAps:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, -0x1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;

    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v4, ", BTCon: "

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-boolean v5, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mIsBluetoothConnected:Z

    .line 41
    .line 42
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->logV(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v5, "(CANDI) "

    .line 55
    .line 56
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->toPrintableString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mIsBluetoothConnected:Z

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->recordLog(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->-$$Nest$fgetmScanRssi(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;)I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    const/16 v4, -0x3c

    .line 86
    .line 87
    if-ge v3, v4, :cond_1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    invoke-static {v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;->-$$Nest$mgetPredictedThroughputMbps(Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;)I

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-le v3, v1, :cond_0

    .line 95
    .line 96
    iput-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mSelectedAp:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;

    .line 97
    .line 98
    move v1, v3

    .line 99
    goto :goto_0

    .line 100
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mSelectedAp:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$WifiRoamingCandidateAp;

    .line 101
    .line 102
    if-eqz p0, :cond_3

    .line 103
    .line 104
    const/4 p0, 0x1

    .line 105
    return p0

    .line 106
    :cond_3
    const/4 p0, 0x0

    .line 107
    return p0
.end method

.method public setLogger(Lcom/samsung/android/server/wifi/strongrssiroaming/LogManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mLogManager:Lcom/samsung/android/server/wifi/strongrssiroaming/LogManager;

    .line 2
    .line 3
    return-void
.end method

.method updateApThroughputParamsFromIes(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;)V"
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
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/net/wifi/ScanResult$InformationElement;

    .line 16
    .line 17
    iget v1, v0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    .line 18
    .line 19
    const/16 v2, 0xb

    .line 20
    .line 21
    if-eq v1, v2, :cond_5

    .line 22
    .line 23
    const/16 v2, 0x2d

    .line 24
    .line 25
    if-eq v1, v2, :cond_4

    .line 26
    .line 27
    const/16 v2, 0xbf

    .line 28
    .line 29
    if-eq v1, v2, :cond_3

    .line 30
    .line 31
    const/16 v2, 0xff

    .line 32
    .line 33
    if-eq v1, v2, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget v1, v0, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    .line 37
    .line 38
    const/16 v2, 0x23

    .line 39
    .line 40
    if-ne v1, v2, :cond_2

    .line 41
    .line 42
    new-instance v1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$HeCapabilities;

    .line 43
    .line 44
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$HeCapabilities;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$HeCapabilities;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mApThroughputParams:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$HeCapabilities;->getMaxNumberSpatialStreams()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iput v1, v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->maxNumberSpatialStreamsFromHeCap:I

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget v1, v0, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    .line 60
    .line 61
    const/16 v2, 0x6b

    .line 62
    .line 63
    if-ne v1, v2, :cond_0

    .line 64
    .line 65
    new-instance v1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;

    .line 66
    .line 67
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mApThroughputParams:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$MultiLink;->isPresent()Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->isMloSupported:Z

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    new-instance v1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$VhtCapabilities;

    .line 83
    .line 84
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$VhtCapabilities;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$VhtCapabilities;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mApThroughputParams:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$VhtCapabilities;->getMaxNumberSpatialStreams()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    iput v1, v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->maxNumberSpatialStreamsFromVhtCap:I

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_4
    new-instance v1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$HtCapabilities;

    .line 100
    .line 101
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$HtCapabilities;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$HtCapabilities;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mApThroughputParams:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$HtCapabilities;->getMaxNumberSpatialStreams()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    iput v1, v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->maxNumberSpatialStreamsFromHtCap:I

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_5
    new-instance v1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$BssLoad;

    .line 117
    .line 118
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$BssLoad;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$BssLoad;->from(Landroid/net/wifi/ScanResult$InformationElement;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->mApThroughputParams:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;

    .line 125
    .line 126
    iget v1, v1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemInformationElementUtil$BssLoad;->channelUtilization:I

    .line 127
    .line 128
    iput v1, v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor$ApThroughputParams;->channelUtilization:I

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_6
    return-void
.end method
