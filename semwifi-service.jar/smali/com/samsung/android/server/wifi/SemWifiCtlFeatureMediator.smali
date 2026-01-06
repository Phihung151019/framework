.class public final Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/ClientModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;,
        Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;,
        Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$QueryInformation;,
        Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;,
        Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_QUERY_INTERVAL_MS:I = 0xdac

.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0x1388

.field private static final DUMP_ARG:Ljava/lang/String; = "SemWifiCtlFeatureMediator history:"

.field private static final DUMP_PKG_ARG:Ljava/lang/String; = "SemWifiCtlFeatureMediator package history"

.field public static final FEATURE_BW_CONTROL:Ljava/lang/String; = "BW"

.field public static final FEATURE_MLO_CONTROL:Ljava/lang/String; = "MLO"

.field public static final FEATURE_NSS_CONTROL:Ljava/lang/String; = "NSS"

.field public static final FEATURE_TWT_SPM_CONTROL:Ljava/lang/String; = "TWT/S-PM"

.field private static final GRANT_TIMEOUT_INTERVAL_NS:J = 0xee6b2800L

.field private static final GRANT_WITHDRAW_INTERVAL_MS:I = 0x1388

.field private static final INITIALIZATION:I = 0x2

.field private static final MINIMUM_PACKAGE_RUNNING_TIME_S:I = 0x1e

.field private static final NANO_GIGA:J = 0x3b9aca00L

.field private static final PACKAGE_HISTORY_COUNT_LIMIT:I = 0x1388

.field public static final PAYLOAD_LATENCY:I = 0x3e8

.field public static final PAYLOAD_THROUGHPUT:I = 0x2710

.field private static final QOS_LATENCY_BOUND_MS:D = 3.0

.field private static final REALTIME_CCA_RADIO_ON_RATE_BOUND:D = 0.55

.field private static final REALTIME_LINK_SPEED_BOUND_REF:I = 0x6c

.field private static final REALTIME_TX_SUCCESS_RATE_BOUND:D = 0.5

.field private static final TAG:Ljava/lang/String; = "SemWifiCtlFeatureMediator"

.field private static final TERMINATION:I = 0x3

.field private static final THROUGHPUT_RATIO_LOWER_THRESHOLD:D = 0.4

.field private static final THROUGHPUT_RATIO_UPPER_THRESHOLD:D = 0.7

.field private static final TRAFFIC_UPDATE_INTERVAL_MS:I = 0xbb8

.field private static final TRAFFIC_UPDATE_POLL:I = 0x1


# instance fields
.field private final DEBUG:Z

.field private final QOS_GRANT_CHECK_PERIOD_NS:J

.field private final QOS_LATENCY_ARRAY_CHECK_SIZE:I

.field private final QOS_LATENCY_CHECK_PERIOD_NS:J

.field private connected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private gameServiceDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final ifaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAccumulatedConnectionTimeS:D

.field private mAccumulatedCurrentReductionRatio:D

.field private mAccumulatedLatencyReductionRatio:D

.field private mAccumulatedMloConnectionTimeS:D

.field private final mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mClientIfaceName:Ljava/lang/String;

.field private final mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

.field private mConnectionTimeS:D

.field private final mContext:Landroid/content/Context;

.field private final mCtlFeatureMediatorHandler:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;

.field private mCurrentReductionRatio:D

.field private mDefaultRunningStat:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

.field private final mFeatureStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstStatUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mGrantChangedNumber:J

.field private final mGrantTimeoutNs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsIssueTrackerActivated:Z

.field private mIssueTrackerLogManager:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

.field private mLastLinkLtQosCheckTimeNs:J

.field private mLastLinkStateUpdateNumber:J

.field private mLastLinkTpQosCheckTimeNs:J

.field private mLastPackageName:Ljava/lang/String;

.field private mLastPackageRxBytes:J

.field private mLastPackageTxBytes:J

.field private mLastPackageUpdateTimeS:J

.field private final mLastQosLatencyArrayMs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mLastQosLatencyUpdateTimeNs:J

.field private mLastRxBytes:J

.field private mLastTimeNs:J

.field private mLastTxBytes:J

.field private mLatencyReductionRatio:D

.field private mLinkQos:[D

.field private final mLock:Ljava/lang/Object;

.field private mMloConnectionTimeS:D

.field private mNsdResult:[I

.field private final mPackageHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageUpdated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mPerformanceDegraded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mQueryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;",
            ">;"
        }
    .end annotation
.end field

.field private mRealtimeLinkSpeedBound:I

.field private final mRunningStatMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private mToast:Landroid/widget/Toast;

.field private mToastSb:Ljava/lang/StringBuilder;

.field private mUpdateNumber:J

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiLinkQualityMonitor:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

.field private final mWifiServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

.field private final mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

.field private final mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

.field private final mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

.field private priIntfListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

.field private realTimeServiceDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private renewConnection:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static bridge synthetic -$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgameServiceDetected(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->gameServiceDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetifaces(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->ifaces:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAccumulatedConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mAccumulatedConnectionTimeS:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmAccumulatedCurrentReductionRatio(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mAccumulatedCurrentReductionRatio:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmAccumulatedLatencyReductionRatio(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mAccumulatedLatencyReductionRatio:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmAccumulatedMloConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mAccumulatedMloConnectionTimeS:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmCallbackMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mCallbackMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mClientIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mConnectionTimeS:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCtlFeatureMediatorHandler(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mCtlFeatureMediatorHandler:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentReductionRatio(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mCurrentReductionRatio:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultRunningStat(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mDefaultRunningStat:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFeatureStateMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mFeatureStateMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFirstStatUpdate(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mFirstStatUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGrantChangedNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mGrantChangedNumber:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmGrantTimeoutNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mGrantTimeoutNs:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsIssueTrackerActivated(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mIsIssueTrackerActivated:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastLinkLtQosCheckTimeNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastLinkLtQosCheckTimeNs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLastLinkStateUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastLinkStateUpdateNumber:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLastLinkTpQosCheckTimeNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastLinkTpQosCheckTimeNs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLastPackageRxBytes(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastPackageRxBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLastPackageTxBytes(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastPackageTxBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLastQosLatencyArrayMs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastQosLatencyArrayMs:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastRxBytes(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastRxBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLastTimeNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastTimeNs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLastTxBytes(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastTxBytes:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLatencyReductionRatio(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLatencyReductionRatio:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLinkQos(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)[D
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLinkQos:[D

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMloConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mMloConnectionTimeS:D

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageUpdated(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mPackageUpdated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPerformanceDegraded(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mPerformanceDegraded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQueryMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mQueryMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRealtimeLinkSpeedBound(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mRealtimeLinkSpeedBound:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunningStatMap(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mRunningStatMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mUpdateNumber:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiLinkQualityMonitor(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mWifiLinkQualityMonitor:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiServiceDetectionCallback(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mWifiServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiServiceDetector(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiTrafficPoller(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiTrafficStatsCallback(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrealTimeServiceDetected(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->realTimeServiceDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrenewConnection(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->renewConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAccumulatedConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mAccumulatedConnectionTimeS:D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAccumulatedCurrentReductionRatio(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mAccumulatedCurrentReductionRatio:D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAccumulatedLatencyReductionRatio(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mAccumulatedLatencyReductionRatio:D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAccumulatedMloConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mAccumulatedMloConnectionTimeS:D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClientIfaceName(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mClientIfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mConnectionTimeS:D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentReductionRatio(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mCurrentReductionRatio:D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGrantChangedNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mGrantChangedNumber:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsIssueTrackerActivated(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mIsIssueTrackerActivated:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastLinkLtQosCheckTimeNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastLinkLtQosCheckTimeNs:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastLinkStateUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastLinkStateUpdateNumber:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastLinkTpQosCheckTimeNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastLinkTpQosCheckTimeNs:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastPackageRxBytes(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastPackageRxBytes:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastPackageTxBytes(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastPackageTxBytes:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastQosLatencyUpdateTimeNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastQosLatencyUpdateTimeNs:J

    .line 4
    .line 5
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastRxBytes(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastRxBytes:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastTimeNs(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastTimeNs:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastTxBytes(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastTxBytes:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLatencyReductionRatio(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLatencyReductionRatio:D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLinkQos(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;[D)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLinkQos:[D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMloConnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mMloConnectionTimeS:D

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNsdResult(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;[I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mNsdResult:[I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRealtimeLinkSpeedBound(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mRealtimeLinkSpeedBound:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUpdateNumber(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mUpdateNumber:J

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckLastQosLatency(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->checkLastQosLatency()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$mforegroundPackageUpdate(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->foregroundPackageUpdate(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;Landroid/os/HandlerThread;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->QOS_LATENCY_ARRAY_CHECK_SIZE:I

    .line 6
    .line 7
    const-wide v0, 0x165a0bc00L

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->QOS_LATENCY_CHECK_PERIOD_NS:J

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->QOS_GRANT_CHECK_PERIOD_NS:J

    .line 15
    .line 16
    const/16 v0, 0x6c

    .line 17
    .line 18
    iput v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mRealtimeLinkSpeedBound:I

    .line 19
    .line 20
    new-instance v0, Ljava/util/HashSet;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->ifaces:Ljava/util/Set;

    .line 26
    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->realTimeServiceDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->gameServiceDetected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    .line 51
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->renewConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    .line 56
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->DEBUG:Z

    .line 57
    .line 58
    new-instance v0, Ljava/lang/Object;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLock:Ljava/lang/Object;

    .line 64
    .line 65
    const-wide/16 v2, 0x0

    .line 66
    .line 67
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastTimeNs:J

    .line 68
    .line 69
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastTxBytes:J

    .line 70
    .line 71
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastRxBytes:J

    .line 72
    .line 73
    const-wide/16 v4, 0x0

    .line 74
    .line 75
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mAccumulatedConnectionTimeS:D

    .line 76
    .line 77
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mAccumulatedMloConnectionTimeS:D

    .line 78
    .line 79
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mAccumulatedCurrentReductionRatio:D

    .line 80
    .line 81
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mAccumulatedLatencyReductionRatio:D

    .line 82
    .line 83
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mConnectionTimeS:D

    .line 84
    .line 85
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mMloConnectionTimeS:D

    .line 86
    .line 87
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mCurrentReductionRatio:D

    .line 88
    .line 89
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLatencyReductionRatio:D

    .line 90
    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 94
    .line 95
    .line 96
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mFirstStatUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    .line 98
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mUpdateNumber:J

    .line 99
    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    .line 102
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mPerformanceDegraded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 106
    .line 107
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mGrantChangedNumber:J

    .line 108
    .line 109
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mIsIssueTrackerActivated:Z

    .line 110
    .line 111
    new-instance v0, Ljava/util/LinkedList;

    .line 112
    .line 113
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mHistory:Ljava/util/LinkedList;

    .line 117
    .line 118
    new-instance v0, Ljava/util/LinkedList;

    .line 119
    .line 120
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mPackageHistory:Ljava/util/LinkedList;

    .line 124
    .line 125
    new-instance v0, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastQosLatencyArrayMs:Ljava/util/ArrayList;

    .line 131
    .line 132
    const-wide/16 v6, -0x1

    .line 133
    .line 134
    iput-wide v6, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastLinkStateUpdateNumber:J

    .line 135
    .line 136
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastQosLatencyUpdateTimeNs:J

    .line 137
    .line 138
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastLinkTpQosCheckTimeNs:J

    .line 139
    .line 140
    iput-wide v2, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastLinkLtQosCheckTimeNs:J

    .line 141
    .line 142
    new-instance v0, Ljava/util/HashMap;

    .line 143
    .line 144
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 145
    .line 146
    .line 147
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mRunningStatMap:Ljava/util/Map;

    .line 148
    .line 149
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 150
    .line 151
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;-><init>()V

    .line 152
    .line 153
    .line 154
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mDefaultRunningStat:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 155
    .line 156
    new-instance v0, Ljava/util/HashMap;

    .line 157
    .line 158
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 159
    .line 160
    .line 161
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mFeatureStateMap:Ljava/util/Map;

    .line 162
    .line 163
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$1;

    .line 164
    .line 165
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)V

    .line 166
    .line 167
    .line 168
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mWifiTrafficStatsCallback:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    .line 169
    .line 170
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$2;

    .line 171
    .line 172
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$2;-><init>(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)V

    .line 173
    .line 174
    .line 175
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mWifiServiceDetectionCallback:Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    .line 176
    .line 177
    new-instance v0, Ljava/util/HashMap;

    .line 178
    .line 179
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 180
    .line 181
    .line 182
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mCallbackMap:Ljava/util/Map;

    .line 183
    .line 184
    new-instance v0, Ljava/util/HashMap;

    .line 185
    .line 186
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 187
    .line 188
    .line 189
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mQueryMap:Ljava/util/Map;

    .line 190
    .line 191
    new-instance v0, Ljava/util/HashMap;

    .line 192
    .line 193
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 194
    .line 195
    .line 196
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mGrantTimeoutNs:Ljava/util/Map;

    .line 197
    .line 198
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 199
    .line 200
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 201
    .line 202
    .line 203
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mPackageUpdated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 204
    .line 205
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$3;

    .line 206
    .line 207
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$3;-><init>(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)V

    .line 208
    .line 209
    .line 210
    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->priIntfListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    .line 211
    .line 212
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mContext:Landroid/content/Context;

    .line 213
    .line 214
    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 215
    .line 216
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInterfaceNameProvider()Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

    .line 221
    .line 222
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mWifiTrafficPoller:Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    .line 223
    .line 224
    new-instance p3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;

    .line 225
    .line 226
    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 227
    .line 228
    .line 229
    move-result-object p4

    .line 230
    invoke-direct {p3, p0, p4}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;-><init>(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;Landroid/os/Looper;)V

    .line 231
    .line 232
    .line 233
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mCtlFeatureMediatorHandler:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;

    .line 234
    .line 235
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLinkQualityMonitor()Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 236
    .line 237
    .line 238
    move-result-object p3

    .line 239
    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mWifiLinkQualityMonitor:Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 240
    .line 241
    iget-object p3, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->priIntfListener:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;

    .line 242
    .line 243
    invoke-interface {p1, p3}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;->registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiServiceDetector()Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mWifiServiceDetector:Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    .line 251
    .line 252
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 257
    .line 258
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getIssueTrackerLogManager()Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mIssueTrackerLogManager:Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;

    .line 263
    .line 264
    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$4;

    .line 265
    .line 266
    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$4;-><init>(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager;->registerListener(Lcom/samsung/android/server/wifi/bigdata/IssueTrackerLogManager$Listener;)V

    .line 270
    .line 271
    .line 272
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mAccumulatedConnectionTimeS:D

    .line 273
    .line 274
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mAccumulatedCurrentReductionRatio:D

    .line 275
    .line 276
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mAccumulatedMloConnectionTimeS:D

    .line 277
    .line 278
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mAccumulatedLatencyReductionRatio:D

    .line 279
    .line 280
    return-void
.end method

.method private checkLastQosLatency()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastQosLatencyArrayMs:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x2

    .line 9
    if-ge v0, v2, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    const/4 v0, 0x0

    .line 17
    move v5, v0

    .line 18
    :goto_0
    if-ge v5, v2, :cond_3

    .line 19
    .line 20
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastQosLatencyArrayMs:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    check-cast v6, Ljava/lang/Double;

    .line 27
    .line 28
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    .line 29
    .line 30
    .line 31
    move-result-wide v6

    .line 32
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    .line 33
    .line 34
    cmpg-double v6, v6, v8

    .line 35
    .line 36
    if-gtz v6, :cond_2

    .line 37
    .line 38
    iget-wide v5, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastQosLatencyUpdateTimeNs:J

    .line 39
    .line 40
    sub-long/2addr v3, v5

    .line 41
    const-wide v5, 0x165a0bc00L

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    cmp-long p0, v3, v5

    .line 47
    .line 48
    if-gez p0, :cond_1

    .line 49
    .line 50
    return v0

    .line 51
    :cond_1
    return v1

    .line 52
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastQosLatencyUpdateTimeNs:J

    .line 56
    .line 57
    return v0
.end method

.method private foregroundPackageUpdate(Ljava/lang/String;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastPackageName:Ljava/lang/String;

    .line 9
    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    return-void

    .line 20
    :cond_2
    :goto_1
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastPackageName:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v2, :cond_a

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->getDateToday()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    new-instance v5, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    new-instance v6, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v7, "Pkg: "

    .line 33
    .line 34
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastPackageName:Ljava/lang/String;

    .line 38
    .line 39
    const-string v8, " / "

    .line 40
    .line 41
    invoke-static {v6, v7, v8}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v6, " Default running time: "

    .line 49
    .line 50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mDefaultRunningStat:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 54
    .line 55
    iget-wide v6, v6, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->runningTimeS:D

    .line 56
    .line 57
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    const-string v7, "%.1f"

    .line 66
    .line 67
    const-string v8, "s rx : "

    .line 68
    .line 69
    invoke-static {v7, v6, v5, v8}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mDefaultRunningStat:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 73
    .line 74
    iget-wide v9, v6, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->runningTimeS:D

    .line 75
    .line 76
    const-wide/16 v11, 0x0

    .line 77
    .line 78
    cmpl-double v13, v9, v11

    .line 79
    .line 80
    const-wide v14, 0x408f400000000000L    # 1000.0

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    if-nez v13, :cond_3

    .line 86
    .line 87
    move-wide v3, v11

    .line 88
    const-wide/32 v16, 0x3b9aca00

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    const-wide/32 v16, 0x3b9aca00

    .line 93
    .line 94
    .line 95
    iget-wide v3, v6, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->rxBytes:J

    .line 96
    .line 97
    long-to-double v3, v3

    .line 98
    mul-double/2addr v9, v14

    .line 99
    div-double/2addr v3, v9

    .line 100
    :goto_2
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    const-string v4, "KBps tx : "

    .line 109
    .line 110
    invoke-static {v7, v3, v5, v4}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mDefaultRunningStat:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 114
    .line 115
    iget-wide v9, v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->runningTimeS:D

    .line 116
    .line 117
    cmpl-double v6, v9, v11

    .line 118
    .line 119
    move-wide/from16 v18, v11

    .line 120
    .line 121
    if-nez v6, :cond_4

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_4
    iget-wide v11, v3, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->txBytes:J

    .line 125
    .line 126
    long-to-double v11, v11

    .line 127
    mul-double/2addr v9, v14

    .line 128
    div-double/2addr v11, v9

    .line 129
    :goto_3
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    const-string v6, "KBps /"

    .line 138
    .line 139
    invoke-static {v7, v3, v5, v6}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mRunningStatMap:Ljava/util/Map;

    .line 143
    .line 144
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-eqz v9, :cond_7

    .line 157
    .line 158
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    check-cast v9, Ljava/lang/String;

    .line 163
    .line 164
    new-instance v10, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v11, " "

    .line 167
    .line 168
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v10, " running time: "

    .line 182
    .line 183
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mRunningStatMap:Ljava/util/Map;

    .line 187
    .line 188
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v10

    .line 192
    check-cast v10, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 193
    .line 194
    iget-wide v10, v10, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->runningTimeS:D

    .line 195
    .line 196
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 197
    .line 198
    .line 199
    move-result-object v10

    .line 200
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v10

    .line 204
    invoke-static {v7, v10, v5, v8}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mRunningStatMap:Ljava/util/Map;

    .line 208
    .line 209
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v10

    .line 213
    check-cast v10, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 214
    .line 215
    iget-wide v10, v10, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->runningTimeS:D

    .line 216
    .line 217
    cmpl-double v10, v10, v18

    .line 218
    .line 219
    if-nez v10, :cond_5

    .line 220
    .line 221
    move-wide/from16 v10, v18

    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_5
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mRunningStatMap:Ljava/util/Map;

    .line 225
    .line 226
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v10

    .line 230
    check-cast v10, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 231
    .line 232
    iget-wide v10, v10, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->rxBytes:J

    .line 233
    .line 234
    long-to-double v10, v10

    .line 235
    iget-object v12, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mRunningStatMap:Ljava/util/Map;

    .line 236
    .line 237
    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v12

    .line 241
    check-cast v12, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 242
    .line 243
    iget-wide v12, v12, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->runningTimeS:D

    .line 244
    .line 245
    mul-double/2addr v12, v14

    .line 246
    div-double/2addr v10, v12

    .line 247
    :goto_5
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v10

    .line 255
    invoke-static {v7, v10, v5, v4}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mRunningStatMap:Ljava/util/Map;

    .line 259
    .line 260
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v10

    .line 264
    check-cast v10, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 265
    .line 266
    iget-wide v10, v10, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->runningTimeS:D

    .line 267
    .line 268
    cmpl-double v10, v10, v18

    .line 269
    .line 270
    if-nez v10, :cond_6

    .line 271
    .line 272
    move-wide/from16 v10, v18

    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_6
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mRunningStatMap:Ljava/util/Map;

    .line 276
    .line 277
    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v10

    .line 281
    check-cast v10, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 282
    .line 283
    iget-wide v10, v10, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->txBytes:J

    .line 284
    .line 285
    long-to-double v10, v10

    .line 286
    iget-object v12, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mRunningStatMap:Ljava/util/Map;

    .line 287
    .line 288
    invoke-interface {v12, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v9

    .line 292
    check-cast v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 293
    .line 294
    iget-wide v12, v9, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;->runningTimeS:D

    .line 295
    .line 296
    mul-double/2addr v12, v14

    .line 297
    div-double/2addr v10, v12

    .line 298
    :goto_6
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 299
    .line 300
    .line 301
    move-result-object v9

    .line 302
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v9

    .line 306
    invoke-static {v7, v9, v5, v6}, Lcom/samsung/android/server/wifi/SemSupportedFeatureLogger$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    goto/16 :goto_4

    .line 310
    .line 311
    :cond_7
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastPackageName:Ljava/lang/String;

    .line 312
    .line 313
    const-string v4, "launcher"

    .line 314
    .line 315
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    if-nez v3, :cond_b

    .line 320
    .line 321
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 322
    .line 323
    .line 324
    move-result-wide v3

    .line 325
    div-long v3, v3, v16

    .line 326
    .line 327
    iget-wide v6, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastPackageUpdateTimeS:J

    .line 328
    .line 329
    sub-long/2addr v3, v6

    .line 330
    const-wide/16 v6, 0x1e

    .line 331
    .line 332
    cmp-long v3, v3, v6

    .line 333
    .line 334
    if-lez v3, :cond_b

    .line 335
    .line 336
    const-string v3, "Date is "

    .line 337
    .line 338
    const-string v4, ", Mediator is "

    .line 339
    .line 340
    invoke-static {v3, v2, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    rem-int/lit8 v2, v2, 0x2

    .line 345
    .line 346
    if-lez v2, :cond_8

    .line 347
    .line 348
    const-string v4, "activated."

    .line 349
    .line 350
    goto :goto_7

    .line 351
    :cond_8
    const-string v4, "deactivated."

    .line 352
    .line 353
    :goto_7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    const-string v4, "SemWifiCtlFeatureMediator"

    .line 361
    .line 362
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 366
    .line 367
    .line 368
    move-result-object v3

    .line 369
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    const-string v4, "Mediator is "

    .line 375
    .line 376
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    if-lez v2, :cond_9

    .line 380
    .line 381
    const-string v2, "activated. "

    .line 382
    .line 383
    goto :goto_8

    .line 384
    :cond_9
    const-string v2, "deactivated. "

    .line 385
    .line 386
    :goto_8
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->addPackageHistory(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    goto :goto_9

    .line 404
    :cond_a
    const-wide/32 v16, 0x3b9aca00

    .line 405
    .line 406
    .line 407
    :cond_b
    :goto_9
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastPackageName:Ljava/lang/String;

    .line 408
    .line 409
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 410
    .line 411
    .line 412
    move-result-wide v1

    .line 413
    div-long v1, v1, v16

    .line 414
    .line 415
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLastPackageUpdateTimeS:J

    .line 416
    .line 417
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mPackageUpdated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 418
    .line 419
    const/4 v2, 0x1

    .line 420
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 421
    .line 422
    .line 423
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mRunningStatMap:Ljava/util/Map;

    .line 424
    .line 425
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    if-eqz v2, :cond_c

    .line 438
    .line 439
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v2

    .line 443
    check-cast v2, Ljava/lang/String;

    .line 444
    .line 445
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mRunningStatMap:Ljava/util/Map;

    .line 446
    .line 447
    new-instance v4, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 448
    .line 449
    invoke-direct {v4}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;-><init>()V

    .line 450
    .line 451
    .line 452
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    goto :goto_a

    .line 456
    :cond_c
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 457
    .line 458
    invoke-direct {v1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;-><init>()V

    .line 459
    .line 460
    .line 461
    iput-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mDefaultRunningStat:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 462
    .line 463
    return-void
.end method


# virtual methods
.method public addHistory(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "MM-dd HH:mm:ss.SSS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/Date;

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, " "

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mHistory:Ljava/util/LinkedList;

    .line 42
    .line 43
    monitor-enter v0

    .line 44
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mHistory:Ljava/util/LinkedList;

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mHistory:Ljava/util/LinkedList;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    const/16 v1, 0x1388

    .line 56
    .line 57
    if-le p1, v1, :cond_0

    .line 58
    .line 59
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mHistory:Ljava/util/LinkedList;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    monitor-exit v0

    .line 68
    return-void

    .line 69
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw p0

    .line 71
    :catch_0
    move-exception p0

    .line 72
    const-string p1, "SemWifiCtlFeatureMediator"

    .line 73
    .line 74
    const-string v0, "format problem"

    .line 75
    .line 76
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public addPackageHistory(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "MM-dd HH:mm:ss.SSS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/util/Date;

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v2

    .line 14
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v0, " "

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mPackageHistory:Ljava/util/LinkedList;

    .line 42
    .line 43
    monitor-enter v0

    .line 44
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mPackageHistory:Ljava/util/LinkedList;

    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mPackageHistory:Ljava/util/LinkedList;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    const/16 v1, 0x1388

    .line 56
    .line 57
    if-le p1, v1, :cond_0

    .line 58
    .line 59
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mPackageHistory:Ljava/util/LinkedList;

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :cond_0
    monitor-exit v0

    .line 68
    return-void

    .line 69
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    throw p0

    .line 71
    :catch_0
    move-exception p0

    .line 72
    const-string p1, "SemWifiCtlFeatureMediator"

    .line 73
    .line 74
    const-string v0, "format problem"

    .line 75
    .line 76
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mHistory:Ljava/util/LinkedList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mHistory:Ljava/util/LinkedList;

    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    const-string v0, "SemWifiCtlFeatureMediator history:"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

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
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mPackageHistory:Ljava/util/LinkedList;

    .line 44
    .line 45
    monitor-enter v1

    .line 46
    :try_start_1
    new-instance v0, Ljava/util/LinkedList;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mPackageHistory:Ljava/util/LinkedList;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 51
    .line 52
    .line 53
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    const-string p0, "SemWifiCtlFeatureMediator package history"

    .line 55
    .line 56
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    throw p0

    .line 89
    :catchall_1
    move-exception p0

    .line 90
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 91
    throw p0
.end method

.method public getDateToday()I
    .locals 3

    .line 1
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v0, "dd"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/util/Date;

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return p0

    .line 26
    :catch_0
    const/16 p0, 0x6f

    .line 27
    .line 28
    return p0
.end method

.method public getFeatureState()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mFeatureStateMap:Ljava/util/Map;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-object v1

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public notifyRealtimePerformanceDegraded()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mPerformanceDegraded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public notifyRealtimePerformanceRecovered()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mPerformanceDegraded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V
    .locals 0

    .line 1
    iget-boolean p2, p2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->ifaces:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mClientModeManager:Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;

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
    if-eqz p2, :cond_2

    .line 21
    .line 22
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mClientIfaceName:Ljava/lang/String;

    .line 23
    .line 24
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter p1

    .line 33
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mCallbackMap:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-nez p2, :cond_0

    .line 40
    .line 41
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mCtlFeatureMediatorHandler:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;

    .line 42
    .line 43
    const/4 p2, 0x2

    .line 44
    invoke-static {p0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    :goto_0
    monitor-exit p1

    .line 55
    return-void

    .line 56
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0

    .line 58
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->ifaces:Ljava/util/Set;

    .line 59
    .line 60
    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mClientIfaceName:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    .line 73
    const/4 p2, 0x0

    .line 74
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mCtlFeatureMediatorHandler:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;

    .line 78
    .line 79
    const/4 p1, 0x3

    .line 80
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 85
    .line 86
    .line 87
    :cond_2
    return-void
.end method

.method public registerCallback(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$GrantCallback;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "Callback registered: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    :try_start_0
    const-string v2, ""

    .line 11
    .line 12
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    const-string v2, "SemWifiCtlFeatureMediator"

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mCallbackMap:Ljava/util/Map;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mCtlFeatureMediatorHandler:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;

    .line 44
    .line 45
    const/4 v2, 0x2

    .line 46
    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mCallbackMap:Ljava/util/Map;

    .line 57
    .line 58
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mRunningStatMap:Ljava/util/Map;

    .line 62
    .line 63
    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;

    .line 64
    .line 65
    invoke-direct {v0}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$RunningStatistics;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mFeatureStateMap:Ljava/util/Map;

    .line 72
    .line 73
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    monitor-exit v1

    .line 79
    return-void

    .line 80
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    const-string p1, "callback and key must not be null"

    .line 83
    .line 84
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p0
.end method

.method public registerQuery(Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$PerformanceExpectationQuery;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "Query registered: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    :try_start_0
    const-string v2, ""

    .line 11
    .line 12
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    const-string v2, "SemWifiCtlFeatureMediator"

    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mQueryMap:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    monitor-exit v1

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string p1, "query and key must not be null"

    .line 39
    .line 40
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p0

    .line 44
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public renewConnection()V
    .locals 2

    .line 1
    const-string v0, "SemWifiCtlFeatureMediator"

    .line 2
    .line 3
    const-string v1, "Roaming triggered"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->addHistory(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->renewConnection:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mCtlFeatureMediatorHandler:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;

    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public unregisterCallback(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "Callback unregistered: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    :try_start_0
    const-string v2, "SemWifiCtlFeatureMediator"

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mCallbackMap:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mRunningStatMap:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mFeatureStateMap:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mCallbackMap:Ljava/util/Map;

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mCtlFeatureMediatorHandler:Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator$CtlFeatureMediatorHandler;

    .line 49
    .line 50
    const/4 p1, 0x3

    .line 51
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :cond_0
    :goto_0
    monitor-exit v1

    .line 62
    return-void

    .line 63
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    const-string p1, "callback and key must not be null"

    .line 66
    .line 67
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method

.method public unregisterQuery(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "Query unregistered: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    :try_start_0
    const-string v2, "SemWifiCtlFeatureMediator"

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiCtlFeatureMediator;->mQueryMap:Ljava/util/Map;

    .line 18
    .line 19
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    monitor-exit v1

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string p1, "query and key must not be null"

    .line 29
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p0

    .line 34
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method
