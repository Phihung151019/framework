.class public final Lcom/samsung/android/server/wifi/SemWifiServiceDetector;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ClientModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;,
        Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;
    }
.end annotation


# static fields
.field private static final AI_SERVICE_REINIT_INTERVAL_MS:I = 0xdbba0

.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0x1388

.field private static final DUMP_ARG:Ljava/lang/String; = "SemWifiServiceDetector history:"

.field public static final LOG_TYPE_D:I = 0x0

.field public static final LOG_TYPE_E:I = 0x1

.field public static final LOG_TYPE_I:I = 0x2

.field private static final NSD_OUTPUT_SIZE:I = 0x9

.field private static final SERVICE_DETECTION_ACTIVATION:I = 0x3

.field private static final SERVICE_DETECTION_AI_SERVICE_BOUND:I = 0x6

.field private static final SERVICE_DETECTION_CALLBACK_REGISTRATION:I = 0x7

.field private static final SERVICE_DETECTION_CALLBACK_UNREGISTRATION:I = 0x8

.field static final SERVICE_DETECTION_DEACTIVATION:I = 0x4

.field private static final SERVICE_DETECTION_FEEDBACK:I = 0x9

.field private static final SERVICE_DETECTION_INTERFACE_CHANGE:I = 0x5

.field private static final SERVICE_UPDATE_INTERVAL_MS:I = 0x1f4

.field static final SERVICE_UPDATE_POLL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemWifiServiceDetector"

.field private static final TEST_MODE_ENABLE_DEBUG_LOG:Ljava/lang/String; = "enable_debug_log"

.field private static final TRAFFIC_UPDATE_INTERVAL_MS:I = 0xbb8

.field private static final TRAFFIC_UPDATE_POLL:I = 0x2


# instance fields
.field private final Callbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final LRU_CACHE_CAPACITY:I

.field private NSD_SUSP_HIGH_THRESHOLD_KBPS:I

.field private NSD_SUSP_LOW_THRESHOLD_KBPS:I

.field private aiServiceIntent:Landroid/content/Intent;

.field iWifiAiService:Lcom/samsung/android/wifi/ai/ISemWifiAiService;

.field private final ifaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isMlLibraryReady:Z

.field private lastAiServiceInitTimeMs:J

.field private lastRxBytes:J

.field private lastTime:J

.field private lastTxBytes:J

.field private final mActivityManager:Landroid/app/ActivityManager;

.field private mAiServicePid:I

.field private mClientIfaceName:Ljava/lang/String;

.field private final mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

.field private final mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mDebug:Z

.field private mDevIpv4Addr:Ljava/lang/String;

.field private mDevIpv6Addr:Ljava/lang/String;

.field private final mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialResultIgnoreCount:I

.field private mIsFeatureEnabled:Z

.field private mIsIssueTrackerActivated:Z

.field private mIssueTrackerLogManager:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

.field private mLastWakeRatio:F

.field private final mLruCacheData:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;",
            ">;"
        }
    .end annotation
.end field

.field private mMinTimeStep:I

.field private mNsdResult:[I

.field private mNumTimeStep:[I

.field private mRawTrafficData:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;

.field mRealTimeTrafficKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

.field private final mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

.field private final mServiceUpdateActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mTrafficStatsMapData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;",
            ">;"
        }
    .end annotation
.end field

.field private mTrafficStatsMonitor:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;

.field private final mTrafficTypeDetector:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;

.field private mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

.field private mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

.field private mVerboseLoggingEnabled:Z

.field private mWakeRatioSummationCnt:I

.field private mWakeRatioUnderLegacyPm:F

.field private final mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

.field private final mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

.field private priIntfListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

.field private runTimeSleepTimerMs:I

.field private final twtBeneficial:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final twtExpectationChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private wakeDurationThresholdPercent:I


# direct methods
.method static bridge synthetic -$$Nest$fgetCallbacks(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->Callbacks:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetNSD_SUSP_HIGH_THRESHOLD_KBPS(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->NSD_SUSP_HIGH_THRESHOLD_KBPS:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetNSD_SUSP_LOW_THRESHOLD_KBPS(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->NSD_SUSP_LOW_THRESHOLD_KBPS:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetaiServiceIntent(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->aiServiceIntent:Landroid/content/Intent;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetifaces(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->ifaces:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisMlLibraryReady(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->isMlLibraryReady:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastAiServiceInitTimeMs(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastAiServiceInitTimeMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastRxBytes(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastRxBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastTime(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetlastTxBytes(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastTxBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmActivityManager(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Landroid/app/ActivityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mActivityManager:Landroid/app/ActivityManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAiServicePid(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mAiServicePid:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mClientIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnection(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Landroid/content/ServiceConnection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mConnection:Landroid/content/ServiceConnection;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDebug(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDebug:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevIpv4Addr(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDevIpv4Addr:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevIpv6Addr(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDevIpv6Addr:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFeatureEnabled(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mIsFeatureEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastWakeRatio(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mLastWakeRatio:F

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNsdResult(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mNsdResult:[I

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRawTrafficData(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mRawTrafficData:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSemServiceInfo(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceDetectionHandler(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceUpdateActivated(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceUpdateActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrafficStatsMonitor(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficStatsMonitor:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mVerboseLoggingEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWakeRatioSummationCnt(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mWakeRatioSummationCnt:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWakeRatioUnderLegacyPm(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mWakeRatioUnderLegacyPm:F

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiTrafficPoller(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiTrafficStatsCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettwtBeneficial(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->twtBeneficial:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettwtExpectationChanged(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->twtExpectationChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwakeDurationThresholdPercent(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->wakeDurationThresholdPercent:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fputNSD_SUSP_HIGH_THRESHOLD_KBPS(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->NSD_SUSP_HIGH_THRESHOLD_KBPS:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputNSD_SUSP_LOW_THRESHOLD_KBPS(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->NSD_SUSP_LOW_THRESHOLD_KBPS:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputisMlLibraryReady(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->isMlLibraryReady:Z

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastAiServiceInitTimeMs(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastAiServiceInitTimeMs:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastRxBytes(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastRxBytes:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastTime(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastTime:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastTxBytes(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastTxBytes:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAiServicePid(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mAiServicePid:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mClientIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDebug(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDebug:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsIssueTrackerActivated(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mIsIssueTrackerActivated:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastWakeRatio(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mLastWakeRatio:F

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWakeRatioSummationCnt(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mWakeRatioSummationCnt:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWakeRatioUnderLegacyPm(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mWakeRatioUnderLegacyPm:F

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mdetermineServiceType(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->determineServiceType(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$minitializeInternalVariables(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->initializeInternalVariables()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$minitializeServiceInfo(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->initializeServiceInfo()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$minitializeTrafficTypeDetector(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->initializeTrafficTypeDetector()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterUsageStatsWatcher(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->registerUsageStatsWatcher()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mrunServiceDetection(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->runServiceDetection()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstartServiceDetectionPoll(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->startServiceDetectionPoll()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstartTrafficStatsMonitor(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->startTrafficStatsMonitor()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstopTrafficStatsMonitor(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->stopTrafficStatsMonitor()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterUsageStatsWatcher(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->unregisterUsageStatsWatcher()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Landroid/os/HandlerThread;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x186a0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->NSD_SUSP_HIGH_THRESHOLD_KBPS:I

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->NSD_SUSP_LOW_THRESHOLD_KBPS:I

    const/16 v0, 0x9

    .line 4
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mNsdResult:[I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mMinTimeStep:I

    const/4 v1, 0x7

    .line 6
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->LRU_CACHE_CAPACITY:I

    .line 7
    new-instance v2, Landroid/util/LruCache;

    invoke-direct {v2, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mLruCacheData:Landroid/util/LruCache;

    .line 8
    new-instance v1, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficTypeDetector:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;

    .line 9
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceUpdateActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mVerboseLoggingEnabled:Z

    .line 12
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mIsIssueTrackerActivated:Z

    .line 13
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->ifaces:Ljava/util/Set;

    .line 14
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mIsFeatureEnabled:Z

    const-wide/16 v1, 0x0

    .line 15
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastTime:J

    .line 16
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastTxBytes:J

    .line 17
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastRxBytes:J

    .line 18
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastAiServiceInitTimeMs:J

    .line 19
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mHistory:Ljava/util/LinkedList;

    const/16 v1, 0xa

    .line 20
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mInitialResultIgnoreCount:I

    const/16 v1, 0x3c

    .line 21
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->wakeDurationThresholdPercent:I

    const/16 v1, 0x32

    .line 22
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->runTimeSleepTimerMs:I

    .line 23
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->twtBeneficial:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->twtExpectationChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, -0x1

    .line 25
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mAiServicePid:I

    .line 26
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->isMlLibraryReady:Z

    .line 27
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDebug:Z

    .line 28
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->aiServiceIntent:Landroid/content/Intent;

    .line 29
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mConnection:Landroid/content/ServiceConnection;

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->Callbacks:Ljava/util/Set;

    .line 31
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$4;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 32
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$5;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->priIntfListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficStatsMapData:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mRealTimeTrafficKeyList:Ljava/util/ArrayList;

    .line 35
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 37
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    .line 38
    const-string p3, "usagestats"

    .line 39
    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p3

    .line 40
    invoke-static {p3}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    .line 41
    iput-object p4, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mContext:Landroid/content/Context;

    .line 42
    const-string p3, "activity"

    invoke-virtual {p4, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager;

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mActivityManager:Landroid/app/ActivityManager;

    .line 43
    new-instance p3, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    invoke-direct {p3}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 44
    new-instance p3, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;

    invoke-direct {p3, p0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficStatsMonitor:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;

    .line 45
    iget-boolean p4, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDebug:Z

    if-eqz p4, :cond_0

    .line 46
    invoke-virtual {p3, p4}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->toggleDebugMode(Z)V

    .line 47
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->priIntfListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    invoke-interface {p2, p3}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    .line 48
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDebug:Z

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->registerBR()V

    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getIssueTrackerLogManager()Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mIssueTrackerLogManager:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    .line 50
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$2;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->registerListener(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;)V

    .line 51
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->aiServiceIntent:Landroid/content/Intent;

    const-string p1, "com.samsung.android.wifi.ai"

    const-string p2, "com.samsung.android.wifi.ai.WifiAiService"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;Landroid/os/HandlerThread;Landroid/app/usage/IUsageStatsManager;Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;Landroid/content/Context;)V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x186a0

    .line 53
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->NSD_SUSP_HIGH_THRESHOLD_KBPS:I

    const/4 v0, 0x5

    .line 54
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->NSD_SUSP_LOW_THRESHOLD_KBPS:I

    const/16 v0, 0x9

    .line 55
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mNsdResult:[I

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mMinTimeStep:I

    const/4 v1, 0x7

    .line 57
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->LRU_CACHE_CAPACITY:I

    .line 58
    new-instance v2, Landroid/util/LruCache;

    invoke-direct {v2, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mLruCacheData:Landroid/util/LruCache;

    .line 59
    new-instance v1, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficTypeDetector:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;

    .line 60
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceUpdateActivated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mVerboseLoggingEnabled:Z

    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mIsIssueTrackerActivated:Z

    .line 64
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->ifaces:Ljava/util/Set;

    .line 65
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mIsFeatureEnabled:Z

    const-wide/16 v1, 0x0

    .line 66
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastTime:J

    .line 67
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastTxBytes:J

    .line 68
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastRxBytes:J

    .line 69
    iput-wide v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->lastAiServiceInitTimeMs:J

    .line 70
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mHistory:Ljava/util/LinkedList;

    const/16 v1, 0xa

    .line 71
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mInitialResultIgnoreCount:I

    const/16 v1, 0x3c

    .line 72
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->wakeDurationThresholdPercent:I

    const/16 v1, 0x32

    .line 73
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->runTimeSleepTimerMs:I

    .line 74
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->twtBeneficial:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->twtExpectationChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, -0x1

    .line 76
    iput v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mAiServicePid:I

    .line 77
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->isMlLibraryReady:Z

    .line 78
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDebug:Z

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->aiServiceIntent:Landroid/content/Intent;

    .line 80
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mConnection:Landroid/content/ServiceConnection;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->Callbacks:Ljava/util/Set;

    .line 82
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$4;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 83
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$5;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->priIntfListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficStatsMapData:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mRealTimeTrafficKeyList:Ljava/util/ArrayList;

    .line 86
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 87
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 88
    new-instance p1, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    .line 89
    iput-object p5, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    .line 90
    iput-object p6, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    .line 91
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficStatsMonitor:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;

    const/4 p1, 0x1

    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->isMlLibraryReady:Z

    .line 93
    new-instance p1, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    invoke-direct {p1}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 94
    iput-object p7, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mContext:Landroid/content/Context;

    .line 95
    const-string p1, "activity"

    invoke-virtual {p7, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mActivityManager:Landroid/app/ActivityManager;

    .line 96
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDebug:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->registerBR()V

    :cond_0
    return-void
.end method

.method private convoStr2ConvoSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    sub-int/2addr v0, v1

    .line 12
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    const-string v0, ", "

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    return-object p0
.end method

.method private determineServiceType(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;)V
    .locals 10

    .line 1
    iget v0, p1, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketCnt:F

    .line 2
    .line 3
    iget v1, p1, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ulPacketSizeAvg:F

    .line 4
    .line 5
    mul-float/2addr v0, v1

    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v2, v1, [F

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    aput v0, v2, v3

    .line 11
    .line 12
    iget v0, p1, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketCnt:F

    .line 13
    .line 14
    iget p1, p1, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->dlPacketSizeAvg:F

    .line 15
    .line 16
    mul-float/2addr v0, p1

    .line 17
    new-array p1, v1, [F

    .line 18
    .line 19
    aput v0, p1, v3

    .line 20
    .line 21
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficTypeDetector:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;

    .line 22
    .line 23
    invoke-virtual {v0, v2, p1, v1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->trafficDetAlgo([F[FI)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 27
    .line 28
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficTypeDetector:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;

    .line 29
    .line 30
    iget-object v5, v4, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->trafficType:[I

    .line 31
    .line 32
    aget v5, v5, v3

    .line 33
    .line 34
    iget v6, v4, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->valleyLenMav:I

    .line 35
    .line 36
    iget v7, v4, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstLenMav:I

    .line 37
    .line 38
    iget-object v4, v4, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->burstMaxLvlPreMavArray:[F

    .line 39
    .line 40
    aget v4, v4, v3

    .line 41
    .line 42
    float-to-int v4, v4

    .line 43
    invoke-virtual {v0, v5, v6, v7, v4}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->setTrafficInfo(IIII)V

    .line 44
    .line 45
    .line 46
    iget v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mInitialResultIgnoreCount:I

    .line 47
    .line 48
    if-lez v0, :cond_0

    .line 49
    .line 50
    sub-int/2addr v0, v1

    .line 51
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mInitialResultIgnoreCount:I

    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mNsdResult:[I

    .line 55
    .line 56
    aget v0, v0, v1

    .line 57
    .line 58
    if-eq v0, v1, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->twtExpectationChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    return-void

    .line 70
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mNsdResult:[I

    .line 71
    .line 72
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->twtBeneficial:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    const/16 v5, 0x8

    .line 79
    .line 80
    aput v4, v0, v5

    .line 81
    .line 82
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->twtExpectationChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    .line 84
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v4, "NSD results: "

    .line 90
    .line 91
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mNsdResult:[I

    .line 95
    .line 96
    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v4, " Traff. type "

    .line 104
    .line 105
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficTypeDetector:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;

    .line 109
    .line 110
    iget-object v4, v4, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->trafficType:[I

    .line 111
    .line 112
    aget v4, v4, v3

    .line 113
    .line 114
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v4, " Thr "

    .line 118
    .line 119
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    aget v4, v2, v3

    .line 123
    .line 124
    aget v5, p1, v3

    .line 125
    .line 126
    add-float/2addr v4, v5

    .line 127
    const/high16 v5, 0x43fa0000    # 500.0f

    .line 128
    .line 129
    div-float/2addr v4, v5

    .line 130
    float-to-int v4, v4

    .line 131
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iget-boolean v4, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mIsIssueTrackerActivated:Z

    .line 139
    .line 140
    if-eqz v4, :cond_3

    .line 141
    .line 142
    const-string v4, " PkgName "

    .line 143
    .line 144
    invoke-static {v0, v4}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->getPackageNames()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    :cond_3
    const/4 v4, 0x2

    .line 160
    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mNsdResult:[I

    .line 164
    .line 165
    const/4 v5, 0x4

    .line 166
    aget v5, v0, v5

    .line 167
    .line 168
    const/4 v6, 0x7

    .line 169
    const/4 v7, 0x6

    .line 170
    if-ne v5, v1, :cond_4

    .line 171
    .line 172
    aget v8, v0, v7

    .line 173
    .line 174
    if-ltz v8, :cond_4

    .line 175
    .line 176
    sget-object v9, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->LATENCY_REQ_RT:[I

    .line 177
    .line 178
    aget v8, v9, v8

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_4
    const/4 v8, 0x5

    .line 182
    aget v8, v0, v8

    .line 183
    .line 184
    if-ne v8, v1, :cond_5

    .line 185
    .line 186
    aget v8, v0, v6

    .line 187
    .line 188
    if-ltz v8, :cond_5

    .line 189
    .line 190
    sget-object v9, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->LATENCY_REQ_NRT:[I

    .line 191
    .line 192
    aget v8, v9, v8

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_5
    move v8, v3

    .line 196
    :goto_1
    const/4 v9, 0x3

    .line 197
    aget v9, v0, v9

    .line 198
    .line 199
    if-ne v9, v1, :cond_6

    .line 200
    .line 201
    aget v0, v0, v7

    .line 202
    .line 203
    move v1, v3

    .line 204
    goto :goto_2

    .line 205
    :cond_6
    if-ne v5, v1, :cond_7

    .line 206
    .line 207
    aget v0, v0, v7

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_7
    aget v0, v0, v6

    .line 211
    .line 212
    move v1, v4

    .line 213
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->Callbacks:Ljava/util/Set;

    .line 214
    .line 215
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v5

    .line 223
    if-eqz v5, :cond_8

    .line 224
    .line 225
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    check-cast v5, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 230
    .line 231
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mNsdResult:[I

    .line 232
    .line 233
    aget v7, v2, v3

    .line 234
    .line 235
    aget v9, p1, v3

    .line 236
    .line 237
    add-float/2addr v7, v9

    .line 238
    const/high16 v9, 0x447a0000    # 1000.0f

    .line 239
    .line 240
    div-float/2addr v7, v9

    .line 241
    float-to-int v7, v7

    .line 242
    iget v9, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mLastWakeRatio:F

    .line 243
    .line 244
    invoke-interface {v5, v6, v8, v7, v9}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;->updatedServiceStats([IIIF)V

    .line 245
    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 249
    .line 250
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mNsdResult:[I

    .line 251
    .line 252
    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->updateNetworkServiceDetectionResults([I)V

    .line 253
    .line 254
    .line 255
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 256
    .line 257
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->updateServiceType(II)V

    .line 258
    .line 259
    .line 260
    return-void
.end method

.method private fillConvoPredMap([I[I[Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string p2, "SemWifiServiceDetector"

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mRealTimeTrafficKeyList:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    array-length v1, p1

    .line 10
    if-ge v0, v1, :cond_4

    .line 11
    .line 12
    aget v1, p1, v0

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    .line 17
    if-nez v1, :cond_3

    .line 18
    .line 19
    :cond_0
    :try_start_0
    aget-object v1, p3, v0

    .line 20
    .line 21
    iget-boolean v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDebug:Z

    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    const-string v3, "_"

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    array-length v4, v3

    .line 32
    const/4 v5, 0x2

    .line 33
    if-ne v4, v5, :cond_1

    .line 34
    .line 35
    array-length v1, v3

    .line 36
    sub-int/2addr v1, v2

    .line 37
    aget-object v1, v3, v1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, "Splitting error with delimiter _ : "

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    aget-object v3, p3, v0

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {p2, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mRealTimeTrafficKeyList:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v2, "NumberFormatException: "

    .line 79
    .line 80
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    aget-object v2, p3, v0

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_4
    return-void
.end method

.method private getPackageNames()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficStatsMapData:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_3

    .line 32
    .line 33
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Ljava/util/Map$Entry;

    .line 38
    .line 39
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;

    .line 44
    .line 45
    iget v5, v5, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->uid:I

    .line 46
    .line 47
    if-nez v5, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    if-eqz v6, :cond_0

    .line 55
    .line 56
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    if-lez v7, :cond_0

    .line 61
    .line 62
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mRealTimeTrafficKeyList:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    const-string v7, ","

    .line 73
    .line 74
    if-eqz v4, :cond_2

    .line 75
    .line 76
    :try_start_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-gez v4, :cond_0

    .line 81
    .line 82
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-gez v4, :cond_0

    .line 94
    .line 95
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string v7, "NullPointerException:  "

    .line 105
    .line 106
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v5, " "

    .line 113
    .line 114
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    const-string v5, "SemWifiServiceDetector"

    .line 137
    .line 138
    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v2, "RT "

    .line 145
    .line 146
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v0, " NRT "

    .line 153
    .line 154
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    return-object p0
.end method

.method private getStringIpv4Address(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    and-int/lit16 v0, p1, 0xff

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v0, "."

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    shr-int/lit8 v1, p1, 0x8

    .line 17
    .line 18
    and-int/lit16 v1, v1, 0xff

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    shr-int/lit8 v1, p1, 0x10

    .line 27
    .line 28
    and-int/lit16 v1, v1, 0xff

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    shr-int/lit8 p1, p1, 0x18

    .line 37
    .line 38
    and-int/lit16 p1, p1, 0xff

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method private getStringIpv6Address([I)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    aget v1, p1, v0

    .line 8
    .line 9
    and-int/lit16 v1, v1, 0xff

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    aget v2, p1, v0

    .line 16
    .line 17
    shr-int/lit8 v2, v2, 0x8

    .line 18
    .line 19
    and-int/lit16 v2, v2, 0xff

    .line 20
    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "%02x%02x"

    .line 30
    .line 31
    const-string v3, ":"

    .line 32
    .line 33
    invoke-static {v2, v1, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    aget v1, p1, v0

    .line 37
    .line 38
    shr-int/lit8 v1, v1, 0x10

    .line 39
    .line 40
    and-int/lit16 v1, v1, 0xff

    .line 41
    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    aget v0, p1, v0

    .line 47
    .line 48
    shr-int/lit8 v0, v0, 0x18

    .line 49
    .line 50
    and-int/lit16 v0, v0, 0xff

    .line 51
    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v2, v0, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    aget v1, p1, v0

    .line 65
    .line 66
    and-int/lit16 v1, v1, 0xff

    .line 67
    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    aget v4, p1, v0

    .line 73
    .line 74
    shr-int/lit8 v4, v4, 0x8

    .line 75
    .line 76
    and-int/lit16 v4, v4, 0xff

    .line 77
    .line 78
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v2, v1, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    aget v1, p1, v0

    .line 90
    .line 91
    shr-int/lit8 v1, v1, 0x10

    .line 92
    .line 93
    and-int/lit16 v1, v1, 0xff

    .line 94
    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    aget v0, p1, v0

    .line 100
    .line 101
    shr-int/lit8 v0, v0, 0x18

    .line 102
    .line 103
    and-int/lit16 v0, v0, 0xff

    .line 104
    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v2, v0, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const/4 v0, 0x2

    .line 117
    aget v1, p1, v0

    .line 118
    .line 119
    and-int/lit16 v1, v1, 0xff

    .line 120
    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    aget v4, p1, v0

    .line 126
    .line 127
    shr-int/lit8 v4, v4, 0x8

    .line 128
    .line 129
    and-int/lit16 v4, v4, 0xff

    .line 130
    .line 131
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v2, v1, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    aget v1, p1, v0

    .line 143
    .line 144
    shr-int/lit8 v1, v1, 0x10

    .line 145
    .line 146
    and-int/lit16 v1, v1, 0xff

    .line 147
    .line 148
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    aget v0, p1, v0

    .line 153
    .line 154
    shr-int/lit8 v0, v0, 0x18

    .line 155
    .line 156
    and-int/lit16 v0, v0, 0xff

    .line 157
    .line 158
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {v2, v0, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const/4 v0, 0x3

    .line 170
    aget v1, p1, v0

    .line 171
    .line 172
    and-int/lit16 v1, v1, 0xff

    .line 173
    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    aget v4, p1, v0

    .line 179
    .line 180
    shr-int/lit8 v4, v4, 0x8

    .line 181
    .line 182
    and-int/lit16 v4, v4, 0xff

    .line 183
    .line 184
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-static {v2, v1, p0, v3}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    aget v1, p1, v0

    .line 196
    .line 197
    shr-int/lit8 v1, v1, 0x10

    .line 198
    .line 199
    and-int/lit16 v1, v1, 0xff

    .line 200
    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    aget p1, p1, v0

    .line 206
    .line 207
    shr-int/lit8 p1, p1, 0x18

    .line 208
    .line 209
    and-int/lit16 p1, p1, 0xff

    .line 210
    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    return-object p0
.end method

.method private initializeInternalVariables()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mNsdResult:[I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    aput v2, v0, v1

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    const/4 v2, 0x1

    .line 9
    aput v2, v0, v1

    .line 10
    .line 11
    const/16 v0, 0xa

    .line 12
    .line 13
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mInitialResultIgnoreCount:I

    .line 14
    .line 15
    return-void
.end method

.method private initializeServiceInfo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->initializeServiceType()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mNsdResult:[I

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->initializeNetworkServiceDetectionResults([I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private initializeTrafficTypeDetector()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficTypeDetector:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->resetVariables()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private registerBR()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "samsung.framework.wifi.nsd.setnsdthreshigh"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "samsung.framework.wifi.nsd.getnsdthreshigh"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "samsung.framework.wifi.nsd.setnsdthreslow"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "samsung.framework.wifi.nsd.getnsdthreslow"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v1, "samsung.framework.wifi.nsd.toggle_debug"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;

    .line 34
    .line 35
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$3;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, 0x2

    .line 39
    invoke-virtual {v1, v2, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private registerUsageStatsWatcher()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$6;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector$6;-><init>(Lcom/samsung/android/server/wifi/SemWifiServiceDetector;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    .line 15
    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    .line 17
    .line 18
    invoke-interface {v1, v0}, Landroid/app/usage/IUsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "Err. on registering UsageStatWatcher: "

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v2, 0x1

    .line 38
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method private runServiceDetection()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficStatsMonitor:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->getTrafficStatsMap()Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficStatsMapData:Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->updateCacheData(Ljava/util/HashMap;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficStatsMonitor:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->getTrafficData()Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mRawTrafficData:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->setTrafficData(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x2

    .line 26
    new-array v0, v0, [I

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    const/16 v2, 0x3c

    .line 30
    .line 31
    aput v2, v0, v1

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    const/4 v3, 0x7

    .line 35
    aput v3, v0, v2

    .line 36
    .line 37
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 38
    .line 39
    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, [[F

    .line 44
    .line 45
    new-array v4, v3, [Ljava/lang/String;

    .line 46
    .line 47
    new-array v3, v3, [I

    .line 48
    .line 49
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mLruCacheData:Landroid/util/LruCache;

    .line 50
    .line 51
    invoke-virtual {v5}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    move v6, v2

    .line 64
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_3

    .line 69
    .line 70
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    check-cast v7, Ljava/lang/Integer;

    .line 75
    .line 76
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mLruCacheData:Landroid/util/LruCache;

    .line 81
    .line 82
    invoke-virtual {v9, v7}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    check-cast v7, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;

    .line 87
    .line 88
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->getBuffer()Ljava/util/LinkedList;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    iget v10, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mMinTimeStep:I

    .line 97
    .line 98
    if-ge v9, v10, :cond_0

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    :try_start_0
    invoke-virtual {v7, v2, v9}, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->convertTrafficData2Array(ZI)[F

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    aget-object v11, v0, v6

    .line 106
    .line 107
    array-length v12, v10

    .line 108
    invoke-static {v10, v2, v11, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    .line 110
    .line 111
    iget-boolean v10, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDebug:Z

    .line 112
    .line 113
    if-eqz v10, :cond_2

    .line 114
    .line 115
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->getServerIpAddress()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    invoke-virtual {v7}, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->getIpVersion()I

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    const/4 v11, 0x4

    .line 124
    if-ne v7, v11, :cond_1

    .line 125
    .line 126
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDevIpv4Addr:Ljava/lang/String;

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :catch_0
    move-exception v7

    .line 130
    goto :goto_3

    .line 131
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDevIpv6Addr:Ljava/lang/String;

    .line 132
    .line 133
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v12, "["

    .line 139
    .line 140
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v7, ", "

    .line 147
    .line 148
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v7, "]_"

    .line 155
    .line 156
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    aput-object v7, v4, v6

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v10, ""

    .line 175
    .line 176
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    aput-object v7, v4, v6

    .line 187
    .line 188
    :goto_2
    aput v9, v3, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .line 190
    add-int/lit8 v6, v6, 0x1

    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :goto_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v7

    .line 201
    invoke-virtual {p0, v7, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 202
    .line 203
    .line 204
    goto/16 :goto_0

    .line 205
    .line 206
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->iWifiAiService:Lcom/samsung/android/wifi/ai/ISemWifiAiService;

    .line 207
    .line 208
    if-eqz v2, :cond_4

    .line 209
    .line 210
    :try_start_1
    invoke-interface {v2, v0, v4, v3, v6}, Lcom/samsung/android/wifi/ai/ISemWifiAiService;->serviceTypeQuery([[F[Ljava/lang/String;[II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :catch_1
    move-exception v0

    .line 215
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 216
    .line 217
    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    const-string v3, "AI infer. err.: "

    .line 221
    .line 222
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 233
    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_4
    const-string v0, "Wi-Fi AI ser. not available"

    .line 237
    .line 238
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 239
    .line 240
    .line 241
    :goto_4
    return-void
.end method

.method private startServiceDetectionPoll()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    .line 8
    .line 9
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-wide/16 v1, 0x1f4

    .line 14
    .line 15
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private startTrafficStatsMonitor()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficStatsMonitor:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mClientIfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->start(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDebug:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mClientIfaceName:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->updateDeviceIPAddresses(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private stopTrafficStatsMonitor()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficStatsMonitor:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mClientIfaceName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->stop(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private unregisterUsageStatsWatcher()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-interface {v0, v1}, Landroid/app/usage/IUsageStatsManager;->unregisterUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mUsageStatsWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "Err. on unregistering UsageStatWatcher: "

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method private updateCacheData(Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mLruCacheData:Landroid/util/LruCache;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Ljava/util/HashSet;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v2, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/4 v4, 0x2

    .line 42
    const-string v5, ", "

    .line 43
    .line 44
    const/4 v6, 0x4

    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mLruCacheData:Landroid/util/LruCache;

    .line 58
    .line 59
    invoke-virtual {v8, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    check-cast v8, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;

    .line 64
    .line 65
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->hasMaxBlank()Z

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    if-eqz v9, :cond_2

    .line 70
    .line 71
    iget-boolean v9, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDebug:Z

    .line 72
    .line 73
    if-eqz v9, :cond_1

    .line 74
    .line 75
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->getServerIpAddress()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->getIpVersion()I

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-ne v8, v6, :cond_0

    .line 84
    .line 85
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDevIpv4Addr:Ljava/lang/String;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDevIpv6Addr:Ljava/lang/String;

    .line 89
    .line 90
    :goto_1
    const-string v8, "Removing cache element: ["

    .line 91
    .line 92
    const-string v10, "]_"

    .line 93
    .line 94
    invoke-static {v8, v6, v5, v9, v10}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 106
    .line 107
    .line 108
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mLruCacheData:Landroid/util/LruCache;

    .line 109
    .line 110
    invoke-virtual {v4, v3}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->addBlank2Buffer()V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_7

    .line 127
    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    check-cast v2, Ljava/lang/Integer;

    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mLruCacheData:Landroid/util/LruCache;

    .line 139
    .line 140
    invoke-virtual {v7, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    check-cast v7, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;

    .line 145
    .line 146
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    check-cast v8, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;

    .line 151
    .line 152
    if-nez v7, :cond_5

    .line 153
    .line 154
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mLruCacheData:Landroid/util/LruCache;

    .line 155
    .line 156
    new-instance v9, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;

    .line 157
    .line 158
    invoke-direct {v9, v3, v8}, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;-><init>(ILcom/samsung/android/server/wifi/servicedetection/SemTrafficData;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v7, v2, v9}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_5
    invoke-virtual {v7, v8}, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->updateBuffer(Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;)V

    .line 166
    .line 167
    .line 168
    :goto_3
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDebug:Z

    .line 169
    .line 170
    if-eqz v2, :cond_4

    .line 171
    .line 172
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->getServerIpAddress()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    iget v3, v8, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficData;->ipVersion:I

    .line 177
    .line 178
    if-ne v3, v6, :cond_6

    .line 179
    .line 180
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDevIpv4Addr:Ljava/lang/String;

    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDevIpv6Addr:Ljava/lang/String;

    .line 184
    .line 185
    :goto_4
    const-string v7, " --- ["

    .line 186
    .line 187
    invoke-static {v0, v7, v3, v5, v2}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const-string v2, "]"

    .line 191
    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_7
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDebug:Z

    .line 200
    .line 201
    if-eqz p1, :cond_b

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    if-lez p1, :cond_8

    .line 208
    .line 209
    const/4 p1, 0x0

    .line 210
    const-string v1, "Cache traffic: "

    .line 211
    .line 212
    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 220
    .line 221
    .line 222
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string v0, "Cache data poll: "

    .line 225
    .line 226
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mLruCacheData:Landroid/util/LruCache;

    .line 230
    .line 231
    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-eqz v1, :cond_a

    .line 248
    .line 249
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    check-cast v1, Ljava/lang/Integer;

    .line 254
    .line 255
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 256
    .line 257
    .line 258
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mLruCacheData:Landroid/util/LruCache;

    .line 259
    .line 260
    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    check-cast v1, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;

    .line 265
    .line 266
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->getServerIpAddress()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->getIpVersion()I

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    if-ne v3, v6, :cond_9

    .line 275
    .line 276
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDevIpv4Addr:Ljava/lang/String;

    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDevIpv6Addr:Ljava/lang/String;

    .line 280
    .line 281
    :goto_6
    const-string v7, "Convo: ["

    .line 282
    .line 283
    invoke-static {p1, v7, v3, v5, v2}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    const-string v2, "] --- Buffer content: "

    .line 287
    .line 288
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/SemCacheElement;->buffer2String()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string v1, ";end "

    .line 299
    .line 300
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    goto :goto_5

    .line 304
    :cond_a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    invoke-virtual {p0, p1, v4}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 309
    .line 310
    .line 311
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficStatsMonitor:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;

    .line 312
    .line 313
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mLruCacheData:Landroid/util/LruCache;

    .line 314
    .line 315
    invoke-virtual {p0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 320
    .line 321
    .line 322
    move-result-object p0

    .line 323
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->updateCurConvoSet(Ljava/util/Set;)V

    .line 324
    .line 325
    .line 326
    return-void
.end method

.method private updateDeviceIPAddresses(Ljava/lang/String;)V
    .locals 9

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    move v2, v1

    .line 21
    :cond_0
    :goto_0
    if-ge v2, v0, :cond_3

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    check-cast v3, Ljava/net/InetAddress;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    instance-of v5, v3, Ljava/net/Inet4Address;

    .line 36
    .line 37
    if-eqz v5, :cond_1

    .line 38
    .line 39
    iput-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDevIpv4Addr:Ljava/lang/String;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    instance-of v5, v3, Ljava/net/Inet6Address;

    .line 43
    .line 44
    if-eqz v5, :cond_0

    .line 45
    .line 46
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mClientIfaceName:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    move v5, v1

    .line 64
    :goto_1
    const/16 v6, 0x10

    .line 65
    .line 66
    if-ge v5, v6, :cond_2

    .line 67
    .line 68
    const-string v6, "%02x%02x."

    .line 69
    .line 70
    aget-byte v7, v3, v5

    .line 71
    .line 72
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    add-int/lit8 v8, v5, 0x1

    .line 77
    .line 78
    aget-byte v8, v3, v8

    .line 79
    .line 80
    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    filled-new-array {v7, v8}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v7

    .line 88
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    add-int/lit8 v5, v5, 0x2

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    add-int/lit8 v3, v3, -0x1

    .line 103
    .line 104
    invoke-virtual {v4, v1, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    iput-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDevIpv6Addr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catch_0
    move-exception p0

    .line 112
    invoke-virtual {p0}, Ljava/net/SocketException;->printStackTrace()V

    .line 113
    .line 114
    .line 115
    :cond_3
    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;I)V
    .locals 3

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mVerboseLoggingEnabled:Z

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string p0, "SemWifiServiceDetector"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void

    .line 13
    :cond_1
    const/4 v0, 0x2

    .line 14
    if-ne p2, v0, :cond_2

    .line 15
    .line 16
    const-string p2, "SemWifiServiceDetector"

    .line 17
    .line 18
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const-string p2, "SemWifiServiceDetector"

    .line 23
    .line 24
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    :goto_0
    :try_start_0
    new-instance p2, Ljava/text/SimpleDateFormat;

    .line 28
    .line 29
    const-string v0, "MM-dd HH:mm:ss.SSS"

    .line 30
    .line 31
    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Ljava/util/Date;

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p2, " "

    .line 56
    .line 57
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mHistory:Ljava/util/LinkedList;

    .line 68
    .line 69
    monitor-enter p2

    .line 70
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mHistory:Ljava/util/LinkedList;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mHistory:Ljava/util/LinkedList;

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    const/16 v0, 0x1388

    .line 82
    .line 83
    if-le p1, v0, :cond_3

    .line 84
    .line 85
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mHistory:Ljava/util/LinkedList;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_2

    .line 93
    :cond_3
    monitor-exit p2

    .line 94
    return-void

    .line 95
    :goto_2
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    throw p0

    .line 97
    :catch_0
    move-exception p0

    .line 98
    const-string p1, "SemWifiServiceDetector"

    .line 99
    .line 100
    const-string p2, "format problem"

    .line 101
    .line 102
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mHistory:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mHistory:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const-string p0, "SemWifiServiceDetector history:"

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p0
.end method

.method public enableVerboseLogging(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lez p1, :cond_0

    .line 3
    .line 4
    move v1, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mVerboseLoggingEnabled:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficTypeDetector:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficTypeDet;->enableVerboseLogging(I)V

    .line 14
    .line 15
    .line 16
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->iWifiAiService:Lcom/samsung/android/wifi/ai/ISemWifiAiService;

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mVerboseLoggingEnabled:Z

    .line 21
    .line 22
    invoke-interface {p1, v1}, Lcom/samsung/android/wifi/ai/ISemWifiAiService;->toggleDebugMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "Debug mode configuration error: "

    .line 33
    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method public getFeatureEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mIsFeatureEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method getSemServiceInfo()Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mSemServiceInfo:Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public getServiceDetectionResult()[I
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mNsdResult:[I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    aget v0, p0, v0

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    aget v1, p0, v1

    .line 8
    .line 9
    const/4 v2, 0x5

    .line 10
    aget v2, p0, v2

    .line 11
    .line 12
    const/4 v3, 0x6

    .line 13
    aget v3, p0, v3

    .line 14
    .line 15
    const/4 v4, 0x7

    .line 16
    aget p0, p0, v4

    .line 17
    .line 18
    filled-new-array {v0, v1, v2, v3, p0}, [I

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public handleLazyBootCompleted(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->isWifiOptimizerSupported()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->isTwtSupported()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;->isScheduledPmSupported()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 23
    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mIsFeatureEnabled:Z

    .line 24
    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    const-string p1, "T"

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    const-string p1, "N"

    .line 31
    .line 32
    :goto_2
    const-string v0, "Feature conf: "

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 v0, 0x2

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mIsFeatureEnabled:Z

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    .line 55
    .line 56
    const/4 p1, 0x3

    .line 57
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 62
    .line 63
    .line 64
    :cond_3
    return-void
.end method

.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .locals 0

    .line 1
    iget-boolean p2, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->ifaces:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 11
    .line 12
    invoke-interface {p2}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->getPrimaryInterfaceName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mClientIfaceName:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 28
    .line 29
    .line 30
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mIsFeatureEnabled:Z

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    .line 35
    .line 36
    const/4 p1, 0x3

    .line 37
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->ifaces:Ljava/util/Set;

    .line 46
    .line 47
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mClientIfaceName:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    .line 60
    const/4 p2, 0x0

    .line 61
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 62
    .line 63
    .line 64
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mIsFeatureEnabled:Z

    .line 65
    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    .line 69
    .line 70
    const/4 p1, 0x4

    .line 71
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void
.end method

.method public registerCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    .line 4
    .line 5
    const/4 v0, 0x7

    .line 6
    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

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
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    const-string p1, "callback must not be null"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method sendInternalMessage(IIILjava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

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

.method public setTrafficPatternTestSettings(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "enable_debug_log"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDebug:Z

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->iWifiAiService:Lcom/samsung/android/wifi/ai/ISemWifiAiService;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/ai/ISemWifiAiService;->toggleDebugMode(Z)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mTrafficStatsMonitor:Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mDebug:Z

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/servicedetection/SemTrafficStatsMonitor;->toggleDebugMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :goto_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "Debug mode configuration error: "

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->addEvent(Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public setWifiAiServiceNsdResult([I[I[I[Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mNsdResult:[I

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->fillConvoPredMap([I[I[Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    .line 12
    .line 13
    const/16 p1, 0x9

    .line 14
    .line 15
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public setWifiAiServiceState(Z[I[I)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->isMlLibraryReady:Z

    .line 2
    .line 3
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mNumTimeStep:[I

    .line 4
    .line 5
    invoke-static {p3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/stream/IntStream;->summaryStatistics()Ljava/util/IntSummaryStatistics;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/util/IntSummaryStatistics;->getMin()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mMinTimeStep:I

    .line 18
    .line 19
    return-void
.end method

.method public unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->mServiceDetectionHandler:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$ServiceDetectionHandler;

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string p1, "callback must not be null"

    .line 18
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method
