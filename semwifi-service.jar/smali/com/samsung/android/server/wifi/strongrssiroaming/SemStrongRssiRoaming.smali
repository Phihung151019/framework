.class public Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;,
        Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$NetworkPartialScanListener;
    }
.end annotation


# static fields
.field private static final APE_EXTRA_ENABLE:Ljava/lang/String; = "enable"

.field private static final APE_EXTRA_MSG_TYPE:Ljava/lang/String; = "msg_type"

.field private static final APE_EXTRA_MSG_TYPE_REAL_TIME_APP_INFO:Ljava/lang/String; = "REALTIME_APP_INFO"

.field private static final APE_INFO_INTENT:Ljava/lang/String; = "com.samsung.android.wifi.APE_INFO"

.field private static final DUMP_TITLE:Ljava/lang/String;

.field private static final EMPTY_BSSID:Ljava/lang/String; = "00:00:00:00:00:00"

.field private static final EVENT_AWARE_CONNECTION_CHANGED:I = 0xc

.field private static final EVENT_DISABLE_GUARD_PERIOD:I = 0x9

.field private static final EVENT_GET_WIFI_INFO_POLL:I = 0x5

.field private static final EVENT_LINK_STATS_UPDATE:I = 0xe

.field private static final EVENT_P2P_CONNECTION_CHANGED:I = 0xb

.field private static final EVENT_PARTIAL_SCAN_FAIL_REPORTED:I = 0x8

.field private static final EVENT_PARTIAL_SCAN_RESULTS_REPORTED:I = 0x7

.field private static final EVENT_REALTIME_APP_DETECTED:I = 0xa

.field private static final EVENT_ROAM_FAIL:I = 0xd

.field private static final EVENT_SCREEN_CHANGED:I = 0x6

.field public static final EVENT_WIFI_CONNECTED:I = 0x2

.field public static final EVENT_WIFI_DISCONNECTED:I = 0x3

.field public static final EVENT_WIFI_ENABLED:I = 0x1

.field public static final EVENT_WIFI_ROAMING:I = 0x4

.field private static final GUARD_PERIOD_MS:I = 0x493e0

.field private static final POLLING_INTERVAL_MS:I = 0xbb8

.field private static final PSM_ENABLED:Ljava/lang/String; = "1"

.field private static final ROAMING_STATE_BITMASK_AWARE_DISCONNECTED:I = 0x20

.field private static final ROAMING_STATE_BITMASK_DEFAULT:I = 0x30

.field private static final ROAMING_STATE_BITMASK_LCD_ON:I = 0x1

.field private static final ROAMING_STATE_BITMASK_MATCHED_POLLING_CONDITION:I = 0x3b

.field private static final ROAMING_STATE_BITMASK_P2P_DISCONNECTED:I = 0x10

.field private static final ROAMING_STATE_BITMASK_RCL_HAS_HIGHER_BAND:I = 0x8

.field private static final ROAMING_STATE_BITMASK_WIFI_CONNECTED:I = 0x2

.field private static final ROAM_CONDITION_DYNAMIC_RSSI_RESET_TH:I = -0x3c

.field private static final ROAM_CONDITION_DYNAMIC_RSSI_STEP:I = 0x5

.field private static final ROAM_CONDITION_RSSI_COUNT:I = 0x3

.field private static final ROAM_CONDITION_RSSI_DIFF:I = 0x8

.field private static final ROAM_CONDITION_RSSI_MIN:I = -0x37

.field private static final ROAM_FAIL_TIMER_MS:I = 0x1388

.field private static final ROAM_SCAN_RETRY_COUNT:I = 0x1

.field private static final STRONG_RSSI_ROAMING_INTENT_EXTRA_INTERVAL_MS:Ljava/lang/String; = "GuardPeriodMs"

.field private static final STRONG_RSSI_ROAMING_INTENT_GUARD_PERIOD:Ljava/lang/String; = "com.samsung.android.StrongRssiRoaming.GUARD_PERIOD"

.field private static final TAG:Ljava/lang/String; = "SemStrongRssiRoaming"

.field private static final VERSION:Ljava/lang/String; = "2.1.0"


# instance fields
.field private m6GhzFreqExist:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentBssid:Ljava/lang/String;

.field private mCurrentFrequency:I

.field private mDynamicMaxRssi:I

.field private mDynamicMinRssi:I

.field private final mFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

.field private mGuardPeriodEnabled:Z

.field private mGuardPeriodMs:I

.field private final mHandler:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

.field private mInterfaceName:Ljava/lang/String;

.field private mIsWifiConnected:Z

.field private final mLogManager:Lcom/samsung/android/server/wifi/strongrssiroaming/LogManager;

.field private final mLogUtil:Lcom/samsung/android/server/wifi/util/LogUtils;

.field private final mLooper:Landroid/os/Looper;

.field private final mNetworkPartialScanListener:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$NetworkPartialScanListener;

.field private mNoCandidateCount:I

.field private mNoScanResultCount:I

.field mOnWifiUsabilityStatsListener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

.field private mPollingStarted:Z

.field private final mPsmEnabled:Z

.field private mRealTimeAppDetected:Z

.field private mRegistered:Z

.field private mRoamCondition:Z

.field private mRoamFailCount:I

.field private mRoamScanRetryCount:I

.field private mRoamTargetFrequency:I

.field private final mRoamingAssistant:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

.field private final mRoamingFrequencyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRoamingProcessor:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

.field private mRoamingState:I

.field private final mRssiHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;

.field private mScanCount:I

.field private mScpmEnabled:Z

.field private final mScreenStateListener:Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;

.field private mVerboseLoggingEnabled:Z

.field private final mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

.field private final mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

.field private final mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

.field private final mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiScanner:Landroid/net/wifi/WifiScanner;

.field private mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;


# direct methods
.method public static synthetic $r8$lambda$p0voHjQrSsIz7X-woOS8X7pZe-Q(Landroid/net/wifi/ScanResult;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/ScanResult;->is6GHz()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$roTfxcXCtrqNhLKRwl5kjGhupBA(I)Z
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic $r8$lambda$wCAGuVfL9JEhuQaFkPX2F8EovX0(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->lambda$new$0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetm6GhzFreqExist(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->m6GhzFreqExist:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mCurrentBssid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDynamicMinRssi(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mDynamicMinRssi:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGuardPeriodEnabled(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mGuardPeriodEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGuardPeriodMs(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mGuardPeriodMs:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mHandler:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mIsWifiConnected:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLogUtil(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/util/LogUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mLogUtil:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNoCandidateCount(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mNoCandidateCount:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNoScanResultCount(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mNoScanResultCount:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPsmEnabled(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mPsmEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRealTimeAppDetected(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRealTimeAppDetected:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoamCondition(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamCondition:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoamFailCount(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamFailCount:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoamScanRetryCount(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamScanRetryCount:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoamTargetFrequency(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamTargetFrequency:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoamingProcessor(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingProcessor:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSaLoggingHandler(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScpmEnabled(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mScpmEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentBssid(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mCurrentBssid:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentFrequency(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mCurrentFrequency:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmGuardPeriodMs(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mGuardPeriodMs:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmInterfaceName(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mInterfaceName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsWifiConnected(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mIsWifiConnected:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNoCandidateCount(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mNoCandidateCount:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNoScanResultCount(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mNoScanResultCount:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRealTimeAppDetected(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRealTimeAppDetected:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRoamCondition(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamCondition:Z

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRoamFailCount(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamFailCount:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRoamScanRetryCount(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamScanRetryCount:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRoamTargetFrequency(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamTargetFrequency:I

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Landroid/net/wifi/WifiInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Landroid/net/wifi/WifiUsabilityStatsEntry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic -$$Nest$mgetBssid(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->getBssid()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetWifiScanner(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->getWifiScanner()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misPollingCondition(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->isPollingCondition()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$misRoamCondition(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->isRoamCondition()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$msendSrrReportForScanResult(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->sendSrrReportForScanResult(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetGuardPeriod(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->setGuardPeriod(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$msetRoamingStateBitMask(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->setRoamingStateBitMask(IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mstartPartialScan(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->startPartialScan()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateAwareState(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updateAwareState()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateConnectStateAndBand(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updateConnectStateAndBand()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateP2PState(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updateP2PState()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePollingState(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updatePollingState()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRssiHistory(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updateRssiHistory()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "SemStrongRssiRoaming"

    .line 2
    .line 3
    const-string v1, " (v2.1.0) history:"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->DUMP_TITLE:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Landroid/os/HandlerThread;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRssiHistory:Ljava/util/LinkedList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingFrequencyList:Ljava/util/List;

    .line 17
    .line 18
    const/16 v0, 0x30

    .line 19
    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingState:I

    .line 21
    .line 22
    const v0, 0x493e0

    .line 23
    .line 24
    .line 25
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mGuardPeriodMs:I

    .line 26
    .line 27
    const/16 v0, -0x37

    .line 28
    .line 29
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mDynamicMinRssi:I

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRealTimeAppDetected:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mScpmEnabled:Z

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRegistered:Z

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mGuardPeriodEnabled:Z

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mPollingStarted:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamCondition:Z

    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->m6GhzFreqExist:Z

    .line 45
    .line 46
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mIsWifiConnected:Z

    .line 47
    .line 48
    new-instance v1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$4;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$4;-><init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mOnWifiUsabilityStatsListener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    iput-object p2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iput-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiMonitor()Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iput-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiMonitor:Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;

    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiNative()Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iput-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 76
    .line 77
    const-string v2, "wifiaware"

    .line 78
    .line 79
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Landroid/net/wifi/aware/WifiAwareManager;

    .line 84
    .line 85
    iput-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    .line 86
    .line 87
    const-string v2, "wifi"

    .line 88
    .line 89
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 94
    .line 95
    iput-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 96
    .line 97
    const-string v2, "wifip2p"

    .line 98
    .line 99
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 104
    .line 105
    iput-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 106
    .line 107
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    iput-object p3, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mLooper:Landroid/os/Looper;

    .line 112
    .line 113
    new-instance v2, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    .line 114
    .line 115
    invoke-direct {v2, p0, p3}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;-><init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;Landroid/os/Looper;)V

    .line 116
    .line 117
    .line 118
    iput-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mHandler:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    .line 119
    .line 120
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getRoamingAssistant()Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    iput-object p3, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingAssistant:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    .line 125
    .line 126
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getRoamingProcessor()Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    iput-object p3, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingProcessor:Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;

    .line 131
    .line 132
    new-instance v2, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$NetworkPartialScanListener;

    .line 133
    .line 134
    invoke-direct {v2, p0, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$NetworkPartialScanListener;-><init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;I)V

    .line 135
    .line 136
    .line 137
    iput-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mNetworkPartialScanListener:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$NetworkPartialScanListener;

    .line 138
    .line 139
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiFeatureController()Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 144
    .line 145
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->makeBroadcastReceiver()Landroid/content/BroadcastReceiver;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    iput-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    .line 151
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->isPowerSaveModeEnabled()Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mPsmEnabled:Z

    .line 156
    .line 157
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mVerboseLoggingEnabled:Z

    .line 162
    .line 163
    new-instance v1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$$ExternalSyntheticLambda0;

    .line 164
    .line 165
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    .line 166
    .line 167
    .line 168
    iput-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mScreenStateListener:Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;

    .line 169
    .line 170
    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSrrSaLoggingHandler()Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    iput-object p2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;

    .line 175
    .line 176
    const-string p2, "connectivity"

    .line 177
    .line 178
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 183
    .line 184
    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 185
    .line 186
    new-instance p1, Lcom/samsung/android/server/wifi/strongrssiroaming/LogManager;

    .line 187
    .line 188
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/LogManager;-><init>()V

    .line 189
    .line 190
    .line 191
    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mLogManager:Lcom/samsung/android/server/wifi/strongrssiroaming/LogManager;

    .line 192
    .line 193
    invoke-virtual {p3, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemRoamingProcessor;->setLogger(Lcom/samsung/android/server/wifi/strongrssiroaming/LogManager;)V

    .line 194
    .line 195
    .line 196
    new-instance p1, Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 197
    .line 198
    invoke-direct {p1}, Lcom/samsung/android/server/wifi/util/LogUtils;-><init>()V

    .line 199
    .line 200
    .line 201
    iput-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mLogUtil:Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 202
    .line 203
    if-nez v2, :cond_0

    .line 204
    .line 205
    new-instance p1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$$ExternalSyntheticLambda1;

    .line 206
    .line 207
    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->registerListener(Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController$Listener;)V

    .line 211
    .line 212
    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->registerWifiNetworkCallbacks()V

    .line 214
    .line 215
    .line 216
    return-void
.end method

.method private getBssid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method

.method private getRoamingStateBitMask(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingState:I

    .line 2
    .line 3
    and-int/2addr p0, p1

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method private getRssi()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getAssociatedMloLinks()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_4

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/net/wifi/MloLink;

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/net/wifi/MloLink;->getLinkId()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->isInUse(I)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {v2}, Landroid/net/wifi/MloLink;->getRssi()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    const/16 v4, -0x7f

    .line 55
    .line 56
    if-eq v3, v4, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    invoke-virtual {v1}, Landroid/net/wifi/MloLink;->getBand()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-virtual {v2}, Landroid/net/wifi/MloLink;->getBand()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-ge v3, v4, :cond_1

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/net/wifi/MloLink;->getLinkId()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-direct {p0, v3}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->isInUse(I)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_1

    .line 78
    .line 79
    :goto_1
    move-object v1, v2

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    sget-object v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->TAG:Ljava/lang/String;

    .line 82
    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v3, "getRssi: "

    .line 86
    .line 87
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    if-nez v1, :cond_5

    .line 91
    .line 92
    const-string v3, ""

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    invoke-virtual {v1}, Landroid/net/wifi/MloLink;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    if-nez v1, :cond_6

    .line 110
    .line 111
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 112
    .line 113
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    return p0

    .line 118
    :cond_6
    invoke-virtual {v1}, Landroid/net/wifi/MloLink;->getRssi()I

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    return p0
.end method

.method private getWifiScanner()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScanner()Landroid/net/wifi/WifiScanner;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 12
    .line 13
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_1
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method private isInUse(I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiUsabilityStatsEntry:Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p0, :cond_1

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiUsabilityStatsEntry;->getLinkState(I)I

    .line 7
    .line 8
    .line 9
    move-result p0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    const/4 p1, 0x2

    .line 11
    if-ne p0, p1, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    return v0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object p1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "isInUse:"

    .line 20
    .line 21
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    .line 23
    .line 24
    :cond_1
    return v0
.end method

.method private isPollingCondition()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingState:I

    .line 2
    .line 3
    const/16 v0, 0x3b

    .line 4
    .line 5
    and-int/2addr p0, v0

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method private isPowerSaveModeEnabled()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiNative:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getVendorConnFileInfo(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    sget-object v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "isPowerSaveModeEnabled is "

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v2, "1"

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0
.end method

.method private isRoamCondition()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getAssociatedMloLinks()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRssiHistory:Ljava/util/LinkedList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x3

    .line 22
    if-eq v0, v2, :cond_1

    .line 23
    .line 24
    return v1

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRssiHistory:Ljava/util/LinkedList;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRssiHistory:Ljava/util/LinkedList;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    move v3, v0

    .line 44
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_4

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-ge v4, v0, :cond_3

    .line 61
    .line 62
    move v0, v4

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    if-le v4, v3, :cond_2

    .line 65
    .line 66
    move v3, v4

    .line 67
    goto :goto_0

    .line 68
    :cond_4
    const/16 v2, -0x37

    .line 69
    .line 70
    const/16 v4, 0x8

    .line 71
    .line 72
    if-lt v0, v2, :cond_5

    .line 73
    .line 74
    sub-int v2, v3, v0

    .line 75
    .line 76
    if-gt v2, v4, :cond_5

    .line 77
    .line 78
    iget-boolean v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mGuardPeriodEnabled:Z

    .line 79
    .line 80
    if-eqz v2, :cond_6

    .line 81
    .line 82
    :cond_5
    iget v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mDynamicMinRssi:I

    .line 83
    .line 84
    if-lt v0, v2, :cond_a

    .line 85
    .line 86
    sub-int v0, v3, v0

    .line 87
    .line 88
    if-le v0, v4, :cond_6

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRealTimeAppDetected:Z

    .line 92
    .line 93
    if-eqz v0, :cond_7

    .line 94
    .line 95
    return v1

    .line 96
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getB2BPolicyManager()Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mInterfaceName:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->isNCHOModeEnabled(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_8

    .line 109
    .line 110
    return v1

    .line 111
    :cond_8
    iput v3, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mDynamicMaxRssi:I

    .line 112
    .line 113
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mGuardPeriodEnabled:Z

    .line 114
    .line 115
    if-eqz v0, :cond_9

    .line 116
    .line 117
    const-string v0, "Triggered by MinRssi"

    .line 118
    .line 119
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->logToDump(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_9
    const/4 p0, 0x1

    .line 123
    return p0

    .line 124
    :cond_a
    :goto_1
    return v1
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mHandler:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x6

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private makeBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$3;-><init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private readableRoamingState()Ljava/lang/String;
    .locals 7

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingState:I

    .line 2
    .line 3
    and-int/lit8 v0, p0, 0x1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    and-int/lit8 v3, p0, 0x2

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    move v3, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v3, v1

    .line 19
    :goto_1
    and-int/lit8 v4, p0, 0x8

    .line 20
    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    move v4, v2

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move v4, v1

    .line 26
    :goto_2
    and-int/lit8 v5, p0, 0x10

    .line 27
    .line 28
    if-eqz v5, :cond_3

    .line 29
    .line 30
    move v5, v2

    .line 31
    goto :goto_3

    .line 32
    :cond_3
    move v5, v1

    .line 33
    :goto_3
    and-int/lit8 p0, p0, 0x20

    .line 34
    .line 35
    if-eqz p0, :cond_4

    .line 36
    .line 37
    move v1, v2

    .line 38
    :cond_4
    const-string p0, "LCD_ON: "

    .line 39
    .line 40
    const-string v2, ", WIFI_CONN: "

    .line 41
    .line 42
    const-string v6, ", HIGH_BAND: "

    .line 43
    .line 44
    invoke-static {p0, v2, v0, v3, v6}, Lcom/google/gson/stream/JsonReader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string v0, ", NO_P2P: "

    .line 49
    .line 50
    const-string v2, ", NO_AWARE: "

    .line 51
    .line 52
    invoke-static {p0, v4, v0, v5, v2}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method private recordLog(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mLogManager:Lcom/samsung/android/server/wifi/strongrssiroaming/LogManager;

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

.method private registerListenerAndIntent()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRegistered:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mScreenStateListener:Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroid/content/IntentFilter;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v1, "com.samsung.android.wifi.APE_INFO"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v1, "android.net.wifi.aware.action.WIFI_AWARE_RESOURCE_CHANGED"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "com.samsung.android.StrongRssiRoaming.GUARD_PERIOD"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    .line 41
    const/4 v3, 0x2

    .line 42
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRegistered:Z

    .line 47
    .line 48
    :cond_0
    return-void
.end method

.method private registerWifiNetworkCallbacks()V
    .locals 2

    .line 1
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 8
    .line 9
    .line 10
    new-instance v1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$1;-><init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private sendSrrReportForScanResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->m6GhzFreqExist:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;

    .line 12
    .line 13
    sget-object p1, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->SCAN_5G_6G_RESULT_EMPTY:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;->sendSrrReport(Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$$ExternalSyntheticLambda2;

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$$ExternalSyntheticLambda2;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;

    .line 36
    .line 37
    sget-object p1, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->SCAN_5G_6G_RESULT_5G:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;->sendSrrReport(Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;

    .line 44
    .line 45
    sget-object p1, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->SCAN_5G_6G_RESULT_5G_6G:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;->sendSrrReport(Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;

    .line 58
    .line 59
    sget-object p1, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->SCAN_5G_RESULT_EMPTY:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;->sendSrrReport(Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mSaLoggingHandler:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;

    .line 66
    .line 67
    sget-object p1, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;->SCAN_5G_RESULT_5G:Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler;->sendSrrReport(Lcom/samsung/android/server/wifi/bigdata/SrrSaLoggingHandler$Report;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method private setDynamicMinRssi(I)V
    .locals 1

    .line 1
    const-string v0, "Set MinRSSI: "

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->logToDump(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mDynamicMinRssi:I

    .line 11
    .line 12
    return-void
.end method

.method private setGuardPeriod(Z)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mHandler:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    .line 4
    .line 5
    const/16 v1, 0x9

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mHandler:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mGuardPeriodMs:I

    .line 17
    .line 18
    int-to-long v2, v2

    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mGuardPeriodEnabled:Z

    .line 23
    .line 24
    return-void
.end method

.method private setRoamingStateBitMask(IZ)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget p2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingState:I

    .line 4
    .line 5
    or-int/2addr p1, p2

    .line 6
    iput p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingState:I

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget p2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingState:I

    .line 10
    .line 11
    not-int p1, p1

    .line 12
    and-int/2addr p1, p2

    .line 13
    iput p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingState:I

    .line 14
    .line 15
    return-void
.end method

.method private startPartialScan()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mCurrentFrequency:I

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingFrequencyList:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$$ExternalSyntheticLambda2;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v1, v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$$ExternalSyntheticLambda2;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->m6GhzFreqExist:Z

    .line 34
    .line 35
    const/4 v1, 0x2

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    iget v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mCurrentFrequency:I

    .line 39
    .line 40
    invoke-static {v0}, Landroid/net/wifi/ScanResult;->toBand(I)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-ne v0, v1, :cond_1

    .line 45
    .line 46
    sget-object p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    const-string v0, " Cancel partial scan"

    .line 49
    .line 50
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    iget v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mCurrentFrequency:I

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingFrequencyList:Ljava/util/List;

    .line 59
    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_2

    .line 69
    .line 70
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingFrequencyList:Ljava/util/List;

    .line 71
    .line 72
    iget v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mCurrentFrequency:I

    .line 73
    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    :cond_2
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    .line 82
    .line 83
    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    .line 84
    .line 85
    .line 86
    iput v1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    .line 87
    .line 88
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingFrequencyList:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    new-instance v2, Landroid/os/WorkSource;

    .line 95
    .line 96
    const/16 v3, 0x3e8

    .line 97
    .line 98
    const-string v4, "com.samsung.android.server.wifi"

    .line 99
    .line 100
    invoke-direct {v2, v3, v4}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    new-array v3, v1, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 104
    .line 105
    iput-object v3, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 106
    .line 107
    const/4 v3, 0x0

    .line 108
    :goto_0
    if-ge v3, v1, :cond_3

    .line 109
    .line 110
    iget-object v4, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 111
    .line 112
    new-instance v5, Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 113
    .line 114
    iget-object v6, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingFrequencyList:Ljava/util/List;

    .line 115
    .line 116
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    check-cast v6, Ljava/lang/Integer;

    .line 121
    .line 122
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    invoke-direct {v5, v6}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    .line 127
    .line 128
    .line 129
    aput-object v5, v4, v3

    .line 130
    .line 131
    add-int/lit8 v3, v3, 0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiScanner:Landroid/net/wifi/WifiScanner;

    .line 135
    .line 136
    iget-object v4, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mNetworkPartialScanListener:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$NetworkPartialScanListener;

    .line 137
    .line 138
    invoke-virtual {v3, v0, v4, v2}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    .line 139
    .line 140
    .line 141
    iget v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mScanCount:I

    .line 142
    .line 143
    add-int/lit8 v0, v0, 0x1

    .line 144
    .line 145
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mScanCount:I

    .line 146
    .line 147
    iget v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mDynamicMaxRssi:I

    .line 148
    .line 149
    add-int/lit8 v0, v0, 0x5

    .line 150
    .line 151
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->setDynamicMinRssi(I)V

    .line 152
    .line 153
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingFrequencyList:Ljava/util/List;

    .line 160
    .line 161
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-eqz v3, :cond_4

    .line 170
    .line 171
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    check-cast v3, Ljava/lang/Integer;

    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v3, " "

    .line 185
    .line 186
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string v3, "SCAN_START freq["

    .line 193
    .line 194
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v1, "]="

    .line 201
    .line 202
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->logToDump(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    return-void
.end method

.method private startPolling()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mHandler:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mHandler:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updateLinkState(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private startStrongRssiRoaming()V
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "startStrongRssiRoaming "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingState:I

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mPsmEnabled:Z

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->registerListenerAndIntent()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updateCurrentState()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private stopPolling()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mHandler:Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$StrongRssiRoamingHandler;

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updateLinkState(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private stopStrongRssiRoaming()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "stopStrongRssiRoaming"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mPsmEnabled:Z

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/16 v0, 0x30

    .line 14
    .line 15
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingState:I

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->unregisterListenerAndIntent()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private unregisterListenerAndIntent()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRegistered:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mScreenStateListener:Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->unregisterListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRegistered:Z

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private updateAwareState()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.hardware.wifi.aware"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/net/wifi/aware/WifiAwareManager;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiAwareManager:Landroid/net/wifi/aware/WifiAwareManager;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/net/wifi/aware/WifiAwareManager;->getAvailableAwareResources()Landroid/net/wifi/aware/AwareResources;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/16 v2, 0x20

    .line 28
    .line 29
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->getRoamingStateBitMask(I)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/net/wifi/aware/Characteristics;->getNumberOfSupportedDataPaths()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {v1}, Landroid/net/wifi/aware/AwareResources;->getAvailableDataPathsCount()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    sub-int/2addr v0, v1

    .line 46
    if-gtz v0, :cond_0

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    :goto_0
    move v3, v0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    :goto_1
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->getRoamingStateBitMask(I)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eq v0, v3, :cond_2

    .line 58
    .line 59
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->setRoamingStateBitMask(IZ)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updatePollingState()V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method

.method private updateConnectStateAndBand()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isConnected()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, -0x1

    .line 34
    if-ne v0, v1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    sget-object v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    const-string v1, "updateConnectStateAndBand()"

    .line 40
    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x2

    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->setRoamingStateBitMask(IZ)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updateRclCondition()V

    .line 50
    .line 51
    .line 52
    return v1

    .line 53
    :cond_1
    :goto_0
    const/16 v0, 0xa

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->setRoamingStateBitMask(IZ)V

    .line 57
    .line 58
    .line 59
    return v1
.end method

.method private updateCurrentState()V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "updateCurrentState"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiManagerProxy:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isScreenOn()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->setRoamingStateBitMask(IZ)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updateP2PState()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updateAwareState()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updateConnectStateAndBand()Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private updateLinkState(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "updateLinkState:"

    .line 4
    .line 5
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 13
    .line 14
    const/16 v1, 0x8

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->isWifiStandardSupported(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 26
    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mOnWifiUsabilityStatsListener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

    .line 32
    .line 33
    invoke-virtual {p1, v0, p0}, Landroid/net/wifi/WifiManager;->addOnWifiUsabilityStatsListener(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mOnWifiUsabilityStatsListener:Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiManager;->removeOnWifiUsabilityStatsListener(Landroid/net/wifi/WifiManager$OnWifiUsabilityStatsListener;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private updateP2PState()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "updateP2PState mWifiP2pManager is not null"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mLooper:Landroid/os/Looper;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 26
    .line 27
    new-instance v2, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$2;

    .line 28
    .line 29
    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming$2;-><init>(Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestNetworkInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$NetworkInfoListener;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method private updatePollingState()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->updateConnectStateAndBand()Z

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mVerboseLoggingEnabled:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "updatePollingState "

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingState:I

    .line 18
    .line 19
    const-string v3, ", 59"

    .line 20
    .line 21
    invoke-static {v3, v2, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "updatePollingState ["

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->readableRoamingState()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "]"

    .line 43
    .line 44
    invoke-static {v1, v2, v3}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->isPollingCondition()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRssiHistory:Ljava/util/LinkedList;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->startPolling()V

    .line 63
    .line 64
    .line 65
    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mPollingStarted:Z

    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mPollingStarted:Z

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->stopPolling()V

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mPollingStarted:Z

    .line 78
    .line 79
    :cond_2
    return-void
.end method

.method private updateRclCondition()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInjector:Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiConfigManager()Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-nez v0, :cond_1

    .line 22
    .line 23
    sget-object p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->TAG:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, " NetworkKey is null"

    .line 26
    .line 27
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    sget-object v1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string v2, "updateRclCondition()"

    .line 34
    .line 35
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingAssistant:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mInterfaceName:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->getNetworkFrequencyList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingFrequencyList:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 49
    .line 50
    .line 51
    if-eqz v0, :cond_6

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_2

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_2
    iget v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mCurrentFrequency:I

    .line 61
    .line 62
    invoke-static {v1}, Landroid/net/wifi/ScanResult;->toBand(I)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    iget-object v2, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getAssociatedMloLinks()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_3

    .line 81
    .line 82
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    check-cast v3, Landroid/net/wifi/MloLink;

    .line 87
    .line 88
    invoke-virtual {v3}, Landroid/net/wifi/MloLink;->getBand()I

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-eqz v3, :cond_5

    .line 106
    .line 107
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    invoke-static {v4}, Landroid/net/wifi/ScanResult;->toBand(I)I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-le v4, v1, :cond_4

    .line 122
    .line 123
    iget-object v4, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingFrequencyList:Ljava/util/List;

    .line 124
    .line 125
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_5
    sget-object v1, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->TAG:Ljava/lang/String;

    .line 130
    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v3, " RCL "

    .line 134
    .line 135
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_6
    :goto_3
    const-string v0, " RCL is empty"

    .line 150
    .line 151
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamingFrequencyList:Ljava/util/List;

    .line 155
    .line 156
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    xor-int/lit8 v0, v0, 0x1

    .line 161
    .line 162
    const/16 v1, 0x8

    .line 163
    .line 164
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->setRoamingStateBitMask(IZ)V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method private updateRssiHistory()I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->getRssi()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRssiHistory:Ljava/util/LinkedList;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x3

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRssiHistory:Ljava/util/LinkedList;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRssiHistory:Ljava/util/LinkedList;

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    const/16 v1, -0x3c

    .line 29
    .line 30
    if-ge v0, v1, :cond_1

    .line 31
    .line 32
    const/16 v1, -0x37

    .line 33
    .line 34
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->setDynamicMinRssi(I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mLogManager:Lcom/samsung/android/server/wifi/strongrssiroaming/LogManager;

    .line 2
    .line 3
    if-eqz p0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/LogManager;->getLogs()Ljava/util/LinkedList;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object v0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->DUMP_TITLE:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 38
    .line 39
    .line 40
    :cond_1
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
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mVerboseLoggingEnabled:Z

    .line 7
    .line 8
    return-void
.end method

.method public getNoCandidateCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mNoCandidateCount:I

    .line 2
    .line 3
    return p0
.end method

.method public getNoScanResultCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mNoScanResultCount:I

    .line 2
    .line 3
    return p0
.end method

.method public getRoamFailCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamFailCount:I

    .line 2
    .line 3
    return p0
.end method

.method public getScanCount()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mScanCount:I

    .line 2
    .line 3
    return p0
.end method

.method protected logToDump(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->recordLog(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mVerboseLoggingEnabled:Z

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    sget-object p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public resetStatusCounters()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mScanCount:I

    .line 3
    .line 4
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mNoScanResultCount:I

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mNoCandidateCount:I

    .line 7
    .line 8
    iput v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mRoamFailCount:I

    .line 9
    .line 10
    return-void
.end method

.method public updateScpmState()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mFeatureController:Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportStrongRoaming()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mScpmEnabled:Z

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->startStrongRssiRoaming()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->mScpmEnabled:Z

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->stopStrongRssiRoaming()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
