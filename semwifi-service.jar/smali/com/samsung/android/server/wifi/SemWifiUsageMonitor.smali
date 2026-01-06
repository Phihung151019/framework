.class public Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;
.super Lcom/android/internal/util/StateMachine;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;,
        Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;,
        Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$DefaultState;,
        Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$EnabledState;,
        Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$DisabledState;,
        Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;,
        Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$DisconnectedState;
    }
.end annotation


# static fields
.field private static final CMD_INITIALIZE:I = 0x0

.field private static final CMD_NETWORK_STATE_CHANGED:I = 0x2

.field private static final CMD_UPDATE_WIFI_USAGE:I = 0x3

.field private static final CMD_WIFI_STATE_CHANGED:I = 0x1

.field private static final DAYS_IN_WEEK:J = 0x7L

.field private static final DAY_IN_MSEC:J = 0x5265c00L

.field private static final DBG:Z

.field private static final EVENT_CONFIGURED_NETWORKS_UPDATED:I = 0x4

.field private static final EVENT_DATE_CHANGED:I = 0x7

.field private static final EVENT_SHUTDOWN:I = 0x9

.field private static final EVENT_TIMEZONE_CHANGED:I = 0x6

.field private static final EVENT_TIME_CHANGED:I = 0x8

.field private static final EVENT_WIFI_ROAM:I = 0x5

.field private static final HOUR_IN_MSEC:J = 0x36ee80L

.field private static final INVALID_INITIALIZATION:J = -0x1L

.field private static final LOG_FILE_PATH:Ljava/lang/String; = "/data/misc/wifi/usage_monitor.conf"

.field private static final MAX_DAILY_HISTORY_COUNT:I = 0x3c

.field private static final NUM_LOG_RECS:I

.field private static final TAG:Ljava/lang/String; = "SemWifiUsageMonitor"

.field private static final USAGE_BY_BAND:I = 0x1

.field private static final USAGE_BY_STANDARD:I = 0x2

.field private static final VERSION:Ljava/lang/String; = "20230706"

.field private static final WIFI_BAND_MULTI_LINK:I = 0x40

.field private static final mFileLock:Ljava/lang/Object;

.field private static final mMapLock:Ljava/lang/Object;


# instance fields
.field private final logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClock:Lcom/samsung/android/server/wifi/util/SemClock;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private final mConnectedState:Lcom/android/internal/util/State;

.field private mConnectedStateEnterTime:J

.field private final mContext:Landroid/content/Context;

.field private mDailyHistory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private final mDisabledState:Lcom/android/internal/util/State;

.field private mDisabledStateEnterTime:J

.field private final mDisconnectedState:Lcom/android/internal/util/State;

.field private final mEnabledState:Lcom/android/internal/util/State;

.field private mEnabledStateEnterTime:J

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private mIfaceName:Ljava/lang/String;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsWifiConnected:Z

.field private mLastNetworkId:I

.field private mLastNetworkState:Landroid/net/NetworkInfo$State;

.field private mLastSaveHistoryTime:J

.field private mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

.field private mLastWifiEnabledUpdatedTimeElapsed:J

.field private mLastWifiEnabledUpdatedTimeEpoch:J

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mNetwork:Landroid/net/Network;

.field private mNetworkHistory:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousTotalElapsedTime:J

.field private mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

.field private mTotalUsageSinceBoot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

.field private mWifiEnabled:Z

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method public static synthetic $r8$lambda$wXQBk4tmQwjPTiMt4_u-c7UXgm0(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->lambda$registerReceiver$0(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/util/LogUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/util/SemClock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfig(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectedState(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mConnectedState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDailyHistory(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisabledState(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDisabledState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDisconnectedState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnabledState(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/android/internal/util/State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mEnabledState:Lcom/android/internal/util/State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIfaceName(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mIsWifiConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastNetworkId(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastNetworkId:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/NetworkInfo$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastNetworkState:Landroid/net/NetworkInfo$State;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastUsageSnapshot(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastWifiEnabledUpdatedTimeElapsed(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastWifiEnabledUpdatedTimeElapsed:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviousTotalElapsedTime(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mPreviousTotalElapsedTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmTotalUsageHistory(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTotalUsageSinceBoot(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageSinceBoot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mVerboseLoggingEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiEnabled(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mWifiEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/SemWifiInjector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmConfig(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmConnectedStateEnterTime(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mConnectedStateEnterTime:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDisabledStateEnterTime(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDisabledStateEnterTime:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEnabledStateEnterTime(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mEnabledStateEnterTime:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIfaceName(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastNetworkId(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastNetworkId:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastNetworkState(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;Landroid/net/NetworkInfo$State;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastNetworkState:Landroid/net/NetworkInfo$State;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastWifiEnabledUpdatedTimeElapsed(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastWifiEnabledUpdatedTimeElapsed:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastWifiEnabledUpdatedTimeEpoch(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastWifiEnabledUpdatedTimeEpoch:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNetwork(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;Landroid/net/Network;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetwork:Landroid/net/Network;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;Landroid/net/wifi/WifiInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mbandIndexToString(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->bandIndexToString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mconvertTimeToSimpleDateFormat(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->convertTimeToSimpleDateFormat(J)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetBandIndex(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;Landroid/net/wifi/WifiInfo;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->getBandIndex(Landroid/net/wifi/WifiInfo;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$msaveHistory(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->saveHistory(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method static bridge synthetic -$$Nest$msetWifiNetworkState(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->setWifiNetworkState(ZLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateHistoryAndNetworks(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->updateHistoryAndNetworks()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateWifiUsage(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->updateWifiUsage(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateWifiUsage$1(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->updateWifiUsage(ZZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->DBG:Z

    .line 2
    .line 3
    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmMapLock()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mMapLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic -$$Nest$smwifiStandardToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->wifiStandardToString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ro.product_ship"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    xor-int/2addr v0, v1

    .line 9
    sput-boolean v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->DBG:Z

    .line 10
    .line 11
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/16 v0, 0x64

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 v0, 0xc8

    .line 21
    .line 22
    :goto_0
    sput v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->NUM_LOG_RECS:I

    .line 23
    .line 24
    new-instance v0, Ljava/lang/Object;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mMapLock:Ljava/lang/Object;

    .line 30
    .line 31
    new-instance v0, Ljava/lang/Object;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mFileLock:Ljava/lang/Object;

    .line 37
    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/util/SemClock;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Landroid/util/LocalLog;)V
    .locals 4

    .line 1
    const-string v0, "SemWifiUsageMonitor"

    .line 2
    .line 3
    invoke-direct {p0, v0, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    new-instance p3, Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 7
    .line 8
    invoke-direct {p3}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->logUtils:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 12
    .line 13
    sget-object p3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastNetworkState:Landroid/net/NetworkInfo$State;

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mVerboseLoggingEnabled:Z

    .line 19
    .line 20
    const/4 p3, 0x0

    .line 21
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetwork:Landroid/net/Network;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 24
    .line 25
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    .line 26
    .line 27
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 28
    .line 29
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageSinceBoot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 30
    .line 31
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 32
    .line 33
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 34
    .line 35
    const-wide/16 v0, 0x0

    .line 36
    .line 37
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mPreviousTotalElapsedTime:J

    .line 38
    .line 39
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastSaveHistoryTime:J

    .line 40
    .line 41
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$DefaultState;

    .line 42
    .line 43
    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$DefaultState;-><init>(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V

    .line 44
    .line 45
    .line 46
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDefaultState:Lcom/android/internal/util/State;

    .line 47
    .line 48
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$EnabledState;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$EnabledState;-><init>(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mEnabledState:Lcom/android/internal/util/State;

    .line 54
    .line 55
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$DisabledState;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$DisabledState;-><init>(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDisabledState:Lcom/android/internal/util/State;

    .line 61
    .line 62
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;

    .line 63
    .line 64
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$ConnectedState;-><init>(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V

    .line 65
    .line 66
    .line 67
    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mConnectedState:Lcom/android/internal/util/State;

    .line 68
    .line 69
    new-instance v3, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$DisconnectedState;

    .line 70
    .line 71
    invoke-direct {v3, p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$DisconnectedState;-><init>(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V

    .line 72
    .line 73
    .line 74
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDisconnectedState:Lcom/android/internal/util/State;

    .line 75
    .line 76
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 79
    .line 80
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 81
    .line 82
    iput-object p5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 83
    .line 84
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 89
    .line 90
    invoke-virtual {p4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 95
    .line 96
    iput-object p6, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLocalLog:Landroid/util/LocalLog;

    .line 97
    .line 98
    sget p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->NUM_LOG_RECS:I

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->setLogRecSize(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p3}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v1, p3}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v0, p3}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v3, v0}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, p3}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->getWhatToString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private bandIndexToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    const-string p0, "2.4GHz"

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    const/4 p0, 0x2

    .line 8
    if-ne p1, p0, :cond_1

    .line 9
    .line 10
    const-string p0, "5GHz"

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_1
    const/16 p0, 0x8

    .line 14
    .line 15
    if-ne p1, p0, :cond_2

    .line 16
    .line 17
    const-string p0, "6GHz"

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_2
    const/16 p0, 0x40

    .line 21
    .line 22
    if-ne p1, p0, :cond_3

    .line 23
    .line 24
    const-string p0, "Multi-link"

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_3
    const-string p0, "unknownBand"

    .line 28
    .line 29
    return-object p0
.end method

.method private byteToHex(B)Ljava/lang/String;
    .locals 2

    .line 1
    shr-int/lit8 p0, p1, 0x4

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0xf

    .line 4
    .line 5
    const/16 v0, 0x10

    .line 6
    .line 7
    invoke-static {p0, v0}, Ljava/lang/Character;->forDigit(II)C

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    and-int/lit8 p1, p1, 0xf

    .line 12
    .line 13
    invoke-static {p1, v0}, Ljava/lang/Character;->forDigit(II)C

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x2

    .line 18
    new-array v0, v0, [C

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    aput-char p0, v0, v1

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    aput-char p1, v0, p0

    .line 25
    .line 26
    new-instance p0, Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    .line 29
    .line 30
    .line 31
    return-object p0
.end method

.method private convertTimeToSimpleDateFormat(J)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v0, 0x3e8

    .line 9
    .line 10
    div-long v0, p1, v0

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 20
    .line 21
    const-string v1, "yyyy-MM-dd"

    .line 22
    .line 23
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/util/Date;

    .line 29
    .line 30
    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-object p0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v0, "Exception on convertTimeToSimpleDateFormat: "

    .line 42
    .line 43
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string p2, "SemWifiUsageMonitor"

    .line 54
    .line 55
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-object p0
.end method

.method private convertTimeToSimpleDateTimeFormat(J)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-wide/16 v0, 0x3e8

    .line 9
    .line 10
    div-long v0, p1, v0

    .line 11
    .line 12
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 20
    .line 21
    const-string v1, "yyyy/MM/dd HH:mm:ss"

    .line 22
    .line 23
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/util/Date;

    .line 29
    .line 30
    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-object p0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    new-instance p2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v0, "Exception on convertTimeToSimpleDateTimeFormat: "

    .line 42
    .line 43
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string p2, "SemWifiUsageMonitor"

    .line 54
    .line 55
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-object p0
.end method

.method private decodeHexString(Ljava/lang/String;)[B
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    rem-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    div-int/lit8 v0, v0, 0x2

    .line 15
    .line 16
    new-array v0, v0, [B

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ge v1, v2, :cond_0

    .line 24
    .line 25
    div-int/lit8 v2, v1, 0x2

    .line 26
    .line 27
    add-int/lit8 v3, v1, 0x2

    .line 28
    .line 29
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->hexToByte(Ljava/lang/String;)B

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    aput-byte v1, v0, v2

    .line 38
    .line 39
    move v1, v3

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-object v0

    .line 42
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    const-string p1, "Invalid hexadecimal String supplied."

    .line 45
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0
.end method

.method private encodeHexString([B)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    array-length v2, p1

    .line 8
    if-ge v1, v2, :cond_0

    .line 9
    .line 10
    aget-byte v2, p1, v1

    .line 11
    .line 12
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->byteToHex(B)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method private frequencyToBandIndex(I)I
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
    const/4 p0, -0x1

    .line 36
    return p0
.end method

.method private getAutoUpgradeConfigKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    const-string p0, "SAE"

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    add-int/lit8 v1, v1, -0x3

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, "WPA_PSK"

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0

    .line 45
    :cond_1
    const-string p0, "OWE"

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_2

    .line 52
    .line 53
    new-instance p0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    add-int/lit8 v1, v1, -0x3

    .line 63
    .line 64
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string p1, "NONE"

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :cond_2
    return-object p1
.end method

.method private getBandIndex(Landroid/net/wifi/WifiInfo;)I
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, -0x1

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getAssociatedMloLinks()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x2

    .line 22
    if-lt v0, v1, :cond_1

    .line 23
    .line 24
    const/16 p0, 0x40

    .line 25
    .line 26
    return p0

    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->frequencyToBandIndex(I)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    return p0
.end method

.method private getSummary()Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "****************************************************************\n[[[Total Usage]]]\ntotalRecordedTime: "

    .line 2
    .line 3
    sget-object v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mMapLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mPreviousTotalElapsedTime:J

    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v5

    .line 19
    add-long/2addr v3, v5

    .line 20
    const-wide/16 v5, 0x3e8

    .line 21
    .line 22
    div-long/2addr v3, v5

    .line 23
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, " sec, EnabledTime: "

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 32
    .line 33
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalEnabledTime:J

    .line 34
    .line 35
    div-long/2addr v3, v5

    .line 36
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, " sec, #ofConnections: "

    .line 40
    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 45
    .line 46
    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mNumberOfConnections:I

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, ", "

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, "\n"

    .line 66
    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, "[[[Total Usage Since Boot]]]\n"

    .line 83
    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v0, "timeSinceBoot: "

    .line 100
    .line 101
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 107
    .line 108
    .line 109
    move-result-wide v3

    .line 110
    div-long/2addr v3, v5

    .line 111
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v0, " sec, EnabledTime: "

    .line 115
    .line 116
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageSinceBoot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 120
    .line 121
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalEnabledTime:J

    .line 122
    .line 123
    div-long/2addr v3, v5

    .line 124
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v0, " sec, #ofConnections: "

    .line 128
    .line 129
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageSinceBoot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 133
    .line 134
    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mNumberOfConnections:I

    .line 135
    .line 136
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v0, ", "

    .line 140
    .line 141
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageSinceBoot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v0, "\n"

    .line 154
    .line 155
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v0, "[[[Daily Usage]]] - "

    .line 171
    .line 172
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 176
    .line 177
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v0, " days\n"

    .line 185
    .line 186
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 194
    .line 195
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-eqz v3, :cond_0

    .line 208
    .line 209
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    check-cast v3, Ljava/lang/String;

    .line 214
    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v0, " - EnabledTime: "

    .line 227
    .line 228
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 232
    .line 233
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 238
    .line 239
    iget-wide v7, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalEnabledTime:J

    .line 240
    .line 241
    div-long/2addr v7, v5

    .line 242
    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v0, " sec, #ofConnections: "

    .line 246
    .line 247
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 251
    .line 252
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 257
    .line 258
    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mNumberOfConnections:I

    .line 259
    .line 260
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    const-string v0, ", "

    .line 264
    .line 265
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 269
    .line 270
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 275
    .line 276
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const-string v0, "\n"

    .line 284
    .line 285
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    goto :goto_0

    .line 293
    :catchall_0
    move-exception p0

    .line 294
    goto/16 :goto_2

    .line 295
    .line 296
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    const-string v0, "[[[Network Usage]]] - "

    .line 305
    .line 306
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 310
    .line 311
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    const-string v0, " networks\n"

    .line 319
    .line 320
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 328
    .line 329
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    if-eqz v3, :cond_1

    .line 342
    .line 343
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    check-cast v3, Ljava/lang/String;

    .line 348
    .line 349
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 350
    .line 351
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    check-cast v4, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 356
    .line 357
    iget-wide v4, v4, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mCreationTimeEpoch:J

    .line 358
    .line 359
    invoke-direct {p0, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->convertTimeToSimpleDateTimeFormat(J)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 364
    .line 365
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v5

    .line 369
    check-cast v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 370
    .line 371
    iget-wide v5, v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mUpdatedTimeEpoch:J

    .line 372
    .line 373
    invoke-direct {p0, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->convertTimeToSimpleDateTimeFormat(J)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v5

    .line 377
    new-instance v6, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    const-string v0, " - cTime "

    .line 389
    .line 390
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    const-string v0, " - uTime "

    .line 397
    .line 398
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    const-string v0, ", #ofConnections: "

    .line 405
    .line 406
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 410
    .line 411
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 416
    .line 417
    iget v0, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mNumberOfConnections:I

    .line 418
    .line 419
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    const-string v0, ", "

    .line 423
    .line 424
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 428
    .line 429
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 434
    .line 435
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    const-string v0, "\n"

    .line 443
    .line 444
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    goto :goto_1

    .line 452
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .line 456
    .line 457
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    const-string v0, "****************************************************************"

    .line 461
    .line 462
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object p0

    .line 469
    monitor-exit v1

    .line 470
    return-object p0

    .line 471
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    throw p0
.end method

.method private hexToByte(Ljava/lang/String;)B
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->toDigit(C)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->toDigit(C)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    shl-int/lit8 p1, v0, 0x4

    .line 20
    .line 21
    add-int/2addr p1, p0

    .line 22
    int-to-byte p0, p1

    .line 23
    return p0
.end method

.method private synthetic lambda$registerReceiver$0(II)V
    .locals 1

    .line 1
    const/4 p2, 0x3

    .line 2
    const/4 v0, 0x1

    .line 3
    if-ne p1, p2, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->setWifiState(Z)V

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
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->setWifiState(Z)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method private loadHistory()Z
    .locals 13

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mFileLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 5
    .line 6
    const-string v2, "/data/misc/wifi/usage_monitor.conf"

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-string p0, "SemWifiUsageMonitor"

    .line 19
    .line 20
    const-string v1, "failed to loadHistory - File not found."

    .line 21
    .line 22
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return v2

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto/16 :goto_5

    .line 29
    .line 30
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    const-string v1, "SemWifiUsageMonitor"

    .line 32
    .line 33
    const-string v3, "loadHistory"

    .line 34
    .line 35
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 40
    :try_start_2
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->readFromFile()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 45
    :try_start_3
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mMapLock:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 48
    :try_start_4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Ljava/lang/String;

    .line 53
    .line 54
    const-string v5, "20230706"

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_1

    .line 61
    .line 62
    const-string p0, "SemWifiUsageMonitor"

    .line 63
    .line 64
    const-string v2, "loadHistory Failure - version mismatch."

    .line 65
    .line 66
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    monitor-exit v0

    .line 70
    return v1

    .line 71
    :catchall_1
    move-exception p0

    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 85
    .line 86
    .line 87
    move-result-wide v4

    .line 88
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mPreviousTotalElapsedTime:J

    .line 89
    .line 90
    const/4 v4, 0x2

    .line 91
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    check-cast v5, Ljava/lang/String;

    .line 96
    .line 97
    const-string v6, " "

    .line 98
    .line 99
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 104
    .line 105
    aget-object v7, v5, v1

    .line 106
    .line 107
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 112
    .line 113
    .line 114
    move-result-wide v7

    .line 115
    iput-wide v7, v6, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalEnabledTime:J

    .line 116
    .line 117
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 118
    .line 119
    aget-object v7, v5, v2

    .line 120
    .line 121
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 126
    .line 127
    .line 128
    move-result-wide v7

    .line 129
    iput-wide v7, v6, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalConnectionTime:J

    .line 130
    .line 131
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 132
    .line 133
    aget-object v7, v5, v4

    .line 134
    .line 135
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 140
    .line 141
    .line 142
    move-result-wide v7

    .line 143
    iput-wide v7, v6, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalRxBytes:J

    .line 144
    .line 145
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 146
    .line 147
    const/4 v7, 0x3

    .line 148
    aget-object v8, v5, v7

    .line 149
    .line 150
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 155
    .line 156
    .line 157
    move-result-wide v8

    .line 158
    iput-wide v8, v6, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalTxBytes:J

    .line 159
    .line 160
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 161
    .line 162
    const/4 v8, 0x4

    .line 163
    aget-object v5, v5, v8

    .line 164
    .line 165
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    iput v5, v6, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mNumberOfConnections:I

    .line 174
    .line 175
    move v5, v4

    .line 176
    :goto_0
    add-int/2addr v5, v2

    .line 177
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    check-cast v6, Ljava/lang/CharSequence;

    .line 182
    .line 183
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    if-nez v6, :cond_3

    .line 188
    .line 189
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    check-cast v6, Ljava/lang/String;

    .line 194
    .line 195
    const-string v9, " "

    .line 196
    .line 197
    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    aget-object v9, v6, v1

    .line 202
    .line 203
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 208
    .line 209
    .line 210
    move-result v9

    .line 211
    if-ne v9, v2, :cond_2

    .line 212
    .line 213
    aget-object v9, v6, v2

    .line 214
    .line 215
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 220
    .line 221
    .line 222
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 223
    .line 224
    iget-object v10, v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInBand:Ljava/util/Map;

    .line 225
    .line 226
    aget-object v11, v6, v4

    .line 227
    .line 228
    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 229
    .line 230
    .line 231
    move-result-object v11

    .line 232
    invoke-interface {v10, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 236
    .line 237
    iget-object v10, v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInBand:Ljava/util/Map;

    .line 238
    .line 239
    aget-object v11, v6, v7

    .line 240
    .line 241
    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 242
    .line 243
    .line 244
    move-result-object v11

    .line 245
    invoke-interface {v10, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 249
    .line 250
    iget-object v10, v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInBand:Ljava/util/Map;

    .line 251
    .line 252
    aget-object v6, v6, v8

    .line 253
    .line 254
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    invoke-interface {v10, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    goto :goto_0

    .line 262
    :cond_2
    aget-object v9, v6, v2

    .line 263
    .line 264
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v9

    .line 268
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 269
    .line 270
    .line 271
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 272
    .line 273
    iget-object v10, v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInStandard:Ljava/util/Map;

    .line 274
    .line 275
    aget-object v11, v6, v4

    .line 276
    .line 277
    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 278
    .line 279
    .line 280
    move-result-object v11

    .line 281
    invoke-interface {v10, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 285
    .line 286
    iget-object v10, v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInStandard:Ljava/util/Map;

    .line 287
    .line 288
    aget-object v11, v6, v7

    .line 289
    .line 290
    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 291
    .line 292
    .line 293
    move-result-object v11

    .line 294
    invoke-interface {v10, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 298
    .line 299
    iget-object v10, v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInStandard:Ljava/util/Map;

    .line 300
    .line 301
    aget-object v6, v6, v8

    .line 302
    .line 303
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 304
    .line 305
    .line 306
    move-result-object v6

    .line 307
    invoke-interface {v10, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    goto/16 :goto_0

    .line 311
    .line 312
    :cond_3
    add-int/lit8 v6, v5, 0x1

    .line 313
    .line 314
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v9

    .line 318
    check-cast v9, Ljava/lang/CharSequence;

    .line 319
    .line 320
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 321
    .line 322
    .line 323
    move-result v9

    .line 324
    if-nez v9, :cond_5

    .line 325
    .line 326
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v6

    .line 330
    check-cast v6, Ljava/lang/String;

    .line 331
    .line 332
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v6

    .line 336
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 337
    .line 338
    new-instance v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 339
    .line 340
    invoke-direct {v10, p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;-><init>(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V

    .line 341
    .line 342
    .line 343
    invoke-interface {v9, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 347
    .line 348
    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v9

    .line 352
    check-cast v9, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 353
    .line 354
    add-int/lit8 v10, v5, 0x2

    .line 355
    .line 356
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    move-result-object v10

    .line 360
    check-cast v10, Ljava/lang/String;

    .line 361
    .line 362
    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 363
    .line 364
    .line 365
    move-result-object v10

    .line 366
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 367
    .line 368
    .line 369
    move-result-wide v10

    .line 370
    iput-wide v10, v9, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mUpdatedTimeElapsed:J

    .line 371
    .line 372
    add-int/lit8 v5, v5, 0x3

    .line 373
    .line 374
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v9

    .line 378
    check-cast v9, Ljava/lang/String;

    .line 379
    .line 380
    const-string v10, " "

    .line 381
    .line 382
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v9

    .line 386
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 387
    .line 388
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    move-result-object v10

    .line 392
    check-cast v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 393
    .line 394
    aget-object v11, v9, v1

    .line 395
    .line 396
    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 397
    .line 398
    .line 399
    move-result-object v11

    .line 400
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 401
    .line 402
    .line 403
    move-result-wide v11

    .line 404
    iput-wide v11, v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalEnabledTime:J

    .line 405
    .line 406
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 407
    .line 408
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v10

    .line 412
    check-cast v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 413
    .line 414
    aget-object v11, v9, v2

    .line 415
    .line 416
    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 417
    .line 418
    .line 419
    move-result-object v11

    .line 420
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 421
    .line 422
    .line 423
    move-result-wide v11

    .line 424
    iput-wide v11, v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalConnectionTime:J

    .line 425
    .line 426
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 427
    .line 428
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v10

    .line 432
    check-cast v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 433
    .line 434
    aget-object v11, v9, v4

    .line 435
    .line 436
    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 437
    .line 438
    .line 439
    move-result-object v11

    .line 440
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 441
    .line 442
    .line 443
    move-result-wide v11

    .line 444
    iput-wide v11, v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalRxBytes:J

    .line 445
    .line 446
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 447
    .line 448
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v10

    .line 452
    check-cast v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 453
    .line 454
    aget-object v11, v9, v7

    .line 455
    .line 456
    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 457
    .line 458
    .line 459
    move-result-object v11

    .line 460
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 461
    .line 462
    .line 463
    move-result-wide v11

    .line 464
    iput-wide v11, v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalTxBytes:J

    .line 465
    .line 466
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 467
    .line 468
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v10

    .line 472
    check-cast v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 473
    .line 474
    aget-object v9, v9, v8

    .line 475
    .line 476
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 477
    .line 478
    .line 479
    move-result-object v9

    .line 480
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 481
    .line 482
    .line 483
    move-result v9

    .line 484
    iput v9, v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mNumberOfConnections:I

    .line 485
    .line 486
    :goto_1
    add-int/2addr v5, v2

    .line 487
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v9

    .line 491
    check-cast v9, Ljava/lang/CharSequence;

    .line 492
    .line 493
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 494
    .line 495
    .line 496
    move-result v9

    .line 497
    if-nez v9, :cond_3

    .line 498
    .line 499
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    move-result-object v9

    .line 503
    check-cast v9, Ljava/lang/String;

    .line 504
    .line 505
    const-string v10, " "

    .line 506
    .line 507
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v9

    .line 511
    aget-object v10, v9, v1

    .line 512
    .line 513
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 514
    .line 515
    .line 516
    move-result-object v10

    .line 517
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 518
    .line 519
    .line 520
    move-result v10

    .line 521
    if-ne v10, v2, :cond_4

    .line 522
    .line 523
    aget-object v10, v9, v2

    .line 524
    .line 525
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 526
    .line 527
    .line 528
    move-result-object v10

    .line 529
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 530
    .line 531
    .line 532
    iget-object v11, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 533
    .line 534
    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    .line 536
    .line 537
    move-result-object v11

    .line 538
    check-cast v11, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 539
    .line 540
    iget-object v11, v11, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInBand:Ljava/util/Map;

    .line 541
    .line 542
    aget-object v12, v9, v4

    .line 543
    .line 544
    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 545
    .line 546
    .line 547
    move-result-object v12

    .line 548
    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    iget-object v11, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 552
    .line 553
    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v11

    .line 557
    check-cast v11, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 558
    .line 559
    iget-object v11, v11, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInBand:Ljava/util/Map;

    .line 560
    .line 561
    aget-object v12, v9, v7

    .line 562
    .line 563
    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 564
    .line 565
    .line 566
    move-result-object v12

    .line 567
    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    iget-object v11, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 571
    .line 572
    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v11

    .line 576
    check-cast v11, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 577
    .line 578
    iget-object v11, v11, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInBand:Ljava/util/Map;

    .line 579
    .line 580
    aget-object v9, v9, v8

    .line 581
    .line 582
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 583
    .line 584
    .line 585
    move-result-object v9

    .line 586
    invoke-interface {v11, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    goto :goto_1

    .line 590
    :cond_4
    aget-object v10, v9, v2

    .line 591
    .line 592
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 593
    .line 594
    .line 595
    move-result-object v10

    .line 596
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 597
    .line 598
    .line 599
    iget-object v11, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 600
    .line 601
    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v11

    .line 605
    check-cast v11, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 606
    .line 607
    iget-object v11, v11, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInStandard:Ljava/util/Map;

    .line 608
    .line 609
    aget-object v12, v9, v4

    .line 610
    .line 611
    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 612
    .line 613
    .line 614
    move-result-object v12

    .line 615
    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    iget-object v11, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 619
    .line 620
    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object v11

    .line 624
    check-cast v11, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 625
    .line 626
    iget-object v11, v11, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInStandard:Ljava/util/Map;

    .line 627
    .line 628
    aget-object v12, v9, v7

    .line 629
    .line 630
    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 631
    .line 632
    .line 633
    move-result-object v12

    .line 634
    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    iget-object v11, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 638
    .line 639
    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v11

    .line 643
    check-cast v11, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 644
    .line 645
    iget-object v11, v11, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInStandard:Ljava/util/Map;

    .line 646
    .line 647
    aget-object v9, v9, v8

    .line 648
    .line 649
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 650
    .line 651
    .line 652
    move-result-object v9

    .line 653
    invoke-interface {v11, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    .line 655
    .line 656
    goto/16 :goto_1

    .line 657
    .line 658
    :cond_5
    add-int/lit8 v5, v6, 0x1

    .line 659
    .line 660
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v9

    .line 664
    check-cast v9, Ljava/lang/CharSequence;

    .line 665
    .line 666
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 667
    .line 668
    .line 669
    move-result v9

    .line 670
    if-nez v9, :cond_7

    .line 671
    .line 672
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 673
    .line 674
    .line 675
    move-result-object v5

    .line 676
    check-cast v5, Ljava/lang/String;

    .line 677
    .line 678
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v5

    .line 682
    new-instance v9, Ljava/lang/String;

    .line 683
    .line 684
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->decodeHexString(Ljava/lang/String;)[B

    .line 685
    .line 686
    .line 687
    move-result-object v5

    .line 688
    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([B)V

    .line 689
    .line 690
    .line 691
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 692
    .line 693
    new-instance v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 694
    .line 695
    invoke-direct {v10, p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;-><init>(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V

    .line 696
    .line 697
    .line 698
    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 702
    .line 703
    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v5

    .line 707
    check-cast v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 708
    .line 709
    add-int/lit8 v10, v6, 0x2

    .line 710
    .line 711
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    move-result-object v10

    .line 715
    check-cast v10, Ljava/lang/String;

    .line 716
    .line 717
    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 718
    .line 719
    .line 720
    move-result-object v10

    .line 721
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 722
    .line 723
    .line 724
    move-result-wide v10

    .line 725
    iput-wide v10, v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mUpdatedTimeElapsed:J

    .line 726
    .line 727
    add-int/lit8 v6, v6, 0x3

    .line 728
    .line 729
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 730
    .line 731
    .line 732
    move-result-object v5

    .line 733
    check-cast v5, Ljava/lang/String;

    .line 734
    .line 735
    const-string v10, " "

    .line 736
    .line 737
    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v5

    .line 741
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 742
    .line 743
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    .line 745
    .line 746
    move-result-object v10

    .line 747
    check-cast v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 748
    .line 749
    aget-object v11, v5, v1

    .line 750
    .line 751
    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 752
    .line 753
    .line 754
    move-result-object v11

    .line 755
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 756
    .line 757
    .line 758
    move-result-wide v11

    .line 759
    iput-wide v11, v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mCreationTimeEpoch:J

    .line 760
    .line 761
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 762
    .line 763
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    move-result-object v10

    .line 767
    check-cast v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 768
    .line 769
    aget-object v11, v5, v2

    .line 770
    .line 771
    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 772
    .line 773
    .line 774
    move-result-object v11

    .line 775
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 776
    .line 777
    .line 778
    move-result-wide v11

    .line 779
    iput-wide v11, v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mUpdatedTimeEpoch:J

    .line 780
    .line 781
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 782
    .line 783
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    .line 785
    .line 786
    move-result-object v10

    .line 787
    check-cast v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 788
    .line 789
    aget-object v11, v5, v4

    .line 790
    .line 791
    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 792
    .line 793
    .line 794
    move-result-object v11

    .line 795
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 796
    .line 797
    .line 798
    move-result-wide v11

    .line 799
    iput-wide v11, v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalConnectionTime:J

    .line 800
    .line 801
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 802
    .line 803
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    .line 805
    .line 806
    move-result-object v10

    .line 807
    check-cast v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 808
    .line 809
    aget-object v11, v5, v7

    .line 810
    .line 811
    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 812
    .line 813
    .line 814
    move-result-object v11

    .line 815
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 816
    .line 817
    .line 818
    move-result-wide v11

    .line 819
    iput-wide v11, v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalRxBytes:J

    .line 820
    .line 821
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 822
    .line 823
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    move-result-object v10

    .line 827
    check-cast v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 828
    .line 829
    aget-object v11, v5, v8

    .line 830
    .line 831
    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 832
    .line 833
    .line 834
    move-result-object v11

    .line 835
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 836
    .line 837
    .line 838
    move-result-wide v11

    .line 839
    iput-wide v11, v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalTxBytes:J

    .line 840
    .line 841
    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 842
    .line 843
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    .line 845
    .line 846
    move-result-object v10

    .line 847
    check-cast v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 848
    .line 849
    const/4 v11, 0x5

    .line 850
    aget-object v5, v5, v11

    .line 851
    .line 852
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 853
    .line 854
    .line 855
    move-result-object v5

    .line 856
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 857
    .line 858
    .line 859
    move-result v5

    .line 860
    iput v5, v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mNumberOfConnections:I

    .line 861
    .line 862
    :goto_2
    add-int/2addr v6, v2

    .line 863
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 864
    .line 865
    .line 866
    move-result-object v5

    .line 867
    check-cast v5, Ljava/lang/CharSequence;

    .line 868
    .line 869
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 870
    .line 871
    .line 872
    move-result v5

    .line 873
    if-nez v5, :cond_5

    .line 874
    .line 875
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    move-result-object v5

    .line 879
    check-cast v5, Ljava/lang/String;

    .line 880
    .line 881
    const-string v10, " "

    .line 882
    .line 883
    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v5

    .line 887
    aget-object v10, v5, v1

    .line 888
    .line 889
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 890
    .line 891
    .line 892
    move-result-object v10

    .line 893
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 894
    .line 895
    .line 896
    move-result v10

    .line 897
    if-ne v10, v2, :cond_6

    .line 898
    .line 899
    aget-object v10, v5, v2

    .line 900
    .line 901
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 902
    .line 903
    .line 904
    move-result-object v10

    .line 905
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 906
    .line 907
    .line 908
    iget-object v11, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 909
    .line 910
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    .line 912
    .line 913
    move-result-object v11

    .line 914
    check-cast v11, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 915
    .line 916
    iget-object v11, v11, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInBand:Ljava/util/Map;

    .line 917
    .line 918
    aget-object v12, v5, v4

    .line 919
    .line 920
    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 921
    .line 922
    .line 923
    move-result-object v12

    .line 924
    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    .line 926
    .line 927
    iget-object v11, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 928
    .line 929
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    .line 931
    .line 932
    move-result-object v11

    .line 933
    check-cast v11, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 934
    .line 935
    iget-object v11, v11, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInBand:Ljava/util/Map;

    .line 936
    .line 937
    aget-object v12, v5, v7

    .line 938
    .line 939
    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 940
    .line 941
    .line 942
    move-result-object v12

    .line 943
    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    .line 945
    .line 946
    iget-object v11, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 947
    .line 948
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    move-result-object v11

    .line 952
    check-cast v11, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 953
    .line 954
    iget-object v11, v11, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInBand:Ljava/util/Map;

    .line 955
    .line 956
    aget-object v5, v5, v8

    .line 957
    .line 958
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 959
    .line 960
    .line 961
    move-result-object v5

    .line 962
    invoke-interface {v11, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    goto :goto_2

    .line 966
    :cond_6
    aget-object v10, v5, v2

    .line 967
    .line 968
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 969
    .line 970
    .line 971
    move-result-object v10

    .line 972
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 973
    .line 974
    .line 975
    iget-object v11, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 976
    .line 977
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 978
    .line 979
    .line 980
    move-result-object v11

    .line 981
    check-cast v11, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 982
    .line 983
    iget-object v11, v11, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInStandard:Ljava/util/Map;

    .line 984
    .line 985
    aget-object v12, v5, v4

    .line 986
    .line 987
    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 988
    .line 989
    .line 990
    move-result-object v12

    .line 991
    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    .line 993
    .line 994
    iget-object v11, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 995
    .line 996
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    .line 998
    .line 999
    move-result-object v11

    .line 1000
    check-cast v11, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 1001
    .line 1002
    iget-object v11, v11, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInStandard:Ljava/util/Map;

    .line 1003
    .line 1004
    aget-object v12, v5, v7

    .line 1005
    .line 1006
    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v12

    .line 1010
    invoke-interface {v11, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    .line 1012
    .line 1013
    iget-object v11, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 1014
    .line 1015
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v11

    .line 1019
    check-cast v11, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 1020
    .line 1021
    iget-object v11, v11, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInStandard:Ljava/util/Map;

    .line 1022
    .line 1023
    aget-object v5, v5, v8

    .line 1024
    .line 1025
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v5

    .line 1029
    invoke-interface {v11, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    .line 1031
    .line 1032
    goto/16 :goto_2

    .line 1033
    .line 1034
    :cond_7
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1035
    const-string v0, "SemWifiUsageMonitor"

    .line 1036
    .line 1037
    const-string v1, "loadHistory Successful"

    .line 1038
    .line 1039
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    .line 1041
    .line 1042
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mVerboseLoggingEnabled:Z

    .line 1043
    .line 1044
    if-eqz v0, :cond_8

    .line 1045
    .line 1046
    const-string v0, "SemWifiUsageMonitor"

    .line 1047
    .line 1048
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->getSummary()Ljava/lang/String;

    .line 1049
    .line 1050
    .line 1051
    move-result-object p0

    .line 1052
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    .line 1054
    .line 1055
    :cond_8
    return v2

    .line 1056
    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1057
    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1058
    :catch_0
    move-exception p0

    .line 1059
    goto :goto_4

    .line 1060
    :catchall_2
    move-exception p0

    .line 1061
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1062
    :try_start_8
    throw p0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1063
    :goto_4
    const-string v0, "SemWifiUsageMonitor"

    .line 1064
    .line 1065
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    const-string v3, "Exception on loadHistory - "

    .line 1068
    .line 1069
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1070
    .line 1071
    .line 1072
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1076
    .line 1077
    .line 1078
    move-result-object p0

    .line 1079
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    .line 1081
    .line 1082
    return v1

    .line 1083
    :goto_5
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1084
    throw p0
.end method

.method private msecPastMidnight(J)J
    .locals 8

    .line 1
    const-string p0, "SemWifiUsageMonitor"

    .line 2
    .line 3
    const-string v0, "msecPastMidnight: "

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    const-string v4, "HH:mm:ss.SSS"

    .line 10
    .line 11
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 12
    .line 13
    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 14
    .line 15
    .line 16
    new-instance v4, Ljava/util/Date;

    .line 17
    .line 18
    invoke-direct {v4, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    const/16 v3, 0xc

    .line 36
    .line 37
    if-ne p2, v3, :cond_0

    .line 38
    .line 39
    const/4 p2, 0x0

    .line 40
    const/4 v4, 0x2

    .line 41
    invoke-virtual {p1, p2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    const-wide/32 v4, 0x36ee80

    .line 54
    .line 55
    .line 56
    mul-long/2addr v1, v4

    .line 57
    const/4 p2, 0x3

    .line 58
    const/4 v4, 0x5

    .line 59
    invoke-virtual {p1, p2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 68
    .line 69
    .line 70
    move-result-wide v4

    .line 71
    const-wide/32 v6, 0xea60

    .line 72
    .line 73
    .line 74
    mul-long/2addr v4, v6

    .line 75
    add-long/2addr v1, v4

    .line 76
    const/4 p2, 0x6

    .line 77
    const/16 v4, 0x8

    .line 78
    .line 79
    invoke-virtual {p1, p2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 88
    .line 89
    .line 90
    move-result-wide v4

    .line 91
    const-wide/16 v6, 0x3e8

    .line 92
    .line 93
    mul-long/2addr v4, v6

    .line 94
    add-long/2addr v1, v4

    .line 95
    const/16 p2, 0x9

    .line 96
    .line 97
    invoke-virtual {p1, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 106
    .line 107
    .line 108
    move-result-wide v3

    .line 109
    add-long/2addr v1, v3

    .line 110
    sget-boolean p2, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->DBG:Z

    .line 111
    .line 112
    if-eqz p2, :cond_0

    .line 113
    .line 114
    new-instance p2, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v0, " "

    .line 123
    .line 124
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    return-wide v1

    .line 138
    :catch_0
    move-exception p1

    .line 139
    goto :goto_0

    .line 140
    :cond_0
    return-wide v1

    .line 141
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v0, "Exception on convertTimeToSimpleDateTimeFormat: "

    .line 144
    .line 145
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    return-wide v1
.end method

.method private readFromFile()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mFileLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    .line 8
    .line 9
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 10
    .line 11
    const-string v2, "/data/misc/wifi/usage_monitor.conf"

    .line 12
    .line 13
    const-string v3, "r"

    .line 14
    .line 15
    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    .line 17
    .line 18
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v2

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    .line 32
    .line 33
    goto :goto_4

    .line 34
    :catchall_1
    move-exception v0

    .line 35
    goto :goto_5

    .line 36
    :catch_0
    move-exception v1

    .line 37
    goto :goto_3

    .line 38
    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :catchall_2
    move-exception v1

    .line 43
    :try_start_5
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    :goto_2
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 47
    :goto_3
    :try_start_6
    const-string v2, "SemWifiUsageMonitor"

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v4, "Exception on readFromFile - "

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :goto_4
    monitor-exit p0

    .line 70
    return-object v0

    .line 71
    :goto_5
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 72
    throw v0
.end method

.method private registerReceiver()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 12
    .line 13
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 22
    .line 23
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$2;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$2;-><init>(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiConfigurationChangedListener;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$3;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$3;-><init>(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    .line 39
    .line 40
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 44
    .line 45
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 51
    .line 52
    const-string v1, "android.intent.action.DATE_CHANGED"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 58
    .line 59
    const-string v1, "android.intent.action.TIME_SET"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 65
    .line 66
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 72
    .line 73
    const-string v1, "android.intent.action.REBOOT"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 83
    .line 84
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method private roundUpInSec(J)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e7

    .line 2
    .line 3
    add-long/2addr p1, v0

    .line 4
    const-wide/16 v0, 0x3e8

    .line 5
    .line 6
    div-long/2addr p1, v0

    .line 7
    mul-long/2addr p1, v0

    .line 8
    return-wide p1
.end method

.method private saveHistory(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastSaveHistoryTime:J

    .line 10
    .line 11
    sub-long v2, v0, v2

    .line 12
    .line 13
    const-wide/32 v4, 0x36ee80

    .line 14
    .line 15
    .line 16
    cmp-long p1, v2, v4

    .line 17
    .line 18
    if-gez p1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastSaveHistoryTime:J

    .line 22
    .line 23
    const-string p1, "SemWifiUsageMonitor"

    .line 24
    .line 25
    const-string v0, "saveHistory"

    .line 26
    .line 27
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mMapLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v0

    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 39
    .line 40
    iget-wide v1, v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalConnectionTime:J

    .line 41
    .line 42
    const-wide/16 v3, 0x0

    .line 43
    .line 44
    cmp-long v1, v1, v3

    .line 45
    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto/16 :goto_8

    .line 52
    .line 53
    :cond_1
    const-string v1, "[[[start - ver:20230706]]]\n"

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mPreviousTotalElapsedTime:J

    .line 59
    .line 60
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 63
    .line 64
    .line 65
    move-result-wide v3

    .line 66
    add-long/2addr v1, v3

    .line 67
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, "\n"

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 80
    .line 81
    iget-wide v1, v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalEnabledTime:J

    .line 82
    .line 83
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, " "

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 96
    .line 97
    iget-wide v1, v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalConnectionTime:J

    .line 98
    .line 99
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, " "

    .line 107
    .line 108
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 112
    .line 113
    iget-wide v1, v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalRxBytes:J

    .line 114
    .line 115
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v1, " "

    .line 123
    .line 124
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 128
    .line 129
    iget-wide v1, v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalTxBytes:J

    .line 130
    .line 131
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v1, " "

    .line 139
    .line 140
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 144
    .line 145
    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mNumberOfConnections:I

    .line 146
    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v1, "\n"

    .line 155
    .line 156
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 160
    .line 161
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInBand:Ljava/util/Map;

    .line 162
    .line 163
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    const/4 v3, 0x1

    .line 176
    if-eqz v2, :cond_2

    .line 177
    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    check-cast v2, Ljava/lang/Integer;

    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v4

    .line 188
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v3, " "

    .line 196
    .line 197
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v3, " "

    .line 208
    .line 209
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 213
    .line 214
    iget-object v3, v3, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInBand:Ljava/util/Map;

    .line 215
    .line 216
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    check-cast v3, Ljava/lang/Long;

    .line 221
    .line 222
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 223
    .line 224
    .line 225
    move-result-wide v3

    .line 226
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v3, " "

    .line 234
    .line 235
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 239
    .line 240
    iget-object v3, v3, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInBand:Ljava/util/Map;

    .line 241
    .line 242
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    check-cast v3, Ljava/lang/Long;

    .line 247
    .line 248
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 249
    .line 250
    .line 251
    move-result-wide v3

    .line 252
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v3

    .line 256
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v3, " "

    .line 260
    .line 261
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 265
    .line 266
    iget-object v3, v3, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInBand:Ljava/util/Map;

    .line 267
    .line 268
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    check-cast v2, Ljava/lang/Long;

    .line 273
    .line 274
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 275
    .line 276
    .line 277
    move-result-wide v2

    .line 278
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string v2, "\n"

    .line 286
    .line 287
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    goto :goto_0

    .line 291
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 292
    .line 293
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInStandard:Ljava/util/Map;

    .line 294
    .line 295
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    const/4 v4, 0x2

    .line 308
    if-eqz v2, :cond_3

    .line 309
    .line 310
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    check-cast v2, Ljava/lang/Integer;

    .line 315
    .line 316
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 317
    .line 318
    .line 319
    move-result v5

    .line 320
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v4

    .line 324
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    const-string v4, " "

    .line 328
    .line 329
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v4

    .line 336
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    const-string v4, " "

    .line 340
    .line 341
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 345
    .line 346
    iget-object v4, v4, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInStandard:Ljava/util/Map;

    .line 347
    .line 348
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    check-cast v4, Ljava/lang/Long;

    .line 353
    .line 354
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 355
    .line 356
    .line 357
    move-result-wide v4

    .line 358
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v4

    .line 362
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    const-string v4, " "

    .line 366
    .line 367
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 371
    .line 372
    iget-object v4, v4, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInStandard:Ljava/util/Map;

    .line 373
    .line 374
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    move-result-object v4

    .line 378
    check-cast v4, Ljava/lang/Long;

    .line 379
    .line 380
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 381
    .line 382
    .line 383
    move-result-wide v4

    .line 384
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    const-string v4, " "

    .line 392
    .line 393
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 397
    .line 398
    iget-object v4, v4, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInStandard:Ljava/util/Map;

    .line 399
    .line 400
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    check-cast v2, Ljava/lang/Long;

    .line 405
    .line 406
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 407
    .line 408
    .line 409
    move-result-wide v4

    .line 410
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    const-string v2, "\n"

    .line 418
    .line 419
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    goto :goto_1

    .line 423
    :cond_3
    const-string v1, "\n"

    .line 424
    .line 425
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 429
    .line 430
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 439
    .line 440
    .line 441
    move-result v2

    .line 442
    if-eqz v2, :cond_6

    .line 443
    .line 444
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v2

    .line 448
    check-cast v2, Ljava/lang/String;

    .line 449
    .line 450
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    const-string v5, "\n"

    .line 454
    .line 455
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 459
    .line 460
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .line 462
    .line 463
    move-result-object v5

    .line 464
    check-cast v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 465
    .line 466
    iget-wide v5, v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mUpdatedTimeElapsed:J

    .line 467
    .line 468
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v5

    .line 472
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    const-string v5, "\n"

    .line 476
    .line 477
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 481
    .line 482
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v5

    .line 486
    check-cast v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 487
    .line 488
    iget-wide v5, v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalEnabledTime:J

    .line 489
    .line 490
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v5

    .line 494
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    const-string v5, " "

    .line 498
    .line 499
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 503
    .line 504
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    .line 506
    .line 507
    move-result-object v5

    .line 508
    check-cast v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 509
    .line 510
    iget-wide v5, v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalConnectionTime:J

    .line 511
    .line 512
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v5

    .line 516
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    const-string v5, " "

    .line 520
    .line 521
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 525
    .line 526
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v5

    .line 530
    check-cast v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 531
    .line 532
    iget-wide v5, v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalRxBytes:J

    .line 533
    .line 534
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v5

    .line 538
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    const-string v5, " "

    .line 542
    .line 543
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 547
    .line 548
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v5

    .line 552
    check-cast v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 553
    .line 554
    iget-wide v5, v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalTxBytes:J

    .line 555
    .line 556
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v5

    .line 560
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    const-string v5, " "

    .line 564
    .line 565
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 569
    .line 570
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    move-result-object v5

    .line 574
    check-cast v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 575
    .line 576
    iget v5, v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mNumberOfConnections:I

    .line 577
    .line 578
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v5

    .line 582
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    const-string v5, "\n"

    .line 586
    .line 587
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 591
    .line 592
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v5

    .line 596
    check-cast v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 597
    .line 598
    iget-object v5, v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInBand:Ljava/util/Map;

    .line 599
    .line 600
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 601
    .line 602
    .line 603
    move-result-object v5

    .line 604
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 605
    .line 606
    .line 607
    move-result-object v5

    .line 608
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 609
    .line 610
    .line 611
    move-result v6

    .line 612
    if-eqz v6, :cond_4

    .line 613
    .line 614
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 615
    .line 616
    .line 617
    move-result-object v6

    .line 618
    check-cast v6, Ljava/lang/Integer;

    .line 619
    .line 620
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 621
    .line 622
    .line 623
    move-result v7

    .line 624
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v8

    .line 628
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .line 630
    .line 631
    const-string v8, " "

    .line 632
    .line 633
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v7

    .line 640
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    const-string v7, " "

    .line 644
    .line 645
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 649
    .line 650
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    move-result-object v7

    .line 654
    check-cast v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 655
    .line 656
    iget-object v7, v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInBand:Ljava/util/Map;

    .line 657
    .line 658
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    .line 660
    .line 661
    move-result-object v7

    .line 662
    check-cast v7, Ljava/lang/Long;

    .line 663
    .line 664
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 665
    .line 666
    .line 667
    move-result-wide v7

    .line 668
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v7

    .line 672
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    const-string v7, " "

    .line 676
    .line 677
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 681
    .line 682
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    move-result-object v7

    .line 686
    check-cast v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 687
    .line 688
    iget-object v7, v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInBand:Ljava/util/Map;

    .line 689
    .line 690
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v7

    .line 694
    check-cast v7, Ljava/lang/Long;

    .line 695
    .line 696
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 697
    .line 698
    .line 699
    move-result-wide v7

    .line 700
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v7

    .line 704
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    .line 706
    .line 707
    const-string v7, " "

    .line 708
    .line 709
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 713
    .line 714
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v7

    .line 718
    check-cast v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 719
    .line 720
    iget-object v7, v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInBand:Ljava/util/Map;

    .line 721
    .line 722
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v6

    .line 726
    check-cast v6, Ljava/lang/Long;

    .line 727
    .line 728
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 729
    .line 730
    .line 731
    move-result-wide v6

    .line 732
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v6

    .line 736
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    const-string v6, "\n"

    .line 740
    .line 741
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    goto/16 :goto_3

    .line 745
    .line 746
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 747
    .line 748
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    .line 750
    .line 751
    move-result-object v5

    .line 752
    check-cast v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 753
    .line 754
    iget-object v5, v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInStandard:Ljava/util/Map;

    .line 755
    .line 756
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 757
    .line 758
    .line 759
    move-result-object v5

    .line 760
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 761
    .line 762
    .line 763
    move-result-object v5

    .line 764
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 765
    .line 766
    .line 767
    move-result v6

    .line 768
    if-eqz v6, :cond_5

    .line 769
    .line 770
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    move-result-object v6

    .line 774
    check-cast v6, Ljava/lang/Integer;

    .line 775
    .line 776
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 777
    .line 778
    .line 779
    move-result v7

    .line 780
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v8

    .line 784
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    const-string v8, " "

    .line 788
    .line 789
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v7

    .line 796
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    .line 798
    .line 799
    const-string v7, " "

    .line 800
    .line 801
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    .line 803
    .line 804
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 805
    .line 806
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    move-result-object v7

    .line 810
    check-cast v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 811
    .line 812
    iget-object v7, v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInStandard:Ljava/util/Map;

    .line 813
    .line 814
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    move-result-object v7

    .line 818
    check-cast v7, Ljava/lang/Long;

    .line 819
    .line 820
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 821
    .line 822
    .line 823
    move-result-wide v7

    .line 824
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v7

    .line 828
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    .line 830
    .line 831
    const-string v7, " "

    .line 832
    .line 833
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    .line 835
    .line 836
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 837
    .line 838
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    move-result-object v7

    .line 842
    check-cast v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 843
    .line 844
    iget-object v7, v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInStandard:Ljava/util/Map;

    .line 845
    .line 846
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v7

    .line 850
    check-cast v7, Ljava/lang/Long;

    .line 851
    .line 852
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 853
    .line 854
    .line 855
    move-result-wide v7

    .line 856
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v7

    .line 860
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    const-string v7, " "

    .line 864
    .line 865
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    .line 867
    .line 868
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 869
    .line 870
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    move-result-object v7

    .line 874
    check-cast v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 875
    .line 876
    iget-object v7, v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInStandard:Ljava/util/Map;

    .line 877
    .line 878
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    .line 880
    .line 881
    move-result-object v6

    .line 882
    check-cast v6, Ljava/lang/Long;

    .line 883
    .line 884
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 885
    .line 886
    .line 887
    move-result-wide v6

    .line 888
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 889
    .line 890
    .line 891
    move-result-object v6

    .line 892
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    .line 894
    .line 895
    const-string v6, "\n"

    .line 896
    .line 897
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    goto/16 :goto_4

    .line 901
    .line 902
    :cond_5
    const-string v2, "\n"

    .line 903
    .line 904
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    .line 906
    .line 907
    goto/16 :goto_2

    .line 908
    .line 909
    :cond_6
    const-string v1, "\n"

    .line 910
    .line 911
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    .line 913
    .line 914
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 915
    .line 916
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 917
    .line 918
    .line 919
    move-result-object v1

    .line 920
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 921
    .line 922
    .line 923
    move-result-object v1

    .line 924
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 925
    .line 926
    .line 927
    move-result v2

    .line 928
    if-eqz v2, :cond_a

    .line 929
    .line 930
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 931
    .line 932
    .line 933
    move-result-object v2

    .line 934
    check-cast v2, Ljava/lang/String;

    .line 935
    .line 936
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 937
    .line 938
    .line 939
    move-result v5

    .line 940
    if-eqz v5, :cond_7

    .line 941
    .line 942
    goto :goto_5

    .line 943
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 944
    .line 945
    .line 946
    move-result-object v5

    .line 947
    invoke-direct {p0, v5}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->encodeHexString([B)Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object v5

    .line 951
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    .line 953
    .line 954
    const-string v5, "\n"

    .line 955
    .line 956
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    .line 958
    .line 959
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 960
    .line 961
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    .line 963
    .line 964
    move-result-object v5

    .line 965
    check-cast v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 966
    .line 967
    iget-wide v5, v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mUpdatedTimeElapsed:J

    .line 968
    .line 969
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 970
    .line 971
    .line 972
    move-result-object v5

    .line 973
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    .line 975
    .line 976
    const-string v5, "\n"

    .line 977
    .line 978
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    .line 980
    .line 981
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 982
    .line 983
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    .line 985
    .line 986
    move-result-object v5

    .line 987
    check-cast v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 988
    .line 989
    iget-wide v5, v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mCreationTimeEpoch:J

    .line 990
    .line 991
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v5

    .line 995
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    .line 997
    .line 998
    const-string v5, " "

    .line 999
    .line 1000
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    .line 1003
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 1004
    .line 1005
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v5

    .line 1009
    check-cast v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 1010
    .line 1011
    iget-wide v5, v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mUpdatedTimeEpoch:J

    .line 1012
    .line 1013
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v5

    .line 1017
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    .line 1019
    .line 1020
    const-string v5, " "

    .line 1021
    .line 1022
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    .line 1024
    .line 1025
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 1026
    .line 1027
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v5

    .line 1031
    check-cast v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 1032
    .line 1033
    iget-wide v5, v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalConnectionTime:J

    .line 1034
    .line 1035
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v5

    .line 1039
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    .line 1041
    .line 1042
    const-string v5, " "

    .line 1043
    .line 1044
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    .line 1046
    .line 1047
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 1048
    .line 1049
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v5

    .line 1053
    check-cast v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 1054
    .line 1055
    iget-wide v5, v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalRxBytes:J

    .line 1056
    .line 1057
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 1058
    .line 1059
    .line 1060
    move-result-object v5

    .line 1061
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1062
    .line 1063
    .line 1064
    const-string v5, " "

    .line 1065
    .line 1066
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    .line 1068
    .line 1069
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 1070
    .line 1071
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v5

    .line 1075
    check-cast v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 1076
    .line 1077
    iget-wide v5, v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalTxBytes:J

    .line 1078
    .line 1079
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v5

    .line 1083
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    .line 1085
    .line 1086
    const-string v5, " "

    .line 1087
    .line 1088
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    .line 1090
    .line 1091
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 1092
    .line 1093
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v5

    .line 1097
    check-cast v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 1098
    .line 1099
    iget v5, v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mNumberOfConnections:I

    .line 1100
    .line 1101
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v5

    .line 1105
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1106
    .line 1107
    .line 1108
    const-string v5, "\n"

    .line 1109
    .line 1110
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    .line 1112
    .line 1113
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 1114
    .line 1115
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v5

    .line 1119
    check-cast v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 1120
    .line 1121
    iget-object v5, v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInBand:Ljava/util/Map;

    .line 1122
    .line 1123
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v5

    .line 1127
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v5

    .line 1131
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1132
    .line 1133
    .line 1134
    move-result v6

    .line 1135
    if-eqz v6, :cond_8

    .line 1136
    .line 1137
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v6

    .line 1141
    check-cast v6, Ljava/lang/Integer;

    .line 1142
    .line 1143
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1144
    .line 1145
    .line 1146
    move-result v7

    .line 1147
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1148
    .line 1149
    .line 1150
    move-result-object v8

    .line 1151
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    .line 1153
    .line 1154
    const-string v8, " "

    .line 1155
    .line 1156
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    .line 1158
    .line 1159
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v7

    .line 1163
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    .line 1165
    .line 1166
    const-string v7, " "

    .line 1167
    .line 1168
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    .line 1170
    .line 1171
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 1172
    .line 1173
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v7

    .line 1177
    check-cast v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 1178
    .line 1179
    iget-object v7, v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInBand:Ljava/util/Map;

    .line 1180
    .line 1181
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    .line 1183
    .line 1184
    move-result-object v7

    .line 1185
    check-cast v7, Ljava/lang/Long;

    .line 1186
    .line 1187
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 1188
    .line 1189
    .line 1190
    move-result-wide v7

    .line 1191
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v7

    .line 1195
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    .line 1197
    .line 1198
    const-string v7, " "

    .line 1199
    .line 1200
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    .line 1202
    .line 1203
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 1204
    .line 1205
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v7

    .line 1209
    check-cast v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 1210
    .line 1211
    iget-object v7, v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInBand:Ljava/util/Map;

    .line 1212
    .line 1213
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v7

    .line 1217
    check-cast v7, Ljava/lang/Long;

    .line 1218
    .line 1219
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 1220
    .line 1221
    .line 1222
    move-result-wide v7

    .line 1223
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v7

    .line 1227
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    .line 1229
    .line 1230
    const-string v7, " "

    .line 1231
    .line 1232
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    .line 1234
    .line 1235
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 1236
    .line 1237
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    .line 1239
    .line 1240
    move-result-object v7

    .line 1241
    check-cast v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 1242
    .line 1243
    iget-object v7, v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInBand:Ljava/util/Map;

    .line 1244
    .line 1245
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    .line 1247
    .line 1248
    move-result-object v6

    .line 1249
    check-cast v6, Ljava/lang/Long;

    .line 1250
    .line 1251
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 1252
    .line 1253
    .line 1254
    move-result-wide v6

    .line 1255
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v6

    .line 1259
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    .line 1261
    .line 1262
    const-string v6, "\n"

    .line 1263
    .line 1264
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    .line 1266
    .line 1267
    goto/16 :goto_6

    .line 1268
    .line 1269
    :cond_8
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 1270
    .line 1271
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v5

    .line 1275
    check-cast v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 1276
    .line 1277
    iget-object v5, v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInStandard:Ljava/util/Map;

    .line 1278
    .line 1279
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v5

    .line 1283
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v5

    .line 1287
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 1288
    .line 1289
    .line 1290
    move-result v6

    .line 1291
    if-eqz v6, :cond_9

    .line 1292
    .line 1293
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v6

    .line 1297
    check-cast v6, Ljava/lang/Integer;

    .line 1298
    .line 1299
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 1300
    .line 1301
    .line 1302
    move-result v7

    .line 1303
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1304
    .line 1305
    .line 1306
    move-result-object v8

    .line 1307
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    .line 1309
    .line 1310
    const-string v8, " "

    .line 1311
    .line 1312
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    .line 1314
    .line 1315
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1316
    .line 1317
    .line 1318
    move-result-object v7

    .line 1319
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    .line 1321
    .line 1322
    const-string v7, " "

    .line 1323
    .line 1324
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1325
    .line 1326
    .line 1327
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 1328
    .line 1329
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    .line 1331
    .line 1332
    move-result-object v7

    .line 1333
    check-cast v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 1334
    .line 1335
    iget-object v7, v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInStandard:Ljava/util/Map;

    .line 1336
    .line 1337
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v7

    .line 1341
    check-cast v7, Ljava/lang/Long;

    .line 1342
    .line 1343
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 1344
    .line 1345
    .line 1346
    move-result-wide v7

    .line 1347
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v7

    .line 1351
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    .line 1353
    .line 1354
    const-string v7, " "

    .line 1355
    .line 1356
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    .line 1358
    .line 1359
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 1360
    .line 1361
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v7

    .line 1365
    check-cast v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 1366
    .line 1367
    iget-object v7, v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInStandard:Ljava/util/Map;

    .line 1368
    .line 1369
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v7

    .line 1373
    check-cast v7, Ljava/lang/Long;

    .line 1374
    .line 1375
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 1376
    .line 1377
    .line 1378
    move-result-wide v7

    .line 1379
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 1380
    .line 1381
    .line 1382
    move-result-object v7

    .line 1383
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1384
    .line 1385
    .line 1386
    const-string v7, " "

    .line 1387
    .line 1388
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    .line 1390
    .line 1391
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 1392
    .line 1393
    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v7

    .line 1397
    check-cast v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 1398
    .line 1399
    iget-object v7, v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInStandard:Ljava/util/Map;

    .line 1400
    .line 1401
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v6

    .line 1405
    check-cast v6, Ljava/lang/Long;

    .line 1406
    .line 1407
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 1408
    .line 1409
    .line 1410
    move-result-wide v6

    .line 1411
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v6

    .line 1415
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1416
    .line 1417
    .line 1418
    const-string v6, "\n"

    .line 1419
    .line 1420
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1421
    .line 1422
    .line 1423
    goto/16 :goto_7

    .line 1424
    .line 1425
    :cond_9
    const-string v2, "\n"

    .line 1426
    .line 1427
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    .line 1429
    .line 1430
    goto/16 :goto_5

    .line 1431
    .line 1432
    :cond_a
    const-string v1, "\n"

    .line 1433
    .line 1434
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    .line 1436
    .line 1437
    const-string v1, "[[[end]]]\n"

    .line 1438
    .line 1439
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1440
    .line 1441
    .line 1442
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1443
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1444
    .line 1445
    .line 1446
    move-result-object p1

    .line 1447
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->writeLogToFile(Ljava/lang/String;)V

    .line 1448
    .line 1449
    .line 1450
    return-void

    .line 1451
    :goto_8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1452
    throw p0
.end method

.method private setWifiNetworkState(ZLjava/lang/String;)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mIsWifiConnected:Z

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mVerboseLoggingEnabled:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "setWifiNetworkState: isConnected= "

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " connection: "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "SemWifiUsageMonitor"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    const/4 v1, 0x2

    .line 36
    invoke-virtual {p0, v1, p1, v0, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private setWifiState(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mWifiEnabled:Z

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mVerboseLoggingEnabled:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "setWifiState: isEnabled= "

    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "SemWifiUsageMonitor"

    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private toDigit(C)I
    .locals 2

    .line 1
    const/16 p0, 0x10

    .line 2
    .line 3
    invoke-static {p1, p0}, Ljava/lang/Character;->digit(CI)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, -0x1

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    return p0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, "Invalid Hexadecimal Character: "

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0
.end method

.method private updateHistoryAndNetworks()V
    .locals 12

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mMapLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 30
    .line 31
    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 32
    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto/16 :goto_6

    .line 43
    .line 44
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v3, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    const/4 v5, 0x0

    .line 59
    move v6, v5

    .line 60
    :cond_1
    :goto_1
    if-ge v6, v4, :cond_3

    .line 61
    .line 62
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    add-int/lit8 v6, v6, 0x1

    .line 67
    .line 68
    check-cast v7, Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mWifiConfigManager:Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 75
    .line 76
    invoke-virtual {v8, v7}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(I)Landroid/net/wifi/WifiConfiguration;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    if-eqz v7, :cond_2

    .line 81
    .line 82
    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 83
    .line 84
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-nez v8, :cond_2

    .line 97
    .line 98
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    const-string v9, "SemWifiUsageMonitor"

    .line 103
    .line 104
    new-instance v10, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v11, "add network history - "

    .line 110
    .line 111
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 125
    .line 126
    new-instance v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 127
    .line 128
    invoke-direct {v10, p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;-><init>(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v9, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 135
    .line 136
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    check-cast v9, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 141
    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 143
    .line 144
    .line 145
    move-result-wide v10

    .line 146
    iput-wide v10, v9, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mCreationTimeEpoch:J

    .line 147
    .line 148
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 149
    .line 150
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v8

    .line 154
    check-cast v8, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 155
    .line 156
    const-wide/16 v9, -0x1

    .line 157
    .line 158
    iput-wide v9, v8, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mUpdatedTimeEpoch:J

    .line 159
    .line 160
    :cond_2
    if-eqz v7, :cond_1

    .line 161
    .line 162
    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 171
    .line 172
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-eqz v4, :cond_5

    .line 185
    .line 186
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    check-cast v4, Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v6

    .line 196
    if-nez v6, :cond_4

    .line 197
    .line 198
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    :goto_3
    if-ge v5, v1, :cond_6

    .line 207
    .line 208
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    add-int/lit8 v5, v5, 0x1

    .line 213
    .line 214
    check-cast v2, Ljava/lang/String;

    .line 215
    .line 216
    const-string v4, "SemWifiUsageMonitor"

    .line 217
    .line 218
    new-instance v6, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    const-string v7, "removed network history - "

    .line 224
    .line 225
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .line 237
    .line 238
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 239
    .line 240
    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_6
    :goto_4
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 245
    .line 246
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    const/16 v2, 0x3c

    .line 251
    .line 252
    if-le v1, v2, :cond_9

    .line 253
    .line 254
    const-string v1, ""

    .line 255
    .line 256
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 257
    .line 258
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    const-wide v3, 0x7fffffffffffffffL

    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    :cond_7
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    if-eqz v5, :cond_8

    .line 276
    .line 277
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    check-cast v5, Ljava/lang/String;

    .line 282
    .line 283
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 284
    .line 285
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    check-cast v6, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 290
    .line 291
    iget-wide v6, v6, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mUpdatedTimeElapsed:J

    .line 292
    .line 293
    cmp-long v6, v6, v3

    .line 294
    .line 295
    if-gez v6, :cond_7

    .line 296
    .line 297
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 298
    .line 299
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 304
    .line 305
    iget-wide v3, v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mUpdatedTimeElapsed:J

    .line 306
    .line 307
    move-object v1, v5

    .line 308
    goto :goto_5

    .line 309
    :cond_8
    const-string v2, "SemWifiUsageMonitor"

    .line 310
    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    const-string v4, "removed daily history - "

    .line 317
    .line 318
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 332
    .line 333
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    goto :goto_4

    .line 337
    :cond_9
    monitor-exit v0

    .line 338
    return-void

    .line 339
    :goto_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    throw p0
.end method

.method private updateWifiUsage(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->updateWifiUsage(ZZ)V

    return-void
.end method

.method private updateWifiUsage(ZZ)V
    .locals 27

    move-object/from16 v0, p0

    .line 2
    const-string v1, "[midnight adjusted "

    const-string v2, "updateWifiUsage - network:"

    const-string v3, "Date changed. "

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDisabledState:Lcom/android/internal/util/State;

    if-ne v4, v5, :cond_0

    .line 3
    const-string v1, "SemWifiUsageMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Do not updateWifiUsage in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 5
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mClock:Lcom/samsung/android/server/wifi/util/SemClock;

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v6

    .line 6
    sget-object v8, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mMapLock:Ljava/lang/Object;

    monitor-enter v8

    .line 7
    :try_start_0
    iget-wide v9, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastWifiEnabledUpdatedTimeEpoch:J

    invoke-direct {v0, v9, v10}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->convertTimeToSimpleDateFormat(J)Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-direct {v0, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->convertTimeToSimpleDateFormat(J)Ljava/lang/String;

    move-result-object v10

    .line 9
    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 10
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->convertTimeToSimpleDateTimeFormat(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->localLog(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 11
    invoke-direct {v0, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->msecPastMidnight(J)J

    move-result-wide v10

    sub-long/2addr v6, v10

    sub-long/2addr v4, v10

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    const-wide/16 v10, 0x0

    .line 12
    :goto_0
    iget-wide v12, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastWifiEnabledUpdatedTimeElapsed:J

    sub-long v12, v6, v12

    .line 13
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    invoke-virtual {v3, v12, v13}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->addWifiEnabledTime(J)V

    .line 14
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageSinceBoot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    invoke-virtual {v3, v12, v13}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->addWifiEnabledTime(J)V

    .line 15
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    new-instance v14, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    invoke-direct {v14, v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;-><init>(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V

    invoke-interface {v3, v9, v14}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    invoke-virtual {v3, v12, v13}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->addWifiEnabledTime(J)V

    .line 17
    iput-wide v6, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastWifiEnabledUpdatedTimeElapsed:J

    .line 18
    iput-wide v4, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastWifiEnabledUpdatedTimeEpoch:J

    .line 19
    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mConnectedState:Lcom/android/internal/util/State;

    if-eq v3, v9, :cond_2

    monitor-exit v8

    return-void

    .line 20
    :cond_2
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    iget v3, v3, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mBand:I

    invoke-direct {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->bandIndexToString(I)Ljava/lang/String;

    move-result-object v3

    const-string v9, "unknownBand"

    invoke-static {v3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    iget v3, v3, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mWifiStandard:I

    .line 21
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->wifiStandardToString(I)Ljava/lang/String;

    move-result-object v3

    const-string v9, "unknown"

    invoke-static {v3, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_3

    .line 22
    :cond_3
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    iget-object v9, v9, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mConfigKey:Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 23
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    iget-object v9, v9, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mConfigKey:Ljava/lang/String;

    new-instance v12, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    invoke-direct {v12, v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;-><init>(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V

    invoke-interface {v3, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    iget-object v9, v9, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mConfigKey:Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    iput-wide v4, v3, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mCreationTimeEpoch:J

    .line 25
    :cond_4
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    iget-object v9, v9, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mConfigKey:Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    iput-wide v4, v3, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mUpdatedTimeEpoch:J

    .line 26
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    iget-object v9, v9, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mToday:Ljava/lang/String;

    new-instance v12, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    invoke-direct {v12, v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;-><init>(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V

    invoke-interface {v3, v9, v12}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 27
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    iget v2, v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mNumberOfConnections:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mNumberOfConnections:I

    .line 28
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageSinceBoot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    iget v2, v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mNumberOfConnections:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mNumberOfConnections:I

    .line 29
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mToday:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    iget v2, v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mNumberOfConnections:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mNumberOfConnections:I

    .line 30
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mConfigKey:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    iget v1, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mNumberOfConnections:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mNumberOfConnections:I

    .line 31
    monitor-exit v8

    return-void

    .line 32
    :cond_5
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_6

    .line 33
    const-string v1, "Do not updateWifiUsage - mConfig is null"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->localLog(Ljava/lang/String;)V

    .line 34
    monitor-exit v8

    return-void

    .line 35
    :cond_6
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v3, :cond_7

    .line 36
    const-string v1, "Do not updateWifiUsage - mWifiInfo is null"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->localLog(Ljava/lang/String;)V

    .line 37
    monitor-exit v8

    return-void

    :cond_7
    move-wide v11, v10

    .line 38
    new-instance v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    invoke-direct {v10, v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;-><init>(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V

    move-wide v12, v11

    .line 39
    iget-object v11, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mIfaceName:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mConfigKey:Ljava/lang/String;

    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 40
    invoke-direct {v0, v9}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->getBandIndex(Landroid/net/wifi/WifiInfo;)I

    move-result v9

    iget-object v14, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v14

    .line 41
    invoke-direct {v0, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->convertTimeToSimpleDateFormat(J)Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v16, v6

    move-wide v6, v12

    move-object v12, v3

    move v13, v9

    .line 42
    invoke-virtual/range {v10 .. v17}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->initialize(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;J)V

    .line 43
    iget-wide v11, v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mLastUpdate:J

    const-wide/16 v13, -0x1

    cmp-long v3, v11, v13

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    move-wide/from16 v18, v13

    iget-wide v13, v3, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mLastUpdate:J

    cmp-long v9, v13, v18

    if-nez v9, :cond_8

    goto/16 :goto_2

    :cond_8
    sub-long/2addr v11, v13

    .line 44
    iget-wide v13, v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mCummulativeRxBytes:J

    move-wide/from16 v18, v13

    iget-wide v13, v3, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mCummulativeRxBytes:J

    sub-long v13, v18, v13

    .line 45
    iget-wide v9, v10, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mCummulativeTxBytes:J

    move-wide/from16 v18, v9

    iget-wide v9, v3, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mCummulativeTxBytes:J

    sub-long v9, v18, v9

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mConfigKey:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", date: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mToday:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - connectionTime/Rx/Tx: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " msec"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_9

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " msec]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_9
    const-string v1, ""

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {v1, v13, v14}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {v1, v9, v10}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", band: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mBand:I

    .line 50
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->bandIndexToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", standard: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mWifiStandard:I

    .line 51
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->wifiStandardToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->localLog(Ljava/lang/String;)V

    .line 53
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    iget v3, v2, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mBand:I

    iget v2, v2, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mWifiStandard:I

    move-object/from16 v18, v1

    move/from16 v26, v2

    move/from16 v25, v3

    move-wide/from16 v23, v9

    move-wide/from16 v19, v11

    move-wide/from16 v21, v13

    invoke-virtual/range {v18 .. v26}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->add(JJJII)V

    .line 54
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageSinceBoot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    iget v3, v2, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mBand:I

    iget v2, v2, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mWifiStandard:I

    move-object/from16 v18, v1

    move/from16 v26, v2

    move/from16 v25, v3

    invoke-virtual/range {v18 .. v26}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->add(JJJII)V

    .line 55
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mToday:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    iget v2, v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mBand:I

    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mWifiStandard:I

    move/from16 v26, v1

    move/from16 v25, v2

    invoke-virtual/range {v18 .. v26}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->add(JJJII)V

    .line 56
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mConfigKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    iget v2, v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mBand:I

    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mWifiStandard:I

    move/from16 v26, v1

    move/from16 v25, v2

    invoke-virtual/range {v18 .. v26}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->add(JJJII)V

    .line 57
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    iget-object v11, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mIfaceName:Ljava/lang/String;

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v12

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 58
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->getBandIndex(Landroid/net/wifi/WifiInfo;)I

    move-result v13

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v14

    .line 59
    invoke-direct {v0, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->convertTimeToSimpleDateFormat(J)Ljava/lang/String;

    move-result-object v15

    .line 60
    invoke-virtual/range {v10 .. v17}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->initialize(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;J)V

    .line 61
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->updateHistoryAndNetworks()V

    const/4 v1, 0x0

    .line 63
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->saveHistory(Z)V

    .line 64
    iget-boolean v1, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mVerboseLoggingEnabled:Z

    if-eqz v1, :cond_a

    const-string v1, "SemWifiUsageMonitor"

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void

    .line 65
    :cond_b
    :goto_2
    :try_start_1
    const-string v1, "SemWifiUsageMonitor"

    const-string v2, "Do not updateWifiUsage. Failed to initialize UsageSnapshot."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    iget-object v11, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mIfaceName:Ljava/lang/String;

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v12

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 67
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->getBandIndex(Landroid/net/wifi/WifiInfo;)I

    move-result v13

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v14

    .line 68
    invoke-direct {v0, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->convertTimeToSimpleDateFormat(J)Ljava/lang/String;

    move-result-object v15

    .line 69
    invoke-virtual/range {v10 .. v17}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->initialize(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;J)V

    .line 70
    monitor-exit v8

    return-void

    .line 71
    :cond_c
    :goto_3
    monitor-exit v8

    return-void

    .line 72
    :goto_4
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static wifiStandardToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_4

    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    if-eq p0, v0, :cond_3

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    if-eq p0, v0, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    if-eq p0, v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x6

    .line 15
    if-eq p0, v0, :cond_0

    .line 16
    .line 17
    const-string p0, "unknown"

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    const-string p0, "11ax"

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    const-string p0, "11ac"

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_2
    const-string p0, "11n"

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_3
    const-string p0, "11be"

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_4
    const-string p0, "legacy"

    .line 33
    .line 34
    return-object p0
.end method

.method private writeLogToFile(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p0, "Exception on writeLogToFile - "

    .line 2
    .line 3
    const-string v0, "SemWifiUsageMonitor"

    .line 4
    .line 5
    const-string v1, "write history to file"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mFileLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 14
    .line 15
    const-string v2, "/data/misc/wifi/usage_monitor.conf"

    .line 16
    .line 17
    const-string v3, "rw"

    .line 18
    .line 19
    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 28
    .line 29
    .line 30
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_3

    .line 36
    :catch_0
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :catchall_1
    move-exception p1

    .line 39
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_2
    move-exception v1

    .line 44
    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 48
    :goto_1
    :try_start_5
    const-string v1, "SemWifiUsageMonitor"

    .line 49
    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    :goto_2
    monitor-exit v0

    .line 66
    return-void

    .line 67
    :goto_3
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 68
    throw p0
.end method


# virtual methods
.method public checkAndStart()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->DBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SemWifiUsageMonitor"

    .line 6
    .line 7
    const-string v1, "checkAndStart"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mWifiEnabled:Z

    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isConnected()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mIsWifiConnected:Z

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->registerReceiver()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->clearAndInitializeHistory()V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->loadHistory()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->clearAndInitializeHistory()V

    .line 41
    .line 42
    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mEnabledStateEnterTime:J

    .line 52
    .line 53
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDisabledStateEnterTime:J

    .line 54
    .line 55
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mConnectedStateEnterTime:J

    .line 56
    .line 57
    return-void
.end method

.method public clearAndInitializeHistory()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mMapLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const-wide/16 v1, 0x0

    .line 5
    .line 6
    :try_start_0
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mPreviousTotalElapsedTime:J

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;-><init>(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageHistory:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 14
    .line 15
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;-><init>(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mTotalUsageSinceBoot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 21
    .line 22
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;-><init>(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    .line 28
    .line 29
    new-instance v1, Landroid/util/ArrayMap;

    .line 30
    .line 31
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 35
    .line 36
    new-instance v1, Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 42
    .line 43
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5
    .line 6
    .line 7
    const-string v0, "Dump of SemWifiUsageMonitor"

    .line 8
    .line 9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "Version: 20230706"

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->getSummary()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "\nSemWifiUsageMonitor - Log Begin ----"

    .line 25
    .line 26
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLocalLog:Landroid/util/LocalLog;

    .line 30
    .line 31
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p0, "SemWifiUsageMonitor - Log End ----"

    .line 35
    .line 36
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public enableVerboseLogging(I)V
    .locals 2

    .line 1
    const-string v0, "enableVerboseLogging - "

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SemWifiUsageMonitor"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mVerboseLoggingEnabled:Z

    .line 18
    .line 19
    return-void
.end method

.method public getCurrentStateAndEnterTime()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mConnectedState:Lcom/android/internal/util/State;

    .line 6
    .line 7
    const-string v2, "SemWifiUsageMonitor"

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v1, "getCurrentStateAndEnterTime - Connected "

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mConnectedStateEnterTime:J

    .line 19
    .line 20
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "Connected "

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mConnectedStateEnterTime:J

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mEnabledState:Lcom/android/internal/util/State;

    .line 52
    .line 53
    if-eq v0, v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDisconnectedState:Lcom/android/internal/util/State;

    .line 60
    .line 61
    if-ne v0, v1, :cond_1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v1, "getCurrentStateAndEnterTime - Disabled "

    .line 67
    .line 68
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDisabledStateEnterTime:J

    .line 72
    .line 73
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v1, "Disabled "

    .line 86
    .line 87
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDisabledStateEnterTime:J

    .line 91
    .line 92
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v1, "getCurrentStateAndEnterTime - Enabled "

    .line 103
    .line 104
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mEnabledStateEnterTime:J

    .line 108
    .line 109
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v1, "Enabled "

    .line 122
    .line 123
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mEnabledStateEnterTime:J

    .line 127
    .line 128
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0
.end method

.method public getDailyUsageInfo(I)Ljava/lang/String;
    .locals 14

    .line 1
    const-string v0, "getDailyUsageInfo - result: "

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    const-string v2, "getDailyUsageInfo - date: "

    .line 6
    .line 7
    const-string v3, "getDailyUsageInfo - date: "

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {p0, v4}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->updateWifiUsage(Z)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    int-to-long v6, p1

    .line 20
    const-wide/32 v8, 0x5265c00

    .line 21
    .line 22
    .line 23
    mul-long/2addr v6, v8

    .line 24
    sub-long/2addr v4, v6

    .line 25
    invoke-direct {p0, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->convertTimeToSimpleDateFormat(J)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget-object v4, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mMapLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v4

    .line 32
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 33
    .line 34
    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_1

    .line 39
    .line 40
    const-string p0, "SemWifiUsageMonitor"

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, " - NOT FOUND"

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    monitor-exit v4

    .line 64
    return-object p0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :cond_1
    const-string v3, "SemWifiUsageMonitor"

    .line 69
    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mDailyHistory:Ljava/util/Map;

    .line 86
    .line 87
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 92
    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-wide v5, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalConnectionTime:J

    .line 99
    .line 100
    invoke-direct {p0, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->roundUpInSec(J)J

    .line 101
    .line 102
    .line 103
    move-result-wide v5

    .line 104
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string v1, " "

    .line 108
    .line 109
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget-wide v5, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalEnabledTime:J

    .line 125
    .line 126
    invoke-direct {p0, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->roundUpInSec(J)J

    .line 127
    .line 128
    .line 129
    move-result-wide v5

    .line 130
    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string p0, " "

    .line 134
    .line 135
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    iget-wide v2, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalRxBytes:J

    .line 151
    .line 152
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string p0, " "

    .line 156
    .line 157
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    iget-wide v2, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalTxBytes:J

    .line 173
    .line 174
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    const-string p0, " "

    .line 178
    .line 179
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInBand:Ljava/util/Map;

    .line 195
    .line 196
    const/4 v2, 0x1

    .line 197
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    const-wide/16 v5, 0x0

    .line 202
    .line 203
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 204
    .line 205
    .line 206
    move-result-object v7

    .line 207
    invoke-interface {p0, v3, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string p0, " "

    .line 215
    .line 216
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    .line 224
    .line 225
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInBand:Ljava/util/Map;

    .line 232
    .line 233
    const/4 v3, 0x2

    .line 234
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    .line 236
    .line 237
    move-result-object v7

    .line 238
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    invoke-interface {p0, v7, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object p0

    .line 246
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string p0, " "

    .line 250
    .line 251
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInBand:Ljava/util/Map;

    .line 267
    .line 268
    const/16 v7, 0x8

    .line 269
    .line 270
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 275
    .line 276
    .line 277
    move-result-object v9

    .line 278
    invoke-interface {p0, v8, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object p0

    .line 282
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    const-string p0, " "

    .line 286
    .line 287
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p0

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInBand:Ljava/util/Map;

    .line 303
    .line 304
    const/16 v8, 0x40

    .line 305
    .line 306
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 307
    .line 308
    .line 309
    move-result-object v9

    .line 310
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 311
    .line 312
    .line 313
    move-result-object v10

    .line 314
    invoke-interface {p0, v9, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object p0

    .line 318
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    const-string p0, " "

    .line 322
    .line 323
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p0

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInBand:Ljava/util/Map;

    .line 339
    .line 340
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 341
    .line 342
    .line 343
    move-result-object v9

    .line 344
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 345
    .line 346
    .line 347
    move-result-object v10

    .line 348
    invoke-interface {p0, v9, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object p0

    .line 352
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    const-string p0, " "

    .line 356
    .line 357
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p0

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInBand:Ljava/util/Map;

    .line 373
    .line 374
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 375
    .line 376
    .line 377
    move-result-object v9

    .line 378
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 379
    .line 380
    .line 381
    move-result-object v10

    .line 382
    invoke-interface {p0, v9, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object p0

    .line 386
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    const-string p0, " "

    .line 390
    .line 391
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p0

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInBand:Ljava/util/Map;

    .line 407
    .line 408
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 409
    .line 410
    .line 411
    move-result-object v9

    .line 412
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 413
    .line 414
    .line 415
    move-result-object v10

    .line 416
    invoke-interface {p0, v9, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object p0

    .line 420
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    const-string p0, " "

    .line 424
    .line 425
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object p0

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInBand:Ljava/util/Map;

    .line 441
    .line 442
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 443
    .line 444
    .line 445
    move-result-object v9

    .line 446
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 447
    .line 448
    .line 449
    move-result-object v10

    .line 450
    invoke-interface {p0, v9, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object p0

    .line 454
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    const-string p0, " "

    .line 458
    .line 459
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object p0

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInBand:Ljava/util/Map;

    .line 475
    .line 476
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 477
    .line 478
    .line 479
    move-result-object v9

    .line 480
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 481
    .line 482
    .line 483
    move-result-object v10

    .line 484
    invoke-interface {p0, v9, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object p0

    .line 488
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    const-string p0, " "

    .line 492
    .line 493
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object p0

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    .line 501
    .line 502
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInBand:Ljava/util/Map;

    .line 509
    .line 510
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 515
    .line 516
    .line 517
    move-result-object v9

    .line 518
    invoke-interface {p0, v3, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object p0

    .line 522
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    const-string p0, " "

    .line 526
    .line 527
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object p0

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    .line 535
    .line 536
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInBand:Ljava/util/Map;

    .line 543
    .line 544
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 545
    .line 546
    .line 547
    move-result-object v3

    .line 548
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 549
    .line 550
    .line 551
    move-result-object v9

    .line 552
    invoke-interface {p0, v3, v9}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object p0

    .line 556
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    const-string p0, " "

    .line 560
    .line 561
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object p0

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    .line 569
    .line 570
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInBand:Ljava/util/Map;

    .line 577
    .line 578
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 579
    .line 580
    .line 581
    move-result-object v3

    .line 582
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 583
    .line 584
    .line 585
    move-result-object v8

    .line 586
    invoke-interface {p0, v3, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object p0

    .line 590
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 591
    .line 592
    .line 593
    const-string p0, " "

    .line 594
    .line 595
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object p0

    .line 602
    new-instance v1, Ljava/lang/StringBuilder;

    .line 603
    .line 604
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    .line 609
    .line 610
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInStandard:Ljava/util/Map;

    .line 611
    .line 612
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 613
    .line 614
    .line 615
    move-result-object v3

    .line 616
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 617
    .line 618
    .line 619
    move-result-object v8

    .line 620
    invoke-interface {p0, v3, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    .line 622
    .line 623
    move-result-object p0

    .line 624
    check-cast p0, Ljava/lang/Long;

    .line 625
    .line 626
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 627
    .line 628
    .line 629
    move-result-wide v8

    .line 630
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInStandard:Ljava/util/Map;

    .line 631
    .line 632
    const/4 v3, 0x4

    .line 633
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 634
    .line 635
    .line 636
    move-result-object v10

    .line 637
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 638
    .line 639
    .line 640
    move-result-object v11

    .line 641
    invoke-interface {p0, v10, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    move-result-object p0

    .line 645
    check-cast p0, Ljava/lang/Long;

    .line 646
    .line 647
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 648
    .line 649
    .line 650
    move-result-wide v10

    .line 651
    add-long/2addr v8, v10

    .line 652
    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 653
    .line 654
    .line 655
    const-string p0, " "

    .line 656
    .line 657
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object p0

    .line 664
    new-instance v1, Ljava/lang/StringBuilder;

    .line 665
    .line 666
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInStandard:Ljava/util/Map;

    .line 673
    .line 674
    const/4 v8, 0x5

    .line 675
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 676
    .line 677
    .line 678
    move-result-object v9

    .line 679
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 680
    .line 681
    .line 682
    move-result-object v10

    .line 683
    invoke-interface {p0, v9, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    .line 685
    .line 686
    move-result-object p0

    .line 687
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    const-string p0, " "

    .line 691
    .line 692
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object p0

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    .line 700
    .line 701
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    .line 706
    .line 707
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInStandard:Ljava/util/Map;

    .line 708
    .line 709
    const/4 v9, 0x6

    .line 710
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 711
    .line 712
    .line 713
    move-result-object v10

    .line 714
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 715
    .line 716
    .line 717
    move-result-object v11

    .line 718
    invoke-interface {p0, v10, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object p0

    .line 722
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    const-string p0, " "

    .line 726
    .line 727
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object p0

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    .line 735
    .line 736
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 737
    .line 738
    .line 739
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mConnectionTimeInStandard:Ljava/util/Map;

    .line 743
    .line 744
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 745
    .line 746
    .line 747
    move-result-object v10

    .line 748
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 749
    .line 750
    .line 751
    move-result-object v11

    .line 752
    invoke-interface {p0, v10, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object p0

    .line 756
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    const-string p0, " "

    .line 760
    .line 761
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    .line 763
    .line 764
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 765
    .line 766
    .line 767
    move-result-object p0

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    .line 769
    .line 770
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 771
    .line 772
    .line 773
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    .line 775
    .line 776
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInStandard:Ljava/util/Map;

    .line 777
    .line 778
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 779
    .line 780
    .line 781
    move-result-object v10

    .line 782
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 783
    .line 784
    .line 785
    move-result-object v11

    .line 786
    invoke-interface {p0, v10, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object p0

    .line 790
    check-cast p0, Ljava/lang/Long;

    .line 791
    .line 792
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 793
    .line 794
    .line 795
    move-result-wide v10

    .line 796
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInStandard:Ljava/util/Map;

    .line 797
    .line 798
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 799
    .line 800
    .line 801
    move-result-object v12

    .line 802
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 803
    .line 804
    .line 805
    move-result-object v13

    .line 806
    invoke-interface {p0, v12, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    move-result-object p0

    .line 810
    check-cast p0, Ljava/lang/Long;

    .line 811
    .line 812
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 813
    .line 814
    .line 815
    move-result-wide v12

    .line 816
    add-long/2addr v10, v12

    .line 817
    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 818
    .line 819
    .line 820
    const-string p0, " "

    .line 821
    .line 822
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object p0

    .line 829
    new-instance v1, Ljava/lang/StringBuilder;

    .line 830
    .line 831
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 832
    .line 833
    .line 834
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInStandard:Ljava/util/Map;

    .line 838
    .line 839
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 840
    .line 841
    .line 842
    move-result-object v10

    .line 843
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 844
    .line 845
    .line 846
    move-result-object v11

    .line 847
    invoke-interface {p0, v10, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    move-result-object p0

    .line 851
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 852
    .line 853
    .line 854
    const-string p0, " "

    .line 855
    .line 856
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object p0

    .line 863
    new-instance v1, Ljava/lang/StringBuilder;

    .line 864
    .line 865
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 866
    .line 867
    .line 868
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    .line 870
    .line 871
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInStandard:Ljava/util/Map;

    .line 872
    .line 873
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 874
    .line 875
    .line 876
    move-result-object v10

    .line 877
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 878
    .line 879
    .line 880
    move-result-object v11

    .line 881
    invoke-interface {p0, v10, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    .line 883
    .line 884
    move-result-object p0

    .line 885
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 886
    .line 887
    .line 888
    const-string p0, " "

    .line 889
    .line 890
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    .line 892
    .line 893
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 894
    .line 895
    .line 896
    move-result-object p0

    .line 897
    new-instance v1, Ljava/lang/StringBuilder;

    .line 898
    .line 899
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mRxBytesInStandard:Ljava/util/Map;

    .line 906
    .line 907
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 908
    .line 909
    .line 910
    move-result-object v10

    .line 911
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 912
    .line 913
    .line 914
    move-result-object v11

    .line 915
    invoke-interface {p0, v10, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    .line 917
    .line 918
    move-result-object p0

    .line 919
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 920
    .line 921
    .line 922
    const-string p0, " "

    .line 923
    .line 924
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    .line 926
    .line 927
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object p0

    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    .line 932
    .line 933
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 934
    .line 935
    .line 936
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInStandard:Ljava/util/Map;

    .line 940
    .line 941
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 942
    .line 943
    .line 944
    move-result-object v2

    .line 945
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 946
    .line 947
    .line 948
    move-result-object v10

    .line 949
    invoke-interface {p0, v2, v10}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    .line 951
    .line 952
    move-result-object p0

    .line 953
    check-cast p0, Ljava/lang/Long;

    .line 954
    .line 955
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 956
    .line 957
    .line 958
    move-result-wide v10

    .line 959
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInStandard:Ljava/util/Map;

    .line 960
    .line 961
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 962
    .line 963
    .line 964
    move-result-object v2

    .line 965
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 966
    .line 967
    .line 968
    move-result-object v3

    .line 969
    invoke-interface {p0, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    .line 971
    .line 972
    move-result-object p0

    .line 973
    check-cast p0, Ljava/lang/Long;

    .line 974
    .line 975
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 976
    .line 977
    .line 978
    move-result-wide v2

    .line 979
    add-long/2addr v10, v2

    .line 980
    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 981
    .line 982
    .line 983
    const-string p0, " "

    .line 984
    .line 985
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    .line 987
    .line 988
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object p0

    .line 992
    new-instance v1, Ljava/lang/StringBuilder;

    .line 993
    .line 994
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 995
    .line 996
    .line 997
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    .line 999
    .line 1000
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInStandard:Ljava/util/Map;

    .line 1001
    .line 1002
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v2

    .line 1006
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v3

    .line 1010
    invoke-interface {p0, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    .line 1012
    .line 1013
    move-result-object p0

    .line 1014
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1015
    .line 1016
    .line 1017
    const-string p0, " "

    .line 1018
    .line 1019
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object p0

    .line 1026
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1027
    .line 1028
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    .line 1033
    .line 1034
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInStandard:Ljava/util/Map;

    .line 1035
    .line 1036
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v2

    .line 1040
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v3

    .line 1044
    invoke-interface {p0, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    .line 1046
    .line 1047
    move-result-object p0

    .line 1048
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1049
    .line 1050
    .line 1051
    const-string p0, " "

    .line 1052
    .line 1053
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    .line 1055
    .line 1056
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1057
    .line 1058
    .line 1059
    move-result-object p0

    .line 1060
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1061
    .line 1062
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1063
    .line 1064
    .line 1065
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    iget-object p0, p1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTxBytesInStandard:Ljava/util/Map;

    .line 1069
    .line 1070
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1071
    .line 1072
    .line 1073
    move-result-object p1

    .line 1074
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v2

    .line 1078
    invoke-interface {p0, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1079
    .line 1080
    .line 1081
    move-result-object p0

    .line 1082
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1083
    .line 1084
    .line 1085
    const-string p0, " "

    .line 1086
    .line 1087
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object p0

    .line 1094
    const-string p1, "SemWifiUsageMonitor"

    .line 1095
    .line 1096
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1097
    .line 1098
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1099
    .line 1100
    .line 1101
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v0

    .line 1108
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    .line 1110
    .line 1111
    monitor-exit v4

    .line 1112
    return-object p0

    .line 1113
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1114
    throw p0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->smToString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget p0, p1, Landroid/os/Message;->what:I

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    const-string v2, " "

    .line 19
    .line 20
    if-eq p0, v1, :cond_3

    .line 21
    .line 22
    const/4 v3, 0x2

    .line 23
    if-eq p0, v3, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x5

    .line 26
    if-eq p0, v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget p0, p1, Landroid/os/Message;->arg2:I

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 60
    .line 61
    if-ne p0, v1, :cond_2

    .line 62
    .line 63
    const-string p0, "connected to "

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const-string p0, "disconnected from "

    .line 67
    .line 68
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p0, Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget p0, p1, Landroid/os/Message;->arg1:I

    .line 83
    .line 84
    if-ne p0, v1, :cond_4

    .line 85
    .line 86
    const-string p0, "Wi-Fi enabled"

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_4
    const-string p0, "Wi-Fi disabled"

    .line 90
    .line 91
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0
.end method

.method public getNetworkLastUpdatedTimeMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mMapLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    monitor-exit v1

    .line 14
    return-object v0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/String;

    .line 37
    .line 38
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 39
    .line 40
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 45
    .line 46
    iget-wide v4, v4, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mUpdatedTimeEpoch:J

    .line 47
    .line 48
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    const-string v4, "NONE"

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    const/4 v5, 0x0

    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    add-int/lit8 v6, v6, -0x4

    .line 74
    .line 75
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v5, "OWE"

    .line 83
    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 92
    .line 93
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 98
    .line 99
    iget-wide v5, v3, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mUpdatedTimeEpoch:J

    .line 100
    .line 101
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    const-string v4, "WPA_PSK"

    .line 110
    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-eqz v4, :cond_1

    .line 116
    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    add-int/lit8 v6, v6, -0x7

    .line 127
    .line 128
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v5, "SAE"

    .line 136
    .line 137
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 145
    .line 146
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    check-cast v3, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 151
    .line 152
    iget-wide v5, v3, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mUpdatedTimeEpoch:J

    .line 153
    .line 154
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_3
    monitor-exit v1

    .line 164
    return-object v0

    .line 165
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    throw p0
.end method

.method public getNetworkUsageInfo(Ljava/lang/String;)[J
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    new-array p0, v1, [J

    .line 10
    .line 11
    fill-array-data p0, :array_0

    .line 12
    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_0
    sget-object v2, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mMapLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v2

    .line 18
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->getAutoUpgradeConfigKey(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mConnectedState:Lcom/android/internal/util/State;

    .line 46
    .line 47
    if-ne v3, v4, :cond_2

    .line 48
    .line 49
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLastUsageSnapshot:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;

    .line 50
    .line 51
    iget-object v3, v3, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageSnapshot;->mConfigKey:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->updateWifiUsage(Z)V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 63
    .line 64
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 69
    .line 70
    iget-wide v3, v3, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mUpdatedTimeEpoch:J

    .line 71
    .line 72
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 73
    .line 74
    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    check-cast v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 79
    .line 80
    iget-wide v5, v5, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalConnectionTime:J

    .line 81
    .line 82
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 83
    .line 84
    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    check-cast v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 89
    .line 90
    iget-wide v7, v7, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalTxBytes:J

    .line 91
    .line 92
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mNetworkHistory:Ljava/util/Map;

    .line 93
    .line 94
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    check-cast p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;

    .line 99
    .line 100
    iget-wide p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$UsageHistory;->mTotalRxBytes:J

    .line 101
    .line 102
    new-array v1, v1, [J

    .line 103
    .line 104
    aput-wide v3, v1, v0

    .line 105
    .line 106
    const/4 v0, 0x1

    .line 107
    aput-wide v5, v1, v0

    .line 108
    .line 109
    const/4 v0, 0x2

    .line 110
    aput-wide v7, v1, v0

    .line 111
    .line 112
    const/4 v0, 0x3

    .line 113
    aput-wide p0, v1, v0

    .line 114
    .line 115
    monitor-exit v2

    .line 116
    return-object v1

    .line 117
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    new-array p0, v1, [J

    .line 119
    .line 120
    fill-array-data p0, :array_1

    .line 121
    .line 122
    .line 123
    return-object p0

    .line 124
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    throw p0

    .line 126
    nop

    .line 127
    :array_0
    .array-data 8
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    :array_1
    .array-data 8
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method localLog(ILjava/lang/String;)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[network: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    const-string p2, "SemWifiUsageMonitor"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLocalLog:Landroid/util/LocalLog;

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method localLog(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "SemWifiUsageMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->mLocalLog:Landroid/util/LocalLog;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method smToString(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const-string p0, "what:"

    .line 5
    .line 6
    invoke-static {p1, p0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :pswitch_0
    const-string p0, "EVENT_SHUTDOWN"

    .line 12
    .line 13
    return-object p0

    .line 14
    :pswitch_1
    const-string p0, "EVENT_TIME_CHANGED"

    .line 15
    .line 16
    return-object p0

    .line 17
    :pswitch_2
    const-string p0, "EVENT_DATE_CHANGED"

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_3
    const-string p0, "EVENT_TIMEZONE_CHANGED"

    .line 21
    .line 22
    return-object p0

    .line 23
    :pswitch_4
    const-string p0, "EVENT_WIFI_ROAM"

    .line 24
    .line 25
    return-object p0

    .line 26
    :pswitch_5
    const-string p0, "EVENT_CONFIGURED_NETWORKS_UPDATED"

    .line 27
    .line 28
    return-object p0

    .line 29
    :pswitch_6
    const-string p0, "CMD_UPDATE_WIFI_USAGE"

    .line 30
    .line 31
    return-object p0

    .line 32
    :pswitch_7
    const-string p0, "CMD_NETWORK_STATE_CHANGED"

    .line 33
    .line 34
    return-object p0

    .line 35
    :pswitch_8
    const-string p0, "CMD_WIFI_STATE_CHANGED"

    .line 36
    .line 37
    return-object p0

    .line 38
    :pswitch_9
    const-string p0, "CMD_INITIALIZE"

    .line 39
    .line 40
    return-object p0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
