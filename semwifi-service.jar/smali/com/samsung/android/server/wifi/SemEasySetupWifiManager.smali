.class public Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$PartialScanListener;,
        Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;
    }
.end annotation


# static fields
.field private static final BAND_24_GHZ_1_CH:I = 0x96c

.field public static final EVENT_CHECK_EASY_SETUP_NETWORK:I = 0x6

.field public static final EVENT_PACKAGE_REPLACED_AND_REMOVED:I = 0x4

.field public static final EVENT_SCREEN_OFF:I = 0x2

.field public static final EVENT_SCREEN_ON:I = 0x1

.field public static final EVENT_START_PARTIAL_SCAN:I = 0x5

.field public static final EVENT_USER_PRESENT:I = 0x3

.field private static final INVALID_TIME_STAMP:J = -0x8000000000000000L

.field public static final PACKAGE_EASY_CONNECT:Ljava/lang/String; = "com.samsung.android.oneconnect"

.field private static final SECOND_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "SemWifiEasySetupManager"


# instance fields
.field private final mClock:Lcom/samsung/android/server/wifi/util/SemClock;

.field private final mContext:Landroid/content/Context;

.field private final mEasySetupSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;

.field private mHomeVisibilityListener:Landroid/app/HomeVisibilityListener;

.field private mIsEnabled:Z

.field mLastPartialScanTimeStamp:J

.field private mLaunchServiceCount:I

.field private final mNetworkPartialScanListener:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$PartialScanListener;

.field private mPartialScanCount:I

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field final mScanResultUpdatedListener:Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

.field private mScreenOn:Z

.field private mVerboseLoggingEnabled:Z

.field private mWifiEnabled:Z

.field private final mWifiFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;


# direct methods
.method public static synthetic $r8$lambda$IB-kOclwoFUQ90E8KjrIvRY_OGU(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->lambda$registerReceiver$1(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$czrnc3cXUeJT0aHoiLQ07VdEUqE(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->lambda$registerReceiver$2(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$u3nTkS4R0xWoks-uDxQATVf2bvY(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->lambda$new$0(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Lcom/samsung/android/server/wifi/util/SemClock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEasySetupSettings(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mEasySetupSettings:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mHandler:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mScreenOn:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mVerboseLoggingEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsEnabled(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mIsEnabled:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScreenOn(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mScreenOn:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckEasySetupNetwork(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->checkEasySetupNetwork(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$misEasySetupEnabled(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->isEasySetupEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mresetPartialScanTimerWhenScreenOnOff(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->resetPartialScanTimerWhenScreenOnOff()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mstartPartialScan(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->startPartialScan()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/util/SemClock;Lcom/samsung/android/server/wifi/util/ScanPool;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/os/Looper;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mVerboseLoggingEnabled:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mEasySetupSettings:Ljava/util/Map;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mHomeVisibilityListener:Landroid/app/HomeVisibilityListener;

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mIsEnabled:Z

    .line 18
    .line 19
    const-wide/high16 v1, -0x8000000000000000L

    .line 20
    .line 21
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mLastPartialScanTimeStamp:J

    .line 22
    .line 23
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 26
    .line 27
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 28
    .line 29
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiFeatureController()Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 34
    .line 35
    iput-object p5, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 36
    .line 37
    new-instance p1, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$PartialScanListener;

    .line 38
    .line 39
    invoke-direct {p1, p0, v0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$PartialScanListener;-><init>(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;I)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mNetworkPartialScanListener:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$PartialScanListener;

    .line 43
    .line 44
    new-instance p1, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;

    .line 45
    .line 46
    invoke-direct {p1, p0, p6}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;-><init>(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;Landroid/os/Looper;)V

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mHandler:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;

    .line 50
    .line 51
    new-instance p1, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticLambda3;

    .line 52
    .line 53
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mScanResultUpdatedListener:Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

    .line 57
    .line 58
    return-void
.end method

.method private checkEasySetupNetwork(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mVerboseLoggingEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "checkEasySetupNetwork, isEasySetupEnabled : "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->isEasySetupEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "SemWifiEasySetupManager"

    .line 24
    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->isEasySetupEnabled()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_5

    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiEnabled:Z

    .line 35
    .line 36
    if-eqz v0, :cond_5

    .line 37
    .line 38
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mScreenOn:Z

    .line 39
    .line 40
    if-eqz v0, :cond_5

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->isHomeActivityVisible()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_5

    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mEasySetupSettings:Ljava/util/Map;

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_5

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;

    .line 69
    .line 70
    new-instance v2, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    if-eqz v4, :cond_4

    .line 84
    .line 85
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 90
    .line 91
    iget-object v5, v1, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->ssidPatterns:Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-eqz v6, :cond_2

    .line 102
    .line 103
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    check-cast v6, Ljava/lang/String;

    .line 108
    .line 109
    iget-object v7, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 110
    .line 111
    if-eqz v7, :cond_3

    .line 112
    .line 113
    invoke-virtual {v7, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-eqz v6, :cond_3

    .line 118
    .line 119
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->isValidSecurityType(Landroid/net/wifi/ScanResult;)Z

    .line 120
    .line 121
    .line 122
    move-result v6

    .line 123
    if-eqz v6, :cond_3

    .line 124
    .line 125
    iget v6, v4, Landroid/net/wifi/ScanResult;->level:I

    .line 126
    .line 127
    iget v7, v1, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->minRssi:I

    .line 128
    .line 129
    if-le v6, v7, :cond_3

    .line 130
    .line 131
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    if-nez v3, :cond_1

    .line 140
    .line 141
    iget-object v1, v1, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->pendingIntentForIdlePopup:Landroid/app/PendingIntent;

    .line 142
    .line 143
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->launchEasySetupService(Landroid/app/PendingIntent;Ljava/util/List;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_5
    return-void
.end method

.method private getPartialScanTime()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getEasySetupPartialScanIntervalMs()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private isEasySetupEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportEasySetup()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mIsEnabled:Z

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    const-string p0, "SemWifiEasySetupManager"

    .line 13
    .line 14
    const-string v0, "setEasySetupScanSettings disabled by SCPM"

    .line 15
    .line 16
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method private isValidSecurityType(Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForOpenNetwork(Landroid/net/wifi/ScanResult;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForEapNetwork(Landroid/net/wifi/ScanResult;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForOweNetwork(Landroid/net/wifi/ScanResult;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForWepNetwork(Landroid/net/wifi/ScanResult;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method private synthetic lambda$new$0(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mHandler:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private synthetic lambda$registerReceiver$1(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mHandler:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mHandler:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;

    .line 15
    .line 16
    const/4 p1, 0x2

    .line 17
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private synthetic lambda$registerReceiver$2(II)V
    .locals 1

    .line 1
    const/4 p2, 0x3

    .line 2
    const/4 v0, 0x1

    .line 3
    if-ne p1, p2, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->setWifiState(Z)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->setWifiState(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method private launchEasySetupService(Landroid/app/PendingIntent;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mVerboseLoggingEnabled:Z

    .line 2
    .line 3
    const-string v1, "SemWifiEasySetupManager"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "launchEasySetupService, scanResults.size() : "

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    .line 32
    .line 33
    new-instance p2, Landroid/content/Intent;

    .line 34
    .line 35
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "scanResults"

    .line 39
    .line 40
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mVerboseLoggingEnabled:Z

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    const-string v0, "intent has extra"

    .line 54
    .line 55
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    :cond_1
    iget v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mLaunchServiceCount:I

    .line 59
    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 61
    .line 62
    iput v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mLaunchServiceCount:I

    .line 63
    .line 64
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, p0, v0, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :catch_0
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method private registerPackageChangedReceiver()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "package"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    new-instance v2, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$2;

    .line 24
    .line 25
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$2;-><init>(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->registerPackageChangedReceiver()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "android.intent.action.USER_PRESENT"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    new-instance v2, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$1;

    .line 17
    .line 18
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$1;-><init>(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScreenOn()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mScreenOn:Z

    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 33
    .line 34
    new-instance v1, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticLambda1;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiEnabled:Z

    .line 49
    .line 50
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 51
    .line 52
    new-instance v1, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticLambda2;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mScanResultUpdatedListener:Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/util/ScanPool;->registerScanResultUpdatedListener(Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->registerUserActivityReceiver()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private declared-synchronized registerUserActivityReceiver()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mHomeVisibilityListener:Landroid/app/HomeVisibilityListener;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$3;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$3;-><init>(Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mHomeVisibilityListener:Landroid/app/HomeVisibilityListener;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const-string v1, "activity"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/app/ActivityManager;

    .line 22
    .line 23
    new-instance v1, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticLambda4;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mHomeVisibilityListener:Landroid/app/HomeVisibilityListener;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->addHomeVisibilityListener(Ljava/util/concurrent/Executor;Landroid/app/HomeVisibilityListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    throw v0
.end method

.method private resetPartialScanTimerWhenScreenOnOff()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportEasySetupResetAfterScreenOffOn()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private retrieveWifiScannerIfNecessary()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    const-class v1, Landroid/net/wifi/WifiScanner;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/net/wifi/WifiScanner;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 17
    .line 18
    return-void
.end method

.method private setWifiState(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method private startPartialScan()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->retrieveWifiScannerIfNecessary()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    new-array v3, v2, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 17
    .line 18
    iput-object v3, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 19
    .line 20
    new-instance v4, Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 21
    .line 22
    const/16 v5, 0x96c

    .line 23
    .line 24
    invoke-direct {v4, v5}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    .line 25
    .line 26
    .line 27
    aput-object v4, v3, v1

    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 31
    .line 32
    new-instance v1, Landroid/os/WorkSource;

    .line 33
    .line 34
    const/16 v3, 0x3e8

    .line 35
    .line 36
    const-string v4, "com.samsung.android.server.wifi"

    .line 37
    .line 38
    invoke-direct {v1, v3, v4}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget v3, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mPartialScanCount:I

    .line 42
    .line 43
    add-int/2addr v3, v2

    .line 44
    iput v3, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mPartialScanCount:I

    .line 45
    .line 46
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mNetworkPartialScanListener:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$PartialScanListener;

    .line 49
    .line 50
    invoke-virtual {v2, v0, p0, v1}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public checkAndStart()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->registerReceiver()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

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
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mVerboseLoggingEnabled:Z

    .line 7
    .line 8
    return-void
.end method

.method public getEasySetupLaunchCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mLaunchServiceCount:I

    .line 2
    .line 3
    return p0
.end method

.method public getEasySetupPartialScanCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mPartialScanCount:I

    .line 2
    .line 3
    return p0
.end method

.method public getEasySetupScanSettings()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mEasySetupSettings:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mHandler:Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$EasySetupHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method isHomeActivityVisible()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "activity"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/ActivityManager;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 31
    .line 32
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    return v1

    .line 41
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    if-nez p0, :cond_2

    .line 57
    .line 58
    return v1

    .line 59
    :cond_2
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    return p0

    .line 68
    :cond_3
    :goto_0
    return v1
.end method

.method isSufficientPartialScan()Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mWifiEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "SemWifiEasySetupManager"

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mVerboseLoggingEnabled:Z

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const-string p0, "Skip the partial scan when Wi-Fi is disabled"

    .line 13
    .line 14
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    :cond_0
    return v1

    .line 18
    :cond_1
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mLastPartialScanTimeStamp:J

    .line 19
    .line 20
    const-wide/high16 v5, -0x8000000000000000L

    .line 21
    .line 22
    cmp-long v0, v3, v5

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    if-eqz v0, :cond_5

    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v4

    .line 33
    iget-wide v6, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mLastPartialScanTimeStamp:J

    .line 34
    .line 35
    sub-long/2addr v4, v6

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->getPartialScanTime()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    int-to-long v6, v0

    .line 41
    cmp-long v0, v4, v6

    .line 42
    .line 43
    const-wide/16 v4, 0x3e8

    .line 44
    .line 45
    if-lez v0, :cond_3

    .line 46
    .line 47
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mVerboseLoggingEnabled:Z

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->getPartialScanTime()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    int-to-long v6, p0

    .line 61
    div-long/2addr v6, v4

    .line 62
    const-string p0, " s passed. Start partial scan"

    .line 63
    .line 64
    invoke-static {v6, v7, p0, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :cond_2
    return v3

    .line 72
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mVerboseLoggingEnabled:Z

    .line 73
    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v3, "skip partial scan because less than "

    .line 79
    .line 80
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->getPartialScanTime()I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    int-to-long v6, p0

    .line 88
    div-long/2addr v6, v4

    .line 89
    const-string p0, "s"

    .line 90
    .line 91
    invoke-static {v6, v7, p0, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    :cond_4
    return v1

    .line 99
    :cond_5
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mVerboseLoggingEnabled:Z

    .line 100
    .line 101
    if-eqz p0, :cond_6

    .line 102
    .line 103
    const-string p0, "first partial scan after boot"

    .line 104
    .line 105
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :cond_6
    return v3
.end method

.method public resetStatusCounters()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mLaunchServiceCount:I

    .line 3
    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mPartialScanCount:I

    .line 5
    .line 6
    return-void
.end method

.method public setEasySetupScanSettings(Ljava/lang/String;Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mEasySetupSettings:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mIsEnabled:Z

    .line 8
    .line 9
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mEasySetupSettings:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;

    .line 30
    .line 31
    iget-object v1, v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->ssidPatterns:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    iget-object v0, v0, Lcom/samsung/android/wifi/SemEasySetupWifiScanSettings;->pendingIntentForIdlePopup:Landroid/app/PendingIntent;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    const/4 p2, 0x1

    .line 44
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mIsEnabled:Z

    .line 45
    .line 46
    :cond_1
    const-string p2, "setEasySetupScanSettings package : "

    .line 47
    .line 48
    const-string v0, ", mIsEnabled : "

    .line 49
    .line 50
    invoke-static {p2, p1, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager;->mIsEnabled:Z

    .line 55
    .line 56
    const-string p2, "SemWifiEasySetupManager"

    .line 57
    .line 58
    invoke-static {p1, p0, p2}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
