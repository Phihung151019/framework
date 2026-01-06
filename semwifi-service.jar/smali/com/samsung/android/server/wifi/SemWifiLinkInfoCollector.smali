.class public final Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ClientModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;
    }
.end annotation


# static fields
.field private static final BIG_DATA_UPDATED:I = 0x2

.field private static final CHECK_DURATION:I = 0x2710

.field private static final CONNECTION_STATE_CHANGED:I = 0x1

.field private static final KEY_AWARE_CONNECTION:I = 0x3

.field private static final KEY_AWARE_DISCONNECTION:I = 0x4

.field private static final KEY_DONGLE_ROAM_EVENT:I = 0xb

.field private static final KEY_MHS_DISABLED:I = 0x8

.field private static final KEY_MHS_ENABLED:I = 0x7

.field private static final KEY_OPTIMIZER_ACTIVATED:I = 0x5

.field private static final KEY_OPTIMIZER_DEACTIVATED:I = 0x6

.field private static final KEY_P2P_CONNECTION:I = 0x1

.field private static final KEY_P2P_DISCONNECTION:I = 0x2

.field private static final KEY_SCHEDULED_PM_SESSION_CREATED:I = 0xc

.field private static final KEY_SCHEDULED_PM_SESSION_REMOVED:I = 0xd

.field private static final KEY_TWT_SESSION_CREATED:I = 0x9

.field private static final KEY_TWT_SESSION_REMOVED:I = 0xa

.field private static final STATS_INDEX_CCA_TIMES:I = 0x7

.field private static final STATS_INDEX_LINK_SPEED:I = 0x2

.field private static final STATS_INDEX_RADIO_ON_TIMES:I = 0x8

.field private static final STATS_INDEX_RSSI:I = 0x1

.field private static final STATS_INDEX_TIMESTAMP:I = 0x0

.field private static final STATS_INDEX_TX_BAD:I = 0x5

.field private static final STATS_INDEX_TX_RETRY:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SemWifiLinkInfoCollector"

.field private static final WIFI_OPTIMIZER_MODE_ENABLE:Ljava/lang/String; = "Enable"

.field private static final WIFI_OPTIMIZER_MODE_INTENT:Ljava/lang/String; = "com.samsung.android.wifi.LATENCYMODE"


# instance fields
.field private mAvgLinkSpeed:I

.field private mCcaBusyRatio:Ljava/lang/String;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConnectionTime:J

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDisconnectionTime:J

.field private final mHandler:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;

.field private mIsPrivateDnsActivated:I

.field private mIsScheduledPmConnected:Z

.field private mIsTwtConnected:Z

.field private mIsValidNetwork:I

.field private mIsVpnConnected:I

.field mOperationHistory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRssiCur:I

.field private mRssiMax:I

.field private mRssiMin:I

.field private final mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

.field private mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTotalTxBad:I

.field private mTotalTxRetries:I

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private final mWifiUsabilityStatsMonitor:Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;


# direct methods
.method public static synthetic $r8$lambda$Ob_iLSitDefDEmnixxlC_Wg8wzY(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->lambda$new$0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$gPD2sIUc22JYZ_XvzBGY8f8gbPg(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;ZZILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->lambda$new$2(ZZILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$gPt3lVTM4uTXoviioyY86zRvGPE(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->lambda$new$1(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$ptct4Ba01jSg4eS6zDk5l5bm7Ys(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->lambda$new$3(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmConnectionTime(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mConnectionTime:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDisconnectionTime(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mDisconnectionTime:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$msendInternalMessage(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->sendInternalMessage(IIILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/os/HandlerThread;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsPrivateDnsActivated:I

    .line 21
    .line 22
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsVpnConnected:I

    .line 23
    .line 24
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsValidNetwork:I

    .line 25
    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mConnectionTime:J

    .line 29
    .line 30
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mDisconnectionTime:J

    .line 31
    .line 32
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mAvgLinkSpeed:I

    .line 33
    .line 34
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiCur:I

    .line 35
    .line 36
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiMax:I

    .line 37
    .line 38
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiMin:I

    .line 39
    .line 40
    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mTotalTxBad:I

    .line 42
    .line 43
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mTotalTxRetries:I

    .line 44
    .line 45
    const-string v0, "0.0"

    .line 46
    .line 47
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mCcaBusyRatio:Ljava/lang/String;

    .line 48
    .line 49
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsTwtConnected:Z

    .line 50
    .line 51
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsScheduledPmConnected:Z

    .line 52
    .line 53
    new-instance v0, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mOperationHistory:Ljava/util/HashMap;

    .line 59
    .line 60
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;

    .line 61
    .line 62
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 63
    .line 64
    .line 65
    move-result-object p3

    .line 66
    invoke-direct {v0, p0, p3}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;Landroid/os/Looper;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mHandler:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;

    .line 70
    .line 71
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 72
    .line 73
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 74
    .line 75
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$$ExternalSyntheticLambda0;

    .line 76
    .line 77
    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 81
    .line 82
    .line 83
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$$ExternalSyntheticLambda1;

    .line 84
    .line 85
    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2, p3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;)V

    .line 89
    .line 90
    .line 91
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$$ExternalSyntheticLambda2;

    .line 92
    .line 93
    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, p3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerP2pStateListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$P2pConnectionStateListener;)V

    .line 97
    .line 98
    .line 99
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$$ExternalSyntheticLambda3;

    .line 100
    .line 101
    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2, p3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerWifiAwareStateListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiAwareStateListener;)V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getScanPoll()Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 116
    .line 117
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiUsabilityStatsMonitor()Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mWifiUsabilityStatsMonitor:Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;

    .line 126
    .line 127
    const-string p2, "connectivity"

    .line 128
    .line 129
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    check-cast p2, Landroid/net/ConnectivityManager;

    .line 134
    .line 135
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 136
    .line 137
    new-instance p2, Landroid/content/IntentFilter;

    .line 138
    .line 139
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string p3, "com.samsung.android.wifi.LATENCYMODE"

    .line 143
    .line 144
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$1;

    .line 148
    .line 149
    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;)V

    .line 150
    .line 151
    .line 152
    const/4 p0, 0x4

    .line 153
    invoke-virtual {p1, p3, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method private checkRecentRunningHistory(IILjava/lang/Long;)I
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mOperationHistory:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mOperationHistory:Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/Long;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object p1, v2

    .line 33
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mOperationHistory:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mOperationHistory:Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    move-object v2, p0

    .line 56
    check-cast v2, Ljava/lang/Long;

    .line 57
    .line 58
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 59
    .line 60
    .line 61
    move-result-wide v3

    .line 62
    cmp-long p0, v3, v0

    .line 63
    .line 64
    if-lez p0, :cond_3

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 71
    .line 72
    .line 73
    move-result-wide p2

    .line 74
    const-wide/16 v3, 0x2710

    .line 75
    .line 76
    sub-long/2addr p2, v3

    .line 77
    cmp-long p0, v0, p2

    .line 78
    .line 79
    if-gtz p0, :cond_2

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 82
    .line 83
    .line 84
    move-result-wide p0

    .line 85
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 86
    .line 87
    .line 88
    move-result-wide p2

    .line 89
    cmp-long p0, p0, p2

    .line 90
    .line 91
    if-lez p0, :cond_3

    .line 92
    .line 93
    :cond_2
    const/4 p0, 0x1

    .line 94
    return p0

    .line 95
    :cond_3
    const/4 p0, 0x0

    .line 96
    return p0
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mScreenOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$new$1(I)V
    .locals 4

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x2

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x7

    .line 9
    invoke-direct {p0, v3, p1, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->sendInternalMessage(IIILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/16 v0, 0xb

    .line 14
    .line 15
    if-ne p1, v0, :cond_1

    .line 16
    .line 17
    const/16 p1, 0x8

    .line 18
    .line 19
    invoke-direct {p0, v3, p1, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->sendInternalMessage(IIILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method private synthetic lambda$new$2(ZZILjava/lang/String;)V
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    const/4 p3, 0x0

    .line 3
    const/4 p4, 0x2

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-direct {p0, p4, p1, p3, p2}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->sendInternalMessage(IIILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-direct {p0, p4, p4, p3, p2}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->sendInternalMessage(IIILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private synthetic lambda$new$3(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x3

    .line 7
    invoke-direct {p0, v2, p1, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->sendInternalMessage(IIILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 p1, 0x4

    .line 12
    invoke-direct {p0, v2, p1, v1, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->sendInternalMessage(IIILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private sendInternalMessage(IIILjava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mHandler:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public dongleRoamEvent()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    const/16 v3, 0xb

    .line 5
    .line 6
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->sendInternalMessage(IIILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public getApChipsetOuiFromVsie()Ljava/lang/String;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/ScanPool;->getLastScanResults()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/util/WifiUtils;->getMacOuiFromVsie(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Ljava/util/HashSet;

    .line 24
    .line 25
    const-string v23, "8C:BE:BE"

    .line 26
    .line 27
    const-string v24, "50:6F:9A"

    .line 28
    .line 29
    const-string v2, "00:17:F2"

    .line 30
    .line 31
    const-string v3, "00:03:93"

    .line 32
    .line 33
    const-string v4, "00:0B:86"

    .line 34
    .line 35
    const-string v5, "F8:32:E4"

    .line 36
    .line 37
    const-string v6, "00:04:0E"

    .line 38
    .line 39
    const-string v7, "00:40:96"

    .line 40
    .line 41
    const-string v8, "00:18:0A"

    .line 42
    .line 43
    const-string v9, "88:36:6C"

    .line 44
    .line 45
    const-string v10, "00:90:4C"

    .line 46
    .line 47
    const-string v11, "00:09:0F"

    .line 48
    .line 49
    const-string v12, "F4:F5:E8"

    .line 50
    .line 51
    const-string v13, "00:A0:57"

    .line 52
    .line 53
    const-string v14, "00:19:3B"

    .line 54
    .line 55
    const-string v15, "00:50:F2"

    .line 56
    .line 57
    const-string v16, "5C:5B:35"

    .line 58
    .line 59
    const-string v17, "00:14:6C"

    .line 60
    .line 61
    const-string v18, "00:A0:C6"

    .line 62
    .line 63
    const-string v19, "00:13:92"

    .line 64
    .line 65
    const-string v20, "00:1D:2E"

    .line 66
    .line 67
    const-string v21, "00:1F:41"

    .line 68
    .line 69
    const-string v22, "C0:4A:00"

    .line 70
    .line 71
    filled-new-array/range {v2 .. v24}, [Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_2

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-nez v3, :cond_1

    .line 103
    .line 104
    return-object v2

    .line 105
    :cond_2
    const-string v0, ""

    .line 106
    .line 107
    return-object v0
.end method

.method public getAvgLinkSpeed()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mAvgLinkSpeed:I

    .line 2
    .line 3
    return p0
.end method

.method public getBssidOui()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    if-eqz p0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x11

    .line 18
    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    const/16 v1, 0x8

    .line 23
    .line 24
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_1
    const-string p0, ""

    .line 30
    .line 31
    return-object p0
.end method

.method public getCcaBusyRatio()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mCcaBusyRatio:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method getChipsetVendorName()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiVersionProvider()Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->getWifiChipVendor()Lcom/samsung/android/server/wifi/driver/WifiChipVendor;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public getConnectedTime()I
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-wide/16 v3, 0x2710

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mConnectionTime:J

    .line 16
    .line 17
    sub-long/2addr v0, v5

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mDisconnectionTime:J

    .line 20
    .line 21
    sub-long/2addr v0, v5

    .line 22
    cmp-long v0, v0, v3

    .line 23
    .line 24
    if-gez v0, :cond_1

    .line 25
    .line 26
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mConnectionTime:J

    .line 27
    .line 28
    sub-long v0, v5, v0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-wide/16 v0, 0x0

    .line 32
    .line 33
    :goto_0
    const-wide/16 v5, 0x1388

    .line 34
    .line 35
    cmp-long p0, v0, v5

    .line 36
    .line 37
    if-gez p0, :cond_2

    .line 38
    .line 39
    const/4 p0, 0x0

    .line 40
    return p0

    .line 41
    :cond_2
    cmp-long p0, v0, v3

    .line 42
    .line 43
    if-gez p0, :cond_3

    .line 44
    .line 45
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :cond_3
    const-wide/16 v2, 0x7530

    .line 48
    .line 49
    cmp-long p0, v0, v2

    .line 50
    .line 51
    if-gez p0, :cond_4

    .line 52
    .line 53
    const/4 p0, 0x2

    .line 54
    return p0

    .line 55
    :cond_4
    const-wide/32 v2, 0xea60

    .line 56
    .line 57
    .line 58
    cmp-long p0, v0, v2

    .line 59
    .line 60
    if-gez p0, :cond_5

    .line 61
    .line 62
    const/4 p0, 0x3

    .line 63
    return p0

    .line 64
    :cond_5
    const-wide/32 v2, 0x493e0

    .line 65
    .line 66
    .line 67
    cmp-long p0, v0, v2

    .line 68
    .line 69
    if-gez p0, :cond_6

    .line 70
    .line 71
    const/4 p0, 0x4

    .line 72
    return p0

    .line 73
    :cond_6
    const/4 p0, 0x5

    .line 74
    return p0
.end method

.method public getNumOfObss()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mScanPool:Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/util/ScanPool;->getLastScanResults()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 32
    .line 33
    iget v2, v2, Landroid/net/wifi/ScanResult;->frequency:I

    .line 34
    .line 35
    if-ne v2, v0, :cond_1

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    return v1
.end method

.method public getOperatingFrequency()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public getRssiCur()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiCur:I

    .line 2
    .line 3
    return p0
.end method

.method public getRssiMax()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiMax:I

    .line 2
    .line 3
    return p0
.end method

.method public getRssiMin()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiMin:I

    .line 2
    .line 3
    return p0
.end method

.method public getTxBad()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mTotalTxBad:I

    .line 2
    .line 3
    return p0
.end method

.method public getTxRetries()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mTotalTxRetries:I

    .line 2
    .line 3
    return p0
.end method

.method public getWifiInfo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 9
    .line 10
    return-void
.end method

.method public getWifiStandard()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method hasScheduledPmSession(Ljava/lang/Long;)I
    .locals 2

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    const/16 v1, 0xd

    .line 4
    .line 5
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->checkRecentRunningHistory(IILjava/lang/Long;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method hasTwtSession(Ljava/lang/Long;)I
    .locals 2

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->checkRecentRunningHistory(IILjava/lang/Long;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method isAwareConnected(Ljava/lang/Long;)I
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x4

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->checkRecentRunningHistory(IILjava/lang/Long;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method isLowLatencyModeActivated(Ljava/lang/Long;)I
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x6

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->checkRecentRunningHistory(IILjava/lang/Long;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method isMhsEnabled(Ljava/lang/Long;)I
    .locals 2

    .line 1
    const/4 v0, 0x7

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->checkRecentRunningHistory(IILjava/lang/Long;)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method isP2pConnected(Ljava/lang/Long;)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->checkRecentRunningHistory(IILjava/lang/Long;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isPrivateDnsActivated()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsPrivateDnsActivated:I

    .line 2
    .line 3
    return p0
.end method

.method isRoamed(Ljava/lang/Long;)I
    .locals 1

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    invoke-direct {p0, v0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->checkRecentRunningHistory(IILjava/lang/Long;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public isValidNetwork()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsValidNetwork:I

    .line 2
    .line 3
    return p0
.end method

.method public isVpnConnected()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsVpnConnected:I

    .line 2
    .line 3
    return p0
.end method

.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mHandler:Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector$LinkInfoCollectorHandler;

    .line 4
    .line 5
    iget-boolean p2, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {p0, v1, p2, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string p1, "ifaceName is null, isConnected "

    .line 20
    .line 21
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-boolean p1, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "SemWifiLinkInfoCollector"

    .line 34
    .line 35
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public updateLinkStats(J)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mAvgLinkSpeed:I

    .line 5
    .line 6
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiCur:I

    .line 7
    .line 8
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiMax:I

    .line 9
    .line 10
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiMin:I

    .line 11
    .line 12
    const/4 v2, -0x1

    .line 13
    iput v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mTotalTxBad:I

    .line 14
    .line 15
    iput v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mTotalTxRetries:I

    .line 16
    .line 17
    const-string v2, "0.0"

    .line 18
    .line 19
    iput-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mCcaBusyRatio:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mWifiUsabilityStatsMonitor:Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;

    .line 22
    .line 23
    const/16 v3, 0xa

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiUsabilityStatsMonitor;->getWifiUsabilityStatsEntry(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "line.separator"

    .line 30
    .line 31
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    array-length v3, v2

    .line 40
    const/4 v4, 0x3

    .line 41
    if-ge v3, v4, :cond_0

    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_0
    const/4 v3, 0x1

    .line 46
    aget-object v4, v2, v3

    .line 47
    .line 48
    const-string v5, ","

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    aget-object v6, v4, v1

    .line 55
    .line 56
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v6

    .line 60
    sub-long v8, p1, v6

    .line 61
    .line 62
    const-wide/16 v10, 0x2710

    .line 63
    .line 64
    cmp-long v8, v8, v10

    .line 65
    .line 66
    if-lez v8, :cond_1

    .line 67
    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :cond_1
    aget-object v8, v4, v3

    .line 71
    .line 72
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    iput v8, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiCur:I

    .line 77
    .line 78
    iput v8, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiMax:I

    .line 79
    .line 80
    iput v8, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiMin:I

    .line 81
    .line 82
    const/4 v8, 0x2

    .line 83
    aget-object v9, v4, v8

    .line 84
    .line 85
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    iput v9, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mAvgLinkSpeed:I

    .line 90
    .line 91
    const/4 v12, 0x5

    .line 92
    aget-object v13, v4, v12

    .line 93
    .line 94
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v13

    .line 98
    const/4 v15, 0x6

    .line 99
    aget-object v16, v4, v15

    .line 100
    .line 101
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 102
    .line 103
    .line 104
    move-result-wide v16

    .line 105
    const/16 v18, 0x7

    .line 106
    .line 107
    aget-object v19, v4, v18

    .line 108
    .line 109
    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 110
    .line 111
    .line 112
    move-result-wide v19

    .line 113
    const/16 v21, 0x8

    .line 114
    .line 115
    aget-object v4, v4, v21

    .line 116
    .line 117
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 118
    .line 119
    .line 120
    move-result-wide v22

    .line 121
    move/from16 v24, v1

    .line 122
    .line 123
    move v4, v8

    .line 124
    :goto_0
    array-length v1, v2

    .line 125
    if-ge v4, v1, :cond_5

    .line 126
    .line 127
    aget-object v1, v2, v4

    .line 128
    .line 129
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    aget-object v25, v1, v24

    .line 134
    .line 135
    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 136
    .line 137
    .line 138
    move-result-wide v25

    .line 139
    sub-long v25, v6, v25

    .line 140
    .line 141
    cmp-long v25, v25, v10

    .line 142
    .line 143
    if-lez v25, :cond_2

    .line 144
    .line 145
    add-int/lit8 v1, v4, -0x1

    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_2
    aget-object v25, v1, v3

    .line 149
    .line 150
    move/from16 v26, v8

    .line 151
    .line 152
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    iget v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiMax:I

    .line 157
    .line 158
    if-le v8, v10, :cond_3

    .line 159
    .line 160
    iput v8, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiMax:I

    .line 161
    .line 162
    :cond_3
    iget v10, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiMin:I

    .line 163
    .line 164
    if-ge v8, v10, :cond_4

    .line 165
    .line 166
    iput v8, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mRssiMin:I

    .line 167
    .line 168
    :cond_4
    aget-object v1, v1, v26

    .line 169
    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    add-int/2addr v9, v1

    .line 175
    add-int/lit8 v4, v4, 0x1

    .line 176
    .line 177
    move/from16 v8, v26

    .line 178
    .line 179
    const-wide/16 v10, 0x2710

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_5
    move/from16 v1, v24

    .line 183
    .line 184
    :goto_1
    if-le v1, v3, :cond_7

    .line 185
    .line 186
    aget-object v2, v2, v1

    .line 187
    .line 188
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    div-int/2addr v9, v1

    .line 193
    iput v9, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mAvgLinkSpeed:I

    .line 194
    .line 195
    aget-object v1, v2, v12

    .line 196
    .line 197
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 198
    .line 199
    .line 200
    move-result-wide v4

    .line 201
    sub-long/2addr v13, v4

    .line 202
    long-to-int v1, v13

    .line 203
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mTotalTxBad:I

    .line 204
    .line 205
    aget-object v1, v2, v15

    .line 206
    .line 207
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 208
    .line 209
    .line 210
    move-result-wide v4

    .line 211
    sub-long v4, v16, v4

    .line 212
    .line 213
    long-to-int v1, v4

    .line 214
    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mTotalTxRetries:I

    .line 215
    .line 216
    aget-object v1, v2, v18

    .line 217
    .line 218
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 219
    .line 220
    .line 221
    move-result-wide v4

    .line 222
    sub-long v4, v19, v4

    .line 223
    .line 224
    aget-object v1, v2, v21

    .line 225
    .line 226
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 227
    .line 228
    .line 229
    move-result-wide v1

    .line 230
    sub-long v1, v22, v1

    .line 231
    .line 232
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    invoke-virtual {v0, v6}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->isRoamed(Ljava/lang/Long;)I

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    if-ne v6, v3, :cond_6

    .line 241
    .line 242
    const-string v1, "-1.0"

    .line 243
    .line 244
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mCcaBusyRatio:Ljava/lang/String;

    .line 245
    .line 246
    return-void

    .line 247
    :cond_6
    const-wide/16 v6, 0x0

    .line 248
    .line 249
    cmp-long v3, v4, v6

    .line 250
    .line 251
    if-lez v3, :cond_7

    .line 252
    .line 253
    const-wide/16 v6, 0x1

    .line 254
    .line 255
    cmp-long v3, v1, v6

    .line 256
    .line 257
    if-lez v3, :cond_7

    .line 258
    .line 259
    long-to-double v3, v4

    .line 260
    long-to-double v1, v1

    .line 261
    div-double/2addr v3, v1

    .line 262
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    const-string v2, "%.1f"

    .line 271
    .line 272
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mCcaBusyRatio:Ljava/lang/String;

    .line 277
    .line 278
    :cond_7
    :goto_2
    return-void
.end method

.method public updateNetworkCapabilities()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsPrivateDnsActivated:I

    .line 9
    .line 10
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsVpnConnected:I

    .line 11
    .line 12
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsValidNetwork:I

    .line 13
    .line 14
    array-length v2, v0

    .line 15
    :goto_0
    if-ge v1, v2, :cond_4

    .line 16
    .line 17
    aget-object v3, v0, v1

    .line 18
    .line 19
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 20
    .line 21
    invoke-virtual {v4, v3}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    if-nez v4, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/4 v5, 0x1

    .line 29
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_2

    .line 34
    .line 35
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 36
    .line 37
    invoke-virtual {v6, v3}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/net/LinkProperties;->isPrivateDnsActive()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsPrivateDnsActivated:I

    .line 48
    .line 49
    :cond_1
    const/16 v3, 0x10

    .line 50
    .line 51
    invoke-virtual {v4, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    iput v3, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsValidNetwork:I

    .line 56
    .line 57
    :cond_2
    const/4 v3, 0x4

    .line 58
    invoke-virtual {v4, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    iput v5, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsVpnConnected:I

    .line 65
    .line 66
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    return-void
.end method

.method public updateScheduledPmState(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    if-lez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsScheduledPmConnected:Z

    .line 8
    .line 9
    const/16 p1, 0xc

    .line 10
    .line 11
    invoke-direct {p0, v1, p1, v2, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->sendInternalMessage(IIILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsScheduledPmConnected:Z

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/16 p1, 0xd

    .line 20
    .line 21
    invoke-direct {p0, v1, p1, v2, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->sendInternalMessage(IIILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsScheduledPmConnected:Z

    .line 25
    .line 26
    return-void
.end method

.method public updateTwtState(I)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x0

    .line 4
    if-lez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsTwtConnected:Z

    .line 8
    .line 9
    const/16 p1, 0x9

    .line 10
    .line 11
    invoke-direct {p0, v1, p1, v2, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->sendInternalMessage(IIILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsTwtConnected:Z

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/16 p1, 0xa

    .line 20
    .line 21
    invoke-direct {p0, v1, p1, v2, v0}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->sendInternalMessage(IIILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->mIsTwtConnected:Z

    .line 25
    .line 26
    return-void
.end method
